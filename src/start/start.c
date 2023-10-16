#include <mini.h>

void _start();
int main(int argc, char** argv, char** envp);
void __libc_start_main(int argc, char** argv, char** envp){
    exit(main(argc, argv, envp));
}
