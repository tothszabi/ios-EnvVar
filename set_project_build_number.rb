#!/usr/bin/ruby

require 'xcodeproj'

BUILD_NUMBER=ARGV[0]

xcode_project_file_path = Dir.glob("EnvVar.xcodeproj").first
project = Xcodeproj::Project.open(xcode_project_file_path)

main_target = project.targets.detect { |target| target.name == "EnvVar" }

build = main_target.build_configurations.first.build_settings['CURRENT_PROJECT_VERSION']
components = build.split(".")
components.pop
components.push(BUILD_NUMBER)
build = components.join(".")

puts "Setting project build to #{build}"
main_target.build_configurations.each do |config|
    config.build_settings['CURRENT_PROJECT_VERSION'] = build
end

project.save