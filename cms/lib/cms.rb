# frozen_string_literal: true

require "bundler/setup"
Bundler.require(:default)

loader = Zeitwerk::Loader.for_gem
loader.setup

module Cms
end
