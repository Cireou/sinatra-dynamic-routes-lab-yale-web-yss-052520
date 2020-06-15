require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get  '/reversename/:name' do 
    "#{params[:name].reverse()}"
  end

  get '/square/:number' do 
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    "#{params[:phrase] * params[:number].to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1] + " " + 
      params[:word2] + " " + 
      params[:word3]+ " " +
      params[:word4] + " " + 
      params[:word5] +
      "."}"
  end 

  get '/:operation/:number1/:number2' do 
    "#{process(params[:operation], params[:number1].to_i, params[:number2].to_i)}"
  end

  def process(operation_string, num_1, num_2)
    case operation_string
    when "add"
      return num_1 + num_2
    when "subtract"
      return num_1 - num_2
    when "multiply"
      return num_1 * num_2
    else 
      return num_1 / num_2
    end
  end
end