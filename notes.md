# Models and Routes

## Create models

-Manually create a file, populate dependencies
-Rails g model

- how can I create model instances
  - seeds.rb
  - manually create data in our console
  -faker gem
 
 ## Review site for shop rails project
 User                  
   - username           
   - email              
   - password            
   - has_many :products

Products
  - title
  - descripion
  - unit_price
  - user_id
  - belongs_to :user
  - has_many :product_orders
  - has_many :orders, throgh: :product_order

Product_Order           
  - unit_price           
  - quantity             
  - total_price          
  
  - belongs_to :product
  - belongs_to :order

Orders
  - sub_total
  - total
  - tax
  - check_out_cost
  - has_many :product_orders
  - has_many :products, through: :product_order

# Rails request / response flow?
    
    - client side sends a request to the browser
    - recieving server sends to router if it is existing, else it gives an error
    - router will send to appropriate controller# for action
    - controller will intract with model, => model interacting with db
    - retrieve data and send that to view

# ReSTful routes

  # 1- show all users
      get '/users', to: 'users#index'  # static
        or
      get '/users' => 'users#index'

  # 2- show details of 1 user
      get '/users/:id', to: 'users#show'  # dynamic

  # 3- show new user form
      get '/users/new', to: 'users#new'   # static

  # 4- process the new user form submitted
      post '/users', to: 'users#create'

  # 5- show edit user form
      get '/users/:id/edit', to: 'users#edit'   # static

  # 6- process the edit user form submitted
      patch '/users/:id', to: 'users#update'  

  # 7- delete a user object
      delete '/users/:id', to: 'users#destroy'

# OR 
  resources :users

# Scop methods
  - live in model
  - class method 
  - activerecord query methods:
    - where  / .where
    - order  / .find
    - order  / .order
    - all    / .all
             / .first
             / .last
    - scope method is going to be responsible for returning a set of data based
      on what that methods goal
    - syntax
        scope :method_name, ->{where(color: 'red')}
    - reviews table has a rating column, I want to return all the products with 
      a rating of 5
            scop :high_rating,~>{where(rating: 5)}
    - you're going to call in the controller class.scop_method_name
            -@5_star_products = Review.high_ratings
    - long way scope method

            def self.high_ratings
              where(rating: 5)
            end

# user authentication
  - users controller is responsible for creating our 
    user object => signing up
  - sessions controller responsible for logging our 
    users in / logging out                                            