-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  { import = "astrocommunity.recipes.vscode" },
  { import = "astrocommunity.recipes.astrolsp-no-insert-inlay-hints" },
  { import = "astrocommunity.pack.go", opts = {} },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.helm" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.proto" },
  { import = "astrocommunity.pack.nix" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.terraform" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.project.projectmgr-nvim" },
  { import = "astrocommunity.test.neotest" },
  { import = "astrocommunity.test.nvim-coverage" },
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },
  { import = "astrocommunity.editing-support.conform-nvim" },
  { import = "astrocommunity.git.gitlinker-nvim" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
