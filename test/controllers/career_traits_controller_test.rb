require 'test_helper'

class CareerTraitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @career_trait = career_traits(:one)
  end

  test 'should get index' do
    get career_traits_url
    assert_response :success
  end

  test 'should get new' do
    get new_career_trait_url
    assert_response :success
  end

  test 'should create career_trait' do
    assert_difference('CareerTrait.count') do
      post career_traits_url,
           params: { career_trait: { career_id: @career_trait.career_id,
                                     personality_trait_id: @career_trait.personality_trait_id } }
    end

    assert_redirected_to career_trait_url(CareerTrait.last)
  end

  test 'should show career_trait' do
    get career_trait_url(@career_trait)
    assert_response :success
  end

  test 'should get edit' do
    get edit_career_trait_url(@career_trait)
    assert_response :success
  end

  test 'should update career_trait' do
    patch career_trait_url(@career_trait),
          params: { career_trait: { career_id: @career_trait.career_id,
                                    personality_trait_id: @career_trait.personality_trait_id } }
    assert_redirected_to career_trait_url(@career_trait)
  end

  test 'should destroy career_trait' do
    assert_difference('CareerTrait.count', -1) do
      delete career_trait_url(@career_trait)
    end

    assert_redirected_to career_traits_url
  end
end
