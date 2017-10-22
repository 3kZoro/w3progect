require 'test_helper'

class UserregsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userreg = userregs(:one)
  end

  test "should get index" do
    get userregs_url
    assert_response :success
  end

  test "should get new" do
    get new_userreg_url
    assert_response :success
  end

  test "should create userreg" do
    assert_difference('Userreg.count') do
      post userregs_url, params: { userreg: { Age: @userreg.Age, City: @userreg.City, Email: @userreg.Email, FirstName: @userreg.FirstName, LastName: @userreg.LastName, Password: @userreg.Password } }
    end

    assert_redirected_to userreg_url(Userreg.last)
  end

  test "should show userreg" do
    get userreg_url(@userreg)
    assert_response :success
  end

  test "should get edit" do
    get edit_userreg_url(@userreg)
    assert_response :success
  end

  test "should update userreg" do
    patch userreg_url(@userreg), params: { userreg: { Age: @userreg.Age, City: @userreg.City, Email: @userreg.Email, FirstName: @userreg.FirstName, LastName: @userreg.LastName, Password: @userreg.Password } }
    assert_redirected_to userreg_url(@userreg)
  end

  test "should destroy userreg" do
    assert_difference('Userreg.count', -1) do
      delete userreg_url(@userreg)
    end

    assert_redirected_to userregs_url
  end
end
