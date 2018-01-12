class BudgetPage

  BUDGET_PAGE_MENU = "protect.budgetwatch:id/helpText"
  NEW_BUDGET_BUTTON = "protect.budgetwatch:id/action_add"
  NEW_BUDGET = "protect.budgetwatch:id/budgetName"

  def initialize(driver)
    @driver = driver
  end

  def budget_page_displayed?
    @driver.find_element(:id, BUDGET_PAGE_MENU)
  end

  def new_budget_click
    @driver.find_element(:id, NEW_BUDGET_BUTTON).click
  end

  def new_budget_displayed?
    @driver.find_element(:id, NEW_BUDGET)
  end

  def new_budget_text
    @driver.find_element(:id, NEW_BUDGET).text
  end

end
