# frozen_string_literal: true

require_relative "protosphere/version"

Dir.glob("proto/**/*_services_pb.rb").each { |proto| load proto }

module Protosphere
  class Error < StandardError; end
  # Your code goes here...
end
