require 'test_helper'

class Prop2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prop2 = prop2s(:one)
  end

  test "should get index" do
    get prop2s_url
    assert_response :success
  end

  test "should get new" do
    get new_prop2_url
    assert_response :success
  end

  test "should create prop2" do
    assert_difference('Prop2.count') do
      post prop2s_url, params: { prop2: { name: @prop2.name } }
    end

    assert_redirected_to prop2_url(Prop2.last)
  end

  test "should show prop2" do
    get prop2_url(@prop2)
    assert_response :success
  end

  test "should get edit" do
    get edit_prop2_url(@prop2)
    assert_response :success
  end

  test "should update prop2" do
    patch prop2_url(@prop2), params: { prop2: { name: @prop2.name } }
    assert_redirected_to prop2_url(@prop2)
  end

  test "should destroy prop2" do
    assert_difference('Prop2.count', -1) do
      delete prop2_url(@prop2)
    end

    assert_redirected_to prop2s_url
  end
end
