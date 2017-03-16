require 'test_helper'

class ActorsControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get actors_url #or can use get "/actors"
    assert_response :success
  end

  test "should get new" do
    get new_actor_url  #or can use get "/actors/new"
    assert_response :success
  end

  test "should get show" do
    @actor = actors(:one) # if using a fixture
    get actors_path(@actor)
    assert_response :success
  end

end
