class Solution {
  int thirdMax(List<int> nums) {
    nums = nums.toSet().toList();
    nums.sort((a, b) => b.compareTo(a));

    if(nums.length > 2){
      return nums[2];
    }else{
      return nums[0];
    }

  }
}

void main(){
  print(Solution().thirdMax([3,2,1]));
}