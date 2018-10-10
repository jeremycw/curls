#!/usr/bin/env ruby

require 'JSON'
body = false
ARGF.each do |line|
  if body
    data = JSON.parse(line)
    File.open(".auth", 'w') do |file|
      file.puts(data['access_token'])
    end
  end
  if line == "\r\n"
    body = true
  end
  puts line
end
