require "./lib/Node"
require "./lib/BinaryTree"

tree = BinaryTree.build_tree([2, 1, 5, 8, 4])

p BinaryTree.dfs_rec(tree, 5)
