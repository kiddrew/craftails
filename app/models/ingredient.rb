class Ingredient < ActiveRecord::Base
  include ActionView::Helpers::OutputSafetyHelper

  has_ancestry :orphan_strategy => :rootify
  #acts_as_list scope: [:ancestry]
  #include TheSortableTree::Scopes

  has_many :drink_ingredients
  has_many :drinks, through: :drink_ingredients
  has_many :bar_ingredients
  has_many :bars, through: :bar_ingredients

  scope :selectable, -> { where(is_selectable: true) }
  
  validates_presence_of :name

  def option_name
    raw nested_name
  end

  def nested_name endpoint=true
    display_name = endpoint ? name : '&nbsp;&nbsp;&nbsp;&nbsp;'
    parent ? parent.nested_name(false) + display_name : display_name
  end

  def canonical_name
    parent ? parent.canonical_name + ' > ' + name : name
  end

  def self.sorted_list
    Ingredient.all.sort_by {|c| c.canonical_name}
  end

  def self.sorted_names
    Ingredient.all.map {|x| x.name}
  end

  def self.sort_by_name
    Ingredient.all.sort_by {|c| c.name}
  end
end
