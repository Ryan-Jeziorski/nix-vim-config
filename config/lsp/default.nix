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

    # enable rustaceanvim
    # todo: should probably move this to it's own file
    rustaceanvim.enable = true;

    # LSP status information
    fidget = {
      enable = true;
      settings = {
        progress = {
          ignore_done_already = true;
          suppress_on_insert = true;
          poll_rate = 1;
        };
      };
    };
  };
}
