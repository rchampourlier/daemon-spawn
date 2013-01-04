# -*- coding: utf-8 -*-
# -*- ruby -*-

require 'rubygems'
require './lib/daemon_spawn.rb'
require 'rake/testtask'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "daemon-spawn"
    gemspec.summary = "Daemon launching and management made dead simple [rchampourlier's fork]"
    gemspec.description = %Q[With daemon-spawn you can start, stop and restart processes that run
    in the background. Processed are tracked by a simple PID file written
    to disk.]
    #gemspec.rubyforge_project = "daemon-spawn"
    gemspec.email = "romain@softr.li"
    gemspec.homepage = "http://github.com/rchampourlier/daemon-spawn"
    gemspec.authors = ["Alex Vollmer", "Seamus Abshere", "Emmanual Gomez", "Seth Falcon", "Woody Peterson", "Tilo Prütz", "Romain Champourlier"]
  end
  #Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install jeweler"
end

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*test.rb']
  t.verbose = true
end

desc "Run tests"
task :default => :test
# vim: syntax=Ruby
