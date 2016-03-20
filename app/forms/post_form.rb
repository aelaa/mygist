class PostForm < Reform::Form
  property :text
  property :name
  validates :text, presence: true
  validates :name, presence: true
end
