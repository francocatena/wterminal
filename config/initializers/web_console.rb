class Wterminal::Application < Rails::Application
  config.web_console.whitelisted_ips = %w{127.0.0.0/24 192.168.0.0/16}
  config.web_console.command = '/usr/bin/zsh'
  config.web_console.style.colors = 'solarized_dark'
  config.web_console.automount = false
end
