require 'test_helper'

class StablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stable = stables(:one)
  end

  test "should get index" do
    get stables_url
    assert_response :success
  end

  test "should get new" do
    get new_stable_url
    assert_response :success
  end

  test "should create stable" do
    assert_difference('Stable.count') do
      post stables_url, params: { stable: { name: @stable.name, photo: @stable.photo, satble_number: @stable.satble_number } }
    end

    assert_redirected_to stable_url(Stable.last)
  end

  test "should show stable" do
    get stable_url(@stable)
    assert_response :success
  end

  test "should get edit" do
    get edit_stable_url(@stable)
    assert_response :success
  end

  test "should update stable" do
    patch stable_url(@stable), params: { stable: { name: @stable.name, photo: @stable.photo, satble_number: @stable.satble_number } }
    assert_redirected_to stable_url(@stable)
  end

  test "should destroy stable" do
    assert_difference('Stable.count', -1) do
      delete stable_url(@stable)
    end

    assert_redirected_to stables_url
  end
end
