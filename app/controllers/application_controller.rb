class ApplicationController < ActionController::Base
  unless Rails.env.test?
    http_basic_authenticate_with name: "appdev", password: "fullstack"
  end
end
