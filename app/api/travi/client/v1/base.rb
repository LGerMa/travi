module Travi
  module Client
    module V1
      class Base < Api
        content_type :json, 'application/json'
        format :json
        default_format :json
      end
    end
  end
end