class Searching{

  static Future<int> linearSearch(List list, item) async {
    late int ret;
    for (int i = 0; i < list.length; i++) {
      if (list[i] == item) {
        return i;
      }
    }
    ret = -1;
    return ret;
  }


}