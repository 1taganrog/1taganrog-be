require "test_helper"

class DiscoveryVideosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_video = discovery_videos(:one)
  end

  test "should get index" do
    get discovery_videos_url, as: :json
    assert_response :success
  end

  test "should create home_video" do
    assert_difference("HomeVideo.count") do
      post discovery_videos_url, params: { home_video: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show home_video" do
    get discovery_video_url(@home_video), as: :json
    assert_response :success
  end

  test "should update home_video" do
    patch discovery_video_url(@home_video), params: { home_video: {  } }, as: :json
    assert_response :success
  end

  test "should destroy home_video" do
    assert_difference("HomeVideo.count", -1) do
      delete discovery_video_url(@home_video), as: :json
    end

    assert_response :no_content
  end
end
