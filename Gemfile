source 'http://rubygems.org'

ruby '1.9.3'
gem 'rails', '3.2.3'

gem 'databasedotcom'
gem 'databasedotcom-rails'
gem 'heroku'

group :development, :test do
  gem 'sqlite3'
end
group :production do
  gem 'pg'
  gem 'therubyracer'
end
 
#alternative to webrick in production
group :production do
  gem 'thin'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

gem 'jquery-rails'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end