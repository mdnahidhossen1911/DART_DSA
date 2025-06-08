void main(){
  List<int> nums1 = [4,5,6,0,0,0];
  int m = 3;
  List<int> nums2 = [1,2,3];
  int n = 3;
  Solution().merge(nums1, m, nums2, n);

  print(nums1);
}
/////////////////////

class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    int totalIndex = m+n;
    int sec = 0;
    for(int i=m; i<totalIndex; i++){
      nums1[i] = nums2[sec];
      sec++;
    }

    for(int i = 0; i<nums1.length-1; i++){
      int minIndex = i;
      for(int j=i+1; j<nums1.length; j++){
        if(nums1[minIndex] > nums1[j]){
          minIndex = j;
        }
      }
      int temp = nums1[i];
      nums1[i] = nums1[minIndex];
      nums1[minIndex] = temp;
    }
  }
}
