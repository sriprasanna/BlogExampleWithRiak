require File.dirname(__FILE__) + '/../spec_helper'

describe Article do
  describe "Validations" do
    before(:each) do
      @article = Article.new
      @article.valid?
    end

    it "should validate the presence of name" do
      @article.should have(1).error_on(:name)
    end
    it "should validate the presence of content" do
      @article.should have(1).error_on(:content)
    end
    it "should validate the presence of tags" do
      @article.should have(1).error_on(:tags)
    end
    it "should create a key before saving" do
      @article.name = "this is the key"
      @article.content = "content"
      @article.tags = ["tags"]
      @article.save
      @article.key.should == "this-is-the-key"
    end
    it "should be valid" do
      @article.name = "name"
      @article.content = "content"
      @article.tags = ["tags"]
      @article.valid?.should be_true
    end
  end
end
