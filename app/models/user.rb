class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # before_save :downcase_email
  
  enum role: [:user, :admin]
  
  # VALID_DATE_REGEX = /[0-3]{1}[0-9]{1}\/[0-1]{1}[0-9]{1}\/[1-2]{1}[0-9]{3}/
  # VALID_DATE_REGEX = /[1-2]{1}[0-9]{3}\/[0-1]{1}[0-9]{1}\/[0-3]{1}[0-9]{1}/
  # validates :birthday, format: { with: VALID_DATE_REGEX}
  validates :gender, inclusion: {in: ["male", "female"]}
  validates :role, inclusion: {in: ["user", "admin"]}

  # validates :nickname,  presence: true, length: {maximum: 30}
  
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  private
  def downcase_email
    self.email = email.downcase
  end
end
