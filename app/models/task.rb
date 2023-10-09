class Task < ApplicationRecord
  attr_reader :title, :description

  def initialize(data)
    @title = data[:title]
    @description = data[:description]
  end

  def laundry?
    @title == "laundry"
  end
end