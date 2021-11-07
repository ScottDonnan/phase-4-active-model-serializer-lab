class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :short_content

  has_many :tags

  def short_content
    brief_content = self.object.content[0...40]
    "#{brief_content}..."
  end
end
