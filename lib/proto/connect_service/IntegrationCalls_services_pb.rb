# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: proto/connect_service/IntegrationCalls.proto for package 'rpc.connect_service'

require 'grpc'
require 'proto/connect_service/IntegrationCalls_pb'

module Rpc
  module ConnectService
    module IntegrationCalls
      class Service

        include ::GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'rpc.connect_service.IntegrationCalls'

        # Demonstrates a request response call
        rpc :GetIntegrationCall, ::Rpc::ConnectService::GetIntegrationCallReq, ::Rpc::ConnectService::GetIntegrationCallResp
      end

      Stub = Service.rpc_stub_class
    end
  end
end
