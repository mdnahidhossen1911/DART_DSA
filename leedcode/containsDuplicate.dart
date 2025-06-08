
class Solution {
  bool containsDuplicate(List<int> nums) {
    int pre = nums.length;
    nums = nums.toSet().toList();
    int present = nums.length;
    if(pre != present){
      return true;
    }
    return false;
  }
}

void main(){
  bool isdup =Solution().containsDuplicate([1,2,3]);
  print(isdup);
}