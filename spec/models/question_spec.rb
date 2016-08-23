require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) { Question.create!(title: "New Question Title", body: "New Post Body", boolean: false) }

  describe "attributes" do
    it "has a title attribute" do
      expect(question).to have_attributes(title: "Question Title")
      # question = Question.new
      # question.title = "New question"
      # expect(question.title).to eq("New question")
    end

    # it "has a title attribute that can be saved" do
    #   question = Question.new
    #   question.title = "New question"
    #   question.save
    #   reloaded_question = Question.first
    #   expect(reloaded_question.title).to eq("New question")
    # end

    it "has a body attribute" do
      expect(question).to have_attributes(body: "Question Body")
    end

    it "has a resolved attribute" do
      expect(question).to have_attributes(boolean: false)
    end
  end
end
