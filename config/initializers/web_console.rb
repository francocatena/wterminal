Rails.application.configure do
  config.web_console.whitelisted_ips = %w{127.0.0.0/24}
end
