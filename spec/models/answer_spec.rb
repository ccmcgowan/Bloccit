require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:Question) { Question.create!(title: "New Question Title", body: "New Post Body", boolean: "True or false") }
  let(:Answer) { Answer.create!(body: "New Answer Body") }

  describe "attributes" do
    it "has a body attribute" do
      expect(answer).to have_attributes(body: "Answer Body")
    end
  end
end
