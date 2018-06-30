Rails.application.routes.draw do
  #use_doorkeeper
  devise_for :users

  scope 'user/v1' do
    use_doorkeeper do
      skip_controllers :applications, :authorized_applications, :authorizations
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Travi::Api => '/'
  mount GrapeSwaggerRails::Engine => '/*apidoc'
end
