require File.expand_path('../boot', __FILE__)  
  
require 'rails/all'  
  
# Auto-require default libraries and those for the current Rails environment.  
Bundler.require :default, Rails.env  

module JobsBoard
  class Application < Rails::Application
    
   
require 'pdfkit'
config.assets.initialize_on_precompile = false
config.middleware.use PDFKit::Middleware, :print_media_type => true 

end
  end

