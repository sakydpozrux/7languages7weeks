
puts 'Exercise A:'
puts 'version 1'
numbers_range = (1..15)
a = numbers_range.to_a
four = []
a.each do |num|
    four << num
    if four.size == 4
        puts four.to_s 
        four = []
    end
end
puts four.to_s if four.size > 0
puts

puts 'version 2'
numbers_range.each_slice(4) {|nums| puts nums.to_s}
puts


puts 'Exercise B:'
class Tree
    attr_accessor :children, :node_name
    
    def initialize(dict={})
        raise Exception if dict.length > 1
        @node_name = dict.first.first
        @children = []
        dict.first.last.each do |child_name, child_children|
            @children.push(Tree.new(child_name => child_children))
        end
    end
    
    def visit_all(&block)
        visit &block
        children.each {|c| c.visit_all &block}
    end
    
    def visit(&block)
        block.call self
    end
end

my_tree = Tree.new( {'grandpa' => {'dad' => {'child 1' => {}, 'child 2' => {}}, 'uncle' => {'child 3' => {}, 'child 4' => {}}}} )

puts "Visiting a node"
my_tree.visit {|node| puts node.node_name}
puts

puts "visiting entire tree"
my_tree.visit_all {|node| puts node.node_name}
puts

puts 'Exercise C:'
file = __FILE__
search_text = 'puts'
lines = File.readlines(file)
lines.select do |line|
    puts "#{lines.find_index(line)}:\t#{line}" if line[search_text]
end

