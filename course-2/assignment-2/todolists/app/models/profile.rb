class Profile < ActiveRecord::Base
  belongs_to :user

  validate :first_and_last_name_not_both_null
  validates :gender, inclusion: ["male", "female"]
  validate :first_name_for_male_not_sue

  def first_and_last_name_not_both_null
    if first_name.nil? && last_name.nil?
      errors.add(:first_name, 'First and last name cannot both be null!')
    end
  end

  def first_name_for_male_not_sue
    if gender == 'male' && first_name == 'Sue'
      errors.add(:first_name, 'First name for guys cannot be Sue!')
    end
  end

  def self.get_all_profiles(min_birth_year, max_birth_year)
    Profile.where("birth_year BETWEEN ? AND ?", min_birth_year, max_birth_year).order(birth_year: :asc)
  end
end
