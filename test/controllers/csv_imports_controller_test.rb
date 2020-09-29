require 'test_helper'

class CsvImportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @csv_import = csv_imports(:one)
  end

  test "should get index" do
    get csv_imports_url
    assert_response :success
  end

  test "should get new" do
    get new_csv_import_url
    assert_response :success
  end

  test "should create csv_import" do
    assert_difference('CsvImport.count') do
      post csv_imports_url, params: { csv_import: { filename: @csv_import.filename, imported: @csv_import.imported } }
    end

    assert_redirected_to csv_import_url(CsvImport.last)
  end

  test "should show csv_import" do
    get csv_import_url(@csv_import)
    assert_response :success
  end

  test "should get edit" do
    get edit_csv_import_url(@csv_import)
    assert_response :success
  end

  test "should update csv_import" do
    patch csv_import_url(@csv_import), params: { csv_import: { filename: @csv_import.filename, imported: @csv_import.imported } }
    assert_redirected_to csv_import_url(@csv_import)
  end

  test "should destroy csv_import" do
    assert_difference('CsvImport.count', -1) do
      delete csv_import_url(@csv_import)
    end

    assert_redirected_to csv_imports_url
  end
end
