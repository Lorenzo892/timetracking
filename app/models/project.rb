class Project < ApplicationRecord
  has_many :time_entries

  validates :name, presence: true,
                   uniqueness: true,
                   length: { maximum: 30 }
                  #  format: { with: /\[a-zA-Z\s]/}
  #
  # validates_associated :time_entries

  def self.clean_old
    old_projects= Project.where("created_at <?", 1.week.ago)
    old_projects.destroy_all
  end

  #to check for errors varible.errors.full_messages
end
