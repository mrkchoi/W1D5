class PolyTreeNode
  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(parent)
    @parent.children.delete(self) if @parent
    @parent = parent
    @parent.children << self if !@parent.nil? && !@parent.children.include?(self) 
  end
  
  def add_child(child)
    child.parent=(self)
  end

  def remove_child(child)
    raise "Child does not exist" if !self.children.include?(child)
    child.parent=(nil)
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


