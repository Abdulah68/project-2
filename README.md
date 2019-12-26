<!-- md => markdown -->
<!-- Github markdown -->


<!-- heading part -->
#  Project Nmae

### 4Cars

## My Project Deployment

## Technologies used in the project

* Visual Studio Code
* Github
* Rubby
* Rubby on rails
* Boot strap 
* Devise


## User stories
* As a User, I must be able to sign up
* As a User, I must be able to sign in
* As a User, I must be able to change password
* As a User, I must be able to sign out
* As a user, I must be able to create a resource.
* As a user, I must be able to edit a resource.
* As a user, I must be able to view all resources they created. 
* As a user, I must not be able to edit or delete other users' resources

## Wire frame 
![wire frame]('wire-frame.jpg')

## ERD
![ERD]('ERD.jpg')


# Describe any lines or function in the code

```rails
<h1>Edit My  Car</h1>

<%= form_for @car, url:{action: "update"} do |f|%>

<%= f.label :img%>
<%= f.text_field :img%><br>
<br>
<%= f.label :name%>
<%= f.text_field :name%><br>
<br>

<%= f.label :make%>
<%= f.text_field :make%><br>
<br>

<%= f.label :year%>
<%= f.text_field :year%><br>
<br>

<%= f.label :price%>
<%= f.text_field :price%><br>
<br>

<%= f.label :Phone%>
<%= f.text_field :Phone%><br>
<br>

<%= f.submit%>
<% end %>

<% if current_user.id == @car.user.id %>
<div class="btn-group" role="group" aria-label="Basic example">
 <%= link_to 'Edit', edit_car_path(@car) , :class => "btn btn-secondary" %>
 <%= link_to 'Delete', @car, method: :delete, data: { confirm: 'Are you sure?' }, :class => "btn btn-secondary" %>
</div>
<%end%>
```
## Challenges
* it was not easy to dealing with size each div with BootStrap






# Unsolved problems which would be fixed in future iterations.

*  The User must be able to view a single cars they created

