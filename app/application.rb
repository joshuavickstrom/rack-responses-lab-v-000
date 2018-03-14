class Application
  def call(env)
    resp = Rack::Response.new

    now = Time.now
    today = Date.today.to_time

    morning = today.beginning_of_day
    noon = today.noon
    evening = today.change( hour: 17 )


    if (morning..noon).cover? now
      resp.write 'Good Morning'
    else (noon..evening).cover? now
      resp.write 'Good Afternoon'
    end
    resp.finish
  end
end
