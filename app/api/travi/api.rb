require 'doorkeeper/grape/helpers'
require 'grape-swagger'
module Travi

  USER = 'user'.freeze

  module SharedParams
    extend Grape::API::Helpers
    params :pagination do
      optional :page, type: Integer, allow_blank: false
      optional :per_page, type: Integer, allow_blank: false
    end
  end

  module HttpErrors
    def error_response(result)
      {
        message: result.message,
        error: result.errors,
        code: result.code
      }
    end
  end

  module HttpSucceed
    def success_response(result)
      result.response
    end
  end

  module CurrentResource

    def current_resource_owner
      User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
    end
  end

  class Api < Grape::API
    format :json
    formatter :json, Grape::Formatter::ActiveModelSerializers
    helpers Doorkeeper::Grape::Helpers,
            Travi::CurrentResource,
            Travi::HttpErrors,
            Travi::HttpSucceed,
            Travi::SharedParams

    mount ::Travi::Client::V1::Root
    #mount ::Travi::Dashboard::V1::Root
  end
end