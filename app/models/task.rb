class Task < ApplicationRecord

  def laundry?
    title.downcase.include?("laundry") || description.match?(/laundry/i)
  end
end
