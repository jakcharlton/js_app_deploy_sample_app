class ApplicationController < ActionController::API
  include FrontEnd
  include HtmlHandler

  def index
    if Rails.env.development?
     @index_html =  File.read Rails.root.join('public','index.html')
    else
      @index_html = index_html
    end
    insert_flags 'deploy_key', 'ab_test', 'features'

    render text: @index_html
  end

end
