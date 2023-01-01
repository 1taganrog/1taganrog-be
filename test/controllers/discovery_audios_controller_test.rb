require "test_helper"

class DiscoveryAudiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_audio = discovery_audios(:one)
  end

  test "should get index" do
    get discovery_audios_url, as: :json
    assert_response :success
  end

  test "should create home_audio" do
    assert_difference("HomeAudio.count") do
      post discovery_audios_url, params: { home_audio: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show home_audio" do
    get discovery_audio_url(@home_audio), as: :json
    assert_response :success
  end

  test "should update home_audio" do
    patch discovery_audio_url(@home_audio), params: { home_audio: {  } }, as: :json
    assert_response :success
  end

  test "should destroy home_audio" do
    assert_difference("HomeAudio.count", -1) do
      delete discovery_audio_url(@home_audio), as: :json
    end

    assert_response :no_content
  end
end
