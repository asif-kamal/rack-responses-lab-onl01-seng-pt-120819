class Application

  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
  end

  def pretty_response
    t = Time.now
    (t.hour < 12) ?  ["<em>Good Morning!</em>"] : ["<strong>Good Afternoon!</strong>"]
  end
end
