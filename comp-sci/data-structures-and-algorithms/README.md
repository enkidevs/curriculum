name: Data Structures and Algorithms

description: The abstract toolkit needed for programmers to manage the complexity of problems and the problem-solving process.

core: true

sections:
  '0':
    - intro-data-structures
    - intro-graphs
  '1':
    - algorithms-i
    - binary-search-tree
    - heap-and-trie
    - tree-traversals
    - algorithms-ii
  '2':
    - graph-algorithms
    - mst-algorithms

standards:
  identify-linear-collection-data-structures-usage:
    name: Identify linear collection data structures and their usage
    description: This standard deals with the identification and use of linear collection data structures. This includes any predictably ordered collection.
    objectives:
      0: Identify Linked Lists
      1: Identify a Stack
      2: Identify a Queue
      3: Identify Indexable Ordered Sets (arrays, lists)
      4: Identify a use case for a Linked List
      5: Identify a use case for a Stack
      6: Identify a use case for a Queue
      7: Identify a use case for a Indexable Ordered Set
  identify-unordered-collection-data-structures-usage:
    name: Identify unordered collection data structures and their usage
    description: This standard deals with sets that are not predictably ordered, such as hash maps, sets, or probabilistic data structures.
    objectives:
      0: Identify a Hash Map
      1: Identify a Set
      2: Identify a use case for a Hash Map
      3: Identify a use case for a Set
  identify-graph-data-structures-usage:
    name: Identify graph data structures and their usage
    description: This standard deals with the identification and classification of graph data structures as graph data structures. It also deals with describing graphs in terms of their properties or the properties of their edges.
    objectives:
      0: Identify a linked list
      1: Identify an arboreal graph
      2: Identify a binary tree
      3: Identify a red-black tree
      4: Identify a graph
      5: Define directionality, cyclical, connected, complete, and weighted in reference to properties of graphs
      6: Classify diagrams of graphs as having directionality or not, being cyclic or acyclic, connected or not, complete or incomplete, weighted or not
  implement-linear-collection-data-structures:
    name: Implement and use linear collection data structures
    description: This standard deals with accurately choosing a linear collection to solve a problem, and using that structure appropriately. It also deals with the implementation of these data structures and their attendant methods for data access and manipulation.
    objectives:
      0: Implement a Linked List and use it to solve a problem
      1: Implement a Stack and use it to solve a problem
      2: Implement a Queue and use it to solve a problem
      3: Implement a Indexable Ordered Sets (arrays, skip lists, etc) to solve a problem
  implement-unordered-collection-data-structures:
    name: Implement and use unordered collection data structures
    description: This standard deals with accurately choosing a unordered collection to solve a problem, and using that structure appropriately. It also deals with the implementation of these data structures and their attendant methods for data access and manipulation.
    objectives:
      0: Implement a Hash Map and use it to solve a problem
      1: Implement a Set and use it to solve a problem
  implement-graph-data-structures:
    name: Implement and use graph data structures
    description: This standard deals with the implementation of a graph data structure, containing nodes and edges. Graphs used to show these objectives can be of various types, but each graph type must be covered (for example, if you only show trees, you can't determine if a graph is cyclic.)
    objectives:
      0: Implement a Tree
      1: Use a tree appropriately to solve a problem
      2: Implement a binary tree
      3: Use a binary tree appropriately to solve a problem
      4: Implement a red-black tree
      5: Use a red-black tree appropriately to solve a problem
      6: Implement a graph data structure
      7: Write an algorithm to identify if a graph is cyclic
      8: Write an algorithm to identify if a graph is complete
      9: Implement and Use a directed graph appropriately to solve a problem
      10: Implement and Use an undirected graph appropriately to solve a problem
      11: Implement and Use a weighted graph appropriately to solve a problem
  analyze-complexity-data-structure-access-operations:
    name: Analyze the complexity of common data structure access operations
    description: This standard deals with describing complexity in terms of the Big-O notation in common data structure access operations. For example, hash table value lookups, or appending a value to the end of an array.
    objectives:
      0: Accurately describe the complexity of Array access, search, insertion, and deletion
      1: Accurately describe the complexity of Stack access, search, insertion, and deletion
      2: Accurately describe the complexity of Queue access, search, insertion, and deletion
      3: Accurately describe the complexity of Doubly and Singly Linked List access, search, insertion, and deletion, and contrast the differences
      4: Accurately describe the complexity of Hash Table access, search, insertion, and deletion
      5: Accurately describe the complexity of Skip List access, search, insertion, and deletion
      6: Accurately describe the complexity of Binary Search Tree access, search, insertion, and deletion
      7: Accurately describe the complexity of Cartesian Tree access, search, insertion, and deletion
      8: Accurately describe the complexity of B-Tree access, search, insertion, and deletion
      9: Accurately describe the complexity of Red-Black Tree access, search, insertion, and deletion
      10: Accurately describe the complexity of Splay Tree access, search, insertion, and deletion
      11: Accurately describe the complexity of AVL Tree access, search, insertion, and deletion
      12: Accurately describe the complexity of KD Tree access, search, insertion, and deletion
  analyze-complexity-search-sort-algorithms:
    name: Analyze the complexity of common search and sort algorithms
    description: This standard deals with describing complexity in terms of the Big-O notation in searching algorithms that do common types of searches on linear data structures. This is not about the performance of indexing documents for search optimization, or search engines, or advanced probabilistic searches. This is only about estimating complexity, not knowledge of the algorithms themselves.
    objectives:
      0: Analyze and accurately predict the complexity of linear searches
      1: Analyze and accurately predict the complexity of other searching algorithms
      2: Analyze and accurately predict the complexity of sorting algorithms
  analyze-complexity-pathfinding-algorithms:
    name: Analyze the complexity of common pathfinding algorithms
    description: This standard deals with describing complexity in terms of the Big-O notation in pathfinding algorithms.
    objectives:
      0: Accurately describe the complexity of Djkistra's
      1: Accurately describe the complexity of A*
      2: Accurately describe the complexity of Breadth-First-Search
      3: Accurately describe the complexity of Depth-First-Search in an arboreal graph

next:
  - comp-sci:networking
