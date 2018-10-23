#!/usr/bin/ruby
# shift_cipher_v0.0.2.rb
# nelbren@nelbren.com
# UseTernaryOperatorIn13lines
def shift_str(x,d)
  r=''
  x.each_byte do |c|
    na = c == 32 ? c : (c + d > 90 ? c + d - 26 : c + d)  
    r=r+na.chr
  end
  r
end
def cipher2text(x)
  p "    cifrado: #{x}"
  (1..25).each{|d| p "intento ##{sprintf '%02d', d}: #{shift_str(x,d)}" }
end
cipher2text('PHHW PH DIWHU WKH WRJD SDUWB')
