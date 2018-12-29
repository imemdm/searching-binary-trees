class BinaryTree
  def self.build_tree(arr)
    root = nil
    arr.each do |el|
      root = insert(root, el)
    end

    return root
  end

  def self.breadth_first_search(tree, value)
    return nil if tree.nil?
    
    q = []
    q << tree

    node = nil
    while(!q.empty?)
      if q[0].data == value
        node = q[0]
        break
      end

      q << q[0].left unless q[0].left.nil? 
      q << q[0].right unless q[0].right.nil?
      q.shift
    end

    return node

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
