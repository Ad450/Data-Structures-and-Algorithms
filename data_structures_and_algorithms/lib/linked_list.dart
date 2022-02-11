// lets first define how a linkedList works
// A linkedList has nodes. Each node has two properties
// the data - which contains the actual value of the node
// a pointer - link that points to the next node in memory

// let's first create a node

class Node {
  dynamic data;

  Node? pointer;

  Node({required this.data, required this.pointer});
}

final node = Node(data: 'hello', pointer: Node(data: 'string', pointer: Node(data: 'data', pointer: null)));
