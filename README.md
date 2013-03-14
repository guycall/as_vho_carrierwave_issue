as_vho_carrierwave_issue
========================

Test app to demonostrate carrierwave error in active_scaffold_vho

Created new Rails 3.1.11 app

Added to gemfile:

    gem 'render_component_vho'
    gem 'active_scaffold_vho'
    gem 'kaminari'
    gem 'carrierwave'

Ran the following commands

    bundle install
    bundle exec rake db:create
    rails generate uploader Avatar
    rails g active_scaffold Team name:string avatar:string

Added the following line to app/assets/javascripts/application.js

    //= require active_scaffold

Added the following line to /app/assets/stylesheets/application.css

    *= require active_scaffold

Added the following line to /app/models/team.rb

    mount_uploader :avatar, AvatarUploader

Ran the app, visited localhost:3000/teams and tried to upload a file. UI does nothing on clicking the 'Create' button. Logs report the following error:

    NoMethodError (undefined method `strip' for #<ActionDispatch::Http::UploadedFile:0xb5f8f81c>):


