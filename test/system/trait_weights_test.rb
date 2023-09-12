require 'application_system_test_case'

class TraitWeightsTest < ApplicationSystemTestCase
  setup do
    @trait_weight = trait_weights(:one)
  end

  test 'visiting the index' do
    visit trait_weights_url
    assert_selector 'h1', text: 'Trait weights'
  end

  test 'should create trait weight' do
    visit trait_weights_url
    click_on 'New trait weight'

    fill_in 'Trait1 weight', with: @trait_weight.Trait1_weight
    fill_in 'Trait2 weight', with: @trait_weight.Trait2_weight
    fill_in 'Trait3 weight', with: @trait_weight.Trait3_weight
    fill_in 'Trait4 weight', with: @trait_weight.Trait4_weight
    fill_in 'Trait5 weight', with: @trait_weight.Trait5_weight
    fill_in 'Trait6 weight', with: @trait_weight.Trait6_weight
    fill_in 'Career', with: @trait_weight.career_id
    click_on 'Create Trait weight'

    assert_text 'Trait weight was successfully created'
    click_on 'Back'
  end

  test 'should update Trait weight' do
    visit trait_weight_url(@trait_weight)
    click_on 'Edit this trait weight', match: :first

    fill_in 'Trait1 weight', with: @trait_weight.Trait1_weight
    fill_in 'Trait2 weight', with: @trait_weight.Trait2_weight
    fill_in 'Trait3 weight', with: @trait_weight.Trait3_weight
    fill_in 'Trait4 weight', with: @trait_weight.Trait4_weight
    fill_in 'Trait5 weight', with: @trait_weight.Trait5_weight
    fill_in 'Trait6 weight', with: @trait_weight.Trait6_weight
    fill_in 'Career', with: @trait_weight.career_id
    click_on 'Update Trait weight'

    assert_text 'Trait weight was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Trait weight' do
    visit trait_weight_url(@trait_weight)
    click_on 'Destroy this trait weight', match: :first

    assert_text 'Trait weight was successfully destroyed'
  end
end
