{
# Sidebar file explorere
  plugins.nvim-tree = {
    enable = true;
    openOnSetupFile = true;
    autoReloadOnWrite = true;

# Raw lua code here
# Runs on attach to the floating buffer
# Allows us to use escape key to close the floating window
# as well as q
    onAttach = {
      __raw = ''
vim.keymap.set('n', '<Esc>', function()
  if vim.api.nvim_win_get_config(0).relative ~= "" then
    vim.cmd.wincmd('c')
  else
    vim.cmd.normal("\\<Esc>")
  end
end)
      '';
    };
    view = {
      #side = "right";
      centralizeSelection = true;
      float = {
        enable = true;
        quitOnFocusLoss = true;

# Raw lua code here
# It creates a foating window centared and in
# the middle of the screen
# I wonder if there is a more nixvim way of doing this?
#
#
# https://github.com/nvim-tree/nvim-tree.lua/wiki/Recipes#center-a-floating-nvim-tree-window
        openWinConfig.__raw = '' 
function()
  local HEIGHT_RATIO = 0.8  -- You can change this
  local WIDTH_RATIO = 0.5   -- You can change this too
  local screen_w = vim.opt.columns:get()
  local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
  local window_w = screen_w * WIDTH_RATIO
  local window_h = screen_h * HEIGHT_RATIO
  local window_w_int = math.floor(window_w)
  local window_h_int = math.floor(window_h)
  local center_x = (screen_w - window_w) / 2
  local center_y = ((vim.opt.lines:get() - window_h) / 2)
                   - vim.opt.cmdheight:get()
  return {
    border = 'rounded',
    relative = 'editor',
    row = center_y,
    col = center_x,
    width = window_w_int,
    height = window_h_int,
  }
  end
        '';
      };
    };
  };
}
