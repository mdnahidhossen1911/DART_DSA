////  edge cases

class Solution {
  int maximumProduct(List<int> nums) {
    nums.sort();

    int n = nums.length;
    int product1 = nums[n - 1] * nums[n - 2] * nums[n - 3];
    print(product1);
    int product2 = nums[0] * nums[1] * nums[n - 1];
    print(product2);

    return product1 > product2 ? product1 : product2;
  }
}


void main(){
  print(Solution().maximumProduct([-100,-98,-1,2,3,4]));
}