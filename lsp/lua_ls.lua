return {
    cmd = { vim.env.HOME .. '/.local/bin/lua-language-server' },
    filetypes = { 'lua' },
    root_dir = vim.fs.root(0, {'.git', 'init.lua'}),
}

