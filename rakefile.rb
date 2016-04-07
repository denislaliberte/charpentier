require 'git'
require 'logger'

desc 'publish site : merge master to gh-pages and push to github'
task :publish do
  working_dir = File.dirname(__FILE__)
  git = Git.open(working_dir, log: Logger.new(STDOUT))
  git.checkout('gh-pages')
  git.merge('master')
  g.push(g.remote('origin'))
end

desc 'list all task'
task :default do
  system('rake -T')
end
