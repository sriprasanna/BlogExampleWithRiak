class Article 
  include Ripple::Document

  property :name, String, :presence => true
  property :content, String, :presence => true
  property :tags, Array, :presence => true
  property :created_at, Time, :default => proc{ Time.now }

  many :comments

  before_create :set_key

  private
  def set_key
    self.key = self.name.downcase.gsub(/[^a-z0-9]+/i, "-")
  end
end
