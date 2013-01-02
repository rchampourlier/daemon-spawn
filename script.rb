#!/usr/bin/env ruby
# -*- ruby -*-
require 'rubygems'
require File.expand_path('../lib/daemon_spawn', __FILE__)
 
class TestDaemonSpawn < DaemonSpawn::Base
  def start
    puts "Starting"
  end
  def stop
    puts "Stopping"
  end
end

current_dir = File.expand_path('.')
TestDaemonSpawn.spawn!(
  :log_file     => File.join(current_dir, 'script.log'),
  :pid_file     => File.join(current_dir, 'script.pid'),
  :working_dir  => current_dir
)