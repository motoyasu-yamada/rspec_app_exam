RSpec.configure do |config|
  config.before(:each, type: :system) do
    # driven_by(:rack_test)
    # driven_by(:selenium_chrome)
    # driven_by(:selenium_chrome_headless)
    driven_by :selenium, using: :headless_chrome, options: { args: ["headless", "disable-gpu", "no-sandbox", "disable-dev-shm-usage"] }
  end
end
