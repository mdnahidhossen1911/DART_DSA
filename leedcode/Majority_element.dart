class Solution {
  int majorityElement(List<int> nums) {

    int element = 0;
    int count = 0;

    if(nums.length ==1){
      return 1;
    }

    for(int i=0; i<nums.length-1;i++){
      element = nums[i];
      count = 0;
      for(int j = 0; j<nums.length; j++){
        if(nums[j] ==element){
          count++;
        }
      }
      if(count > nums.length/2){
        break;
      }
    }
    return element;
  }
}

void main()  {
  List<int> nums = [3,2,3];
  int count = Solution().majorityElement(nums);
  print(count);
}