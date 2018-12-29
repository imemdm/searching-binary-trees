class BinaryTree
  def self.build_tree(arr)
    root = nil
    arr.each do |el|
      root = insert(root, el)
    end

    return root
  end

  private
  def self.insert(node, value)
    if node.nil?
      return Node.new(value)
    end

    if value > node.data
      node.right = insert(node.right, value)
    elsif value <= node.data
      node.left = insert(node.left, value)
    end

    return node
  end
end
