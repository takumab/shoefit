source 'https://rubygems.org'
ruby "2.3.1"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'angularjs-rails'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Puma as the app server
gem 'puma', '~> 3.12'

group :development, :test do
  gem 'byebug'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'sqlite3'

  gem 'rspec-rails', '~> 3.0'

  gem 'factory_girl_rails', '~> 4.0'

  gem 'guard'

  gem 'guard-rspec', require: false

  #gem 'spork-rails'

  gem 'guard-spork'

  gem 'brakeman', :require => false

  gem "better_errors"
  gem "binding_of_caller"

end

group :development do
  gem 'web-console', '~> 3.0'
end

group :production do
	#gem 'rails_12factor'
	gem 'pg'
end
gem 'devise'

gem 'cancancan', '~> 1.10'

gem 'will_paginate', '~> 3.0.6'

gem 'stripe'

gem 'dalli'

gem 'redis-rails'
