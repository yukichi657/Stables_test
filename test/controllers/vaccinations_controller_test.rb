require 'test_helper'

class VaccinationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vaccination = vaccinations(:one)
  end

  test "should get index" do
    get vaccinations_url
    assert_response :success
  end

  test "should get new" do
    get new_vaccination_url
    assert_response :success
  end

  test "should create vaccination" do
    assert_difference('Vaccination.count') do
      post vaccinations_url, params: { vaccination: { injected_at: @vaccination.injected_at, name: @vaccination.name, profile_id: @vaccination.profile_id } }
    end

    assert_redirected_to vaccination_url(Vaccination.last)
  end

  test "should show vaccination" do
    get vaccination_url(@vaccination)
    assert_response :success
  end

  test "should get edit" do
    get edit_vaccination_url(@vaccination)
    assert_response :success
  end

  test "should update vaccination" do
    patch vaccination_url(@vaccination), params: { vaccination: { injected_at: @vaccination.injected_at, name: @vaccination.name, profile_id: @vaccination.profile_id } }
    assert_redirected_to vaccination_url(@vaccination)
  end

  test "should destroy vaccination" do
    assert_difference('Vaccination.count', -1) do
      delete vaccination_url(@vaccination)
    end

    assert_redirected_to vaccinations_url
  end
end
