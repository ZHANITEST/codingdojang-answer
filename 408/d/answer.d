/*
 * - http://codingdojang.com/scode/408
 * - https://github.com/zhanitest/codingdojang.git
 * - Q:
	1차원의 점들이 주어졌을 때, 그 중 가장 거리가 짧은 것의 쌍을 출력하는 함수를 작성하시오. (단 점들의 배열은 모두 정렬되어있다고 가정한다.)
	예를들어 S={1, 3, 4, 8, 13, 17, 20} 이 주어졌다면, 결과값은 (3, 4)가 될 것이다.
 */
import std.stdio;

int sorry(int[] input){
	int min = input[1]-input[0]; // 첫번째 비교의 최소값
	int cur = 1; // 첫번째 비교의 최소값의 위치
	for(int i=2; i<input.length-1; i++){
		int x = input[i];
		int y = input[i+1];
		if( (y-x)<min ) 
			{ min = y-x; cur = x; } // 최소값보다 작으면, 위치(cur)와 최소값(min) 저장
	}
	return cur;
}

void main(){
	int[] input = [1, 3, 4, 8, 13, 17, 20];
	int point = sorry(input);
	writefln("[%d, %d]", input[point], input[point+1]);
}