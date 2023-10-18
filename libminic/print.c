int print(char* msg, int len){
    /*
    rax = 1 (write)
    rdi = 1 (stdout)
    rsi = message
    rdx = length
    syscall
    */
    register char* arg2 asm("rsi") = msg;
    register int   arg3 asm("rdx") = len;
    __asm__("mov $1, %rax; mov $1, %rdi; syscall;");
    return 0;
}
