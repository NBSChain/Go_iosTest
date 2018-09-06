# Go_iosTest  Xcode集成go语言集成sdk  <br/>

#必要条件 <br />
go语言环境 <br />
gomobile  <br />
Xcode  <br />

#go语言代码 保存路径：golang.org/x/mobile/example/bind/hello/hello.go  <br />
package hello  <br />
import "fmt"  <br />

func Greetings(name string) string { <br />
    return fmt.Sprintf("Hello, %s!", name) <br />
} <br />

#对go代码进行封装 <br />
1 获取代码path <br />
$ go get -d golang.org/x/mobile/example/bind/hello <br />
2 进行集成封装 <br />
$ cd $GOPATH/src/golang.org/x/mobile/example/bind  <br />
$ gomobile bind -target=ios golang.org/x/mobile/example/bind/hello <br />
此命令在hello路径下生成Hello.framework <br />

#在Xcode中集成Hello.framework <br />
打开新建工程Go_iosTest <br />
拖拽hello.framework文件到xcode项目内 <br />
在需要的地方#import "Hello/hello.h"引入头文件 <br />
HelloGreetings(@"") 调取go模块方法并传递参数 <br />
