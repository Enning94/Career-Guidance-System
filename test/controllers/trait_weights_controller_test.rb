require "test_helper"

class TraitWeightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trait_weight = trait_weights(:one)
  end

  test "should get index" do
    get trait_weights_url
    assert_response :success
  end

  test "should get new" do
    get new_trait_weight_url
    assert_response :success
  end

  test "should create trait_weight" do
    assert_difference("TraitWeight.count") do
      post trait_weights_url, params: { trait_weight: { Trait1_weight: @trait_weight.Trait1_weight, Trait2_weight: @trait_weight.Trait2_weight, Trait3_weight: @trait_weight.Trait3_weight, Trait4_weight: @trait_weight.Trait4_weight, Trait5_weight: @trait_weight.Trait5_weight, Trait6_weight: @trait_weight.Trait6_weight, career_id: @trait_weight.career_id } }
    end

    assert_redirected_to trait_weight_url(TraitWeight.last)
  end

  test "should show trait_weight" do
    get trait_weight_url(@trait_weight)
    assert_response :success
  end

  test "should get edit" do
    get edit_trait_weight_url(@trait_weight)
    assert_response :success
  end

  test "should update trait_weight" do
    patch trait_weight_url(@trait_weight), params: { trait_weight: { Trait1_weight: @trait_weight.Trait1_weight, Trait2_weight: @trait_weight.Trait2_weight, Trait3_weight: @trait_weight.Trait3_weight, Trait4_weight: @trait_weight.Trait4_weight, Trait5_weight: @trait_weight.Trait5_weight, Trait6_weight: @trait_weight.Trait6_weight, career_id: @trait_weight.career_id } }
    assert_redirected_to trait_weight_url(@trait_weight)
  end

  test "should destroy trait_weight" do
    assert_difference("TraitWeight.count", -1) do
      delete trait_weight_url(@trait_weight)
    end

    assert_redirected_to trait_weights_url
  end
end
