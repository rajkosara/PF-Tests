How to install the Automated tests
============

1. Git clone the tests (you can find them here https://github.com/britishcouncil/solas2-tests)
2. get rvm (run this: curl -L https://get.rvm.io | bash -s stable --ruby or see https://rvm.io/rvm/install/)
3. Go to the root of the test code on your machine and accept .rvmvc (if asked)
4. Run gem install bundler at the tests root folder
5. Go to Config/config.yml and change korea_site_root to your site root. Also, change the admin user name and passowrd to match yours.
6. cd to features
7. open login.feature
8. Now run rake cuke:specific TAGS=@login


If you want more help running or understanding the test please feel free to ask David Chambers (david.chambers@britishcouncil.org)