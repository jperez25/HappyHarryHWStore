require 'test_helper'

class CustumersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custumer = custumers(:one)
  end

  test "should get index" do
    get custumers_url
    assert_response :success
  end

  test "should get new" do
    get new_custumer_url
    assert_response :success
  end

  test "should create custumer" do
    assert_difference('Custumer.count') do
      post custumers_url, params: { custumer: { address_id: @custumer.address_id, customer_id: @custumer.customer_id, email: @custumer.email, first_name: @custumer.first_name, last_name: @custumer.last_name, phone: @custumer.phone } }
    end

    assert_redirected_to custumer_url(Custumer.last)
  end

  test "should show custumer" do
    get custumer_url(@custumer)
    assert_response :success
  end

  test "should get edit" do
    get edit_custumer_url(@custumer)
    assert_response :success
  end

  test "should update custumer" do
    patch custumer_url(@custumer), params: { custumer: { address_id: @custumer.address_id, customer_id: @custumer.customer_id, email: @custumer.email, first_name: @custumer.first_name, last_name: @custumer.last_name, phone: @custumer.phone } }
    assert_redirected_to custumer_url(@custumer)
  end

  test "should destroy custumer" do
    assert_difference('Custumer.count', -1) do
      delete custumer_url(@custumer)
    end

    assert_redirected_to custumers_url
  end
end
