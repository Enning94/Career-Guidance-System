require 'application_system_test_case'

class PersonalityTraitsTest < ApplicationSystemTestCase
  setup do
    @personality_trait = personality_traits(:one)
  end

  test 'visiting the index' do
    visit personality_traits_url
    assert_selector 'h1', text: 'Personality traits'
  end

  test 'should create personality trait' do
    visit personality_traits_url
    click_on 'New personality trait'

    fill_in 'Name', with: @personality_trait.name
    click_on 'Create Personality trait'

    assert_text 'Personality trait was successfully created'
    click_on 'Back'
  end

  test 'should update Personality trait' do
    visit personality_trait_url(@personality_trait)
    click_on 'Edit this personality trait', match: :first

    fill_in 'Name', with: @personality_trait.name
    click_on 'Update Personality trait'

    assert_text 'Personality trait was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Personality trait' do
    visit personality_trait_url(@personality_trait)
    click_on 'Destroy this personality trait', match: :first

    assert_text 'Personality trait was successfully destroyed'
  end
end
