# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "random_youtube_comment"
  gem.homepage = "http://github.com/crymer11/random_youtube_comment"
  gem.license = "UNLICENSE"
  gem.summary = %Q{Retrieves a (psuedo)random comment from a (psuedo)random video.}
  gem.description = %Q{Retrieves a (psuedo)random comment from a (psuedo)random video using the Wordnik API to get a random word, search YouTube for that word, get a random search result with comments, and then get a random comment from that result. Ugly, but it works. Usually.}
  gem.email = "colin.rymer@gmail.com"
  gem.authors = ["Colin Rymer"]
  gem.version = RandomYoutubeComment::VERSION
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :default => :spec

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = RandomYoutubeComment::VERSION

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "random_youtube_comment #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
