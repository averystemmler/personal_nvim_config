return {
    cmd = { vim.env.HOME .. '/.local/bin/basedpyright-langserver', '--stdio' },
    filetypes = { "python" },

    settings = {
        basedpyright = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "openFilesOnly",
                useLibraryCodeForTypes = true,
            },
        },
    },
}
