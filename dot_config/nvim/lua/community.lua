--if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  --{ import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.html-css"},
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.git.octo-nvim" },
  { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.yaml"},
  { import = "astrocommunity.pack.terraform" },
  -- import/override with your plugins folder
}
