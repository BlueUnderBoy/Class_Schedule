require 'minitest/autorun'
require './test/student'


class TestStudent < Minitest::Test
  def test_user
    assert_equal "Jalen", Student.first_name("Jalen") , "Adding student method failed"
  end
end
