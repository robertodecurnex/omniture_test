require_relative 'spec_helper'

describe 'Omniture' do

  before :each do
    $browser = Watir::Browser.new :ff
  end

  after :each do
    $browser.close
  end

  $targets.each do |target|

    describe "at #{target['url']}" do
    
      before :each do
        $browser.goto(target['url'])
        
        target['cookies'].each do |key, value|
          $browser.cookies.add(key, value)
        end

        $browser.goto(target['url'])

        $browser.execute_script(%q{window.open("","dp_debugger","width=600,height=600,location=0,menubar=0,status=1,toolbar=0,resizable=1,scrollbars=1").document.write("<script language=\"JavaScript\" id=dbg src=\"http://www.digitalpulse.omniture.com/dp/debugger.js\"></script>")})

        $browser.windows.last.use

        @debug_tables = $browser.tables(:class => 'debugtable')
      end

      it 'should send the expected variables/values' do
        @debug_tables.each do |table|
          selected_trs = table.trs.select do |tr|
            target['omniture_variables'].keys.include? tr.tds.first.text
          end

          sent_variables = selected_trs.collect { |tr| tr.tds.first.text }

          target['omniture_variables'].keys.each do |target_omniture_variable|
            sent_variables.should include(target_omniture_variable)
          end

          selected_trs.collect.each do |tr|
            tr.tds.last.text.should == target['omniture_variables'][tr.tds.first.text]
          end
        end
      end

    end

  end

end
