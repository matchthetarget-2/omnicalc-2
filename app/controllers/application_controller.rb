class ApplicationController < ActionController::Base
  if Rails.env.production?
    http_basic_authenticate_with name: ENV.fetch("OMNICALC_2_USERNAME"), password: ENV.fetch("OMNICALC_2_PASSWORD")
  end
end
