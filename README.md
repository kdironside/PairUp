Ruby 1.9.3p194, Rails 3.2.3, Sqlite3. 

Use seed file, app/db/seeds.rb to populate User table and Roles. run rake db:reset to drop and reload from scratch.

Uses twitter-bootstrap-rails:
	a) less overrides are in the app/assets/stylesheets/boostrap_and_overrides.css.scss
	b) css overrides are in app/assets/stylesheets/application.css.scss
	
Uses Devise for authentication and CanCan for authorization. 

Front-end design obviously lacking in style. Roll your own!


