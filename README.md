# Belarusian Extended Keyboard Layouts

macOS keyboard layouts for Belarusian — Cyrillic and Latin (lacinka) — extended
with the characters of neighbouring languages, so you can type Russian,
Ukrainian and Polish without switching layouts.

| Layout | Base | Extra characters (on ⌥ Option) |
|---|---|---|
| Belarusian Cyrillic | Belarusian Cyrillic (і, ў, ы, э, ё) | Russian: и, щ, ъ · Ukrainian: ї, є, ґ |
| Belarusian Latin | Lacinka (ł, ĺ, ś, ć, ź, ń, š, ž, č, ŭ) | Polish: ą, ę, ó, ż |

Extra characters are typed with ⌥ Option; ⇧⌥ Shift-Option gives the uppercase
forms.

The Latin layout supports both lacinka orthographies for the L sounds: the
traditional one (hard л → `ł`, ⌥ + `l`) and the modern one (soft ль → `ĺ`,
⌥ + `k`).

It also has two dead keys on the Option layer: ⌥ + `'` (acute: ´) and
⌥ + `v` (caron: ˇ).

## Install

```sh
brew install skarpesh/belarusian-keyboard/belarusian-extended
```

Then:

1. Log out and back in.
2. System Settings → Keyboard → Input Sources → Edit → `+` → search for
   "Belarusian" and add **Belarusian Cyrillic** and/or **Belarusian Latin**.
