require "phlex"

class HelloView < Phlex::HTML
  def template
    plain("hello world")
  end
end
