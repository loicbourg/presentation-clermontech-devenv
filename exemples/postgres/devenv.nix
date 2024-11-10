{ pkgs, lib, config, inputs, ... }:

{
  languages.javascript = {
    enable = true;
    package = pkgs.nodejs_20;
  };

  languages.ruby =  {
    enable = true;
    package = pkgs.ruby_3_3;
  };

  services.postgres = {
    enable = true;
    package = pkgs.postgresql_16;
  };
}