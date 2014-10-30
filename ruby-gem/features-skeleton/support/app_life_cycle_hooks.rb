require 'calabash-android/management/adb'
require 'calabash-android/operations'

Before do |scenario|
  devices = connected_devices
  if devices==["0336aa9a215fdbb4"]
	$phone=["nexus5"]
  elsif devices==["Here put device number for Nexus 5 device"]
	$phone=["nexus5"]
  elsif devices==["4790093530cd90b4"]
	$phone=["s3mini"]
  elsif devices==["R32D801B49T"]
	$phone=["nexus10"]
  else 
	$phone=["nexus5"]
  end
  start_test_server_in_background
end

After do |scenario|
  if scenario.failed?
    screenshot_embed
    reinstall_apps
  start_test_server_in_background
  end
#hutdown_test_server
end

