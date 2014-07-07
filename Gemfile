eval(File.read(File.dirname(__FILE__) + '/Gemfile.local'), binding) rescue source 'http://rubygems.org'

gem 'rails', '4.0.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
gem 'mongo',                      '1.3.1'
gem 'mongoid', github: 'mongoid/mongoid'
gem 'mongoid_auto_increment_id',  '0.6.5'

gem 'devise',                     '3.2.4'
gem 'omniauth'

gem 'showbuilder',                '0.0.16'
gem 'will_paginate-bootstrap'
gem "will_paginate_mongoid"
gem "slim-rails"
#富文本编辑
gem 'rails_kindeditor'

gem "cancan"

gem "breadcrumbs_on_rails",     '2.3.0'
group :assets do
  gem 'sass-rails',               '4.0.1'
  gem 'coffee-rails',             '4.0.1'
  gem "therubyracer",             '0.12.1'
  gem "less-rails" ,              '2.5.0'
  gem 'jquery-rails',             '3.1.1'
  gem "twitter-bootstrap-rails",  '2.2.8'
  gem 'uglifier',                 '>= 1.0.3'
end


group :development do
  gem 'pry',                      '0.9.12.2'
  gem 'pry-nav',                  '0.2.3'
end
gem "unicorn-rails"