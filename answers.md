# Q0: Why is this error being thrown?

This error is being thrown because in home_controller.rb, we create a Pokemon model, but we have not made the model file yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

The random pokemon are appearing in the home_controller where the Pokemon.where returns a list of all the pokemon and the sample returns a random pokemon.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

# Question 3: What would you name your own Pokemon?

I would name my own pokemon Churro.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed trainer_path(@pokemon.trainer) to redirect_to. This path needed an argument.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

Errors is an inbuilt function in ActiveRecord and since our models inherit from that class, we also get the error messages associated with it. This allows us to show the error message into our form when we redirect to a new page.

# Give us feedback on the project and decal below!

This decal is very interesting to learn and magical, but I wish I had more time to spend on it since my schedule is so busy.

# Extra credit: Link your Heroku deployed app
