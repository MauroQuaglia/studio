require 'test/unit'
<<<<<<< HEAD
require_relative 'book_in_stock'
=======
require 'stringio'
require 'socket'
>>>>>>> 27680af306f04878825f6f99668040e1bee51291

class MyTest < Test::Unit::TestCase

  def test_1
    file = File.new('test-file', 'w')
    file.close
  end

  def test_2
<<<<<<< HEAD
    b = Precedence.new()
    puts b.one
    puts b.two
  end

=======
    File.open('test-file.txt') do |file|
      file.each_byte do |chr|
        print "[#{chr.chr}:#{chr}]"
      end
    end
  end

  def test_3
    str = IO.read('test-file.txt') # butta tutto in una string
    p str[0]
    arr = IO.readlines('test-file.txt') # butta tutto in una array
    p arr[0]
  end

  def test_4
    puts File.read('test-file.txt')
  end

  def test_5
    input = StringIO.new('Impara a usare Ruby!')
    output = StringIO.new('')

    input.each_line do |line|
      output.puts line.reverse
    end

    puts output.string
  end

  def test_6
   # client = TCPSocket.open('127.0.0.1', 'www')
    #puts client.readline
    #puts client.readline
    #client.close


  end

  def test_7
    assert_equal('a', 'a')
    refute_equal('a', 'b')
  end

  def test_8
    a = nil
    refute_nil(a, 'Non va!')
  end



>>>>>>> 27680af306f04878825f6f99668040e1bee51291
end