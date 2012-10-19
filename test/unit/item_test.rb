require File.expand_path('../../test_helper', __FILE__)

class ItemTest < ActiveSupport::TestCase

  # Validations
  test "items should not save without a name" do
    item = Item.new
    assert !item.valid?, "item saved without a name"
  end

end
