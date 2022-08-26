source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "active_type"
gem "ancestry"
gem "bcrypt"
gem "bootsnap", require: false
gem "pg", "~> 1.1"
gem "pgcli-rails"
gem "puma", "~> 5.0"
gem "rack-canonical-host"
gem "rails", "~> 7.0.3"
gem "rodauth-rails", "~> 1.0"
gem "stimulus-rails"
gem "turbo-rails"
gem "vite_rails"

group :production do
  gem "postmark-rails"
  gem "sidekiq"
end

group :development do
  gem "amazing_print"
  gem "annotate"
  gem "brakeman", require: false
  gem "bundler-audit", require: false
  gem "erb_lint", require: false
  gem "letter_opener"
  gem "ransack"
  gem "rubocop", require: false
  gem "rubocop-minitest", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "web-console"
end

group :development, :test do
  gem "byebug"
  gem "dotenv-rails"
  gem "faker", git: "https://github.com/faker-ruby/faker.git", branch: "master"
  gem "launchy"
  gem "syntax_suggest"
end

group :test do
  gem "capybara"
  gem "minitest-ci", require: false
  gem "selenium-webdriver"
  gem "shoulda-context"
  gem "shoulda-matchers"
  gem "webdrivers"
end

# Use Redis for Action Cable
gem "redis", "~> 4.0"
