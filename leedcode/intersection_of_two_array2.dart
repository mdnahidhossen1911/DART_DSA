class Solution {
  List<int> intersect(List<int> nums1, List<int> nums2) {
    List<int> comonNums = [];

    for(int i=0; i<nums1.length; i++){
      for(int j=0; j<nums2.length; j++){
        if(nums1[i]==nums2[j]){
          comonNums.add(nums1[i]);
          nums2.removeAt(j);
          break;
        }
      }
    }


    return comonNums;
  }
}

void main(){
  print(Solution().intersect([1,2,2,2,1], [2,2]));
}