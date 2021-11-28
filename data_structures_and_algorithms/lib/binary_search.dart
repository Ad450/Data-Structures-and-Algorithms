/// Binary search Algorithm takes in a sorted array
/// and the sort after element and the return the position [index]
/// of that element in list

class Sort {
  List<int> _checkIfSorted(List<int> array) {
    /// temp stores the lower number temporarily for quick replacement
    var temp = 0;

    /// we loop throught the array where in each iteration, the element is run against
    /// the next elements to check for the highest

    for (var i = 0; i < array.length; i++) {
      /// this loop becomes our second array where we run the first element [i] against
      /// and so  when [i] is greater than any of the [j] it replaces the element at index [i]
      for (var j = i + 1; j < array.length; j++) {
        if (array[i] > array[j]) {
          temp = array[i];
          array[i] = array[j];
          array[j] = temp;
        }
      }
    }

    return array;
  }

  String? call(List<int> inputArray, int searchElement) {
    var sortedArray = _checkIfSorted(inputArray);

    var middle = (sortedArray.length ~/ 2);

    if (searchElement != sortedArray[middle]) {
      if (searchElement >= sortedArray[middle]) {
        for (var i = sortedArray[middle]; i < sortedArray.length; i++) {
          if (searchElement == sortedArray[i]) {
            return 'element found at index ${sortedArray.indexOf(sortedArray[i])}';
          }

          throw NotFoundFailure('element not found');
        }
      }

      if (searchElement < sortedArray[middle]) {
        //print(sortedArray[middle]);
        for (var i = sortedArray.indexOf(sortedArray.first);
            i < sortedArray[middle];
            i++) {
          if (searchElement == sortedArray[i]) {
            return ' $searchElement found at index ${inputArray.indexOf(sortedArray[i])}';
            // print(sortedArray.indexOf(sortedArray[i]));
          }
        }
        throw NotFoundFailure('element not found');
      }
    } else {
      return 'element found at index ${sortedArray.indexOf(searchElement)} ';
    }
  }
}

class NotSortedFailure {
  String message;
  NotSortedFailure(this.message);
}

class NotFoundFailure {
  String message;
  NotFoundFailure(this.message);
}
