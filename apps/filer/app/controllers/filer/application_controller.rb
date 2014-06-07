module Filer
  class ApplicationController < ActionController::Base
    http_basic_authenticate_with name: ENV['lettuce_name'], password: ENV['lettuce_password']
  end
end
