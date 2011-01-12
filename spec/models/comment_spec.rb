require 'spec_helper'

describe Comment do
  describe "Validations" do
    it "should validate the presence of text" do
      comment = Comment.new
      comment.valid?
      comment.should have(1).error_on(:text)
    end
  end
end
