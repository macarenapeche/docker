describe "test my redis" do
  redis = Redis.new(host: 'redis', port: 6379)

  it "should set and get the key" do
    redis.set("key", "value") 
    expect(redis.get("key")).to eq("value")
  end
end
