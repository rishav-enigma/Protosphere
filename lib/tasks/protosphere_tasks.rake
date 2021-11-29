# frozen_string_literal: true

require "rake"
require "fileutils"

namespace :protosphere do
  desc "Creates auto-generated protobuf files from proto files"
  task :build_protos do
    puts "Building protos"
    input_path = "lib/protos/**"
    output_folder = "lib/rpc/protos"
    Dir.glob(input_path).each do |wd|
      next if File.file? wd

      dir = wd.split("/").last
      Dir.glob("#{wd}/**").each do |sub_file|
        next if File.directory? sub_file

        output_path = "#{output_folder}/#{dir}/"
        FileUtils.mkdir_p(output_path) unless File.directory?(output_path)
        cmd = "grpc_tools_ruby_protoc -I=#{wd} --ruby_out=#{output_path} --grpc_out=#{output_path} #{sub_file}"
        puts "Compiling file #{sub_file} into #{output_path}"
        raise "Could not compile #{sub_file}" unless system(cmd)
      end
    end
  end
end
