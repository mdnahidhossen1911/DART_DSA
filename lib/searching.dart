class Searching{

  static Future<int> linearSearch(List list, item) async {
    //worst
    // time complexity O(n)
    // space complexity O(1)

    late int ret; // space
    for (int i = 0; i < list.length; i++) {
      if (list[i] == item) {
        return i;
      }
    }
    ret = -1;
    return ret;
  }



}