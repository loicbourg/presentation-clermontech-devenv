{ pkgs, lib, config, inputs, ... }:

{
  languages.javascript = {
    enable = true;
    package = pkgs.nodejs_20;
  };

  languages.ruby = {
    enable = true;
    package = pkgs.ruby_3_3;
  };

  services.postgres = {
    enable = true;
    package = pkgs.postgresql_16;
  };

  processes.node_httpserver = {
    exec = "node server.js";
  };

  pre-commit = {
    hooks = {
      prettier = {
        enable = true;
        types_or = [ "javascript" ];
      };
    };
  };
}
