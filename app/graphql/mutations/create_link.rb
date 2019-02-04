module Mutations
  class CreateLink < BaseMutation
    argument :url, String, required: true
    argument :description, String, required: true

    type Types::LinkType

    def resolve(description: nil, url: nil)
      Link.create!(
        description: description,
        url: url
      )
    end
  end
end
