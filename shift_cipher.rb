#!/usr/bin/ruby
# shift_cipher_v0.0.1.rb
# nelbren@nelbren.com
# UseShiftCipherIn20lines
def shift_str(x,d)
  r=''
  x.each_byte do |c|
    if (c == 32)
      na=c
    else
      na=c+d
      if (na > 90)
        na = na - 90 + 64
      end      
    end
    r=r+na.chr
  end
  r
end
def cipher2text(x)
  p "    cifrado: #{x}"
  (1..25).each{|d| p "intento ##{sprintf '%02d', d}: #{shift_str(x,d)}" }
end
cipher2text('PHHW PH DIWHU WKH WRJD SDUWB')
