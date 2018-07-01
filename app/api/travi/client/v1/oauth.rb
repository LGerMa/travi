module Travi
  module Client
    module V1
      class Oauth < Base
        namespace :oauth do
          desc 'Requires for an access token'
          params do
            requires :grant_type, type: String, allow_blank: false, values: %w(password refresh_token)
            optional :email, type: String, regexp: Devise::email_regexp
            optional :account_id, type: String
            optional :refresh_token, type: String
            requires :scope, type: String, allow_blank: false, values: %w(user)
          end
          post :token do; end
        end
      end
    end
  end
end