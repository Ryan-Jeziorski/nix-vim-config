{
  description = "A nixvim configuration";

  nixConfig.bash-prompt = "\n\\[\\033[$PROMPT_COLOR\\](nix-dev)[\\[\\e]0;\\u@\\h: \\w\\a\\]\\u@\\h:\\w]\\$\\[\\033[0m\\] ";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    { nixvim, flake-parts, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem =
        { pkgs, system, ... }:
        let
          nixvimLib = nixvim.lib.${system};
          nixvim' = nixvim.legacyPackages.${system};
          nixvimModule = {
            inherit pkgs;
            module = import ./config; # import the module directly
            # You can use `extraSpecialArgs` to pass additional arguments to your module files
            extraSpecialArgs = {
              # inherit (inputs) foo;
            };
          };
          nvim = nixvim'.makeNixvimWithModule nixvimModule;
        in
        {
          checks = {
            # Run `nix flake check .` to verify that your config is not broken
            default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
          };

	  legacyPackages = { 
	    nixvim = nvim;
	  };
          packages = {
            # Lets you run `nix run .` to start nixvim
            default = nvim;
          };
	  devShells = {
	    default = pkgs.mkShell {
	    buildInputs = [nvim];
	    };
	  };
        };
    };
}
