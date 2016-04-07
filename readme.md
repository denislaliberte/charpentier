# Charpentier
[![Build Status](https://travis-ci.org/denislaliberte/charpentier.svg?branch=master)](https://travis-ci.org/denislaliberte/charpentier)

This a new project develop in a [readme driven developpement](http://tom.preston-werner.com/2010/08/23/readme-driven-development.html)
Everithing here is a draft and not implemented

```cmd
$ jm
Charpentier, Simple devops tools for small teams
Name after Jean-Marie Charpentier, he is friendly you can call him jm

  Usage: jm [--help] compile
```


## Objectives

Charpentier is a simple provisionner for your projects servers
Like [sunzi](https://github.com/kenn/sunzi) it organise simple config template files and shell scripts for every environnements.

```cmd
$ jm install staging root@new_host.example.com
```

Charpentier is a simple newbie friendly interface for all your projects command line tools
Help to onboard new user, document developpement tools and automate frequent task

```cmd
$ jm frontend build // run grunt, gulp or wathever
$ jm test // run rake test, pytest 
```

Charpentier help to manage multiple project (inspire from [gitgot](https://github.com/genehack/app-gitgot))

```cmd
$ jm ls
  mywebsite.com
  myapp
  client_app
$ jm deploy client_app
```

