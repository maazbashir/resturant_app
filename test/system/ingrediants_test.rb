require "application_system_test_case"

class IngrediantsTest < ApplicationSystemTestCase
  setup do
    @ingrediant = ingrediants(:one)
  end

  test "visiting the index" do
    visit ingrediants_url
    assert_selector "h1", text: "Ingrediants"
  end

  test "should create ingrediant" do
    visit ingrediants_url
    click_on "New ingrediant"

    fill_in "Name", with: @ingrediant.name
    fill_in "Price", with: @ingrediant.price
    click_on "Create Ingrediant"

    assert_text "Ingrediant was successfully created"
    click_on "Back"
  end

  test "should update Ingrediant" do
    visit ingrediant_url(@ingrediant)
    click_on "Edit this ingrediant", match: :first

    fill_in "Name", with: @ingrediant.name
    fill_in "Price", with: @ingrediant.price
    click_on "Update Ingrediant"

    assert_text "Ingrediant was successfully updated"
    click_on "Back"
  end

  test "should destroy Ingrediant" do
    visit ingrediant_url(@ingrediant)
    click_on "Destroy this ingrediant", match: :first

    assert_text "Ingrediant was successfully destroyed"
  end
end
