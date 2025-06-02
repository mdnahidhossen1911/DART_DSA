class SelectionSort{
  //45,23,658,5,34,76

  static List<int> selectionSort(List<int> randomNumbers){
    for(int i=0; i<randomNumbers.length-1; i++){
      int minIndex = i; // [0] = 45
      for(int j= i+1; j<randomNumbers.length; j++){
        if(randomNumbers[j] < randomNumbers[minIndex]){
          minIndex = j;
        }
      }
      int temp = randomNumbers[i]; //45
      randomNumbers[i] = randomNumbers[minIndex]; //[0] < =5
      randomNumbers[minIndex] = temp; //[3] < =45
      //print('index= $i ... list = $randomNumbers');
    }
    return randomNumbers;
  }
}