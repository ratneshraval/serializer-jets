source "https://rubygems.org"

gem "jets"

gem 'active_model_serializers', '~> 0.10'

# Include webpacker if you are you are building html pages
gem "webpacker", git: "https://github.com/tongueroo/webpacker.git", branch: "jets"

# Include mysql2 gem if you are using ActiveRecord, remove if you are not
gem "mysql2", "~> 0.5.2"
gem 'sqlite3'
gem "dynomite"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'shotgun'
  gem 'rack'
  gem 'rspec-rails'
end

group :test do
  gem 'rspec' # rspec test group only or we get the "irb: warn: can't alias context from irb_context warning" when starting jets console
  gem 'launchy'
  gem 'capybara'
  gem 'shoulda'
  gem 'shoulda-matchers', '~> 3.1'
end
