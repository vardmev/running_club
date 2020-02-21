require "application_system_test_case"

class PersonalRecordsTest < ApplicationSystemTestCase
  setup do
    @personal_record = personal_records(:one)
  end

  test "visiting the index" do
    visit personal_records_url
    assert_selector "h1", text: "Personal Records"
  end

  test "creating a Personal record" do
    visit personal_records_url
    click_on "New Personal Record"

    click_on "Create Personal record"

    assert_text "Personal record was successfully created"
    click_on "Back"
  end

  test "updating a Personal record" do
    visit personal_records_url
    click_on "Edit", match: :first

    click_on "Update Personal record"

    assert_text "Personal record was successfully updated"
    click_on "Back"
  end

  test "destroying a Personal record" do
    visit personal_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personal record was successfully destroyed"
  end
end
