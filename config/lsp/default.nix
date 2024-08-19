{
  plugins = { 

    # LSP server settings
    lsp = {
      enable = true;
      servers = {
        nixd.enable = true;
        nixd.autostart = true;
      };

      keymaps.lspBuf = {
        "gd" = "definition";
        "gD" = "references";
        "gt" = "type_definition";
        "gi" = "implementation";
        "K" = "hover";
      };
    };

    # enable rust-tools
    rust-tools.enable = true;

    # LSP status information
    fidget = {
    enable = true;
    progress = {
      suppressOnInsert = true;
      ignoreDoneAlready = true;
      pollRate = 0.5;
    };
  };
  };
}
