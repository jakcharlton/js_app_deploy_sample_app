class ApplicationController < ActionController::API
  include FrontEnd

  def index
    render text: index_html
  end
end
