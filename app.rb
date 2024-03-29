require "roda"
require_relative "views/hello_view"

class App < Roda
  route do |r|
    r.root do
      HelloView.call
    end
  end
end
