return { "EdenEast/nightfox.nvim",
  config = function()
    -- Specify the file path
    local file_path = os.getenv( "HOME" ) .."/.nvim_kitty/nvim.lua"

    -- Try to load the file
    local success, config = pcall(dofile, file_path)

    -- Check if loading was successful
    if success then
      -- Access the "colorscheme" value
      local colorscheme = config["colorscheme"]
      require("nightfox").setup({
        palettes = {
          nightfox = {
            bg1 = "#161f2b", -- Black background
            fg1="#b8baba"
          },
        },
        groups = {
          nightfox = {
            ['@operator'] = {fg='#859900'},
            ['@punctuation.delimiter'] = {fg='#859900'},
            ['@punctuation.bracket'] = {fg='#ce4c57'},
            ['@variable'] = {fg='#d6d0bf'},
          }
        },
      });
      vim.cmd("colorscheme "..colorscheme)
      -- Print the result (you can replace this with any further processing)
    else
      -- Handle the case when the file is not found
      print("File not found. Setting colorscheme to empty.")
      -- Print or use the empty colorscheme as needed
    end
    -- Print the result (you can replace this with any further processing)
  end,

}
