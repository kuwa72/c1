# c1

Language C oneliner/C言語ワンライナー

It is similer command [kazuho/C](https://github.com/kazuho/C) in pure bash script.

kazuhoさんのCコマンドの真似で、シェルスクリプトでできています。

c1 inherit STDIN, can write filter command like awk/sed.

標準入力を受け取れるので、awkやsedのようにフィルタも書けます（つらい）

Default template is that.

内部的にはテンプレートを受け取るようになっていてデフォルトは下です。

```c
#include <stdio.h>
int main(int argc, char *argv[])
{
  __BODY__ //replace by argument
}
```

If you want use custom template, create ~/.c1template file.

カスタムテンプレートは（以下略

Must use body place to \_\_BODY\_\_ replace by argument.

main関数本体にあたる部分は\_\_BODY\_\_と書いてください。

## example

```
echo "Hello world" | ./c1 'char x[256];fgets(x,sizeof(x),stdin);puts(x);'
Hello world
```
