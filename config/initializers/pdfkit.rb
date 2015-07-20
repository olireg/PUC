PDFKit.configure do |config|
  config.wkhtmltopdf = '/usr/local/bin/wkhtmltopdf'
  config.default_options = {
    :encoding=>"UTF-8",
    :page_size => 'Legal',
    :margin_top=>"0.25in",
    :margin_right=>"1in",
    :margin_bottom=>"0.25in",
    :margin_left=>"1in",
    :disable_smart_shrinking=>false
  
    }
  # Use only if your external hostname is unavailable on the server.
  config.root_url = "http://localhost:3000"
  config.verbose = true
end