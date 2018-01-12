class MainPage

  BUDGET_AND_TRANSACTION = 'protect.budgetwatch:id/action_settings'
  CLICK_BUDGET_IMAGE = "protect.budgetwatch:id/image"

  def initialize(driver)
    @driver = driver
  end

  def main_page_displayed?
    @driver.find_element(:id, BUDGET_AND_TRANSACTION)
  end

  def budget_option_click
    @driver.find_element(:id, CLICK_BUDGET_IMAGE).click
  end

end
