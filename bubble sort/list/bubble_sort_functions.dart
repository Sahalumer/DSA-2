class BubbleSortFunctions {
  basicBubbleSort(List<int> list) {
    for (int i = 0; i < list.length - 1; i++) {
      for (int j = 0; j < list.length - i - 1; j++) {
        if (list[j] > list[j + 1]) {
          int temp = list[j];
          list[j] = list[j + 1];
          list[j + 1] = temp;
        }
      }
    }
  }

  recursiveBubbleSort(List<int> arr, int n) {
    if (n == 1) {
      return;
    }
    for (int i = 0; i < n - 1; i++) {
      if (arr[i] > arr[i + 1]) {
        int temp = arr[i];
        arr[i] = arr[i + 1];
        arr[i + 1] = temp;
      }
    }
    recursiveBubbleSort(arr, n - 1);
  }
}
