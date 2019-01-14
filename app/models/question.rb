class Question < ApplicationRecord
  def previous
    Question.where("id < ?", self.id).order("id DESC").first
  end

  def next
    Question.where("id > ?", self.id).order("id ASC").first
  end
end
