#!/usr/bin/env ruby

# Generates and installs a project nginx configuration using erb.
require "erb"
require "pathname"
require 'fileutils'

name = ARGV.shift
root = ARGV.shift || "."
input = ARGV.shift || "config/dev/#{name}.conf.erb"
config_dir = "/usr/local/etc/nginx"
sites_dir = "#{config_dir}/sites-enabled"

if !name || !root || !input
  abort "Usage: brew setup-nginx-conf [--root] [--extra-val=variable=value] <project_name> <project_root_path> <nginx.conf.erb>"
end

abort "Error: #{input} is not a .erb file!" unless input.end_with? ".erb"

root = File.expand_path root
input = File.expand_path input
output = "#{sites_dir}/#{name}"

if File.readlines("#{config_dir}/nginx.conf").grep(/include sites_enabled\/\*;/).size == 0
  puts "Add sites dir to nginx config"
  FileUtils.mkdir_p(sites_dir)
  File.open("#{config_dir}/nginx.conf") { |f| f.puts 'include sites_enabled/*;' }
end

unless File.exist?(output)
  puts "Writing nginx config to #{output}"
  # Find extra variables in the form of --extra-val=variable=value
  # Using a hash and ERB#result_with_hash would be nice, but it didn't
  # appear until Ruby 2.5. :/
  variables = binding
  ARGV.delete_if do |argument|
    next unless argument.start_with? "--extra-val="
    variable, value = argument.sub(/^--extra-val=/, "").split("=", 2)
    variables.local_variable_set(variable.to_sym, value)

    true
  end

  data = IO.read input
  conf = ERB.new(data).result(variables)
  IO.write output, conf
  `sudo brew services restart nginx`
end
