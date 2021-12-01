/// define a pivot of the array
/// check for all elements greater than the pivot and say right array
/// check for all elements less than the pivot and say left array
/// call same quicksort method on the remaining two arrays
/// add the sorted arrays and the pivot

List<int> quickSort(List<int> inputArray) {
  //pivot of the array
  var pivot;

  // an array of one or less element dont need to be sorted

  if (inputArray.length < 2) {
    return inputArray;
  }

  // let the first element of the array be the pivot
  if (inputArray.isNotEmpty) {
    pivot = inputArray[0];
  }

  // check if pivot is less than any of the element in the array and store as rightArray
  // or if pivot is greater than any of the element and stored as leftArray
  var rightArray = <int>[];
  var leftArray = <int>[];

  for (var i = 0; i < inputArray.length; i++) {
    // for all values less than the pivot

    if (inputArray[i] < pivot) {
      leftArray.add(inputArray[i]);
    }

    // for all values greater than the pivot

    if (inputArray[i] > pivot) {
      rightArray.add(inputArray[i]);
      //print(rightArray);
    }
  }

  if (rightArray.length > 1) {
    quickSort(rightArray);
  }

  if (leftArray.length > 1) {
    quickSort(leftArray);
  }
  // print(leftArray);
  print(pivot);
  return <int>[...leftArray, pivot, ...rightArray];
}

