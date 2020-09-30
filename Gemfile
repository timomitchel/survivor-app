source 'https://rubygems.org'
ruby "2.5.3"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.6', '>= 5.1.6.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.12'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'redis', '~> 4.0'
gem 'faraday'
gem 'bootstrap', '~> 4.3.1'
gem "bootstrap_form", "~> 4.0"
gem 'jquery-rails'
gem 'bcrypt'
gem 'turbolinks'
gem 'sprockets-rails', :require => 'sprockets/railtie'
gem 'hover-rails'
gem 'figaro'
gem 'actionpack-action_caching'


group :test do
  gem 'shoulda-matchers', '4.0.0.rc1'
  gem 'rails-controller-testing' # If you are using Rails 5.x
end

group :development, :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'rspec-pride', '~> 3.2', '>= 3.2.1'
  gem 'pry-rails'
  gem "factory_bot_rails"
  gem 'database_cleaner'
  gem 'pry'
  gem 'launchy'
  gem 'faker'
  gem 'simplecov'

end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
