# frozen_string_literal: true

require "rake"

namespace :protosphere do
  desc "Creates auto-generated protobuf files from proto files"
  task :build_protos do
    puts "Building protos"
    input_path = "protos/**"
    output_folder = "rpc/protos"
    Dir.glob(input_path).each do |file|
      next if File.file? file

      dir = file.split("/").last
      Dir.glob("#{file}/**").each do |sub_file|
        next if File.directory? sub_file

        output_path = "#{output_folder}/#{dir}"
        cmd = "grpc_tools_ruby_protoc --ruby_out=#{output_path} --grpc_out=#{output_path} #{sub_file}"
        puts "Compiling file #{subfile} into #{output_path}"
        raise "Could not compile #{subfile}" unless system(cmd)
      end
    end
  end
end
