require File.expand_path('../../test_helper', __FILE__)

class AuthorizationTest < ActiveSupport::TestCase
  fixtures :items, :users

  # Validations
  test "authorizations need a user" do
    auth = Authorization.new(item_id: 1)
    assert !auth.valid?, "saved auth without user"
  end

  test "authorizations need an item" do
    auth = Authorization.new(user_id: 2)
    assert !auth.valid?, "saved auth without item"
  end

end
