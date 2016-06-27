require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do 
    @number = params[:number].to_i
  end

  get '/say/:number/:phrase' do 
    # accepts a number and a phrase and returns that phrase in a string the number of times given.
    @number = params[:number].to_i
    @phrase = params[:phrase]
    string = ""

    @number.times do 
      string << "#{@phrase}\n"
    end

    string
  end

  ####

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number/:number2' do 
    @operation = params[:operation]
    @number1 = params[:number].to_i
    @number2 = params[:number2].to_i

    if @operation == "add"
      result = @number1 + @number2
    elsif @operation == "subtract"
      result = @number1 - @number2
    elsif @operation == "multiply"
      result = @number1 * @number2
    elsif @operation == "divide"
      result = @number1 / @number2
    else
      result = "Don't recognize this operation"
    end
    result.to_s
  end

  get '/square/:number' do

  end
end

    # it 'adds two numbers together' do 
    #   get '/add/10/9'
    #   expect(last_response.body).to include("19")
    # end

    # it 'subtracts the second number from the first' do 
    #   get '/subtract/20/9'
    #   expect(last_response.body).to include("11")
    # end

    # it 'multiplies two numbers together' do 
    #   get '/multiply/12/11'
    #   expect(last_response.body).to include("132")
    # end

    # it 'divides the first number by the second number' do 
    #   get '/divide/10/2'
    #   expect(last_response.body).to include("5")
    # end