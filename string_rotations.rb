#!/usr/bin/ruby
# string_rotations_v0.0.5.rb
# nelbren@nelbren.com
# UsingSubstringAndOnlyOneAssingInside
a=[];(x=gets.chomp).each_char{|c|a<<(x=x[1..-1]+c)};p a
