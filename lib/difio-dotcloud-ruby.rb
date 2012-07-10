require "common-ruby-monupco"
require "json"

module Monupco
    class Dotcloud < Monupco::MonupcoBase
        json = File.read('/home/dotcloud/environment.json')
        dotcloud_env = JSON.parse(json)

        configure({
            'user_id'  => dotcloud_env['MONUPCO_USER_ID'],
            'app_name' => dotcloud_env['DOTCLOUD_PROJECT'] + '.' + dotcloud_env['DOTCLOUD_SERVICE_NAME'],
            'app_uuid' => dotcloud_env['MONUPCO_UUID'],
            'app_type' => 'Ruby',
            'app_url'  => dotcloud_env['DOTCLOUD_WWW_HTTP_URL'],
            'app_vendor' => 1,
            'url' => ENV['MONUPCO_REGISTER_URL'],
        })
    end
end
