require "rails_helper"

RSpec.describe Task, type: :model do
  describe "instance methods" do
    describe "#laundry?" do
      it "returns true if title is laundry" do
        task = Task.create(title: "laundry", description: "blah")
        task2 = Task.create(title: "meal prep", description: "yum")

        expect(task.laundry?).to eq true
        expect(task2.laundry?).to eq false
      end

      it "returns true when the description is laundry" do
        task = Task.create!(title: "Clean my clothes", description: "laundry")

        expect(task.laundry?).to be(true)
      end

      it "returns false when neither the description nor title is laundry" do
        task = Task.create!(title: "Clean my clothes", description: "clothes wash")

        expect(task.laundry?).to be(false)
      end

      it "returns true when the title contains the word laundry" do
        task = Task.create(title: "laundry", description: "blah")

        expect(task.laundry?).to eq true
      end

      it "is case insensitive when checking if the title contains the word laundry" do
        task = Task.create(title: "laundry", description: "blah")

        expect(task.laundry?).to eq true
      end

      it "returns true when the description contains the word laundry" do
        task = Task.create(title: "laundry", description: "blah")

        expect(task.laundry?).to eq true
      end

      it "is case insensitive when checking if the description contains the word laundry" do
        task = Task.create!(title: "Clean my clothes", description: "Laundry")

        expect(task.laundry?).to eq true
      end
    end
  end
end
