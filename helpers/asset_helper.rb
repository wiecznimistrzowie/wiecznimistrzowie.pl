# frozen_string_literal: true

require "json"
require "net/http"

module AssetHelper
  class DevManifest
    DEFAULT_SERVER = "http://localhost:9000/"

    def initialize(server: DEFAULT_SERVER)
      @server = server
    end

    def asset_path(name)
      server + manifest.fetch(name)
    end

    private

    def manifest
      @manifest ||= JSON.parse(load_manifest_file)
    end

    def load_manifest_file
      uri = URI(server + "manifest.json")
      Net::HTTP.get(uri)
    end

    attr_reader :server
  end

  class ProdManifest
    FILE_PATH = "public/manifest.json"

    def asset_path(name)
      manifest[name]
    end

    private

    def manifest
      @manifest ||= JSON.parse(load_manifest_file)
    end

    def load_manifest_file
      if File.exist?(FILE_PATH)
        File.read(FILE_PATH)
      else
        "{}"
      end
    end
  end

  def asset_path(name)
    @manifest ||=
      if ENV["RACK_ENV"] == "development"
        DevManifest.new
      else
        ProdManifest.new
      end

    @manifest.asset_path(name)
  end
end
