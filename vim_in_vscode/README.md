# VSCode Vim: navigate by visual (wrapped) line

Makes `j`, `k`, `0` move by the wrapped/display line instead of the logical
line — useful with word wrap (Alt+Z) on long lines (e.g. LaTeX paragraphs).

## Requirements

- Extension: `vscodevim.vim` (tested on v1.32.4)

## Settings

Add to VSCode user `settings.json`:

- Linux: `~/.config/Code/User/settings.json`
- macOS: `~/Library/Application Support/Code/User/settings.json`
- Windows: `%APPDATA%\Code\User\settings.json`

```json
"vim.normalModeKeyBindingsNonRecursive": [
    { "before": ["j"], "after": ["g", "j"] },
    { "before": ["k"], "after": ["g", "k"] },
    { "before": ["0"], "after": ["g", "0"] }
],
"vim.visualModeKeyBindingsNonRecursive": [
    { "before": ["j"], "after": ["g", "j"] },
    { "before": ["k"], "after": ["g", "k"] },
    { "before": ["0"], "after": ["g", "0"] }
],
"vim.operatorPendingModeKeyBindingsNonRecursive": [
    { "before": ["j"], "after": ["g", "j"] },
    { "before": ["k"], "after": ["g", "k"] },
    { "before": ["0"], "after": ["g", "0"] }
]
```

If these keys already exist in settings.json, merge the array entries rather
than duplicating the top-level keys.

## Why remap to `g`+key instead of `cursorMove`

The first approach tried was binding raw VS Code `cursorMove` commands
(`by: "wrappedLine"`, `to: "wrappedLineStart"/"wrappedLineEnd"`) directly to
`j`/`k`/`0`/`$`. This moved the cursor correctly in normal mode, but in
**visual mode** it bypassed vscodevim's internal selection/anchor tracking
(`cursorMove` with `select: true` edits VS Code's native selection directly),
which desynced the anchor and broke `h`/`l` afterward.

The fix: don't touch `cursorMove` at all. Vim already has native display-line
motions — `gj`, `gk`, `g0`, `g$` — that stay entirely inside vscodevim's own
motion/visual-mode engine, so `h`/`l` and everything else remain consistent.
Remap `j`→`gj`, `k`→`gk`, `0`→`g0` (see caveat below for `$`).

## Known limitation: `$` is intentionally NOT remapped to `g$`

Inspecting the bundled extension source
(`~/.vscode/extensions/vscodevim.vim-*/out/extension.js`) shows:

- Plain `$` computes the position with exact Vim math (line end, then
  correctly adjusted so the block cursor lands ON the last character).
- `g$` instead delegates straight to VS Code's `cursorMove` with
  `to: "wrappedLineEnd"`, which — like the End key everywhere — lands **one
  column past** the last character. It's missing the `-1` correction that
  plain `$` applies. This is a genuine bug in this vscodevim version, not a
  config mistake.

A "move left one" fixup after `g$` would patch the overshoot on normal text,
but breaks on blank lines (no overshoot exists there, so the fixup would
wrongly jump to the previous line) — common in LaTeX files between
paragraphs. Not an acceptable trade-off.

`0`→`g0` has no equivalent bug: "start of line" is column 0 either way, no
length-dependent math involved. Same reasoning applies to `gj`/`gk` (only row
math, no column math). So the asymmetry is deliberate: `j`/`k`/`0` are
wrapped-line-aware, `$` stays on the true end of the logical line.

If a future vscodevim release fixes `g$`'s wrapped-line-end math, the `$`
remap can be added back the same way as the others.
