require 'test/unit'

class ArrayTest < Test::Unit::TestCase

  def test_1
    a=['a']
    p a.class
    p a[0]
    p a[1]

    b=Array.new
    p b.class
    b[0]='x'
    b[1]='y'
    p b
    puts b
  end

  def test_2
    puts Array.new.methods
    puts '------------'
    puts [].methods
  end

  def test_3
    a=['a', 'z']
    p a[-3]
    p a[-2]
    p a[-1]
    p a[0]
    p a[1]
    p a[2]
  end

  def test_4
    a = %w(a b c d e f g)

    # io gli dico gli ESTREMI poi lui va da sinistra a destra
    p a[2] #c
    p a[-3] #e
    p a[1..3] #b c d
    p a[1...3] #b c
    p a[-3..-1] # e f g
    p a[4..-2] # e f
    p a[-2..1] # da f -> b NON FA IL GIRO
    p a[0..-3] # da a -> e
  end

  def test_5
    a = %w(a b c d e f g)
    p a[2..4] #cde
    p a[2, 4] #cdef. Parte dalla posizione 1 e ne prende in tutto 3

    p a[-3..2] #
    p a[-3, 2] #ef
  end

  def test_6
    a = ['a']
    p a[0]

    a[0] = 'b'
    p a[0]

    a[2] = 'xxx'
    p a

    a[1]=[1,2,3]
    p a
  end

  def test_7
    a = %w(a b c d e f g)

    a[2, 2] = 'CAT'
    p a # ["a", "b", "CAT", "e", "f", "g"]

    a[2, 0] = 'DOG' # con lo 0 lo inserisce davanti!
    p a # ["a", "b", "DOG", "CAT", "e", "f", "g"]

    a[1, 1] = [9, 8, 7]
    p a # ["a", 9, 8, 7, "DOG", "CAT", "e", "f", "g"]

    a[0..3] = []
    p a # ["DOG", "CAT", "e", "f", "g"]

    a[4..6] = 99, 98, 100
    p a # ["DOG", "CAT", "e", "f", 99, 98, 100]
  end

  def test_8
    # uso un array come uno stack!
    stack = []
    stack.push 'a'
    stack.push 'b'
    stack.push 'c'
    p stack
    stack.pop
    p stack
  end

end