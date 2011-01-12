class Comment
  include Ripple::EmbeddedDocument

  property :text, String, :presence => true
  property :created_at, Time, :default => proc{ Time.now }
end
