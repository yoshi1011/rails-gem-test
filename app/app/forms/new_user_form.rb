class NewUserForm
  # RailsでActiveModel::Attributesではなくこちらを選ぶ理由があまりないような…
  # include ActiveAttr::BasicModel
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :first_name
  attribute :last_name
  attribute :age

  validates :first_name, presence: true, length: {minimum: 1, maximum: 10}
  validates :last_name, presence: true, length: {minimum: 1, maximum: 10}
  validates_numericality_of :age, greater_than: 0

  def save
    return false if invalid?

    user = User.new(first_name: first_name, last_name: last_name, age: age)
    user.save!
  end
end