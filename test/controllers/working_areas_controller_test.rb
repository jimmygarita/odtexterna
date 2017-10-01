require 'test_helper'

class WorkingAreasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @working_area = working_areas(:one)
  end

  test "should get index" do
    get working_areas_url
    assert_response :success
  end

  test "should get new" do
    get new_working_area_url
    assert_response :success
  end

  test "should create working_area" do
    assert_difference('WorkingArea.count') do
      post working_areas_url, params: { working_area: { active: @working_area.active, name: @working_area.name } }
    end

    assert_redirected_to working_area_url(WorkingArea.last)
  end

  test "should show working_area" do
    get working_area_url(@working_area)
    assert_response :success
  end

  test "should get edit" do
    get edit_working_area_url(@working_area)
    assert_response :success
  end

  test "should update working_area" do
    patch working_area_url(@working_area), params: { working_area: { active: @working_area.active, name: @working_area.name } }
    assert_redirected_to working_area_url(@working_area)
  end

  test "should destroy working_area" do
    assert_difference('WorkingArea.count', -1) do
      delete working_area_url(@working_area)
    end

    assert_redirected_to working_areas_url
  end
end
