void main(){
 int i = 121;
 print(isPalindrome(i));
}

bool isPalindrome(int x) {
  bool isPal = false;
  List<String> numberList = x.toString().split('');

  for(int i=0; i<numberList.length; i++){
    int compayerIndex = (numberList.length-1)-i;
    if(numberList[i] == numberList[compayerIndex]){
      isPal = true;
    }else{
      isPal = false;
      break;
    }
  }
  return isPal;
}