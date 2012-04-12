Registration agent for monupco.com, preconfigured for dotCloud / Ruby
applications.

It compiles a list of installed packages and sends it to monupco.com.

Installing on your dotCloud Ruby application
-----------------------------------------------------

- Create an account at http://monupco.com

- Create your Ruby application in dotCloud

- Add a dependency in your application's Gemfile

        ...
        gem 'monupco-dotcloud-ruby'
        ...

- Enable the registration script in your postinstall hook. **Note:**
If you are using an "approot" your `postinstall` script should be in the 
directory pointed by the “approot” directive of your `dotcloud.yml`.
For more information about `postinstall` turn to 
http://docs.dotcloud.com/guides/postinstall/.

If a file named `postinstall` doesn't already exist, create it and add the following:

        #!/bin/sh
        bundle exec /home/dotcloud/vendor/bundle/ruby/1.8/bin/monupco-dotcloud

- Make `postinstall` executable

        chmod a+x postinstall

- Run bundle install to install the monupco gems locally and regenerate Gemfile.lock

        bundle install

- Commit your changes (if using git):

        git add .
        git commit -m "enable monupco registration"

- Set your monupco user id. You can get it from https://monupco-otb.rhcloud.com/profiles/mine/.

        dotcloud var set <app name> MONUPCO_USER_ID=UserID

- Then push your application to dotCloud

        dotcloud push <app name>

- If everything goes well you should see something like:

        19:55:10 [www.0] Running postinstall script...
        19:55:13 [www.0] response:200
        19:55:13 [www.0] Monupco: Success, registered/updated application with id 35

That's it, you can now check your application statistics at http://monupco.com
