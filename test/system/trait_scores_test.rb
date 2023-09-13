require 'application_system_test_case'

class TraitScoresTest < ApplicationSystemTestCase
  setup do
    @trait_score = trait_scores(:one)
  end

  test 'visiting the index' do
    visit trait_scores_url
    assert_selector 'h1', text: 'Trait scores'
  end

  test 'should create trait score' do
    visit trait_scores_url
    click_on 'New trait score'

    fill_in 'Personality trait', with: @trait_score.personality_trait_id
    fill_in 'Score', with: @trait_score.score
    fill_in 'User', with: @trait_score.user_id
    click_on 'Create Trait score'

    assert_text 'Trait score was successfully created'
    click_on 'Back'
  end

  test 'should update Trait score' do
    visit trait_score_url(@trait_score)
    click_on 'Edit this trait score', match: :first

    fill_in 'Personality trait', with: @trait_score.personality_trait_id
    fill_in 'Score', with: @trait_score.score
    fill_in 'User', with: @trait_score.user_id
    click_on 'Update Trait score'

    assert_text 'Trait score was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Trait score' do
    visit trait_score_url(@trait_score)
    click_on 'Destroy this trait score', match: :first

    assert_text 'Trait score was successfully destroyed'
  end
end
