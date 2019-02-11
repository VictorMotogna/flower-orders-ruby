Apipie.configure do |config|
  config.app_name                = "FlowerApp"
  config.api_base_url            = "/api/v1"
  config.doc_base_url            = "/apipie"
  # where is your API defined?
  config.api_controllers_matcher = Rails.root.join('app', 'controllers', 'api', '**', '*.rb')
  config.namespaced_resources = true
  config.default_locale = false
end
