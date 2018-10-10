#!/usr/bin/env ruby
require 'JSON'
body = false
ARGF.each do |line|
  if body
    line = JSON.pretty_generate(JSON.parse(line))
  end
  if line == "\r\n"
    body = true
  end
  puts line
end
