class Application
  def call(env)
    resp = Rack::Response.new

    current_time =

    if current_time < 12
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end
  end
end
