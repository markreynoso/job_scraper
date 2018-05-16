require 'test_helper'

class ScraperControllerTest < ActionDispatch::IntegrationTest
  test "should get results" do
    get scraper_results_url
    assert_response :success
  end

end
