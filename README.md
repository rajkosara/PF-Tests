How to install the Automated tests for Mac mountain Lion
============

1. Go though this page a follow the steps http://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/ . It may seem very long, but once you have xcode its very quick
2. Git clone the tests (you can find them here https://github.com/britishcouncil/solas2-tests)
3. Go to the root of the test code on your machine and accept .rvmvc (if asked)
4. Run gem install bundler at the tests root folder
5. Go to Config/config.yml and change korea_site_root to your site root. Also, change the admin user name and passowrd to match yours.
6. cd to features
7. open login.feature
8. Now run rake cuke:specific TAGS=@login
9. If all of these test pass, you are good to go


-------------------------------------------------
How to install the Automated tests for Windows

1. Follow the first 7 steps in here http://railsinstaller.org/
2. Go to the root of the test code on your machine and accept .rvmvc (if asked)
3. Run gem install bundler at the tests root folder
4. Download chromedriver here http://code.google.com/p/chromedriver/downloads/list and place it in a place that your PATH can see (usr/bin or in the ruby bin)
5. Go to Config/config.yml and change korea_site_root to your site root.
6. cd to features
7. open login.feature
8. Now run rake cuke:specific TAGS=@login
9. If all of these test pass, you are good to go



If you want more help running or understanding the test please feel free to ask David Chambers (david.chambers@britishcouncil.org)

Some useful commands
-----------------------------------------


rake -T

This will list all the available rake tasks
------

rake cuke:list_tags

This will list all the tags that are used
------
rake cuke:TAGS="[tag]"

This will run all the tests that have been given a particular tag. e.g rake cuke:specific TAGS=@login or rake cuke:specific TAGS=@general_info

