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

- Set your userID in the ./data/MONUPCO_SETTINGS file

        echo "export MONUPCO_USER_ID=YourUserID"  > ./data/MONUPCO_SETTINGS

- Enable the registration script in .openshift/action_hooks/post_deploy

        cd $OPENSHIFT_REPO_DIR
        source data/MONUPCO_SETTINGS
        bundle exec vendor/bundle/ruby/1.8/bin/monupco-openshift-express

- Run bundle install to install the monupco gems

        bundle install

- Commit your changes

        git add .
        git commit -m "enable monupco registration"

- Then push your application to OpenShift

        git push

That's it, you can now check your application statistics at <http://monupco.com>
