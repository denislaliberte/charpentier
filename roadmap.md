# Charpentier Roadmap

***This is the future readme of the v1 of the charpentier project in the idea of [Readme Driven Design ](http://tom.preston-werner.com/2010/08/23/readme-driven-development.html)***


## v0 readme - Cli tool template

### Objectives

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

Charpentier is a devops tool to automate task on multiple projects with différents
technology, tooling and environnement.

If for example you have a small team of 5 to 50 developpers, 5 to 25 active client, 5 to 500 legacy project
you support multiple technologie maybe js, ruby, python and more
you have a lot of command line tools to automate everythig 
you need to support multiple environnements some in your own infrasctructure
you want to onboard new developper 
document everithing
and standardise all you can

Charpentier can help

```cmd
$ jm
Charpentier, Simple devops tools for small teams
Name after Jean-Marie Charpentier, he is friendly you can call him jm

  Usage: jm [--help] compile
```
### Install

```
$ gem install charpentier
```


## v0 goals

### 0.0
- Integration test, aruba, rspec
- base commands, help, version
- documentation, readme, mdwiki, roadmap, changelog, liscence
- basic cli interface
- travisci

### 0.1 
- Scaffold
- Compile recipes and files with attributes in charpentier.yml
- Execute on vagrant

### 0.2
- read yml from roles, recipes and global overrides
- compile multiple recipes to script.sh
- execute by ssh

### 0.3
- resolve dependecies
- manage default and namespace for dependencies
- manage name colision for recipe with default value

### 0.4
- manage log files
- add check script
- add travis



## v1.0 readme - Simple automation tool for teams

### Commands

```
$ jm commands


```



### portfolio

Now you can clone the team portfolio of projects or create your own

```
$ jm portfolio create personnal-projects
  new portfolio in ~/.charpentier/portfolio/personnal-projects

$ jm portfolio clone root@githosting.example.com:team-portfolio
  clone portfolio in ~/.charpentier/portfolio/team-portfolio
```

### common interface for multiple tool

If your using multiple technologie you have a lot of tools to automate task on your projects
- yeoman to generate scaffolding
- 2 or 3 js task runner like gulp and grunt to automate js tasks
- capistrano to deploy rails projects
- rake to automate things
- a bunch of shell scripts
- artisan, drush composer for php project
- a lot of test runner for front end and backend

Whith charpentier you can configure a common command line interface 

### Clone team project
Now the new developper can work with all the team project

```
$ jm project
  name        | path                | portfolio
  ------------|---------------------|----------
  project_a   | ***no local path*** | team-portfolio
  project_b   | ***no local path*** | team-portfolio
  project_c   | ***no local path*** | team-portfolio
  charpentier | ***no local path*** | personnal-projects

$ jm clone --worspace ~/Sites project_a 
Cloning into ~/Sites/project_a...

$ jm project
$ jm project
  name        | path                | portfolio
  ------------|---------------------|----------
  project_a   |~/Sites/project_a    | team-portfolio
  project_b   | ***no local path*** | team-portfolio
  project_c   | ***no local path*** | team-portfolio
  charpentier | ***no local path*** | personnal-projects

$ jm cd project_a
$ pwd
~/Sites/project_a.com

$ pwd
~/Sites/project_a.com
```

### Manage multiple environnement

```
$ jm -p project_a env
  local
  stage
  prod

$ jm -p project_a -e prod deploy
  deploy project_a on prod environnement
  using variable from 
  ~/.charpentier/projects/project_a/charpentier.yml
  and override with environnements from
  ~/.charpentier/env/prod/project_a/charpentier.yml
```

If you want to run a lot of command for a project you can tel

```
$ jm project project_a
  charpentier will use project_a
  using variable from 
  ~/.charpentier/projects/project_a/charpentier.yml
$ jm env local
  charpentier will use project_a with local environnement
  using variable from 
  ~/.charpentier/projects/project_a/charpentier.yml
  and override with environnements from
  ~/.charpentier/env/prod/project_a/charpentier.yml
$ jm merge stage prod
  project: project_a, environnement: local
  charpentier mergin stage branch to prod
  OK
$ jm check
  project: project_a, environnement: local
  charpentier run unit test and static analysis
  OK
$ jm deploy
  project: project_a, environnement: local
  deploy project_a on prod environnement root@10.0.0.123
  OK
```

### project configuration and files

Each project script data script and file are in this own folder inside the `~/.charpentier/projects/project` directory

You can override script and variable by environnement in `~/.charpentier/env/*/project` 

Everything in `~/.charpentier/env/local` is gitignore so each team member can have it's own configutation override

`~/.charpentier/env/prod` folder is also gitignore, to ensure we dont share production information to everyone
You can version prod environnement in a private repository accessible only to sysadmin

```
~/.charpentier
├── charpentier.yml
├── compiled
├── env
│   ├── local
│   ├── prod
│   ├── readme.md
│   └── stage
│       └── project_template
│           └── charpentier.yml
├── plugins
│   └── template.rb
├── projects
│   └── project_template
│       ├── charpentier.yml
│       ├── rakefile.rb
│       └── recipes
│           ├── complete_recipe
│           │   ├── data.yml
│           │   ├── file.conf
│           │   └── script.sh
│           └── simple_recipes.sh
├── rakefile.rb
└── readme.md
```

### rake

### sunzi

### gitgot

### gitolite

Charpentier integrate with gitolite as your main git hosting or as a mirror.

## v1 goals

- support sunzi legacy, install.sh sunzi.yml


## v2 readme - Plugin system

### Simple provisionner

### Webhook Plugin

Charpentier commands can be trigger by web hook, you can call them from CI server, github or gitlab

### Lita plugin

Install charpentier lita plugin so you can invoke commands by chat or have notification

### build your own plugins

### project data
If you want to share the charpentier data with developper outside of your team you can also put the
project folder inside the repository

```
~/Sites/project_example/charpentier
├── charpentier.yml
├── compiled
├── recipes
│   ├── complete_recipe
│   │   ├── data.yml
│   │   ├── file.conf
│   │   └── script.sh
│   └── simple_recipes.sh
└── roles
    └── local.yml
```

## v2 goals 

- database caching mongo or redis
- portable core, only dependencies, yaml, moustache, docopt


## v3 readme - Ecosystem 

The only dependencies for the core are docopt, moustache and yml

## Somedays

- manage multiple team portfolio of project 
- check seattlerb/rake-remote_task
- add task for $ git ls-files | tee manifest.txt
- fork to skeleton project
- add gem files to install by gem
- refactor integration test to cucumber
- check  http://editorconfig.org
- http://keepachangelog.com/
- scrutinizer-ci.com and/or appveyor.com and/or code climate
- check autotest https://autotest.github.io/
- check http://yardoc.org/
- check relishapp
- add http://humanstxt.org/humans.txt and meta to mdwiki
- check http://read-the-docs.readthedocs.org/
- constribution guide $ git show contribting
- support one file plugin
- test open3 http://ruby-doc.org/stdlib-1.9.3/libdoc/open3/rdoc/Open3.html
- refactor ssh to a plugin
- add lita plugin plugins.lita.io
- deploy to digital ocean
- download template script
- download template dependencies
- delete compiled folder for security
- export csv for check status
- add style checker for recipes
- generate readme from roles and recipes
- vagrant provisionner plugin github.com/mitchellh/vagrant/tree/master/plugins/provisioners
- docker plugin
- deploy to linode
- Manage multiple repos
- export csv information for multiple repos, format with wikimd
- Import / export from github.com/genehack/app-gitgo and gitolite.com
- create simple dependecy manager csv, github pages
- Choose a command line interface docopt.org or naildrivin5.com/gli
- web hook for git operation
