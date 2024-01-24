source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'
gem 'active_model_serializers', '~> 0.10.13'
gem 'bootsnap', require: false
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.1', '>= 7.1.3'
gem 'tzinfo-data', platforms: %i[ mingw mswin x64_mingw jruby ]
gem 'rack-cors'
gem "graphql", "~> 2.0"
gem "graphiql-rails", "~> 1.8"

# Pagination. Source: https://github.com/RenoFi/graphql-pagination
gem 'graphql-pagination'
gem 'kaminari-activerecord'

group :development, :test do
  gem 'debug', platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem 'graphql-rails-generators'
end