class InsertionSort {
  baseInserion(List<int> list) {
    for (int i = 1; i < list.length; i++) {
      int temp = list[i];
      int j = i - 1;
      while (j >= 0 && list[j] > temp) {
        list[j + 1] = list[j];
        j--;
      }
      list[j + 1] = temp;
    }
  }
}
