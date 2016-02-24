Rails.application.config.web_console.tap do |console|
  console.whitelisted_ips = %w{127.0.0.0/24 192.168.0.0/16}
  console.command = 'sudo /bin/login'
  console.automount = false
end
