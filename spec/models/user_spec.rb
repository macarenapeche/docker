RSpec.describe User, :type => :model do
  user = User.create(name: "Macarena")

  specify do
    expect(User.all).to all(be_a(User))
  end

end
