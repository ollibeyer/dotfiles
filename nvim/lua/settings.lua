-- lua/settings.lua

-- Globale Einstellungen
vim.opt.number = true         -- Zeilennummern
vim.opt.relativenumber = true -- Relative Zeilennummern (sehr praktisch!)
vim.opt.cursorline = true     -- Zeile hervorheben
vim.opt.shiftwidth = 4        -- Einrückung auf 4 Leerzeichen
vim.opt.expandtab = true      -- Tabulatoren in Leerzeichen umwandeln
vim.opt.smartindent = true    -- Intelligentes Einrücken

-- Eigene Keybindings (Beispiel)
vim.keymap.set('n', '<leader>w', ':w<CR>')    -- Speichern mit Leerzeichen + w
vim.keymap.set('n', '<leader>q', ':q<CR>')    -- Beenden mit Leerzeichen + q
vim.keymap.set('i', 'jj', '<Esc>')            -- jj im Insert-Modus zum Beenden
