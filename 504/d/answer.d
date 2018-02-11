/*
 * - http://codingdojang.com/scode/504
 * - https://github.com/zhanitest/codingdojang.git
 */
import std.stdio;
import std.conv;

void main(){
  int[wchar] result;
  for(int i=1; i<1001; i++){
    foreach(wchar c; to!string(i)){
      if(c !in result)
        { result[c] = 0; }
      result[c] += 1;
    }
  }
  writeln(result);
}