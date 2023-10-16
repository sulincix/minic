void __exit(int __status){
    register int   arg3 asm("rdi") = __status;
    __asm__("mov $60, %rax; syscall");
}
