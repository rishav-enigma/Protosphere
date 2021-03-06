# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: proto/pim/Users.proto for package 'pim'

require 'grpc'
require 'proto/pim/Users_pb'

module Pim
  module Users
    class Service

      include ::GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'pim.Users'

      # Demonstrates a request response call
      rpc :GetUser, ::Pim::GetUserReq, ::Pim::GetUserResp
      # Demonstrates a server streamer call
      rpc :GetUsers, ::Pim::GetUserReq, stream(::Pim::User)
      # Demonstrates a client streaming call
      rpc :CreateUser, ::Pim::User, ::Pim::CreateUserResp
      # Demonstrates a bidirectional streaming call
      rpc :CreateUsersInStream, stream(::Pim::User), stream(::Pim::User)
    end

    Stub = Service.rpc_stub_class
  end
end
