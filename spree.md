## spree

## custom user
spree_devise_auth

## show spree core engine routes

## command line update from github too slow

## integrate spree to your user model
### bug
1. api_key, spree_api_key will be lossing, because https://github.com/spree/spree/blob/master/api/db/migrate/20100107141738_add_api_key_to_spree_users.rb detect user model exists, if exists, not add api_key

spree_api add single column spree_api_key to the user model, the user model can be anything, it's pluggable, like spree_auth_devise.

When User model exists, then spree_api will not work, you need to after_create spree_api_key.

what's the use of spree_api_key?

spree_auth_devise generate the migrations, but table is for spree_users

user is used for login and provide basic information like email.
User is connected with address & orders.

does there exist need to use spree_devise_auth? it actually didn't provide too much userful information, and user always need to be tweak.

lib/spree/authentication_helpers.rb
2. you need to change login_path, signup_path..in helpers.rb

if use spree_user, then how to custom the spree_users model

## spree user role.
It has role table, and user_role table.

so when an user is signup, it doesn't have a admin role, when you login to admin, it will redirect to a unauth page.

## dashing-rails, suite for api, not for simple active model display

## spree has seperate compoents, lead to version missing match

## 购买的入口，缺少立即购买