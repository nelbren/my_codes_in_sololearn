#!/usr/bin/ruby
# string_rotations_v0.0.2.rb
# nelbren@nelbren.com
# UsingRotate
x=gets.chomp;a=[];x.size.times{a<<x=x.chars.rotate(1).join};p a
