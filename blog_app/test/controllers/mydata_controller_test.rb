require 'test_helper'

class MydataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mydatum = mydata(:one)
  end

  test "should get index" do
    get mydata_url
    assert_response :success
  end

  test "should get new" do
    get new_mydatum_url
    assert_response :success
  end

  test "should create mydatum" do
    assert_difference('Mydatum.count') do
      post mydata_url, params: { mydatum: { lastname: @mydatum.lastname, name: @mydatum.name } }
    end

    assert_redirected_to mydatum_url(Mydatum.last)
  end

  test "should show mydatum" do
    get mydatum_url(@mydatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_mydatum_url(@mydatum)
    assert_response :success
  end

  test "should update mydatum" do
    patch mydatum_url(@mydatum), params: { mydatum: { lastname: @mydatum.lastname, name: @mydatum.name } }
    assert_redirected_to mydatum_url(@mydatum)
  end

  test "should destroy mydatum" do
    assert_difference('Mydatum.count', -1) do
      delete mydatum_url(@mydatum)
    end

    assert_redirected_to mydata_url
  end
end
