require 'thor'

module Kip
  class CommandLine < Thor
    desc "post file.md", "Post your markdown file to Kipalog"
    method_option :title, :aliases => "-t", :desc => "Title of your post", :required => true
    method_option :tags, :aliases => "-g", :desc => "Tag list, separated by a comma", :required => true
    method_option :publish, :aliases => "-p", :desc => "Publish or draft, true/false", :default => false
    def post(filename)
      title = options[:title]
      tags = options[:tags]
      publish = options[:publish]
      file = open(filename)
      content = file.read
      puts "Title: " + title
      puts "Tags: " + tags
      puts "Submit as " + ((publish) ? "published post" : "a draft")
      Kip::API.create_new_post(title, tags, "This is a test", !publish) 
    end
  end
end
