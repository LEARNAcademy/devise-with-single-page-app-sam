require "application_system_test_case"

class SkatesTest < ApplicationSystemTestCase
  setup do
    @skate = skates(:one)
  end

  test "visiting the index" do
    visit skates_url
    assert_selector "h1", text: "Skates"
  end

  test "creating a Skate" do
    visit skates_url
    click_on "New Skate"

    fill_in "Brand", with: @skate.brand
    fill_in "Color", with: @skate.color
    fill_in "Model year", with: @skate.model_year
    fill_in "User", with: @skate.user_id
    click_on "Create Skate"

    assert_text "Skate was successfully created"
    click_on "Back"
  end

  test "updating a Skate" do
    visit skates_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @skate.brand
    fill_in "Color", with: @skate.color
    fill_in "Model year", with: @skate.model_year
    fill_in "User", with: @skate.user_id
    click_on "Update Skate"

    assert_text "Skate was successfully updated"
    click_on "Back"
  end

  test "destroying a Skate" do
    visit skates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Skate was successfully destroyed"
  end
end
