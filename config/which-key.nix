{
  plugins.which-key.enable = true;
  plugins.which-key.settings = {
    delay = 200;
    expand = 1;
    notify = false;
    preset = false;
    replace = {
      desc = [
        [
          "<space>"
          "SPACE"
        ]
        [
          "<leader>"
          "SPACE"
        ]
        [
          "<[cC][rR]>"
          "RETURN"
        ]
        [
          "<[tT][aA][bB]>"
          "TAB"
        ]
        [
          "<[bB][sS]>"
          "BACKSPACE"
        ]
      ];
    };
    spec = [
      {
        __unkeyed-1 = "<leader>b";
        group = "󰓩 Buffers";
      }
      {
        __unkeyed-1 = "<leader>bs";
        group = "󰒺 Sort";
      }
      {
        __unkeyed-1 = "<leader>g";
        group = "󰊢 Git";
      }
      {
        __unkeyed-1 = "<leader>f";
        group = " Find";
      }
      {
        __unkeyed-1 = "<leader>r";
        group = " Refactor";
      }
      {
        __unkeyed-1 = "<leader>t";
        group = " Terminal";
      }
      {
        __unkeyed-1 = "<leader>u";
        group = " UI/UX";
      }
    ];
    win = {
      border = "single";
    };
  };
}
