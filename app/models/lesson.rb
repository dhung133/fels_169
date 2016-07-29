class Lesson < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  has_many :results, dependent: :destroy
  has_many :words, through: :results
end
