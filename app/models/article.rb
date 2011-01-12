class Article
  include Ripple::Document
   

  property :name, String
  property :content, String
  property :tags, Array
end
