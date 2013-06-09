require 'minitest/autorun'
require_relative 'Dinosaur.rb'

class Test_Dinosaur_class < MiniTest::Unit::TestCase
  def setup
    @dino = Dinosaur
  end
  def test_get_dinosaurs_is_Hash
    assert_instance_of Hash, @dino.get_dinosaurs
  end
  def test_get_dinosaurs_is_Hash_is_not_empty
    assert_equal @dino.get_dinosaurs.empty?, false
  end
  def test_get_dinosaur_names_is_array
    assert_instance_of Array, @dino.get_dinosaur_names
  end
  def test_init_open_dinosaur_file
    assert_instance_of Dinosaur, Dinosaur.new(@dino.get_dinosaur_names.sample)
    assert_instance_of String, Dinosaur.new(@dino.get_dinosaur_names.sample).art
    assert_equal Dinosaur.new(@dino.get_dinosaur_names.sample).art.empty?, false
  end
end

