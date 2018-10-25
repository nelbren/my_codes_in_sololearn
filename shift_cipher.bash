#!/bin/bash
# shift_cipher.bash
# nelbren@nelbren.com
# UseBashIn32lines
desplazar_cifrado() {
  l=${#entrada}
  desplazamiento=$1
  intento=""
  f=$(printf "%02d" $desplazamiento)
  echo -n "intento #$f: "
  for ((n=0; n<$l; n++)); do
    c=${entrada:$n:1}
    a=$(echo -n $c | hexdump -d | gawk '{print $2}')
    a=$(echo $a | cut -c4-5)
    if [ "$c" == " " ]; then
      nc=$c
    else
      na=$((a+$desplazamiento))
      [ $na -gt 90 ] && na=$((na - 90 + 64))
      nc=$(printf "\\$(printf %o $na)")
    fi
    intento=$intento$nc
  done
  echo "$intento"
}

entrada="PHHW PH DIWHU WKH WRJD SDUWB"
# A=65, Z=90
echo "    cifrado: $entrada"
for ((i=1; i<25; i++)); do
  desplazar_cifrado $i
done
