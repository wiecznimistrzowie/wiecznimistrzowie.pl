# frozen_string_literal: true

module Web
  module Views
    class ApplicationLayout < ApplicationView
      include Helpers::AssetHelper

      def view_template(&block)
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
  end
end
