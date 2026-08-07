cask "belarusian-extended" do
  version "1.10.1"
  sha256 "cb1b137210ba711d3836ed3d8aa6953e5d71a5405ea78346790738d097c3028b"

  url "https://github.com/skarpesh/homebrew-belarusian-keyboard/releases/download/v#{version}/Belarusian.bundle.zip"
  name "Belarusian Extended Keyboard Layouts"
  desc "Belarusian keyboard layouts with Russian, Ukrainian and Polish coverage"
  homepage "https://github.com/skarpesh/homebrew-belarusian-keyboard"

  depends_on macos: :big_sur

  keyboard_layout "Belarusian.bundle"

  caveats <<~EOS
    Log out and back in, then add the layout in
    System Settings → Keyboard → Input Sources → "+" → search for "Belarusian".
  EOS
end
