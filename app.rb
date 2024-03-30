require "roda"
require_relative "views/application_layout"
require_relative "views/hello_view"

class App < Roda
  plugin :public

  route do |r|
    r.public

    r.root do
      HelloView.call(layout: ApplicationLayout.new)
    end
  end
end
