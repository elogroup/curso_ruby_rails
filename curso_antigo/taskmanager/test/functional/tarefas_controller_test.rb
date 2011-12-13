require 'test_helper'

class TarefasControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Tarefa.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Tarefa.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Tarefa.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to tarefa_url(assigns(:tarefa))
  end

  def test_edit
    get :edit, :id => Tarefa.first
    assert_template 'edit'
  end

  def test_update_invalid
    Tarefa.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Tarefa.first
    assert_template 'edit'
  end

  def test_update_valid
    Tarefa.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Tarefa.first
    assert_redirected_to tarefa_url(assigns(:tarefa))
  end

  def test_destroy
    tarefa = Tarefa.first
    delete :destroy, :id => tarefa
    assert_redirected_to tarefas_url
    assert !Tarefa.exists?(tarefa.id)
  end
end
