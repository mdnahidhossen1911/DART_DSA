
class Solution {
  int removeDuplicates(List<int> nums) {
    int nextin = 1;
    for(int i=0; i<nums.length-1;i++){
      if(nums[i] != nums[i+1]){
        nums[nextin] = nums [i+1];
        nextin++;
      }
    }
    return nextin;
  }
}

void main()  {
  List<int> nums = [1,2,3];
  Solution().removeDuplicates(nums);
  print(nums);
}