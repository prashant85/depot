class Product < ActiveRecord::Base
  has_many :line_items
  attr_accessible :description, :image_url, :price, :title, :line_items

  validates :title, :description, :image_url, :price, :presence => true
  validates :title, :uniqueness => true
  validates :image_url, :format => { :with=> %r{\.(gif|jpg|png)$}i,:message => 'must be a URL for GIF, JPG or PNG image.' }

  default_scope :order => 'title'


  before_destroy :ensure_not_referenced_by_any_line_item

  private
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'line Item Present')
      return false
    end
  end

end
