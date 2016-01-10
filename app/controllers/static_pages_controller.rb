class StaticPagesController < ApplicationController
  def index
  end

  def landing_page
  	@products = Product.limit(1)
  end

  def thank_you
  	@name = params[:name]
  	@email = params[:email]
  	@message = params[:message]
  	ActionMailer::Base.mail(:from => @email, 
  		:to => "takumab@gmail.com", 
  		:subject => "A new contact message from #{@name}",
  		:body => @message).deliver_now
  end
end
