// void main(){
//     assert(num.parse('42') is int);
//     assert(num.parse('0x42') is int);
//     assert(num.parse('0.50') is double);



// }
void main()
{
  //Dart 语言本质上是动态类型语言，类型是可选的
  //可以使用 var 声明变量，也可以使用类型来声明变量
  //一个变量也可以被赋予不同类型的对象
  //但大多数情况，我们不会去改变一个变量的类型
  
  //字符串赋值的时候，可以使用单引号，也可以使用双引号
  var str1 = "Ok?";
  
  //如果使用的是双引号，可以内嵌单引号
  //当然，如果使用的是单引号，可以内嵌双引号，否则需要“\”转义
  //String str2 = ‘It\’s ok!’;
  String str2 = "It's ok!";
  
  //使用三个单引号或者双引号可以多行字符串赋值
  var str3 = """      Dart Lang
        Hello,World!""";

  print(str3);
  //在Dart中，相邻的字符串在编译的时候会自动连接
  //这里发现一个问题，如果多个字符串相邻，中间的字符串不能为空，否则报错
  //但是如果单引号和双引号相邻，即使是空值也不会报错，但相信没有人这么做
  //var name = 'Wang''''Jianfei'; 报错
  var name = 'Wang'' ''Jianfei';
  
  //assert 是语言内置的断言函数，仅在检查模式下有效
  //如果断言失败则程序立刻终止
  assert(name == "Wang Jianfei");
  
  //Dart中字符串不支持“+”操作符，如str1 + str2
  //如果要链接字符串，除了上面诉说，相邻字符串自动连接外
  //还可以使用“$”插入变量的值
  print("Name：$name");
  
  //声明原始字符串，直接在字符串前加字符“r”
  //可以避免“\”的转义作用，在正则表达式里特别有用
  print(r"换行符：\n");
  
  //Dart中数值是num，它有两个子类型：int 和 double
  //int是任意长度的整数，double是双精度浮点数
  var hex = 0xDEADBEEF;
      
  //翻了半天的文档，才找打一个重要的函数：转换进制，英文太不过关了
  //上面提到的字符串插值，还可以插入表达式：${}
  print("整型转换为16进制：$hex —> 0x${hex.toRadixString(16).toUpperCase()}");

  // const list = const[1,2,3];//Ok
  // const list = [1,2,3];//Error

  // final list = [1,2,3];//Ok
  // final list = const[1,2,3];//Ok
  // final list = const[new DateTime.now(),2,3];//Error,const右边必须是常量



}