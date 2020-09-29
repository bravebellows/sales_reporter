require "application_system_test_case"

class CsvImportsTest < ApplicationSystemTestCase
  setup do
    @csv_import = csv_imports(:one)
  end

  test "visiting the index" do
    visit csv_imports_url
    assert_selector "h1", text: "Csv Imports"
  end

  test "creating a Csv import" do
    visit csv_imports_url
    click_on "New Csv Import"

    fill_in "Filename", with: @csv_import.filename
    check "Imported" if @csv_import.imported
    click_on "Create Csv import"

    assert_text "Csv import was successfully created"
    click_on "Back"
  end

  test "updating a Csv import" do
    visit csv_imports_url
    click_on "Edit", match: :first

    fill_in "Filename", with: @csv_import.filename
    check "Imported" if @csv_import.imported
    click_on "Update Csv import"

    assert_text "Csv import was successfully updated"
    click_on "Back"
  end

  test "destroying a Csv import" do
    visit csv_imports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Csv import was successfully destroyed"
  end
end
