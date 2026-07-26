cask "belarusian-extended" do
  version "1.9.0"
  sha256 "28c0053b38d901ae7d72a70cfcf21c1f610364173db1bf3913b8c2a05911c230"

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
