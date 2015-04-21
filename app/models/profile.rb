class Profile < ActiveRecord::Base
	belongs_to :user
	has_one :mohr
	validates_presence_of :name
	validates_presence_of :lastname
	validates_presence_of :email
	validates_presence_of :name
	#validates :email,
		#	uniqueness: true
		#		message: "این ایمیل قبلا ثبت شده است، لطفا ایمیل دیگری وارد کنید."
		#	format: {with => Devise::email_regexp}#/\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}
		#		message: "آدرس ایمیل معتبر نیست. لطفا ایمیل معتبر وارد کنید."

end
