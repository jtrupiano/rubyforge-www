require 'rubygems'
gem 'rake', '~> 0.8.4'
require 'rake'

desc "Generate index.html"
task :build do
  # Compile with HAML here
end

desc "Publishes index.html to rubyforge"
task :publish do
  ['index.html', 'style.css'].each do |file|
    `./upload.sh #{file}`
  end
end

task :default => :build