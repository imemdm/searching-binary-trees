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
    until(q.empty?)
      if q.first.data == value
        node = q.first
        break
      end

      q << q.first.left unless q.first.left.nil? 
      q << q.first.right unless q.first.right.nil?
      q.shift
    end

    return node
  end

  def self.depth_first_search(tree, value)
    return nil if tree.nil?

    s = []
    s << tree

    node = nil
    until(s.empty?)
      if s.last.data == value
        node = s.last
        break
      end

      current = s.pop
      
      s << current.left unless current.left.nil?
      s << current.right unless current.right.nil?
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
