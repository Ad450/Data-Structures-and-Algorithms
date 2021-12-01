/// sum of all elements in an array using the divide and conquer method
/// the variable base stores the first element of the array
/// total is the sum of all elements in the array;
///
///
/// we make the first element of the array the base
/// And then it is removed from the array
///
///
/// we decide if the array has more than one element, we make the first element the base
/// if the array has one or less element we add the remaining element to the total

int sum(List<int> array) {
  var total = 0;
  if (array.isNotEmpty) {
    var base = array.first;

    array.removeAt(0);

    if (array.length > 1) {
      total = base + sum(array);
    } else {
      total = base + array[0];
    }
  }

  return total;
}

// [1,3,4,5,5]
// 1 + [3,4,5,5]
// 1+ 3+ []

/// counting the number of items in an array
///
///
///
///
///

int countElements(List<int> array) {
  var totalCount = 0;

  if (array.isNotEmpty) {
    var base = array.first;
    array.removeAt(base);
    totalCount++;

    if (array.isNotEmpty) {
      totalCount = totalCount + countElements(array);
    }
  }

  return totalCount;
}
