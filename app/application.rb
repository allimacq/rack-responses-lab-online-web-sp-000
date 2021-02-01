class Application
  
  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, am_or_pm ]
  end
  
  def am_or_pm
    time = Time.now
    if time.strftime("%p") == 'AM'
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
  end
  
end