require 'test_helper'

class Users::PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_property = users_properties(:one)
  end

  test "should get index" do
    get users_properties_url
    assert_response :success
  end

  test "should get new" do
    get new_users_property_url
    assert_response :success
  end

  test "should create users_property" do
    assert_difference('Users::Property.count') do
      post users_properties_url, params: { users_property: { address: @users_property.address, description: @users_property.description, flag: @users_property.flag, price: @users_property.price, title: @users_property.title, user_id: @users_property.user_id } }
    end

    assert_redirected_to users_property_url(Users::Property.last)
  end

  test "should show users_property" do
    get users_property_url(@users_property)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_property_url(@users_property)
    assert_response :success
  end

  test "should update users_property" do
    patch users_property_url(@users_property), params: { users_property: { address: @users_property.address, description: @users_property.description, flag: @users_property.flag, price: @users_property.price, title: @users_property.title, user_id: @users_property.user_id } }
    assert_redirected_to users_property_url(@users_property)
  end

  test "should destroy users_property" do
    assert_difference('Users::Property.count', -1) do
      delete users_property_url(@users_property)
    end

    assert_redirected_to users_properties_url
  end
end
