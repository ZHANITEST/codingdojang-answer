/*
 * - http://codingdojang.com/scode/350
 * - https://github.com/zhanitest/codingdojang.git
 * - Q:
    10미만의 자연수에서 3과 5의 배수를 구하면 3,5,6,9이다. 이들의 총합은 23이다.
    1000미만의 자연수에서 3,5의 배수의 총합을 구하라.
 */
import std.stdio;

void main(){
    int stack;
    for(int i=0; i<1000; i++){
        if( (i%3)==0 || (i%5)==0 ){ // 3이나 5로 나눈 나머지가 0일 때 stack에 더하기
            stack += i;
        }
    }
    writeln(stack);
}