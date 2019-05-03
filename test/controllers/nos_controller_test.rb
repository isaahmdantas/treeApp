require 'test_helper'

class NosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @no = nos(:one)
  end

  test "should get index" do
    get nos_url
    assert_response :success
  end

  test "should get new" do
    get new_no_url
    assert_response :success
  end

  test "should create no" do
    assert_difference('No.count') do
      post nos_url, params: { no: { no_id: @no.no_id, nome: @no.nome } }
    end

    assert_redirected_to no_url(No.last)
  end

  test "should show no" do
    get no_url(@no)
    assert_response :success
  end

  test "should get edit" do
    get edit_no_url(@no)
    assert_response :success
  end

  test "should update no" do
    patch no_url(@no), params: { no: { no_id: @no.no_id, nome: @no.nome } }
    assert_redirected_to no_url(@no)
  end

  test "should destroy no" do
    assert_difference('No.count', -1) do
      delete no_url(@no)
    end

    assert_redirected_to nos_url
  end
end
