---
# You can also start simply with 'default'
theme: seriph
addons:
  - slidev-addon-asciinema
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
background: https://cover.sli.dev
# some information about your slides (markdown enabled)
title: Welcome to Slidev
info: |
  ## Slidev Starter Template
  Presentation slides for developers.

  Learn more at [Sli.dev](https://sli.dev)
# apply unocss classes to the current slide
class: text-center
# https://sli.dev/features/drawing
drawings:
  persist: false
# slide transition: https://sli.dev/guide/animations.html#slide-transitions
transition: slide-left
# enable MDC Syntax: https://sli.dev/features/mdc
mdc: true
# take snapshot for each slide in the overview
overviewSnapshots: true

---

# Simplifiez la gestion de vos environnements de développement avec devenv !


---
transition: fade-out
layout: center
class: text-center
---

# Il y a bien longtemps

<v-clicks>

- Readme.md de 873 lignes pour l'install compatible uniquement debian 6
- Machine virtuelle fournie par l'équipe infra  

TODO: image de souffrance

</v-clicks>

---
transition: fade-out
layout: center
class: text-center
---

# Il y a un peu moins longtemps

  rvm, nvm, pyenv, ...

TODO: image content, mais ensuite immage boudeur car demande quand même d'installer les services

---
transition: fade-out
layout: center
class: text-center
---

# Maintenant
LOGO docker 

TODO: image content: (reproductible, léger, 

image pour "et si on pouvait faire mieux ?"


---
transition: fade-out
---

Loïc BOURG
Lead technique ITNetwork

TODO: logo ITN

---
transition: fade-out
---

```nix
# devenv.nix
{ pkgs, lib, config, inputs, ... }:

{
  languages.javascript = {
    enable = true;
    package = pkgs.nodejs_20;
  };
}
```

---
transition: fade-out
---

<Asciinema src="casts/test.cast" />

---
transition: fade-out
---

````md magic-move {lines: true}
```nix
# devenv.nix
{ pkgs, lib, config, inputs, ... }:

{
  languages.javascript = {
    enable = true;
    package = pkgs.nodejs_20;
  };
}
```

```nix {10-13}
# devenv.nix
{ pkgs, lib, config, inputs, ... }:

{
  languages.javascript = {
    enable = true;
    package = pkgs.nodejs_20;
  };

  languages.ruby =  {
    enable = true;
    package = pkgs.ruby_3_1;
  };
}
```
````

---
transition: fade-out
---

TODO ascii cinema cd projet + ruby --version


---
transition: fade-out
---

````md magic-move {lines: true}
```nix
# devenv.nix
{ pkgs, lib, config, inputs, ... }:

{
  languages.javascript = {
    enable = true;
    package = pkgs.nodejs_20;
  };

  languages.ruby =  {
    enable = true;
    package = pkgs.ruby_3_1;
  };
}
```

```nix {15-18}
# devenv.nix
{ pkgs, lib, config, inputs, ... }:

{
  languages.javascript = {
    enable = true;
    package = pkgs.nodejs_20;
  };

  languages.ruby =  {
    enable = true;
    package = pkgs.ruby_3_1;
  };

  services.postgres = {
    enable = true;
    package = pkgs.postgresql_16;
  };
}
```
````

---
transition: fade-out
---

TODO ascii cinema