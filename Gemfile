source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.0'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5'
gem 'active_model_serializers', '~> 0.10.0'
gem 'bootstrap-sass'
gem 'carrierwave'
gem 'devise', git: 'https://github.com/plataformatec/devise.git'
gem 'erubis'
gem 'fog-aws'
gem 'geocoder'
gem 'httparty'
gem 'jquery-rails'
gem 'mini_magick'
gem 'rack-cors'
gem 'rails_admin', '~> 1.1.1'
gem 'react_on_rails', '~> 7'
gem 'simple_form'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_girl_rails'
  gem 'ffaker'
  gem 'pry-rails'
  gem 'rspec-rails'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  gem 'bullet'
  gem 'letter_opener'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rails_best_practices'
end

group :test do
  gem 'rspec_api_documentation'
end

gem 'mini_racer', platforms: :ruby
