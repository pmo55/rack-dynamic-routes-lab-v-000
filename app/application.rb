class Application
  @@items=[]
  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)
    if req.path.match(/items/)
      item_name= req.path.split("/items/").last 
      if item = @@items.find {|item| item.name== item_name}
        resp.write item.price
      else
        resp.status = 404
        resp.write "Item not found"
      
    else
      resp.status = 404
      resp.write "Route not found"
    end
  end
  
end