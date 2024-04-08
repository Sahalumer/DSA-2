class QuickSortFunctions {
  int partition(List<int> list, int lb, int ub) {
    int pivot = list[lb];
    int start = lb + 1;
    int end = ub;

    while (start <= end) {
      while (start <= end && list[start] <= pivot) {
        start++;
      }
      while (start <= end && list[end] > pivot) {
        end--;
      }
      if (start < end) {
        int temp = list[start];
        list[start] = list[end];
        list[end] = temp;
      }
    }

    int temp = list[lb];
    list[lb] = list[end];
    list[end] = temp;

    return end;
  }

  void quickSort(List<int> list, int lb, int ub) {
    if (lb < ub) {
      int loc = partition(list, lb, ub);
      quickSort(list, lb, loc - 1);
      quickSort(list, loc + 1, ub);
    }
  }
}
