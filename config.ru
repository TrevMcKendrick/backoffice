# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)

use Rack::ReverseProxy do
  reverse_proxy_options preserve_host: false

  reverse_proxy /^\/blog(\/.*)$/, 'http://backoffice.flywheelsites.com$1', :username => 'flywheel', :password => 'tender-move', :timeout => 500
end

run Rails.application
