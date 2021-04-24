class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

# what activerecord methods?

# query users table to return a user with an an id 1 
  # User.find(id) => object doen't exist, cause an error
  # User.find_by(id: 1)
  # User.find_by_id(1)

# query user table by username
  # User.find_by(username: "aysan")
  # User.find_by_username("aysan")
  # .where? => condition needs to be met
  # User.where(username: "aysan")[0]

# Persisting date to the table
  # .save
  # .create => .new + .save

# .first and .last  
  
# all users created
    # .all

  # .plunk
  # Car.plunk(:model)