require "net/http"
require "json"

module Kip
  module API
    extend self

    @http = Net::HTTP.new("kipalog.com")

    def get_api_token
      return ENV["KIPALOG_API"]
    end

    def create_new_post(title, tags, content, draft)
      request = Net::HTTP::Post.new("/api/v1/post")
      request["X-Kipalog-Token"] = self.get_api_token
      body = { 
        title: title,
        content: content,
        status: (draft) ? "draft" : "published",
        tag: tags
      }
      request.body = body.to_json
      response = @http.request(request)
      puts response.body
    end

  end
end


