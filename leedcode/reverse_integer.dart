class Solution {
  int reverse (int x) {
    bool isNagetive = x < 0;
    List<String> numbers = x.abs().toString().split('');
    int reverseInt = int.parse(numbers.reversed.join());

    if(isNagetive){
      reverseInt = -reverseInt;
    }
    if(reverseInt < -2147483648 || reverseInt > 2147483647 ){
      return  0;
    }
   return reverseInt;
  }
}

void main(){
  print(Solution().reverse(-2147483648));
}