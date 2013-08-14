require File.expand_path("#{File.dirname(__FILE__)}/../lib/megam/deccanplato")

require 'rubygems'
gem 'minitest' # ensure we are using the gem version
require 'minitest/autorun'
require 'time'

SANDBOX_HOST_OPTIONS = {
  :host => 'localhost',
  :port => 8080
}


def megam(options)  
  options = SANDBOX_HOST_OPTIONS.merge(options)
  mg=Megam::Deccanplato.new(options)  
end

def megams(options={})  
s_options = SANDBOX_HOST_OPTIONS.merge({
  :json => sandbox_json,   
}) 
  options = s_options.merge(options)
  mg=Megam::Deccanplato.new(options)  
end

def sandbox_json
 {:json =>
    '{"system":{"access":{"project_id":"3c78f781-fc28-4c69-8fad-0ca66f2c5dbc","api_token":"oVj29MbD2LcXzsRzNFx9vw==","access_email":"rajthilak@megam.com","access_org_id":1,"access_account_name":"MegamSyste"}},"provider":{"access":{"consumer_key":"3MVG9Y6d_Btp4xp4gO.riQJ_rIP8PjQqtO5Hcqdt4NJ99SPjKCd_cBuI_Y4P_WzlNrOvhOLpjEUjpzfskPZ3a","consumer_secret":"860088549162819056","access_username":"nkishore@megam.co.in","access_password":"walle#1bug74wt3djhr28kLBSKbspj1EOoT","provider":"salesforcecrm","category":"CRM","description":"My first Connector Project","user_email":"rajthilak@megam.com","org_name":"Megam Systems"},"business_activity":{"biz_function":"account#create","name":"Rajthilak"}},"execution": {"output": {"type": "default","location": "default"}}}'
  }
end
