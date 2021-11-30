# frozen_string_literal: true

require_relative "protosphere/version"

Dir["proto/**/*_services_pb.rb"].each {|file| require file }

module Protosphere
  class Error < StandardError; end
  # Your code goes here...
end
