# frozen_string_literal: true

require_relative "application_view"

class ApplicationLayout < ApplicationView
  def template(&block)
    doctype

    html do
      head do
        title { "Hello World" }
        meta name: "viewport", content: "width=device-width,initial-scale=1"
        link rel: "stylesheet", href: "pico.min.css"
      end

      body do
        main(class: "container", &block)
      end
    end
  end
end
