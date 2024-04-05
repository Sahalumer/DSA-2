class SelectionSortFunction {
  baseSelectionSort(List<int> list) {
    for (int i = 0; i < list.length - 1; i++) {
      for (int j = i + 1; j < list.length; j++) {
        if (list[i] > list[j]) {
          int temp = list[i];
          list[i] = list[j];
          list[j] = temp;
        }
      }
    }
  }

  void recursiveSelectionSort(List<int> list, startIndex) {
    if (startIndex == list.length - 1) {
      return;
    }
    int minIndex = startIndex;
    for (int i = startIndex + 1; i < list.length; i++) {
      if (list[startIndex] > list[i]) {
        minIndex = i;
      }
    }
    if (minIndex != startIndex) {
      int temp = list[startIndex];
      list[startIndex] = list[minIndex];
      list[minIndex] = temp;
    }
    recursiveSelectionSort(list, startIndex + 1);
  }

  void stablSort(List<int> list) {
    for (int i = 0; i < list.length - 1; i++) {
      int minIndex = i;
      for (int j = i + 1; j < list.length; j++) {
        if (list[minIndex] > list[j]) {
          minIndex = j;
        }
      }
      int key = list[minIndex];
      for (int k = minIndex; k > i; k--) {
        list[k] = list[k - 1];
      }
      list[i] = key;
    }
  }
}
