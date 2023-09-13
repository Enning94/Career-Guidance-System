require 'application_system_test_case'

class CareerTraitsTest < ApplicationSystemTestCase
  setup do
    @career_trait = career_traits(:one)
  end

  test 'visiting the index' do
    visit career_traits_url
    assert_selector 'h1', text: 'Career traits'
  end

  test 'should create career trait' do
    visit career_traits_url
    click_on 'New career trait'

    fill_in 'Career', with: @career_trait.career_id
    fill_in 'Personality trait', with: @career_trait.personality_trait_id
    click_on 'Create Career trait'

    assert_text 'Career trait was successfully created'
    click_on 'Back'
  end

  test 'should update Career trait' do
    visit career_trait_url(@career_trait)
    click_on 'Edit this career trait', match: :first

    fill_in 'Career', with: @career_trait.career_id
    fill_in 'Personality trait', with: @career_trait.personality_trait_id
    click_on 'Update Career trait'

    assert_text 'Career trait was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Career trait' do
    visit career_trait_url(@career_trait)
    click_on 'Destroy this career trait', match: :first

    assert_text 'Career trait was successfully destroyed'
  end
end
