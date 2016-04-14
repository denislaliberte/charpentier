Gem::Specification.new do |s|
  s.name= 'charpentier'
  s.version = '0.0.0'
  s.date= '2016-04-14'
  s.summary = "tbd"
  s.description = "tbd description"
  s.authors = ["Denis Laliberté"]
  s.email = 'denis.laliberte@gmail.com'
  s.files = ["lib/charpentier.rb"]
  s.homepage=
  'http://denislaliberte.github.io/charpentier'
  s.license = 'MIT'
  s.files = `git ls-files`.split("\n")
  s.test_files= `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
