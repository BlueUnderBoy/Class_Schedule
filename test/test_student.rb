require 'minitest/autorun'
require './test/student'


class TestStudent < Minitest::Test
  def test_initialize
    student = Student.new("Jalen", "Young")
    assert_equal 'Jalen', student.first_name
    assert_equal 'Young', student.last_name
  end

  def test_initialize_with_invalid_arguments
    assert_raises(ArgumentError) { Student.new }
    assert_raises(ArgumentError) { Student.new('Jalen') }
  end
end
