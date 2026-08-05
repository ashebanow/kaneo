{ pkgs, lib, config, ... }: {

  cachix.enable = true;

  # auto-maintain the devcontainer
  devcontainer.enable = true;

  languages = {
    javascript = {
      enable = true;
      package = pkgs.nodejs_22;
      bun = {
        enable = true;
        package = pkgs.bun;
      };
      yarn = {
        enable = true;
        package = pkgs.yarn;
      };
    };
    typescript = {
      enable = true;
    };
  };

  packages = [
    pkgs.git
  ];

  # Optional: Make sure packages are installed on shell startup
  # enterShell = ''
  #   yarn install
  # '';
}
