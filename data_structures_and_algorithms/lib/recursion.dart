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
  var base = array.first;
  var total = 0;
  array.removeAt(0);

  if (array.length > 1) {
    total = base + sum(array);
  } else {
    total = base + array[0];
  }

  return total;
}

// [1,3,4,5,5]
// 1 + [3,4,5,5]
// 1+ 3+ []
