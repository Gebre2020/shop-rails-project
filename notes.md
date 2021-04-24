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
   - has_many :order_items, through: :products

Products
  - title
  - descripion
  - price
  - belongs_to :user
  - belongs_to :order_item

Order_Items            
  - unit_price           
  - quantity             
  - total_price          
  - product_id           
  - order_id
  - belongs_to :product
  - belongs_to :order
  - has_many :products
  - has_many :users, through: :products

Orders
  - subtotal
  - total
  - tax
  - check_out
  - has_many :order_items
# Rails request / response flow?
    
    - client side sends a request to the browser
    - recieving server sends to router if it is existing, else it gives an error
    - router will send to appropriate controller# for action
    - controller will intract with model, => model interacting with db
    - retrieve data and send that to view
