require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module FlowerApp
  class Application < Rails::Application
    config.autoload_paths += %W[
      #{config.root}/app/models/flowers
      #{config.root}/app/models/orders
      #{config.root}/doc
    ]
  end
end
