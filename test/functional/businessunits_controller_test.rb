require 'test_helper'

class BusinessunitsControllerTest < ActionController::TestCase
  setup do
    @businessunit = businessunits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:businessunits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create businessunit" do
    assert_difference('Businessunit.count') do
      post :create, businessunit: { b_area: @businessunit.b_area, b_city: @businessunit.b_city, b_country: @businessunit.b_country, b_name: @businessunit.b_name, b_site: @businessunit.b_site, b_state: @businessunit.b_state }
    end

    assert_redirected_to businessunit_path(assigns(:businessunit))
  end

  test "should show businessunit" do
    get :show, id: @businessunit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @businessunit
    assert_response :success
  end

  test "should update businessunit" do
    put :update, id: @businessunit, businessunit: { b_area: @businessunit.b_area, b_city: @businessunit.b_city, b_country: @businessunit.b_country, b_name: @businessunit.b_name, b_site: @businessunit.b_site, b_state: @businessunit.b_state }
    assert_redirected_to businessunit_path(assigns(:businessunit))
  end

  test "should destroy businessunit" do
    assert_difference('Businessunit.count', -1) do
      delete :destroy, id: @businessunit
    end

    assert_redirected_to businessunits_path
  end
end
