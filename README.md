## 得到伪汇编代码
如下代码
```
package pkg

var Num int = 1
var Name string = "1"
```
cmd: `go tool compile -S -N -l pkg/pkg.go`  
<br/>
output为
```
go.cuinfo.packagename. SDWARFCUINFO dupok size=0
        0x0000 70 6b 67                                         pkg
go.string."1" SRODATA dupok size=1
        0x0000 31                                               1
"".Num SNOPTRDATA size=8
        0x0000 01 00 00 00 00 00 00 00                          ........
"".Name SDATA size=16
        0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
        rel 0+8 t=1 go.string."1"+0
```
## 语法
`DATA symbol+offset(SB)/width, value`  
`GLOBL symbol(SB), width`

## string结构体
```
type StringHeader struct {
	Data uintptr
	Len  int
}
```