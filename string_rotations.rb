#!/usr/bin/ruby
# string_rotations_v0.0.1.rb
# nelbren@nelbren.com
# UsingSubstring
x=gets.chomp;a=[];x.each_char{|c|x=x[1..-1]+c;a<<x};p a
