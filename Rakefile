require "bundler/gem_tasks"
require "rake/testtask"
require "pry"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
end

task :default => :test

task :pry do
  require File.join(File.dirname(__FILE__), 'lib', 'adoc')
  Pry.start
end
