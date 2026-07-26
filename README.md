# Belarusian Extended Keyboard Layouts

macOS keyboard layouts for Belarusian — Cyrillic and Latin (lacinka) — extended
with the characters of neighbouring languages, so you can type Russian,
Ukrainian and Polish without switching layouts.

| Layout | Base | Extra characters (on ⌥ Option) |
|---|---|---|
| Belarusian Cyrillic | Belarusian Cyrillic (і, ў, ы, э, ё) | Russian: и, щ, ъ · Ukrainian: ї, є, ґ |
| Belarusian Latin | Lacinka (ł, ĺ, ś, ć, ź, ń, š, ž, č, ŭ) | Polish: ą, ę, ó, ż |

Extra characters are typed with ⌥ Option. On letters ⇧⌥ Shift-Option gives
their uppercase forms; on the other keys it is a second set of symbols of its
own.

The Latin layout supports both lacinka orthographies for the L sounds: the
traditional one (hard л → `ł`, ⌥ + `l`) and the modern one (soft ль → `ĺ`,
⌥ + `k`).

It also has two dead keys on the Option layer: ⌥ + `'` (acute: ´) and
⌥ + `v` (caron: ˇ).

## Layouts

Each key shows up to four characters — the plain one and ⇧ Shift on the top
line, ⌥ Option and ⇧⌥ Shift-Option below:

```
┌───┐
│4 ;│   4 = plain   ; = ⇧
│$ €│   $ = ⌥       € = ⇧⌥
└───┘
```

Uppercase letters are left out — ⇧ gives them as usual. An empty slot means
that combination has nothing of its own: you get what the key already gives
with fewer modifiers.

Both keyboard shapes are drawn below. macOS tells the layout which one is
attached and switches between them on its own — it is one input source, not
two. ISO keyboards have an extra key next to the left ⇧ that ANSI ones lack,
and one fewer key in the ⇥ row.

### Belarusian Cyrillic

ISO:

```
┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───────┐
│ё  │1 !│2 "│3 №│4 ;│5 %│6 :│7 ?│8 *│9 (│0 )│- _│= +│     ⌫ │
│§ ±│   │@ §│#  │$ €│   │^  │&  │°  │[ {│] }│– —│≠ ≈│       │
├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─────┤
│ ⇥   │й  │ц  │у  │к  │е  │н  │г  │ш  │ў  │з  │х  │'  │   ↩ │
│     │ї  │   │ў  │   │ё  │   │ґ  │щ  │   │‘ ’│« »│„ “│     │
├─────┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┐    │
│ ⇪    │ф  │ы  │в  │а  │п  │р  │о  │л  │д  │ж  │э  │\ /│    │
│      │   │   │   │   │   │   │   │   │   │…  │є  │|  │    │
├────┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴───┴────┤
│ ⇧  │` ~│я  │ч  │с  │м  │і  │т  │ь  │б  │ю  │. ,│        ⇧ │
│    │[ ]│   │   │   │   │и  │   │ъ  │< ≤│> ≥│   │          │
├───┬┴──┬┴──┬┴───┴┬──┴───┴───┴───┴───┴┬──┴──┬┴──┬┴──┬───┬───┤
│ fn│ ⌃ │ ⌥ │ ⌘   │                   │   ⌘ │ ⌥ │   │ ↑ │   │
│   │   │   │     │                   │     │   │ ← │ ↓ │ → │
└───┴───┴───┴─────┴───────────────────┴─────┴───┴───┴───┴───┘
```

ANSI:

```
┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───────┐
│ё  │1 !│2 "│3 №│4 ;│5 %│6 :│7 ?│8 *│9 (│0 )│- _│= +│     ⌫ │
│` ~│   │@ §│#  │$ €│   │^  │&  │°  │[ {│] }│– —│≠ ≈│       │
├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─────┤
│ ⇥   │й  │ц  │у  │к  │е  │н  │г  │ш  │ў  │з  │х  │'  │ \ / │
│     │ї  │   │ў  │   │ё  │   │ґ  │щ  │   │‘ ’│« »│„ “│ |   │
├─────┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴─────┤
│ ⇪    │ф  │ы  │в  │а  │п  │р  │о  │л  │д  │ж  │э  │      ↩ │
│      │   │   │   │   │   │   │   │   │   │…  │є  │        │
├──────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────────┤
│ ⇧      │я  │ч  │с  │м  │і  │т  │ь  │б  │ю  │. ,│        ⇧ │
│        │   │   │   │   │и  │   │ъ  │< ≤│> ≥│   │          │
├───┬───┬┴──┬┴───┴┬──┴───┴───┴───┴───┴┬──┴──┬┴──┬┴──┬───┬───┤
│ fn│ ⌃ │ ⌥ │ ⌘   │                   │   ⌘ │ ⌥ │   │ ↑ │   │
│   │   │   │     │                   │     │   │ ← │ ↓ │ → │
└───┴───┴───┴─────┴───────────────────┴─────┴───┴───┴───┴───┘
```

`ё` keeps the standard spot left of `1` on both. On ISO the ` and ~ live on
the extra key by the left ⇧, with `[` `]` on its ⌥ layer; ANSI has no such
key, so ` and ~ move onto the ⌥ layer of `ё`. Brackets are on ⌥ + `9` / `0`
either way, braces on ⇧⌥ + `9` / `0`.

### Belarusian Latin

ISO:

```
┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───────┐
│§ ±│1 !│2 @│3 #│4 $│5 %│6 ^│7 &│8 *│9 (│0 )│- _│= +│     ⌫ │
│   │   │§  │   │€  │   │   │   │°  │   │   │– —│≠ ≈│       │
├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─────┤
│ ⇥   │q  │w  │e  │r  │t  │y  │u  │i  │o  │p  │[ {│] }│   ↩ │
│     │   │š  │ę  │   │   │   │ŭ  │   │ó  │‘ ’│« »│„ ”│     │
├─────┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┐    │
│ ⇪    │a  │s  │d  │f  │g  │h  │j  │k  │l  │; :│' "│\ |│    │
│      │ą  │ś  │ž  │č  │   │   │   │ĺ  │ł  │…  │◌́  │   │    │
├────┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴───┴────┤
│ ⇧  │` ~│z  │x  │c  │v  │b  │n  │m  │, <│. >│/ ?│        ⇧ │
│    │   │ż  │ź  │ć  │◌̌  │   │ń  │   │< ≤│> ≥│   │          │
├───┬┴──┬┴──┬┴───┴┬──┴───┴───┴───┴───┴┬──┴──┬┴──┬┴──┬───┬───┤
│ fn│ ⌃ │ ⌥ │ ⌘   │                   │   ⌘ │ ⌥ │   │ ↑ │   │
│   │   │   │     │                   │     │   │ ← │ ↓ │ → │
└───┴───┴───┴─────┴───────────────────┴─────┴───┴───┴───┴───┘
```

ANSI:

```
┌───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───────┐
│` ~│1 !│2 @│3 #│4 $│5 %│6 ^│7 &│8 *│9 (│0 )│- _│= +│     ⌫ │
│   │   │§  │   │€  │   │   │   │°  │   │   │– —│≠ ≈│       │
├───┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─────┤
│ ⇥   │q  │w  │e  │r  │t  │y  │u  │i  │o  │p  │[ {│] }│ \ | │
│     │   │š  │ę  │   │   │   │ŭ  │   │ó  │‘ ’│« »│„ ”│     │
├─────┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴┬──┴─────┤
│ ⇪    │a  │s  │d  │f  │g  │h  │j  │k  │l  │; :│' "│      ↩ │
│      │ą  │ś  │ž  │č  │   │   │   │ĺ  │ł  │…  │◌́  │        │
├──────┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴─┬─┴────────┤
│ ⇧      │z  │x  │c  │v  │b  │n  │m  │, <│. >│/ ?│        ⇧ │
│        │ż  │ź  │ć  │◌̌  │   │ń  │   │< ≤│> ≥│   │          │
├───┬───┬┴──┬┴───┴┬──┴───┴───┴───┴───┴┬──┴──┬┴──┬┴──┬───┬───┤
│ fn│ ⌃ │ ⌥ │ ⌘   │                   │   ⌘ │ ⌥ │   │ ↑ │   │
│   │   │   │     │                   │     │   │ ← │ ↓ │ → │
└───┴───┴───┴─────┴───────────────────┴─────┴───┴───┴───┴───┘
```

The Latin layout needs no such split — every key means the same on both
shapes, ANSI simply has no `§` key.

### Notes

Quotation marks sit on the same keys in both layouts: ⌥ + `[` gives « », ⌥ +
`]` the nested pair — „ “ on the Cyrillic layout, „ ” on the Latin one, as
each orthography wants it — and ⌥ + `p` the single ‘ ’.

The ◌́ and ◌̌ slots on the Latin layout are the dead keys: they put the
accent on the next letter instead of printing anything themselves.

## Install

```sh
brew install skarpesh/belarusian-keyboard/belarusian-extended
```

Then:

1. Log out and back in.
2. System Settings → Keyboard → Input Sources → Edit → `+` → search for
   "Belarusian" and add **Belarusian Cyrillic** and/or **Belarusian Latin**.

## Release

```sh
make release V=1.9.0            # zip the bundle, bump version/sha256 in the cask
git commit -am 'v1.9.0' && git push
make publish V=1.9.0            # create the GitHub release, tagging the pushed commit
```

`publish` refuses to run on a dirty tree or with unpushed commits, and tags the
exact commit at `HEAD` — so the tag always points at the cask bump.
