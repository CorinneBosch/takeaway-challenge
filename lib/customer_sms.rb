require 'rubygems'
require 'dotenv/load'
require 'twilio-ruby'

# module OrderConfirmation

#   time = Time.new
#   order_time = time.strftime("%H:%M")
#   delivery_time = (time + 25 * 60).strftime("%H:%M")

#   # @from = ENV["SERVICE_SID"]
#   @from = ENV["TWILIO_NUM"]
#   @customer = ENV["MY_NUMBER"] 
#   @message = "Order placed at: #{order_time}\nThank you for placing an order with SandCream! Your delivery will be with you by: #{delivery_time}"
  
#   account_sid = ENV["TWILIO_ACCOUNT_SID"]
#   auth_token = ENV["TWILIO_AUTH_TOKEN"]
#   @client = Twilio::REST::Client.new(account_sid, auth_token) 

#   # def self.send_sms
#   #   @client.messages.create(
#   #     from: @from, 
#   #     to: @customer, 
#   #     body: @message
#   #   )
#   # end
  
#   message = @client.messages.create( 
#     body: "Order placed at: #{order_time}\nThank you for placing an order with SandCream! Your delivery will be with you by: #{delivery_time}",
#     from: ENV["TWILIO_NUM"],      
#     to: ENV["MY_NUMBER"] 
#   ) 
  
# end

module OrderConfirmation

  # def self.send_sms
    @client = Twilio::REST::Client.new(ENV["TWILIO_ACCOUNT_SID"], ENV["TWILIO_AUTH_TOKEN"]) 

    @message = "Order placed at: #{@order_time}\nThank you for placing an order with SandCream! Your delivery will be with you by: #{@delivery_time}"

    time = Time.new
    @order_time = time.strftime("%H:%M")
    @delivery_time = (time + 25 * 60).strftime("%H:%M")

    @client.messages.create(
      from: ENV["TWILIO_NUM"], 
      to: ENV["TO_MY_NUMBER"], 
      body: @message 
    )

  # end
end
# bundle exec ruby customer_sms.rb
# /desktop/takeaway-challenge/lib
