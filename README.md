
# My Closet API

#### created by:
Marisa Canan-Zucker


### API endpoints:
 * '/users'
 * '/users/:id'
 * '/users/:id/outfits'
 * '/users/:user_id/outfits/:outfit_id'
 * '/categories'
 * '/categories/:category_id'

### Install:
install gem dependencies:
`bundle install`
open postgresql app and ensure server is running
migrate and seed database
`rails db:migrate && rails db:seed`
start server
`rails s`

##### view API at http://localhost:3000/users

#### Project Info:
* Ruby version: '2.6.1'
* Rails version: '6.0.0'
* Database: postgresql
