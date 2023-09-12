require "test_helper"

class PersonalityTraitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personality_trait = personality_traits(:one)
  end

  test "should get index" do
    get personality_traits_url
    assert_response :success
  end

  test "should get new" do
    get new_personality_trait_url
    assert_response :success
  end

  test "should create personality_trait" do
    assert_difference("PersonalityTrait.count") do
      post personality_traits_url, params: { personality_trait: { name: @personality_trait.name } }
    end

    assert_redirected_to personality_trait_url(PersonalityTrait.last)
  end

  test "should show personality_trait" do
    get personality_trait_url(@personality_trait)
    assert_response :success
  end

  test "should get edit" do
    get edit_personality_trait_url(@personality_trait)
    assert_response :success
  end

  test "should update personality_trait" do
    patch personality_trait_url(@personality_trait), params: { personality_trait: { name: @personality_trait.name } }
    assert_redirected_to personality_trait_url(@personality_trait)
  end

  test "should destroy personality_trait" do
    assert_difference("PersonalityTrait.count", -1) do
      delete personality_trait_url(@personality_trait)
    end

    assert_redirected_to personality_traits_url
  end
end
