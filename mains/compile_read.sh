gcc -Wall -Werror -Wextra mains/main_read.c -o main libasm.a -I ./include -D BUFFER_SIZE=10 && ./main
