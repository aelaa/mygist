class PostForm < Reform::Form
  property :text
  property :name
  property :user
  validates :text, presence: true
  validates :name, presence: true
end
