class MyHashSet
  attr_accessor :store

  def initialize
    @store = {}
  end

  def insert(el)
    @store[el] = true
  end

  def include?(el)
    @store.key?(el)
  end

  def delete(el)
    if @store.key?(el)
      @store.delete(el)
      true
    else
      false
    end
  end

  def to_a
    arr = []
    @store.each do |key, value|
      arr << [key, value]
    end
    arr
  end

  def union(set2)
    new_set = @store
    new_set.merge(set2)
  end

  def intersect(set2)
    set = MyHashSet.new
    @store.each do |key, value|
      set.store[key] = value if set2.store.key?(key)
    end
    set
  end

  def minus(set2)
    set = MyHashSet.new
    @store.each do |key, value|
      set.store[key] = value unless set2.store.key?(key)
    end
    set
  end

end

x = MyHashSet.new
x.insert('App')
x.insert('Accademy')
y = MyHashSet.new
y.insert('App')
y.insert('Y')

p x.minus(y)

puts x == y

# x.to_hash == y.to_hash
