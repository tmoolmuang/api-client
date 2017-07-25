class Alien 
  include HTTParty
  base_uri "api-tm.herokuapp.com/api/v1"
  
  def initialize(token)
    @token = token
  end

  def index
    response = self.class.get("/aliens", headers: { "Authorization" => "Token token=#{@token}" })
    JSON.parse(response.body)['data']
  end
  
  def show(id)
    response = self.class.get("/aliens/#{id}", headers: { "Authorization" => "Token token=#{@token}" })
    JSON.parse(response.body)['data']
  end

  def create(alien_json)
    response = self.class.post("/aliens", 
      body: alien_json.to_json,
      headers: {  "Authorization" => "Token token=#{@token}",
                  "Content-Type" => "application/json" })
    JSON.parse(response.body)['data']
  end

  def update(id, alien_json)
    response = self.class.put("/aliens/#{id}", 
      body: alien_json.to_json,
      headers: {  "Authorization" => "Token token=#{@token}",
                  "Content-Type" => "application/json" })
    JSON.parse(response.body)['data']
  end

  def delete(id)
    response = self.class.delete("/aliens/#{id}", headers: { "Authorization" => "Token token=#{@token}" })
    JSON.parse(response.body)['data']
  end
end