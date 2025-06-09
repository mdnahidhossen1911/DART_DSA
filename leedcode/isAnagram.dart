class Solution {
  bool isAnagram(String s, String t) {
    List<String> f = s.split('')..sort();
    List<String> se = t.split('')..sort();

    if(f.join() != se.join()){
      return false;
    }

    return true;
  }
}

void main(){
  print(Solution().isAnagram('anagram', 'nagaram'));
}