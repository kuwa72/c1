#! /usr/bin/env bash
if diff <(./c1 'printf("Hello, world!\n")') <(echo Hello, world!); then
  echo success Hello world
else
  echo failed hello world
fi

tmp=$(./c1 $(cat <<EOL

printf("fib:%d\n", f(42));
}
int f(int n)
{
   if ( n == 0 )
      return 0;
   else if ( n == 1 )
      return 1;
   else
      return ( f(n-1) + f(n-2) )
EOL
))

if [ "$tmp" != "fib:267914296" ];then
  echo failed fibonacci number
  exit 1
else
  echo success fibonacci number
fi
