# LazyVim Native LSP — Cheatsheet

Using LazyVim's built-in LSP (nvim-lspconfig + mason). coc.nvim is disabled
(see `lua/plugins/disabled.lua`). Completion is handled by blink.cmp.

## Essential keys

Leader is `<space>`. Press `<space>` and wait — which-key shows the menu.

### Navigation
| Key   | Action                |
|-------|-----------------------|
| `gd`  | Goto definition       |
| `gr`  | References            |
| `gI`  | Goto implementation   |
| `gy`  | Goto type definition  |
| `gD`  | Goto declaration      |
| `K`   | Hover docs            |
| `gK`  | Signature help        |

### Actions
| Key          | Action                |
|--------------|-----------------------|
| `<leader>ca` | Code action           |
| `<leader>cr` | Rename symbol         |
| `<leader>cf` | Format buffer         |
| `<leader>cA` | Source action         |
| `<leader>cc` | Run codelens          |
| `<leader>cl` | LSP info              |

### Diagnostics
| Key          | Action                |
|--------------|-----------------------|
| `<leader>cd` | Line diagnostics      |
| `]d` / `[d`  | Next / prev diagnostic|
| `]e` / `[e`  | Next / prev error     |
| `<leader>xx` | Diagnostics list (Trouble) |

### Search (pickers)
| Key          | Action                |
|--------------|-----------------------|
| `<leader>ss` | Document symbols      |
| `<leader>sS` | Workspace symbols     |
| `<leader>e`  | File explorer         |

## Terminal (snacks.nvim) & AI CLIs

LazyVim ships snacks.nvim, which provides a toggleable terminal.

### Opening a shell terminal
| Key         | Action                        |
|-------------|-------------------------------|
| `<C-/>`     | Toggle floating terminal (root dir) |
| `<C-_>`     | Same (fallback binding)       |
| `<leader>ft`| Terminal at project root      |
| `<leader>fT`| Terminal at current dir       |

Inside the terminal:
- You start in **terminal mode** — just type commands (`dm`, `claude`, etc.).
- `<Esc><Esc>` — exit to normal mode (scroll/copy with vim motions).
- `<C-/>` — hide the terminal (session stays alive; press again to reopen).
- `i` / `a` — re-enter terminal mode from normal mode.

### Devmate / Claude in a dedicated terminal
| Key         | Action                        |
|-------------|-------------------------------|
| `<leader>a` | Toggle `dm` (Devmate CLI) in a right split |

Defined in `lua/plugins/dm-terminal.lua`. `Snacks.terminal.toggle` reuses the
same instance, so it toggles rather than spawning new terminals. Swap `dm` for
`claude` in that file to use Claude Code @ Meta instead.

## Installing a language server (e.g. clangd)

LazyVim installs servers via **mason** and configures them through
**language extras**. Preferred way — enable the extra:

1. Run `:LazyExtras`
2. Search for `lang.clangd`, press `x` to enable, restart Neovim.
   (This installs clangd + clangd_extensions.nvim, e.g. `<leader>ch` to
   switch header/source.)

Other languages: `lang.python`, `lang.rust`, `lang.go`, `lang.tsx`, etc.

### Manual install / management
- `:Mason` — browse & install servers/tools (`i` to install, `X` to uninstall)
- `:LspInfo` — show servers attached to the current buffer
- `:MasonUpdate` — update the registry

### Add a server not covered by an extra
Create `lua/plugins/lsp.lua`:

```lua
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = {}, -- mason auto-installs it
    },
  },
}
```
