class Solution {
  int findContentChildren(List<int> g, List<int> s) {
    g.sort();
    s.sort();

    int maxNum = 0;
    int loopinglenth = 0;

    for(int i=0; i<g.length; i++){
      for(int j=0; j<s.length; j++){
        if(s[j] >= g[i]){
          maxNum++;
          s.removeAt(j);
          break;
        }
      }
    }

    return maxNum;
  }
}

void main(){
  print(Solution().findContentChildren([10,9,8,7],[5,6,7,8]));
}