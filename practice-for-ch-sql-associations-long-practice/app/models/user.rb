# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  has_many(
    :enrollments,
    class_name: 'Enrollment',
    foreign_key: :enrollment_id,
    primary_key: :id
  )

  has_many(
    :enrolled_courses,
    class_name: 'Course',
    foreign_key: :course_id,
    primary_key: :id)

  has_many :courses, through: :enrollments, source: :users

end
