{
  globals.mapleader = " ";
  keymaps = [
    {
      key = "<leader>f";
      action = "<CMD>NvimTreeToggle<CR>";
      options.desc = "Toggle NvimTree";
    }
    # Rust
    {
      mode = "n";
      key = "<leader>r";
      action = "+rust";
    }
  ];
}
