require_relative "application_view"

class HelloView < Phlex::HTML
  def initialize(layout:)
    @layout = layout
  end

  def template
    render layout do
      p { "hello world" }
    end
  end

  private

  attr_reader :layout
end
