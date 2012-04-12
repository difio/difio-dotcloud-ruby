require "common-ruby-monupco"

module Monupco
    class dotCloud < Monupco::MonupcoBase
# todo: load 'env' from /home/dotcloud/environment.json
        configure({
            'user_id'  => env['MONUPCO_USER_ID'],
            'app_name' => env['DOTCLOUD_PROJECT'] + '.' + env['DOTCLOUD_SERVICE_NAME'],
            'app_uuid' => env['DOTCLOUD_WWW_HTTP_HOST'],
            'app_type' => 'Ruby',
            'app_url'  => env['DOTCLOUD_WWW_HTTP_URL'],
            'app_vendor' => 1,
            'url' => ENV['MONUPCO_REGISTER_URL'],
        })
    end
end
