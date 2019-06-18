ENV["TEST"] = "1"
ENV["JETS_ENV"] ||= "test"
# Ensures aws api never called. Fixture home folder does not contain ~/.aws/credentails
ENV['HOME'] = "spec/fixtures/home"

require "byebug"
require "fileutils"
require "jets"
require 'active_model_serializers'

abort("The Jets environment is running in production mode!") if Jets.env == "production"
Jets.boot

# require 'rspec/rails'
require "jets/spec_helpers"

module Helpers
  def payload(name)
    JSON.load(IO.read("spec/fixtures/payloads/#{name}.json"))
  end
end

RSpec.configure do |c|
  c.include Helpers

  # c.include ActiveModelSerializers::Test::Schema
  # c.include ActiveModelSerializers::Test::Serializer
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec

    # Keep as many of these lines as are necessary:
    with.library :active_record
    with.library :active_model
  end
end
