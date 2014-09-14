require 'test_helper'

class MesasControllerTest < ActionController::TestCase
  setup do
    @mesa = mesas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mesas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mesa" do
    assert_difference('Mesa.count') do
      post :create, mesa: { c_mesa: @mesa.c_mesa, c_user: @mesa.c_user, n_user: @mesa.n_user }
    end

    assert_redirected_to mesa_path(assigns(:mesa))
  end

  test "should show mesa" do
    get :show, id: @mesa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mesa
    assert_response :success
  end

  test "should update mesa" do
    patch :update, id: @mesa, mesa: { c_mesa: @mesa.c_mesa, c_user: @mesa.c_user, n_user: @mesa.n_user }
    assert_redirected_to mesa_path(assigns(:mesa))
  end

  test "should destroy mesa" do
    assert_difference('Mesa.count', -1) do
      delete :destroy, id: @mesa
    end

    assert_redirected_to mesas_path
  end
end
