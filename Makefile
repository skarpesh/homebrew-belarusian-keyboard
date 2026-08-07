# Cut a release in two steps:
#   make release V=1.8.0   — zips the bundle, bumps the bundle version and the cask's version/sha256
#   (commit and push the changes)
#   make publish V=1.8.0   — creates the GitHub release, tagging the pushed commit
CASK = Casks/belarusian-extended.rb
ZIP = Belarusian.bundle.zip
PLIST = Belarusian.bundle/Contents/Info.plist
LAYOUTS_DIR = Belarusian.bundle/Contents/Resources

# keylayouts are XML 1.1 (control chars like &#x0008; are only legal there), which
# libxml2 can't parse — so downgrade the version and blank out char refs before
# xmllint; the DTD validates structure, not attribute values, so nothing is lost.
# KeyboardLayout.dtd is a local patched copy — see the comment in it.
check:
	@for f in "$(LAYOUTS_DIR)/Belarusian Cyrillic.keylayout" "$(LAYOUTS_DIR)/Belarusian Latin.keylayout"; do \
		echo "check: $$f"; \
		sed -e '1s/version="1.1"/version="1.0"/' -e 's/&#x[0-9A-Fa-f]*;/A/g' "$$f" \
		| xmllint --noout --dtdvalid KeyboardLayout.dtd - || exit 1; \
	done

release: check
	@test -n "$(V)" || { echo "usage: make release V=X.Y.Z"; exit 1; }
	/usr/libexec/PlistBuddy -c 'Set :CFBundleVersion $(V)' $(PLIST)
	rm -f $(ZIP)
	zip -qr $(ZIP) Belarusian.bundle -x '*.DS_Store'
	sha=$$(shasum -a 256 $(ZIP) | cut -d' ' -f1); \
	sed -i '' -e 's/^  version .*/  version "$(V)"/' -e "s/^  sha256 .*/  sha256 \"$$sha\"/" $(CASK)
	@git diff --stat -- $(CASK) $(PLIST)
	@echo "→ commit and push $(CASK) and $(PLIST), then: make publish V=$(V)"

publish:
	@test -n "$(V)" || { echo "usage: make publish V=X.Y.Z"; exit 1; }
	@test -f $(ZIP) || { echo "$(ZIP) missing — run: make release V=$(V)"; exit 1; }
	@test -z "$$(git status --porcelain)" || { echo "working tree dirty"; exit 1; }
	@git fetch -q
	@test -z "$$(git rev-list @{u}..HEAD)" || { echo "unpushed commits — push first"; exit 1; }
	gh release create v$(V) $(ZIP) --generate-notes --target "$$(git rev-parse HEAD)"

.PHONY: check release publish
