# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: proto/pim/Products.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("proto/pim/Products.proto", :syntax => :proto3) do
    add_message "pim.Product" do
      optional :id, :uint32, 1
      optional :name, :string, 2
      optional :description, :string, 3
      optional :sku, :string, 4
    end
    add_message "pim.GetProductReq" do
      optional :id, :uint32, 1
    end
    add_message "pim.GetProductResp" do
      optional :product, :message, 1, "pim.Product"
    end
    add_message "pim.GetProductsReq" do
      optional :search, :string, 1
      optional :limit, :uint32, 2
    end
    add_message "pim.CreateProductsResp" do
      repeated :products, :message, 1, "pim.Product"
    end
  end
end

module Pim
  Product = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("pim.Product").msgclass
  GetProductReq = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("pim.GetProductReq").msgclass
  GetProductResp = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("pim.GetProductResp").msgclass
  GetProductsReq = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("pim.GetProductsReq").msgclass
  CreateProductsResp = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("pim.CreateProductsResp").msgclass
end
