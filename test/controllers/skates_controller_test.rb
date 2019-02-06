require 'test_helper'

class SkatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skate = skates(:one)
  end

  test "should get index" do
    get skates_url
    assert_response :success
  end

  test "should get new" do
    get new_skate_url
    assert_response :success
  end

  test "should create skate" do
    assert_difference('Skate.count') do
      post skates_url, params: { skate: { brand: @skate.brand, color: @skate.color, model_year: @skate.model_year, user_id: @skate.user_id } }
    end

    assert_redirected_to skate_url(Skate.last)
  end

  test "should show skate" do
    get skate_url(@skate)
    assert_response :success
  end

  test "should get edit" do
    get edit_skate_url(@skate)
    assert_response :success
  end

  test "should update skate" do
    patch skate_url(@skate), params: { skate: { brand: @skate.brand, color: @skate.color, model_year: @skate.model_year, user_id: @skate.user_id } }
    assert_redirected_to skate_url(@skate)
  end

  test "should destroy skate" do
    assert_difference('Skate.count', -1) do
      delete skate_url(@skate)
    end

    assert_redirected_to skates_url
  end
end
