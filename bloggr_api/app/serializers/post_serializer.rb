class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :author
end
