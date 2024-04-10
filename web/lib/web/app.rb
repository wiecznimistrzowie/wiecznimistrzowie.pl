# frozen_string_literal: true

module Web
  class App < Roda
    plugin :public

    route do |r|
      r.public

      r.root do
        Views::HelloView.call(layout: Views::ApplicationLayout.new)
      end
    end
  end
end
