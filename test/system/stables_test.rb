require "application_system_test_case"

class StablesTest < ApplicationSystemTestCase
  setup do
    @stable = stables(:one)
  end

  test "visiting the index" do
    visit stables_url
    assert_selector "h1", text: "Stables"
  end

  test "creating a Stable" do
    visit stables_url
    click_on "New Stable"

    fill_in "Name", with: @stable.name
    fill_in "Photo", with: @stable.photo
    fill_in "Satble number", with: @stable.satble_number
    click_on "Create Stable"

    assert_text "Stable was successfully created"
    click_on "Back"
  end

  test "updating a Stable" do
    visit stables_url
    click_on "Edit", match: :first

    fill_in "Name", with: @stable.name
    fill_in "Photo", with: @stable.photo
    fill_in "Satble number", with: @stable.satble_number
    click_on "Update Stable"

    assert_text "Stable was successfully updated"
    click_on "Back"
  end

  test "destroying a Stable" do
    visit stables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stable was successfully destroyed"
  end
end
