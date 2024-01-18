require "test_helper"

class IngrediantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingrediant = ingrediants(:one)
  end

  test "should get index" do
    get ingrediants_url
    assert_response :success
  end

  test "should get new" do
    get new_ingrediant_url
    assert_response :success
  end

  test "should create ingrediant" do
    assert_difference("Ingrediant.count") do
      post ingrediants_url, params: { ingrediant: { name: @ingrediant.name, price: @ingrediant.price } }
    end

    assert_redirected_to ingrediant_url(Ingrediant.last)
  end

  test "should show ingrediant" do
    get ingrediant_url(@ingrediant)
    assert_response :success
  end

  test "should get edit" do
    get edit_ingrediant_url(@ingrediant)
    assert_response :success
  end

  test "should update ingrediant" do
    patch ingrediant_url(@ingrediant), params: { ingrediant: { name: @ingrediant.name, price: @ingrediant.price } }
    assert_redirected_to ingrediant_url(@ingrediant)
  end

  test "should destroy ingrediant" do
    assert_difference("Ingrediant.count", -1) do
      delete ingrediant_url(@ingrediant)
    end

    assert_redirected_to ingrediants_url
  end
end
