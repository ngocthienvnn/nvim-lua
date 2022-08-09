local status_ok, dap = pcall(require, "dap")
if not status_ok then
  return
end
local dapui =  require("dapui")

dap.adapters.php = {
  type = 'executable',
  command = 'node',
  args = {os.getenv('HOME') .. '/.config/nvim/debuggers/vscode-php-debug/out/phpDebug.js' }
}

dap.configurations.php = {
  {
    type = 'php',
    request = 'launch',
    name = 'Listen for Xdebug',
    port = 9003,
    log = true,
    serverSourceRoot = '/var/www/',
    localSourceRoot = '/var/www/'
  }
}
dapui.setup({});
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
