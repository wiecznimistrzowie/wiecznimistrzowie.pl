# frozen_string_literal: true

module Web
  module Views
    class HelloView < Phlex::HTML
      def initialize(layout:)
        @layout = layout
      end

      def view_template
        render layout do
          p { "hello world" }
        end
      end

      private

      attr_reader :layout
    end
  end
end
