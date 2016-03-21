class CommentForm < Reform::Form
  property :text
  property :user
  property :post
  validates :text, presence: true
  validates :user, presence: true
  validates :post, presence: true
end
