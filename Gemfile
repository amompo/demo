source 'http://rubygems.org'

ruby '2.0.0'
# ruby '1.9.3'

gem 'rails', '~> 4.0.0.beta1', github: 'rails/rails'

# Our gems
gem 'property_living_space', github: 'kristianmandrup/property_living_space'
gem 'property_location',     github: 'kristianmandrup/property_location'
gem 'property_description',  github: 'kristianmandrup/property_description'

gem 'rent_property',         github: 'kristianmandrup/property'
gem 'rent_account',          github: 'kristianmandrup/rent_account'

# Controller helpers
gem 'context_exposer', '~> 0.4.0', github: 'kristianmandrup/context_exposer'

# Mongoid DB
gem 'mongoid',            '>= 4',     github: 'mongoid/mongoid'
gem 'mongoid_indexing',   '~> 0.1.2'

# Util
gem 'sugar-high', '~> 0.7.3', github: 'kristianmandrup/sugar-high'
gem 'hashie',     '~> 1.2'

# Concerns
gem 'concerned',  '~> 0.1.3'

# Sessions, Login, Authentication
gem 'sorcery',            '~> 0.8.1',     path: '/Users/kmandrup/private/repos/sorcery' # github: 'kristianmandrup/sorcery'

# Duration
# gem 'ruby-duration',      '>= 3.0',       github: 'peleteiro/ruby-duration'
gem 'xduration',          '~> 3.0',       github: 'kristianmandrup/xduration'

# Map and Location
gem 'on_the_map'
gem 'mongoid_geospatial', '>= 2.7.1',     github: 'nofxx/mongoid_geospatial'
gem 'geocoder',           '>= 1.1',       github: 'alexreisner/geocoder'
gem 'gmaps4rails',        '>= 2.0.0.pre', github: 'apneadiving/Google-Maps-for-Rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sprockets-rails', '~> 2.0.0.rc3',  github: 'rails/sprockets-rails'
  gem 'sass-rails',                       github: 'rails/sass-rails'
  gem 'coffee-rails',                     github: 'rails/coffee-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', platforms: :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'twitter-bootstrap-rails', 	'>= 2.2.6',   github: 'seyhunak/twitter-bootstrap-rails'
gem 'font-awesome-sass-rails',  '~> 3.0.2.2', github: 'littlebtc/font-awesome-sass-rails'

gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'gmaps-autocomplete-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder',   '>= 1.0.1'
gem 'rb-fsevent', '>= 0.9'

gem "rspec-rails", '>= 2.5', :group => [:test, :development]

group :test do
  gem 'factory_girl_rails', :require => false
  gem "capybara",        '>= 2.0.2',     github: 'jnicklas/capybara' 
  gem "capybara-webkit", '~> 0.14.2' #,    github: 'thoughtbot/capybara-webkit'
  gem 'growl'  
  gem "spork"
  gem "guard"
  gem "guard-bundler"
  gem "guard-rspec"
  gem "guard-spork"
  gem "launchy"
  gem "database_cleaner", '>= 0.8'
end

group :development do
	gem 'pry'
	gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'

  gem 'therubyracer'
  gem 'pivotal-github', github: 'mhartl/pivotal-github'
end

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'
gem 'thin'

# Deploy with Capistrano
# gem 'capistrano', group: :development

# To use debugger
# gem 'debugger'
