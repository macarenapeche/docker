class PagesController < ApplicationController
  def index
    # postgresql model data
    @test_models = Post.all

    # elasticsearch data
    @index_mapping = Post.index_mapping
    @search_results = Post.search('test')

    # redis data
    @increment_count = Post.increment_count
    @redis_keys = RedisClient.redis.keys
  end
end
