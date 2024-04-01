# frozen_string_literal: true

require_relative "application_view"

class ApplicationLayout < ApplicationView
  def template(&block)
    doctype

    html do
      head do
        meta charset: "utf-8"
        meta name: "viewport", content: "width=device-width,initial-scale=1"
        link rel: "stylesheet", href: "main-VKIGDJ4G.css"

        title { "Hello World" }
      end

      body do
        main(class: "container", &block)
      end
    end
  end
end
