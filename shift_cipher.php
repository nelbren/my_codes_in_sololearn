#!/usr/bin/php
<?php
# shift_cipher_v0.0.1.php
# nelbren@nelbren.com
# UsePhpIn13lines
function shift_str($x,$d) {
  $r=''; $chars = str_split($x);
  foreach($chars as $c) {
    $o = ord($c);
    $r .= chr($o == 32 ? $o : ($o + $d > 90 ? $o + $d - 26 : $o + $d));
  }
  return $r;
}
function cipher2text($x) {
  for ($d = 0; $d <= 25; $d++) echo "intento " . sprintf('%03d', $d) . ": " . shift_str($x,$d) . "<br>\n";
}
cipher2text('PHHW PH DIWHU WKH WRJD SDUWB');
?>
