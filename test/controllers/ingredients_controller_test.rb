require 'test_helper'

class DeliveriesControllerTest < ActionController::TestCase
  setup do
    @ingredient = ingredients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ingredients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ingredient" do
    assert_difference('Delivery.count') do
      post :create, ingredient: { contents: @ingredient.contents, from: @ingredient.from, reciever: @ingredient.reciever, sender: @ingredient.sender, to: @ingredient.to }
    end

    assert_redirected_to ingredient_path(assigns(:ingredient))
  end

  test "should show ingredient" do
    get :show, id: @ingredient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ingredient
    assert_response :success
  end

  test "should update ingredient" do
    patch :update, id: @ingredient, ingredient: { contents: @ingredient.contents, from: @ingredient.from, reciever: @ingredient.reciever, sender: @ingredient.sender, to: @ingredient.to }
    assert_redirected_to ingredient_path(assigns(:ingredient))
  end

  test "should destroy ingredient" do
    assert_difference('Delivery.count', -1) do
      delete :destroy, id: @ingredient
    end

    assert_redirected_to ingredients_path
  end
end
