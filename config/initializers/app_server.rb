def figure_out_app_server
  ["PhusionPassenger", "Unicorn", "Puma", "Thin"].each do |server|
    return server if Module.const_defined? server
  end
  return "unknown"
end

APP_SERVER_IN_USE = figure_out_app_server