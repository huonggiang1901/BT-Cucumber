Given('The login page is opened successfully') do
    @driver = Selenium::WebDriver.for :firefox
    @driver.get('http://the-internet.herokuapp.com/login')
end
  
  When('enter username {string} and password {string}') do |string, string2|
    @driver.find_element(:id, 'username').send_keys(string)
    @driver.find_element(:id, 'password').send_keys(string2)
    @driver.find_element(:css, '.fa').click
    sleep 5
end
  
  Then('a message {string} should be displayed') do |string|
    expect(@driver.find_element(:css, "#flash").text.delete("\n")).to eq(string)
    sleep 3
    @driver.quit
end