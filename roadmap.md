# Charpentier Roadmap

## v0.1 readme - Cli tool template

### Objectives

Charpentier is your team automation tools, it's help to integrate all the tools
for your multiple projects with diverse technical requirements.

It's wrap the mos frequently use command of yours projects with a common cli intergface
It's help document and standardise automation across projects

### Current state

Right now Charpentier is only a command line application skeletton, you can use it as a base 
for your next tool.

The [roadmap](roadmap.md) contains the readme for futures version in the fashion of 
[Readme Driven Design ](http://tom.preston-werner.com/2010/08/23/readme-driven-development.html)

### Install

```
$ gem install charpentier
```

### simple command line interface

The most simple command line interface librairy is include [metadone](http://naildrivin5.com/methadone/)

```cmd
$ jm
Charpentier, Simple devops tools for small teams
Name after Jean-Marie Charpentier, he is friendly you can call him jm

  Usage: jm [--help] compile
```

### md Wiki

mdwiki is here to transform the readme in a full github pages website for free

All you need to know about mdwiki is all you need is in index.html and you dont need 
to change anything it's just work. The home page is the readme.md and you add all 
the links you want in the menu in the file navigation. See more at mdwiki.info

I dont thing the google indexing bot like mdwiki but it's not a concern for the v0
version and you can change it when you publish the v1 official version.

### contribution

The code of conduc included is from the contributor-covenant.org

The mit liscence is included, choose another here choosealicense.com

### Code quality

A simple travis ci file is include and the badge is include in the readme.

Some cucumber test and rspec test are include but it's just place holder

A rubocop file is include fo static analysis.

### Dependencies

gemspec

runtime dependencies

developpement dependencies

### Automation

A rake file is include with task for publish the doc to github and check code quality

### Semantic versionning

A file with the current version (v0.1.0) as the name is include its contains the spectification
from semver.org


--------------------------------------------------------------------------------

## v0 minor release goals

### 0.0
- Integration test cucumber
- gemspec and installation instruction from github
- extensive roadmap
- simple contribution guide
- automation with rake, publish to gh-pages, alias command line, run test, clean log files
- build readme from template and cli output, generate manifest
- travisci, check code quality, run test on latest stable version of ruby
- do an awseome list https://github.com/sindresorhus/awesome

### 0.1
- create           scaffold projects, plugins or portfolio
- download              download project
- add change log link like https://raw.githubusercontent.com/olivierlacan/keep-a-changelog/v0.0.7/CHANGELOG.md

### 0.2
- read yml from roles, recipes and global overrides
- execute          default command - execute command at the root of the project
- virtual-macine    bootstrap vagrant

### 0.3
- provision use sunzi to provision vm

### 0.4
- task              execute task or if nor arguments list availaible task from external tools, rake fabrick gulp or other

### 0.5
- use-project     set current project, list if no arguments
- use-environnemnt    set current environement, list if no arguments
- deploy           deploy stage release to prod server

### 0.x
- branch            create new feature branch
- stage             deploy branch to stage server
- release           create release branches from branch
- manage log files
- test              run tests
- analyse           run static analysis
- compile multiple recipes to script.sh
- dev-tools      install developpement tools for project
- build
- watch
- download              download portfolio
- serve             simple webserver
- genrate
- publish
- resolve dependecies
- add check script

--------------------------------------------------------------------------------

## v1.0 readme - Simple automation tool for teams

### Commands

```cmd
$ jm commands
      e | execute          default command - execute command at the root of the project
      c | create           scaffold projects, plugins or portfolio
        | alias            add project command
        | variable         add project environment variable
   Portfolio
      d | download              download project or portfolio
      project | use-project     set current project, list if no arguments
      env | use-environnemnt    set current environement, list if no arguments
   Provisionner:
      p | provision
   Developement:
      tools | dev-tools      install developpement tools for project
      vm | virtual-macine    bootstrap vagrant
      s  | serve             simple webserver
      t  | test              run tests
      a  | analyse           run static analysis
      tk | task              execute task or if nor arguments list availaible task from external tools, rake fabrick gulp or other
   Build: 
      b | build
      w | watch
   Workflow:
      wb | branch            create new feature branch
      ws | stage             deploy branch to stage server
      wr | release           create release branches from branch
      wd |  deploy           deploy stage release to prod server
  Document:
      g | genrate
      p | publish

  Options:
     -p       projects
     -e       Environnement
     -v       verbose
     -q       quiet, minimum output
     -y       without confirmation, use default
     -p       password
     -u       user root@localhost
     -o       output - log file location
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

Charpentier is a simple newbie friendly interface for all your projects command line tools
Help to onboard new user, document developpement tools and automate frequent task

#### simple example

```cmd
$ jm frontend build // run grunt, gulp or wathever
$ jm test // run rake test, pytest 
```

Charpentier help to manage multiple project (inspire from [gitgot](https://github.com/genehack/app-gitgot))

```cmd
$ jm project
  name        | path                | portfolio
  ------------|---------------------|----------
  client_app   |~/Sites/client_app    | team-portfolio
  project_b   | ***no local path*** | team-portfolio
  project_c   | ***no local path*** | team-portfolio
  charpentier | ***no local path*** | personnal-projects
$ jm deploy -p client_app
```

### portfolio

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

### Download team project
Now the new developper can work with all the team project

```
$ jm project
  name        | path                | portfolio
  ------------|---------------------|----------
  project_a   | ***no local path*** | team-portfolio
  project_b   | ***no local path*** | team-portfolio
  project_c   | ***no local path*** | team-portfolio
  charpentier | ***no local path*** | personnal-projects

$ jm download --worspace ~/Sites project_a 
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

If you want to run a lot of command for a project you can tel jm wich projects to use

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

### gitgot

### rake

### sunzi

### gitolite

Charpentier integrate with gitolite as your main git hosting or as a mirror.


--------------------------------------------------------------------------------

## v2 readme - Plugin system

Charpentier is build of several plugins, you can replace them or write your own

plugin      | description
------------|------------
jm-core     |
jm-cli      |
jm-package  | package manager
jm-command  | api to declare new commands and option in datastructure
jm-alias    | simple command for alias
jm-execute  | exécution of command
jm-conf     | manage configuration with environnement overrides and defaults
jm-db       | put your configuration in document database instead of file system
jm-file     | put your configuration in yaml, csv or json files
jm-compile  | compile template for config and script files
jm-script   | execute script local and remote
jm-web      | webapi and webhook
jm-doc      | generate static site for documentation 
jm-chat     | talk to charpentier over chat
jm-task     | integrate with task manager like rake
jm-provision|
jm-git      | use the scm api to enforce your branching model
jm-js       | single page application to controle the jm-web
jm-password | password management 


--------------------------------------------------------------------------------


## Somedays

- test open3 http://ruby-doc.org/stdlib-1.9.3/libdoc/open3/rdoc/Open3.html
- refactor integration test to cucumber
- http://keepachangelog.com/
- add task for $ git ls-files | tee manifest.txt
- check seattlerb/rake-remote_task
- scrutinizer-ci.com and/or appveyor.com and/or code climate
- fork to skeleton project
- the only run time dependecies are docopt, moustache and yml to have a language agonstic api
- implement the chatops server with hubot and js
- check relishapp
- add style checker for recipes
- generate readme from roles and recipes
- vagrant provisionner plugin github.com/mitchellh/vagrant/tree/master/plugins/provisioners
- docker plugin
- deploy to linode
- create simple dependecy manager csv, github pages
