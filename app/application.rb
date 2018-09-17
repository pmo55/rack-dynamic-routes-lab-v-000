class Application
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)
    if req.path.match(/items/)
      
      
    else
      resp.status = 404
      resp.write "Route not found"
    end
  end
  
end