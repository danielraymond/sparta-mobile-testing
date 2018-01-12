class NewBudgetPage

  BUDGET_NAME_FIELD = "protect.budgetwatch:id/budgetNameEdit"
  BUDGET_VALUE_FIELD = "protect.budgetwatch:id/valueEdit"
  BUDGET_SAVE_BUTTON = "protect.budgetwatch:id/action_save"

  def initialize(driver)
    @driver = driver
  end

  def fill_budget_name_field
    @driver.find_element(:id, BUDGET_NAME_FIELD).send_keys('Test Budget Name')
  end

  def fill_budget_value_field
    @driver.find_element(:id, BUDGET_VALUE_FIELD).send_keys('100')
  end

  def click_save_budget
    @driver.find_element(:id, BUDGET_SAVE_BUTTON).click
  end

end
