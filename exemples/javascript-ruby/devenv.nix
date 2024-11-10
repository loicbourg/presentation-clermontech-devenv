{ pkgs, lib, config, inputs, ... }:

{
  languages.javascript = {
    enable = true;
    package = pkgs.nodejs_18;
  };

  languages.ruby =  {
    enable = true;
    package = pkgs.ruby_3_3;
  };
}