require 'watir-webdriver'
require 'yaml'

abort "Defina el targets.yml" if !File.exists?('targets.yml')

$targets = YAML.load_file('targets.yml')['targets']
