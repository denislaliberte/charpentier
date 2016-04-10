# Charpentier Roadmap

## Project Goals

## 0.0
- Integration test, aruba, rspec
- base commands, help, version
- documentation, readme, mdwiki, roadmap, changelog, liscence
- basic cli interface
- travisci

## 0.1 
- Scaffold
- Compile recipes and files with attributes in charpentier.yml
- Execute on vagrant

## 0.2
- read yml from roles, recipes and global overrides
- compile multiple recipes to script.sh
- execute by ssh

## 0.3
- resolve dependecies
- manage default and namespace for dependencies
- manage name colision for recipe with default value

## 0.4
- manage log files
- add check script
- add travis

## 1.0
- support sunzi legacy, install.sh sunzi.yml

## Somedays
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
