-- use jk to exit visual mode
vim.keymap.set('v', 'jk', '<ESC>')

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x')

-- reselect pasted text
vim.keymap.set('n', 'gp', '`[v`]')
vim.keymap.set('n', 'gy', '`[v`]y')

-- toggle between buffers
vim.keymap.set('n', '<leader><leader>', '<c-^>')

-- insert new line normal mode
vim.keymap.set('n', '<leader>o', 'o<esc>')
vim.keymap.set('n', 'NO', 'O<esc>')

-- increment/decrement numbers
vim.keymap.set('n', '<leader>+', '<C-a>') -- increment
vim.keymap.set('n', '<leader>-', '<C-x>') -- decrement

-- move lines up/down
vim.keymap.set('v', '<down>', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<up>', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', '‚àö', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '¬™', ":m '<-2<CR>gv=gv")

-- center screen after ctrl + u/d
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', '<C-d>', '<C-d>zz')

-- jump to start/end of line with H/L
vim.keymap.set('n', 'H', '^')
vim.keymap.set('n', 'L', '$')

vim.keymap.set(
  'n',
  '<leader>ff',
  "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '--follow', '-g', '!.git' }})<cr>"
) -- find files within current working directory, respects .gitignore
