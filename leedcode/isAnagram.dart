class Solution {
  bool isAnagram(String s, String t) {
    List<String> f = s.split('')..sort();
    List<String> se = t.split('')..sort();

    if(f.length != se.length){
      return false;
    }

    for(int i=0; i<f.length; i++){
      if(f[i] != se[i]){
        return false;
      }
    }

    return true;
  }
}

void main(){
  print(Solution().isAnagram('anagram', 'nagaram'));
}