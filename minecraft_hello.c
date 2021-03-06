#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdbool.h>

void win() {
  char *argv[2] = {"/bin/sh", NULL};
  execve("/bin/sh", argv, NULL);
}

bool mine(char *buf, size_t *blocks) {
  printf("Which block do you want to mine? >> ");
  fgets(buf, 7, stdin);
  int index = atoi(buf);
  if (index == -1) return false;
  printf("block %d contains 0x%zx.\n", index, blocks[index]);
  return true;
}

int main() {
  setbuf(stdout, NULL);

  char buf[80];
  puts("Welcome to m1nEcr4F7!");
  puts("Explore your world, and create anything you can imagine!");

  puts("Now let's mine some blocks and see what you get...");
  puts("(Mine block -1 to exit.)");

  size_t blocks[20];
  blocks[1] = 0x1337; // 3 entries for 3 functions look suspicoius...
  blocks[9] = 0x2333;
  blocks[19] = 0x2020;

  puts("-------------------------------------------");
  printf("win function is at: 0x%zx.\n", (size_t) win);
  printf("blocks is at: 0x%zx.\n", (size_t) blocks);
  printf("buf is at: 0x%zx.\n", (size_t) buf);
  printf("buf-blocks is equal to 0x%zx.\n", (size_t) buf - (size_t) blocks);
  printf("buf-win is equal to 0x%zx.\n", (size_t) buf - (size_t) win);
  printf("%p\n", &win);
  while (mine(buf, blocks));

  puts("Before you go, can I know your name?");
  fgets(buf, 200, stdin);

  puts("Very good, bye.");
  return 0;
}
