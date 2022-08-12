source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'rails', '~> 6.0.5', '>= 6.0.5.1'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'active_model_serializers'
gem 'bootsnap', '>= 1.4.2', require: false
gem "devise"
gem "jwt", "~> 2.4"

group :development, :test do
  gem 'pry-rails'
  gem "factory_bot_rails"
  gem 'ffaker'
end

group :development do  
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'sqlite3', '~> 1.4'
end

group :test do
  gem "email_spec"
  gem 'rspec-rails'
  gem "shoulda-matchers"
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "jwt", "~> 2.4"
