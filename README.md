# README

This README will explain how to create your own Marmiton app copycat :

* rails new lagrossebouffe

* gitignore

* create model : rails generate model Recipe title:string time:integer description:string difficulty:integer ingredient:string price:integer

* add routes : resources :recipes root "recipes#index"

* add controller : rails g controller recipes

* validates :title, :description, :ingredient, presence: true

* rails active_storage:install

* rails db:migrate

* has_one_attached :image

* add method to the controller : index, show, new, etc ...

* create views : index, show, new, etc...

* design each views : https://getbootstrap.com/docs/4.5/getting-started/introduction/
