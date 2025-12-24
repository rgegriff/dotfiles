return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")
    dap.adapters.debugpy = function(callback, config)
      vim.notify(config.name)
      local def
      if config.request == "launch" then
        def = {
          type = "executable",
          command = "python",
          args = { "-m", "debugpy.adapter" }
        }
      elseif config.request == "attach" then
        def = {
          type = "server",
          host = config.connect.host,
          port = config.connect.port
        }
      end
      callback(def)
    end
  end,
}
