require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversename = params[:name].reverse
    erb :reversename
  end

  get '/square/:number' do
    @squared_number = params[:number].to_i ** 2
    erb :square
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    answer = nil
    case params[:operation]
    when "add"
      answer = params[:number1].to_i + params[:number2].to_i
    when "subtract"
      answer = params[:number1].to_i - params[:number2].to_i
    when "multiply"
      answer = params[:number1].to_i * params[:number2].to_i
    when "divide"
      answer = params[:number1].to_i / params[:number2].to_i
    end
    answer.to_s
  end
end
