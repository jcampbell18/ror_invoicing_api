# Backend: Invoicing System

## Environment

### Operating System

- [x] Ubuntu 20.10

### IDE

- [x] Rubymine 2020.3

#### Rubymine Setup

- [x] Type: Rails API

- [x] Rails Version: 6.0.3.4

- [x] Ruby Version: 2.7.2

- [x] Database: Postgres

- [x] Project Name: ror_invoicing_api

- ![RubyMine New Project](https://github.com/jcampbell18/ror_invoicing_api/blob/main/new_project.png)

- ![RubyMine auto-generated command](https://github.com/jcampbell18/ror_invoicing_api/blob/main/auto_generated_rails.png)

#### Gems

- [x] (Bcrypt)[https://rubygems.org/gems/bcrypt]

- [x] (rack-cors)[https://rubygems.org/gems/rack-cors]
  
- [x] (GraphQL)[https://rubygems.org/gems/graphql]

- [x] (graphiql-rails)[https://rubygems.org/gems/graphiql-rails]

- be sure to run `bundle` to install the gems

##### Database

- click on Views > Tool Windows > Database

- click on the '+' for new
    - Data Source > PostgreSQL

        - update name field
            - `PostgreSQL`

        - update username and password fields

        - update database name
            - `ror_invoicing_v2_development`
        - update database name url (at end to match name above)
            - `jdbc:postgresql://localhost:5432/ror_invoicing_v2_development`

        - test connection

- ![image](https://github.com/jcampbell18/ror_invoicing_api/blob/main/database_connection.png)

## Build Database

![Database Diagram](https://github.com/jcampbell18/ror_invoicing_api/blob/main/ror_invoicing_v1.jpg)

- `rails db:create`

### GraphQL

- run `rails g graphql:install`

### Scaffold

- creates controller, model, view, and updates routes

#### Tables without foreign keys

##### Terminal Commands

- `rails g scaffold State name:string{75} abbreviation:string{4}`

- `rails g scaffold BidStatus name:string{20}`

- `rails g scaffold UserCategory name:string{50} description:string{100}`

- `rails g scaffold CompanyCategory name:string{50}`

- `rails g scaffold Image name:string{100} url:text`

- `rails g scaffold Term name:string{50}`

- `rails g scaffold Vehicle manufacturer_year:integer{4} make:string{50} model:string{50} sub_model:string{50} engine:string{50} notes:string{150}`

- `rails g scaffold Sku name:string{50} description:string{250}`

- `rails g scaffold ExpenseCategory name:string{50} description:string{250}`

- `rails g scaffold ExpenseItem quantity:integer{4} name:string{150} amount:decimal{'8,2'} subtotal:decimal{'8,2'} tax:decimal{'8,2'} total:decimal{'8,2'}`

#### Tables with foreign keys

##### Terminal Commands

- `rails g scaffold LineItem sku:references description:text amount:decimal{'8,2'}`

- `rails g scaffold ProjectSite address:string{100} city:string{75} state:references zipcode:string{6} access_code:string{10} map_url:text`

- `rails g scaffold Company company_category:references name:string{75} address:string{100} city:string{75} state:references  zipcode:string{6} phone:string{10} fax:string{10} website_url:string{100}`

- `rails g scaffold Mileage vehicle:references drive_date:date start_mileage:decimal{'7,1'} end_mileage:decimal{'7,1'} total_mileage:decimal{'7,1'}`

- `rails g scaffold Expense expense_category:references company:references expense_date:date total:decimal{'8,2'}`

- `rails g scaffold User user_category:references company:references email:string{100} password:string{250} salt:string{128} first_name:string{75} last_name:string{100} phone:string{10} phone_extension:string{6} `

- `rails g scaffold Bid bid_status:references project_site:references company:references bid_date:date total:decimal{'8,2'}`

- `rails g scaffold Invoice bid:references project_site:references company:references term:references start_date:date complete_date:date total:decimal{'8,2'}`

- `rails g scaffold InvoiceReport invoice:references paid:boolean paid_date:date paid_checknum:string{10} loan_amount:decimal{'8,2'} loan_paid:boolean project_cost:decimal{'8,2'} interest_amount:decimal{'8,2'} interest_paid:boolean tax_amount:decimal{'8,2'} net_amount:decimal{'8,2'}`

#### Tables with ONLY foreign keys

##### Terminal Commands

- `rails g scaffold BidInvoice bid:references invoice:references`

- `rails g scaffold LineItemGroup line_item:references bid_invoice:references`

- `rails g scaffold ImageCompany image:references company:references`

- `rails g scaffold ImageUser image:references user:references`

- `rails g scaffold ImageInvoice image:references invoice:references`

- `rails g scaffold ImageExpense image:references expense:references`

- `rails g scaffold InvoiceExpense invoice:references expense:references`

- `rails g scaffold ExpenseItemGroup expense:references expense_item:references`
  
- `rails g scaffold InvoiceMileage invoice:references mileage:references`

##### Database Migrate

- `rails db:migrate`

### Update Controller and Namespace

- create folder app/controllers/`api`

- create folder app/controllers/api/`v1`

- move all controller files to app/controllers/api/v2/ EXCEPT application_controller

- ![image](https://github.com/jcampbell18/ror_invoicing_api/blob/main/api_v1_controllers.png)

- edit the files in app/controllers/api/v2

    - add `Api::V1::` to head of file:

        - class Api::V1::SomeController < ApplicationController

- ![image](https://github.com/jcampbell18/ror_invoicing_api/blob/main/edit_header.png)

### Update Routes with Namespaces

- above the first resources line, add:

    - `namespace :api do`

    - `  namespace :v1 do`

- after the last resources line, add:

    - `  end`

    - `end`

- ![image](https://github.com/jcampbell18/ror_invoicing_api/blob/main/routes.png)

### Seed the database

- examples:

    - `State.new(name: 'Washington', abbreviation: 'WA')`

- `rails db:seed`

### GraphQL

##### Terminal Commands

- `rails g graphql:object state`

- `rails g graphql:object bid_status`

- `rails g graphql:object user_category`

- `rails g graphql:object company_category`

- `rails g graphql:object image`

- `rails g graphql:object term`

- `rails g graphql:object vehicle`

- `rails g graphql:object sku`

- `rails g graphql:object expense_category`

- `rails g graphql:object expense_item`

- `rails g graphql:object line_item`

- `rails g graphql:object project_site`

- `rails g graphql:object company`

- `rails g graphql:object mileage`

- `rails g graphql:object expense`

- `rails g graphql:object user`

- `rails g graphql:object bid`

- `rails g graphql:object invoice`

- `rails g graphql:object invoice_report`

- `rails g graphql:object bid_invoice`

- `rails g graphql:object line_item_group`

- `rails g graphql:object image_company`

- `rails g graphql:object image_user`

- `rails g graphql:object image_invoice`

- `rails g graphql:object image_expense`

- `rails g graphql:object invoice_expense`

- `rails g graphql:object expense_item_group`

- `rails g graphql:object invoice_mileage`

#### Update Routes

- update: `config/routes.rb`

```ruby
if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: 'graphiql', graphql_path: "graphql#execute"
  end

  post "/graphql", to: "graphql#execute"
```

### Loading error... on rails s

- run command: `rails s`

- browser URL: [localhost:3000/graphiql](http://localhost:5000/graphiql)

    - if you are receiving a 'Loading...', continue

Reference: [Setting up your first rails graphql api](https://medium.com/neocoast/setting-up-your-first-rails-graphql-api-acd806b5d596)

#### Update Sprockets

- update `config/application.rb`
    - uncomment `require 'sprockets/railtie`

- ![image](https://github.com/jcampbell18/ror_invoicing_api/blob/main/rails.sprocket.png)

#### Create directory

- go into `app/`
    - create folder: `app/assets`
    - create folder: `app/assets/config`
    - create file: `app/assets/config/manifest.js`
    
```javascript
//= link graphiql/rails/application.css
//= link graphiql/rails/application.js
```

### Query Type and Fields

- for each model/table of database
    - adding fields with descriptions
        - examples of 'states'
  
```ruby
field :states,
  [Types::StateType],
  null: false,
  description: 'Returns a list of states'
```

    - adding functions
        - examples of 'states'

```ruby
def states
  State.all
end
```