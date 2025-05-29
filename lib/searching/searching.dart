class Searching{

  static int linearSearch(List list, item) {
    late int ret;
    for (int i = 0; i < list.length; i++) {
      if (list[i] == item) {
        return i;
      }
    }
    ret = -1;
    return ret;
  }


  static int binarySearch(List<int> sortedList, int target) {
    int low = 0;
    int high = sortedList.length - 1;

    while (low <= high) {
      int mid = low + ((high - low) ~/ 2);

      if (sortedList[mid] == target) {
        return mid; // Found
      } else if (sortedList[mid] < target) {
        low = mid + 1; // Search in the right half
      } else {
        high = mid - 1; // Search in the left half
      }
    }

    return -1; // Not found
  }



}