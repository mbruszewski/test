require 'test_helper'

class DropdownsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Dropdown.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Dropdown.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Dropdown.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to dropdown_url(assigns(:dropdown))
  end

  def test_edit
    get :edit, :id => Dropdown.first
    assert_template 'edit'
  end

  def test_update_invalid
    Dropdown.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Dropdown.first
    assert_template 'edit'
  end

  def test_update_valid
    Dropdown.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Dropdown.first
    assert_redirected_to dropdown_url(assigns(:dropdown))
  end

  def test_destroy
    dropdown = Dropdown.first
    delete :destroy, :id => dropdown
    assert_redirected_to dropdowns_url
    assert !Dropdown.exists?(dropdown.id)
  end
end
