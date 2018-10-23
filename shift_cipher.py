#!/usr/bin/python
# shift_cipher_v0.0.1.py
# nelbren@nelbren.com
# UsePythonIn10lines
def shift_str(x,d):
  r=''    
  for c in x:
    o = ord(c)
    r += chr(o if o == 32 else o + d - 26 if o + d > 90 else o + d)
  return r
def cipher2text(x):
  for d in range(0, 25):
    print("intento " + format(d, '02') + ": " + shift_str(x,d))  
cipher2text('PHHW PH DIWHU WKH WRJD SDUWB')
