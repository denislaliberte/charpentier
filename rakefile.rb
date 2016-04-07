desc "publish site : merge master to gh-pages and push to github"
task :publish do
  puts "merge to gh-pages branch"
  puts "push to github"
end

desc "list all task"
task :default do
  system("rake -T")
end

