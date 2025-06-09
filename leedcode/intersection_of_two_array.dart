class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    nums1 = nums1.toSet().toList();
    nums2 = nums2.toSet().toList();
    List<int> comonNums = [];

    for(int i=0; i<nums1.length; i++){
      for(int j=0; j<nums2.length; j++){
        if(nums1[i]==nums2[j]){
          comonNums.add(nums1[i]);
          break;
        }
      }
    }

    return comonNums;
  }
}

void main(){
  print(Solution().intersection([1,2,2,1], [2,2]));
}