require 'test_helper'

class ColaboradoresControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Colaborador.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Colaborador.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Colaborador.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to colaborador_url(assigns(:colaborador))
  end

  def test_edit
    get :edit, :id => Colaborador.first
    assert_template 'edit'
  end

  def test_update_invalid
    Colaborador.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Colaborador.first
    assert_template 'edit'
  end

  def test_update_valid
    Colaborador.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Colaborador.first
    assert_redirected_to colaborador_url(assigns(:colaborador))
  end

  def test_destroy
    colaborador = Colaborador.first
    delete :destroy, :id => colaborador
    assert_redirected_to colaboradores_url
    assert !Colaborador.exists?(colaborador.id)
  end
end
