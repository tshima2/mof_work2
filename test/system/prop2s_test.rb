require "application_system_test_case"

class Prop2sTest < ApplicationSystemTestCase
  setup do
    @prop2 = prop2s(:one)
  end

  test "visiting the index" do
    visit prop2s_url
    assert_selector "h1", text: "Prop2s"
  end

  test "creating a Prop2" do
    visit prop2s_url
    click_on "New Prop2"

    fill_in "Name", with: @prop2.name
    click_on "Create Prop2"

    assert_text "Prop2 was successfully created"
    click_on "Back"
  end

  test "updating a Prop2" do
    visit prop2s_url
    click_on "Edit", match: :first

    fill_in "Name", with: @prop2.name
    click_on "Update Prop2"

    assert_text "Prop2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Prop2" do
    visit prop2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prop2 was successfully destroyed"
  end
end
