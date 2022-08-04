RSpec.describe Post, elasticsearch: true, :type => :model do
  before do 
    user = User.create(name: "Macarena") 
    Post.create(title: "title", content: "content", user_id: user.id) 
  end

  # test that postgres is woorking
  specify do
    expect(Post.all).to all(be_a(Post))
  end

  it 'should be indexed' do
    # refresh the index 
    Post.__elasticsearch__.refresh_index! 

    # verify your model was indexed
    expect(Post.search('title').total.value).to eq(1)
  end
end
