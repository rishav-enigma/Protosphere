# frozen_string_literal: true

require_relative "protosphere/version"

# Module requires all the generated protobufs required by services
module Protosphere
  class Error < StandardError; end
  # Your code goes here...
  Dir["#{File.dirname(__FILE__)}/proto/**/*_services_pb.rb"].sort.each do |file|
    require file.gsub("#{File.dirname(__FILE__)}/", "").gsub(".rb", "")
  end
end
