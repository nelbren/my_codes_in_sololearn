#!/usr/bin/ruby
# string_rotations_v0.0.3.rb
# nelbren@nelbren.com
# UsingRegex
x=gets.chomp;a=[];x.each_char{|c|x.gsub!(/^(.)(.*)(.)$/, '\2\3'+c);a<<x.dup};p a
