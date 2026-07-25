cask "belarusian-extended" do
  version "1.8.0"
  sha256 "e0450760379232cea5b5ab0bd98eb39438ab99dc80a7c3a087dc60146a0f79e0"

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
