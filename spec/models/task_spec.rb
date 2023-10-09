require "rails_helper"

RSpec.describe Task, type: :model do
  describe "instance methods" do
    describe "#laundry?" do
      it "returns true if title is laundry" do
        task = Task.new(title: "laundry", description: "blah")
        expect(task.laundry?).to eq true
      end
    end
  end
end