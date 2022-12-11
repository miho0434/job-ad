require 'test_helper'

class JobAdsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get job_ads_index_url
    assert_response :success
  end

end
