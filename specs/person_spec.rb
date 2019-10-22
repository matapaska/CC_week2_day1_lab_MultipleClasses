require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')

class BusTest < MiniTest::Test

  def setup()
    @person = Person.new("Monkey", "13")
  end

  def test_person_name
  assert_equal("Monkey",@person.name)
  end

end
