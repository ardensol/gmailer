class User < ActiveRecord::Base
  attr_accessible :email, :name, :statistic
end
