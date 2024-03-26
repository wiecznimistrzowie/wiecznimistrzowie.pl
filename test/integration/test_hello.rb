require "capybara"
require "capybara/minitest"
require "capybara/minitest/spec"

require "test_helper"

require "app"

Capybara.app = App.freeze.app

class TestHello < Minitest::Spec
  include Capybara::DSL
  include Capybara::Minitest::Assertions

  it "returns hello" do
    visit("/")

    assert_equal page.text, "hello world"
  end

  after do
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end
