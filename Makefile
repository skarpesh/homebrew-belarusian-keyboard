# Cut a release in two steps:
#   make release V=1.8.0   — zips the bundle and updates version/sha256 in the cask
#   (commit and push the cask change)
#   make publish V=1.8.0   — creates the GitHub release, tagging the pushed commit
CASK = Casks/belarusian-extended.rb
ZIP = Belarusian.bundle.zip

release:
	@test -n "$(V)" || { echo "usage: make release V=X.Y.Z"; exit 1; }
	rm -f $(ZIP)
	zip -qr $(ZIP) Belarusian.bundle -x '*.DS_Store'
	sha=$$(shasum -a 256 $(ZIP) | cut -d' ' -f1); \
	sed -i '' -e 's/^  version .*/  version "$(V)"/' -e "s/^  sha256 .*/  sha256 \"$$sha\"/" $(CASK)
	@git diff --stat -- $(CASK)
	@echo "→ commit and push $(CASK), then: make publish V=$(V)"

publish:
	@test -n "$(V)" || { echo "usage: make publish V=X.Y.Z"; exit 1; }
	@test -f $(ZIP) || { echo "$(ZIP) missing — run: make release V=$(V)"; exit 1; }
	@test -z "$$(git status --porcelain)" || { echo "working tree dirty"; exit 1; }
	@git fetch -q
	@test -z "$$(git rev-list @{u}..HEAD)" || { echo "unpushed commits — push first"; exit 1; }
	gh release create v$(V) $(ZIP) --generate-notes --target "$$(git rev-parse HEAD)"

.PHONY: release publish
