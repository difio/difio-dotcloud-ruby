require "common-ruby-difio"
require "json"

module Difio
    class Dotcloud < Difio::DifioBase
        json = File.read('/home/dotcloud/environment.json')
        dotcloud_env = JSON.parse(json)

        configure({
            'user_id'  => dotcloud_env['DIFIO_USER_ID'],
            'app_name' => dotcloud_env['DOTCLOUD_PROJECT'] + '.' + dotcloud_env['DOTCLOUD_SERVICE_NAME'],
            'app_uuid' => dotcloud_env['DIFIO_UUID'],
            'app_type' => 'ruby-' + RUBY_VERSION,
            'app_url'  => dotcloud_env['DOTCLOUD_' + dotcloud_env['DOTCLOUD_SERVICE_NAME'].upcase + '_HTTP_URL'],
            'app_vendor' => 1,
            'url' => ENV['DIFIO_REGISTER_URL'],
        })
    end
end
