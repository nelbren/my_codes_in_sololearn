#!/usr/bin/ruby
# string_rotations_v0.0.4.rb
# nelbren@nelbren.com
# UsingSubstringAndOnlyOneAssing
a=[];(x=gets.chomp).each_char{|c|x=x[1..-1]+c;a<<x};p a
