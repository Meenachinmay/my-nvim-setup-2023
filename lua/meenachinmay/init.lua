require("meenachinmay.remap")
require("meenachinmay.set")

-- Load the lsp-format plugin
require("lsp-format").setup {}

-- Define the on_attach function
local on_attach = function(client)
    require("lsp-format").on_attach(client)

    -- ... custom code ...
end

-- Configure the gopls LSP with the on_attach function
require("lspconfig").gopls.setup {
    on_attach = on_attach
}

