require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:Question) { Question.create!(title: "New Question Title", body: "New Post Body", boolean: false) }

  describe "attributes" do
    it "has a title attribute" do
      expect(question).to have_attributes(title: "Question Title")
    end

    it "has a body attribute" do
      expect(question).to have_attributes(body: "Question Body")
    end

    it "has a resolved attribute" do
      expect(question).to have_attributes(boolean: false)
  end
end
