class StaticPagesController < ApplicationController
	skip_before_filter :authenticate_user!, :only => [:home]
	require 'user'

  def home
  	if user_signed_in?
  		redirect_to :controller=>'dashboard', :action => 'index'
  	end
  end

  def help
  end

  def about
  end

end
#<% if !current_user.is_cliente? %>