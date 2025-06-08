class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    List<int> intList = [];
    intList.addAll(nums1);
    intList.addAll(nums2);
    intList.sort();

    print(intList);

    if(intList.length %2 ==0){
      int ans = intList.length~/2-1;
      return ((intList[ans] + intList[ans+1])/2).toDouble();
    }else{
      double index = (intList.length/2);
      return intList[index.toInt()].toDouble();
    }
  }
}

void main(){
  print(  Solution().findMedianSortedArrays([1,2], [3,4]));
}