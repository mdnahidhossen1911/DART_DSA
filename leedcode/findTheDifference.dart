class Solution {
  String findTheDifference(String s, String t) {
    List<String> s1 = s.split('');
    List<String> s2 = t.split('');
    for(int i=0; i<s1.length; i++){
      for(int j=0; j<s2.length; j++){
        if(s1[i]==s2[j]){
          s2.removeAt(j);
          break;
        }
      }
    }
    
    return s2.join();
  }
}

void main(){
  print(Solution().findTheDifference('ae', 'aea'));
}