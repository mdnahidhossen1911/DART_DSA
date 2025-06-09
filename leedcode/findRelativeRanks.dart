class Solution {
  List<String> findRelativeRanks(List<int> score) {
    List<int> sortingList = [...score]..sort((a, b) => b.compareTo(a));
    List<String> rankingList = [];

    for(int i=0; i<score.length; i++){
      for(int j=0; j<sortingList.length; j++){
        if(score[i]==sortingList[j]){
          if(j==0) rankingList.add('Gold Medal');
          else if(j==1) rankingList.add('Silver Medal');
          else if(j==2) rankingList.add('Bronze Medal');
          else rankingList.add('${j+1}');
          break;
        }
      }
    }
    return rankingList;
  }
}

void main(){
  print(Solution().findRelativeRanks([10,3,8,9,4]));
}