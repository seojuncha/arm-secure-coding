#include <stdint.h>
#include <stdio.h>

int main(void) {
  uint8_t a = 250, b = 10;
  uint8_t r = a + b;
  unsigned carry = ((uint8_t)(a + b) < a);

  printf("a=%u b=%u r=%u (carry=%u)\n", a, b, r, carry);
  return 0;
}
