# c1

## example

```
echo "Hello world" | ./c1 'char x[256];fgets(x,sizeof(x),stdin);puts(x);'
Hello world
```

## descritpion

It is one-line C-language command. It is similer command [kazuho/C](https://github.com/kazuho/C) in pure bash script.

c1 inherit STDIN, can write filter command like awk/sed.(see example)

In default, use to template is as below. The c1 arguments repalced on *${@}*.(Its bash idiom, mean whole arguments)

```c
#include <stdio.h>
int main(int argc, char *argv[])
{
  ${@};
}
```

If you want use custom template, create ~/.c1template file.  You must use body place to *${@}*.
