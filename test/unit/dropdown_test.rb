require 'test_helper'

class DropdownTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Dropdown.new.valid?
  end
end
