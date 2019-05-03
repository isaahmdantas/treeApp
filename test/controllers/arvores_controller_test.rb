require 'test_helper'

class ArvoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arvore = arvores(:one)
  end

  test "should get index" do
    get arvores_url
    assert_response :success
  end

  test "should get new" do
    get new_arvore_url
    assert_response :success
  end

  test "should create arvore" do
    assert_difference('Arvore.count') do
      post arvores_url, params: { arvore: { nome: @arvore.nome } }
    end

    assert_redirected_to arvore_url(Arvore.last)
  end

  test "should show arvore" do
    get arvore_url(@arvore)
    assert_response :success
  end

  test "should get edit" do
    get edit_arvore_url(@arvore)
    assert_response :success
  end

  test "should update arvore" do
    patch arvore_url(@arvore), params: { arvore: { nome: @arvore.nome } }
    assert_redirected_to arvore_url(@arvore)
  end

  test "should destroy arvore" do
    assert_difference('Arvore.count', -1) do
      delete arvore_url(@arvore)
    end

    assert_redirected_to arvores_url
  end
end
