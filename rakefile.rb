require 'git'
require 'logger'
require 'tempfile'

desc 'publish site : merge master to gh-pages and push to github'
task :publish do
  puts 'rake publish'
  working_dir = File.dirname(__FILE__)
  log_path = working_dir + '/log/rake_pubish_' + Time.now.to_i.to_s + '.log'
  file = File.new(log_path, 'w+')
  git = Git.open(working_dir, log: Logger.new(file))
  git.checkout('gh-pages')
  git.merge('master')
  git.push('origin','gh-pages')
  git.checkout('master')
  file.close
  puts 'log file'
  puts file.path
end

desc 'list all task'
task :default do
  system('rake -T')
end
