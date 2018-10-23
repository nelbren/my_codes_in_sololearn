/* shift_cipher_v0.0.1.c
   nelbren@nelbren.com
   UseShiftCipherIn28lines */
#include <stdio.h>
#include <string.h> // strlen
#include <stdlib.h> // malloc
char *shift_str(char *x, int d) {
  size_t len = strlen(x);
  char *r = malloc(sizeof(char) * len);
  for(int i = 0; i < len; i++) {
    char na;  
    if (x[i] == 32)
      na = x[i];
    else {
      na = x[i] + d;
      if (na > 90)
        na = na - 90 + 64;
    }
    r[i] = na;
  }
  r[len] = '\0';
  return r;
}
void cipher2text(char *x) {
  for(int d = 0; d < 25; d++) 
    printf("intento #%02d: %s\n", d, shift_str(x,d));
}
int main() {
  cipher2text("PHHW PH DIWHU WKH WRJD SDUWB");
  return 0;
}
