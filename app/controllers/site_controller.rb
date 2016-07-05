class SiteController < ApplicationController

  def say_name
    @name= params[:name]
    render 'say_name'
  end

  def home
  end

  def controler
    render 'contact', layout: 'admin'
  end

  def calculator
    render 'calculator'
  end

  def calculate
    params[:first_num]
    params[:second_num]
    @result = params[:first_num].to_i + params[:second_num].to_i
    render 'calculate'
  end
end
