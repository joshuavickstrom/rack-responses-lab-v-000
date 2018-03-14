require 'pry'
class Application
  def call(env)
    resp = Rack::Response.new
binding.pry
    current_time = Time.new

    case
    when current_time.hour < 12
      resp.write "Good Morning"
    when current_time.hour > 12 && current_time.hour < 24
      resp.write "Good Afternoon"
    end
    resp.finish
  end


end
