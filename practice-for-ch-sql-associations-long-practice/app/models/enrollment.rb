# == Schema Information
#
# Table name: enrollments
#
#  id         :bigint           not null, primary key
#  course_id  :bigint           not null
#  student_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Enrollment < ApplicationRecord
  has_many(
    :student,
    class_name: 'Enrollment',
    foreign_key: :student_id,
    primary_key: :id
  )

  belongs_to(
    :course,
    class_name: 'Course',
    foreign_key: :course_id,
    primary_key: :id
  );

end
