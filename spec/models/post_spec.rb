RSpec.describe Post, :type => :model do
  specify do
    user = User.create(name: "Macarena")
    Post.create(title: "test post", content: "test content", user_id: user.id)
    expect(Post.all).to all(be_a(Post))
  end

  # it 'should be indexed' do
  #   # refresh the index 
  #   User.__elasticsearch__.refresh_index! 

  #   # verify your model was indexed
  #   expect(Post.search('test').records.length).to eq(1)
  # end
end
