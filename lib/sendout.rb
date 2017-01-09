require "sendout/version"
require "httparty"
require 'json'

module Sendout
  include HTTParty
  base_uri "https://www.sendoutapp.com/api/v2"

  # check account balance
  def self.check_balance
   post("/saldo", {:body => authenticate.to_json, :headers => {'Content-Type' => 'application/json'}}).parsed_response
  end
  
  # send sms: dest is always an array of numbers and the message a string
  def self.send_sms(numbers=[], debug={}, message)
    # fields from API
    data = {"para" => numbers, "sms" => message, "debug" => debug}

    # merge the body content
    content = {}
    content.merge!(authenticate)
    content.merge!(data)

    post("/envia", {:body => content.to_json, :headers => {'Content-Type' => 'application/json'}}).parsed_response
  end

  # authentication based on enviroment variables
  def self.authenticate
    auth  = {"api_id":ENV["SO_API_ID"], "api_token":ENV["SO_API_TOKEN"]}
  end
end
