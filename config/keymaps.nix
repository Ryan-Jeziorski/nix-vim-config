{
  globals.mapleader = " ";
  keymaps = [
    {
      key = "<esc>";
      action = ":noh<CR>";
      options.desc = "Clear search highlighting with esc";
    }

    # nvim-tree file explorer
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
