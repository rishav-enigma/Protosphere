# frozen_string_literal: true

require_relative "protosphere/version"

module Protosphere
  Dir["proto/**/*_services_pb.rb"].each {|file| require file }
  class Error < StandardError; end
  # Your code goes here...
end
