class Application
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)
    if req.path.match(/items/)
      item_name= req.path.split("/items/").last 
      
      
    else
      resp.status = 404
      resp.write "Route not found"
    end
  end
  
end