require 'grape-swagger'
module Travi

  class Api < Grape::API
    format :json
    formatter :json, Grape::Formatter::ActiveModelSerializers

    mount ::Travi::Client::V1::Root
    #mount ::Travi::Dashboard::V1::Root
  end
end