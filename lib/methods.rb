require './Node'

def build_tree(arr)
  return nil if arr.empty?
  
  mid = arr.length / 2

  root = Node.new(arr[mid])

  root.left = build_tree(arr[0, mid])
  root.right = build_tree(arr[mid + 1, arr.length])

  return root
end

p build_tree([1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324])