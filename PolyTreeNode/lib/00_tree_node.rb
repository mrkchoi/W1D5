class PolyTreeNode
  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(parent)
    @parent = parent

    if !@parent.nil? && !@parent.children.include?(self) 
       @parent.add_child(self)
    else
       @parent.remove_child(self)
    end
  end
  
  def add_child(child)
    @children << child
  end

  def remove_child(child)
    
  end

  # def inspect
  #   return "Node: #{self.value}, Children: #{self.children}, Parent: #{self.parent}"
  # end

  attr_reader :parent, :value, :children
end

n1 = PolyTreeNode.new(1)
n2 = PolyTreeNode.new(2)
n3 = PolyTreeNode.new(3)

n3.parent=(n2)


# n2.parent=(n1)
# n3.parent=(n1)

# n3.parent=nil
# n3.parent=n2


