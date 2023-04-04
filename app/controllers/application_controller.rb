class ApplicationController < ActionController::API
    include ActionController::Cookies

    before_action :set_headers
    def set_headers
        headers['Access-Control-Allow-Origin'] = 'http://127.0.0.1:3000'
        headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
        headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version'
      end
end
