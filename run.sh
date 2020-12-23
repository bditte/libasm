gcc  -no-pie mains/main_${1}.c -o main libasm.a -I ./include && ./main
