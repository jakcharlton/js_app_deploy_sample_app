module Admin
  class ApplicationController < ::ApplicationController
    def index
      render text: index_html('admin')
    end
  end
end
