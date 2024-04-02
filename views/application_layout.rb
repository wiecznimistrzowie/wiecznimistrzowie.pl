# frozen_string_literal: true

require_relative "application_view"
require_relative "../helpers/asset_helper"

class ApplicationLayout < ApplicationView
  include AssetHelper

  def template(&block)
    doctype

    html do
      head do
        meta charset: "utf-8"
        meta name: "viewport", content: "width=device-width,initial-scale=1"
        link rel: "stylesheet", href: asset_path("main.css")

        title { "Hello World" }
      end

      body do
        main(class: "container", &block)
      end
    end
  end
end
