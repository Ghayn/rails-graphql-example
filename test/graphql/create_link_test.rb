class Mutations::CreateLinkTest < ActiveSupport::TestCase
  def perform(**args)
    Mutations::CreateLink.new(object: nil, context: {
      current_user: create_user
    }).resolve(args)
  end

  def create_user
    User.create(name: 'user', email: 'user@example.com', password: 'password')
  end

  test 'create a new link' do
    link = perform(
      url: 'http://example.com',
      description: 'description'
    )

    assert link.persisted?
    assert_equal link.description, 'description'
    assert_equal link.url, 'http://example.com'
  end
end
