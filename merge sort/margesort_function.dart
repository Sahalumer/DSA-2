class MergeSort {
  recursiveMerge(List<int> list, int lb, int ub) {
    if (lb < ub) {
      int mid = (lb + ub) ~/ 2;
      recursiveMerge(list, lb, mid);
      recursiveMerge(list, mid + 1, ub);
      merge(list, lb, ub, mid);
    }
  }

  merge(List<int> list, int lb, int ub, int mid) {
    int i = lb;
    int j = mid + 1;
    List<int> newlist = [];
    while (i <= mid && j <= ub) {
      if (list[i] <= list[j]) {
        newlist.add(list[i]);
        i++;
      } else {
        newlist.add(list[j]);
        j++;
      }
    }
    while (i <= mid) {
      newlist.add(list[i]);
      i++;
    }
    while (j <= ub) {
      newlist.add(list[j]);
      j++;
    }
    for (int k = lb; k <= ub; k++) {
      list[k] = newlist[k - lb];
    }
  }
}
