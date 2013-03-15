source 'http://rubygems.org'

# ruby '2.0.0'
ruby '1.9.3'

gem 'rails',              github: 'rails/rails'

gem 'rent_messaging',     path: '/Users/kmandrup/private/repos/company/engines/rent_messaging' # github: 'kristianmandrup/rent_messaging'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sprockets-rails',        github: 'rails/sprockets-rails'
  gem 'sass-rails',             github: 'rails/sass-rails'
  gem 'coffee-rails',           github: 'rails/coffee-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', platforms: :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'twitter-bootstrap-rails', 	github: 'seyhunak/twitter-bootstrap-rails'
gem 'font-awesome-rails', 		  github: 'bokmann/font-awesome-rails'

gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

gem 'rb-fsevent', '~> 0.9'

gem "rspec-rails", :group => [:test, :development]
group :test do
  gem 'factory_girl_rails', :require => false
  gem "capybara",        '>= 2.0.2',  github: 'jnicklas/capybara' 
  gem "capybara-webkit",              github: 'thoughtbot/capybara-webkit'
  gem 'growl'  
  gem "spork"
  gem "guard"
  gem "guard-bundler"
  gem "guard-rspec"
  gem "guard-spork"
  gem "launchy"
  gem "database_cleaner"
end

group :development do
	gem 'pry'
	gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'	
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'
gem 'thin'

# Deploy with Capistrano
# gem 'capistrano', group: :development

# To use debugger
# gem 'debugger'
