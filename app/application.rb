class Application
  def call(env)
    resp = Rack::Response.new

    current_time = Time.new

    case
    when current_time.hour < 12
      resp.write "Good Morning"
    when current_time.hour == 14
      resp.write "Good Afternoon"
    end
    resp.finish
  end
end
