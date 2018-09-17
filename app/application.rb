class Application
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)
    if req.path.match(/items/)
      
      
    else
      resp.status
    
  end
  
end