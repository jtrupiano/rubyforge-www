require 'yaml'
require 'erb'

projects = []

tree = open('projects.yml') {|f| YAML.load(f) }
tree['projects'].each do |project|
  projects << project # it's just a hash at this point
end

x = 42
template = ERB.new(File.read('index.html.erb'))

File.open('index.html', 'w') do |file|
  file.write template.result
end
