#include <mini.h>

void _start();
void __libc_exit(int status);
int main(int argc, char** argv, char** envp);
void __libc_start_main(int argc, char** argv, char** envp){
    int status = main(argc, argv, envp);
    __libc_exit(status);
}
