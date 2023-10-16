int print(char* msg, int len);
void __exit(int status);
#define exit(A) __exit(A)
