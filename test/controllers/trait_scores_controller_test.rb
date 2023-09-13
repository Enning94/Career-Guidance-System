require 'test_helper'

class TraitScoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trait_score = trait_scores(:one)
  end

  test 'should get index' do
    get trait_scores_url
    assert_response :success
  end

  test 'should get new' do
    get new_trait_score_url
    assert_response :success
  end

  test 'should create trait_score' do
    assert_difference('TraitScore.count') do
      post trait_scores_url,
           params: { trait_score: { personality_trait_id: @trait_score.personality_trait_id, score: @trait_score.score,
                                    user_id: @trait_score.user_id } }
    end

    assert_redirected_to trait_score_url(TraitScore.last)
  end

  test 'should show trait_score' do
    get trait_score_url(@trait_score)
    assert_response :success
  end

  test 'should get edit' do
    get edit_trait_score_url(@trait_score)
    assert_response :success
  end

  test 'should update trait_score' do
    patch trait_score_url(@trait_score),
          params: { trait_score: { personality_trait_id: @trait_score.personality_trait_id, score: @trait_score.score,
                                   user_id: @trait_score.user_id } }
    assert_redirected_to trait_score_url(@trait_score)
  end

  test 'should destroy trait_score' do
    assert_difference('TraitScore.count', -1) do
      delete trait_score_url(@trait_score)
    end

    assert_redirected_to trait_scores_url
  end
end
