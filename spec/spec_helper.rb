require 'watir-webdriver'
require 'yaml'
require 'json'

abort "Defina el ./targets.yml o el ./targets.json

Ejemplo YAML:
#{File.read("#{ENV['OMNITURE_TEST_PATH']}/targets.yml.sample")}

Ejemplo JSON:
#{File.read("#{ENV['OMNITURE_TEST_PATH']}/targets.json.sample")}
" if !File.exists?('targets.yml') && !File.exists?('targets.json')

$targets = File.exists?('targets.yml') ? YAML.load_file('targets.yml')['targets'] : JSON.parse(File.read('targets.json'))
