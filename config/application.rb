require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Kadai
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    
    #タイムゾーンの設定
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    
    #本番環境のログレベルを、重要なものだけをだすレベルに変更
    config.log_level = :info
  end
end
