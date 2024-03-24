require "roda"

class App < Roda
  route do |r|
    r.root do
      "hello world"
    end
  end
end

run App.freeze.app
