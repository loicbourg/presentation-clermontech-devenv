---
# You can also start simply with 'default'
theme: seriph
addons:
  - slidev-addon-asciinema
# random image from a curated Unsplash collection by Anthony
# like them? see https://unsplash.com/collections/94734566/slidev
background: https://cover.sli.dev
# some information about your slides (markdown enabled)
title: Simplifiez la gestion de vos environnements de développement avec devenv !
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
layout: center
class: text-center
---

# Il y a bien longtemps

<v-clicks>

- Readme.md de 873 lignes pour l'install compatible uniquement debian 6
- Machine virtuelle fournie par l'équipe infra

</v-clicks>

---
layout: image

image: img/cry.gif
backgroundSize: contain
---



---
layout: center
class: text-center
---

# Il y a un peu moins longtemps

rvm, nvm, pyenv, ...

<v-clicks>

- On peut enfin avoir plusieurs version de langages sur sa machine !
- Mais on doit encore gérer les dépendances système, les services (postgres, redis, ...).

</v-clicks>


---
layout: image

image: img/noice.gif
backgroundSize: contain
---

---
layout: center
class: text-center
---

# Maintenant


<div class="flex justify-center">
  <img class="w-64 h-auto" src="./img/docker-logo-blue.png" />
</div>

<v-clicks>

- On isole les dépendances sans avoir à sacrifier les performances 
- On peut piocher dans tout un catalogue d'image préconfigurée pour démarer rapidement
- On peut se baser sur celles ci si besoin de configurer plus d'éléments
- On orchestre tout ça avec docker-compose
</v-clicks>



---
layout: image

image: img/head-explosion.gif
backgroundSize: contain
---


---
layout: center
class: text-center
---


- On isole les dépendances <span v-mark.crossed-off.red >sans avoir à sacrifier les performances</span> <v-click>(coucou mac 👋)</v-click> 
<v-clicks> 
- Problématiques lorsque certains outils s'attendent à avoir plusieurs runtime disponible
- On se retrouve à écrire nos commandes dans un shell tout moche alors qu'on a tuné notre .(bash|zsh)rc pour qu'il corresponde exactement à nos besoins
- On écrit notre besoin (impératif) au lieu de le décrire (déclaratif)

</v-clicks> 


---
layout: image

image: img/what-if.png
backgroundSize: contain
---

---
---

<img src="./img/logo-itn.svg" >


- Loïc BOURG
- Lead technique ITNetwork

---
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
---

<Asciinema src="casts/test.cast" :playerProps="{speed: 2, rows: 18}" />

---
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