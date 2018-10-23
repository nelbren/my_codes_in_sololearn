#!/usr/bin/ruby
# string_rotations_v0.0.6.rb
# nelbren@nelbren.com
# UsingAnCustomFunction
=begin
String Rotations

Create a function that accepts a string argument and returns an array of strings, which are shifted versions of the argument string.

Sample Input
"Hello"

Sample Output
["elloH", "lloHe", "loHel", "oHell", "Hello"]  

As you can see from the example above, each element shifts the first character of the previous version to the end.
The original string should be included in the output array. The order matters; each element of the output array should be the shifted version of the previous element.
The output array should have the same length as the input string. 
The function should return an empty array when a zero-length String is provided as the argument.
=end
def r(x)
  a=[];x.each_char{|c|a<<(x=x[1..-1]+c)};a
end
p r('Hello'), r('')
