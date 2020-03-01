require 'test_helper'

class SightingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sightings_index_url
    assert_response :success
  end

  test "should get show" do
    get sightings_show_url
    assert_response :success
  end

end
