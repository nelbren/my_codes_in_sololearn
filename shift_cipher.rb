#!/usr/bin/ruby
# shift_cipher_v0.0.4.rb
# nelbren@nelbren.com
# UseBracketSyntaxIn7lines
def shift_str(x,d)
  r=''; x.each_byte{|c| r += (c == 32 ? c : (c + d > 90 ? c + d - 26 : c + d)).chr }; r
end
def cipher2text(x)
  (0..25).each{|d| p "intento ##{sprintf '%02d', d}: #{shift_str(x,d)}" }
end
cipher2text('PHHW PH DIWHU WKH WRJD SDUWB')
