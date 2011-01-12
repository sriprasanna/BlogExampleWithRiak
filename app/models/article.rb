class Article 
  include Ripple::Document

  property :name, String, :presence => true
  property :content, String, :presence => true
  property :tags, Array, :presence => true
  property :created_at, Time, :default => proc{ Time.now }

  many :comments
  key_on :name
end
