require 'git'
require 'logger'

desc 'publish site : merge master to gh-pages and push to github'
task :publish do
  working_dir = File.dirname(__FILE__)
  git = Git.open(working_dir, log: Logger.new(STDOUT))
  current_branch = git.branches.local
  git.checkout('gh-pages')
  git.merge('master')
  git.push(g.remote('origin'))
  git.checkout(current_branch)
end

desc 'list all task'
task :default do
  system('rake -T')
end
