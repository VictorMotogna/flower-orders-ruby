# README

* Ruby version: `ruby '2.4.5'`

* System dependencies
    * better errors: `gem 'better_errors', '~> 2.5'`
    * bulma rails: `gem 'bulma-rails', '~> 0.7.2'`
    * simple form: `gem 'simple_form', '~> 4.1'`
    * haml: `gem 'haml', '~> 5.0', '>= 5.0.4'`

* Start server: `rails s`

* Database creation
    * sqlite3: `gem 'sqlite3', git: "https://github.com/larskanis/sqlite3-ruby", branch: "add-gemspec"`

* Models
    * Orders
        * Date: `date`
        * Name: `string`
        * Flowers
    * Flowers
        * Name: `string`
        * Color: `string`
        * Number: `integer`
