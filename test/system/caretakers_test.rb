require "application_system_test_case"

class CaretakersTest < ApplicationSystemTestCase
  setup do
    @caretaker = caretakers(:one)
  end

  test "visiting the index" do
    visit caretakers_url
    assert_selector "h1", text: "Caretakers"
  end

  test "creating a Caretaker" do
    visit caretakers_url
    click_on "New Caretaker"

    fill_in "Name", with: @caretaker.name
    click_on "Create Caretaker"

    assert_text "Caretaker was successfully created"
    click_on "Back"
  end

  test "updating a Caretaker" do
    visit caretakers_url
    click_on "Edit", match: :first

    fill_in "Name", with: @caretaker.name
    click_on "Update Caretaker"

    assert_text "Caretaker was successfully updated"
    click_on "Back"
  end

  test "destroying a Caretaker" do
    visit caretakers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Caretaker was successfully destroyed"
  end
end
