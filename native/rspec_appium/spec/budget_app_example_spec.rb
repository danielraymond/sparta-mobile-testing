require 'spec_helper'

describe 'Testing the budget app' do

  before(:all) do
    @driver = Appium::Driver.new(opts, true)
    Appium.promote_appium_methods(RSpec::Core::ExampleGroup)
    @driver.start_driver
  end

  after(:all) do
    @driver.driver_quit
  end

  it "should open the budgetwatch app" do
    find_elements(:id, 'protect.budgetwatch:id/action_settings')[0].displayed?
  end

  it "should have the budget option on the main landing page " do
    find_elements(:id, "protect.budgetwatch:id/image")[0].displayed?
  end

  it "Should access the budget page" do
    find_elements(:id, "protect.budgetwatch:id/menu")[0].click
    find_elements(:id, "protect.budgetwatch:id/helpText")[0].displayed?
  end

  it "Should be able to add a budget" do
    find_elements(:id, "protect.budgetwatch:id/action_add")[0].click
    find_elements(:id, "protect.budgetwatch:id/budgetNameEdit")[0].send_keys('Test Budget Name')
    find_elements(:id, "protect.budgetwatch:id/valueEdit")[0].send_keys('100')
    find_elements(:id, "protect.budgetwatch:id/action_save")[0].click
    expect(find_elements(:id, "protect.budgetwatch:id/budgetName")[0].text).to eq('Test Budget Name')

  end



end
