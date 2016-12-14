# c1

Language C oneliner

It is similer command [kazuho/C](https://github.com/kazuho/C) in pure bash script.

c1 inherit STDIN, can write filter command like awk/sed.

Default template is that.

```c
#include <stdio.h>
int main(int argc, char *argv[])
{
  __BODY__ //replace by argument
}
```

If you want use custom template, create ~/.c1template file.

Must use body place to \_\_BODY\_\_ replace by argument.

## example

```
echo "Hello world" | ./c 'char x[256];fgets(x,sizeof(x),stdin);puts(x)'
Hello world
```
