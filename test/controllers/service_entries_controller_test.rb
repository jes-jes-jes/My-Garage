require 'test_helper'

class ServiceEntriesControllerTest < ActionController::TestCase
  setup do
    @car = cars(:one)
    @service_entry = service_entries(:one)
  end

  test "should get index" do
    get :index, params: { car_id: @car }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { car_id: @car }
    assert_response :success
  end

  test "should create service_entry" do
    assert_difference('ServiceEntry.count') do
      post :create, params: { car_id: @car, service_entry: @service_entry.attributes }
    end

    assert_redirected_to car_service_entry_path(@car, ServiceEntry.last)
  end

  test "should show service_entry" do
    get :show, params: { car_id: @car, id: @service_entry }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { car_id: @car, id: @service_entry }
    assert_response :success
  end

  test "should update service_entry" do
    put :update, params: { car_id: @car, id: @service_entry, service_entry: @service_entry.attributes }
    assert_redirected_to car_service_entry_path(@car, ServiceEntry.last)
  end

  test "should destroy service_entry" do
    assert_difference('ServiceEntry.count', -1) do
      delete :destroy, params: { car_id: @car, id: @service_entry }
    end

    assert_redirected_to car_service_entries_path(@car)
  end
end
