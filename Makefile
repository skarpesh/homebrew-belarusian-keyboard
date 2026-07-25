# Cut a release: make release V=1.8.0
# Prints the sha256 to put into Casks/belarusian-extended.rb (with the version bump).
release:
	@test -n "$(V)" || { echo "usage: make release V=X.Y.Z"; exit 1; }
	rm -f Belarusian.bundle.zip
	zip -qr Belarusian.bundle.zip Belarusian.bundle -x '*.DS_Store'
	gh release create v$(V) Belarusian.bundle.zip --generate-notes
	shasum -a 256 Belarusian.bundle.zip
