# frozen_string_literal: true

require "rake"
require "fileutils"

namespace :protosphere do
  desc "Creates auto-generated protobuf files from proto files"
  task :build_protos do
    puts "Building protos"
    input_path = "proto/**"
    output_path = "lib/"
    Dir.glob(input_path).each do |wd|
      next if File.file? wd

      Dir.glob("#{wd}/**").each do |sub_file|
        next if File.directory? sub_file

        FileUtils.mkdir_p(output_path) unless File.directory?(output_path)
        cmd = "grpc_tools_ruby_protoc --ruby_out=#{output_path} --grpc_out=#{output_path} #{sub_file}"
        puts "Compiling file #{sub_file} into #{output_path}"
        raise "Could not compile #{sub_file}" unless system(cmd)
      end
    end
  end
end
