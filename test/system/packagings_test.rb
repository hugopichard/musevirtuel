require "application_system_test_case"

class PackagingsTest < ApplicationSystemTestCase
  setup do
    @packaging = packagings(:one)
  end

  test "visiting the index" do
    visit packagings_url
    assert_selector "h1", text: "Packagings"
  end

  test "creating a Packaging" do
    visit packagings_url
    click_on "New Packaging"

    fill_in "Date", with: @packaging.date
    fill_in "Image", with: @packaging.image
    fill_in "Name", with: @packaging.name
    click_on "Create Packaging"

    assert_text "Packaging was successfully created"
    click_on "Back"
  end

  test "updating a Packaging" do
    visit packagings_url
    click_on "Edit", match: :first

    fill_in "Date", with: @packaging.date
    fill_in "Image", with: @packaging.image
    fill_in "Name", with: @packaging.name
    click_on "Update Packaging"

    assert_text "Packaging was successfully updated"
    click_on "Back"
  end

  test "destroying a Packaging" do
    visit packagings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Packaging was successfully destroyed"
  end
end
