source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'bootsnap',   '1.4.5', require: false
gem 'jbuilder',   '2.9.1'
gem 'puma',       '4.3.6'
gem 'rails',      '6.0.3'
gem 'sass-rails', '5.1.0'
gem 'turbolinks', '5.2.0'
gem 'webpacker',  '4.0.7'
gem 'bcrypt'
gem 'carrierwave'
gem 'rmagick'
gem 'will_paginate'
gem 'faker'

group :development, :test do
  gem 'byebug',  '11.0.1', platforms: %i[mri mingw x64_mingw]
  gem 'sqlite3', '1.4.1'
  gem 'rspec-rails'
end

group :development do
  gem 'listen', '3.1.5'
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'spring',                '2.1.0'
  gem 'spring-watcher-listen', '2.0.1'
  gem 'web-console',           '4.0.1'
end

group :test do
  gem 'capybara',           '3.28.0'
  gem 'selenium-webdriver', '3.142.4'
  gem 'webdrivers',         '4.1.2'
  gem 'rails-controller-testing'
  gem 'minitest'
  gem 'minitest-reporters'
end

group :production do
  gem 'pg', '1.1.4'
end

# Windows ではタイムゾーン情報用の tzinfo-data gem を含める必要があります
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
