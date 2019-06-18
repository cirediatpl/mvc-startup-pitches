# Basic Forms / RESTful Routing

For this exercise we're going to build an app that let's us create 1 sentence
startup pitches for a particular industry, and allow us to input a certain
amount of funding.

Before starting this project, be sure to `bundle install`.

## Deliverables

You don't necessarily do any of these in a certain order but each of these
steps must be completed!

- Create a migration in the database for pitches. The columns include:
  - A string for the `title` of the pitch
  - A string for the `industry` the pitch is in
  - A floating point number for the `funding` necessary
- Create an index page that will list all of the pitches and only their titles. 
A user should be able to click on the title and it will take them to the
show page of the pitch.
- Create a show route that will show the title of the pitch, the industry it's in
and the funding it needs.
- Create a page that will display a form to creating a new pitch, each pitch
requires a title, an industry, and a funding amount. After the user creates a new
pitch then it should take them to the show route for the newly created pitch.
- On the show page, there should be a link that will take the user to an edit form for that
pitch. That form should allow us to update any piece of information about the pitch,
after the user clicks submit, it should persist the update and take them to the show page
of that pitch.
- On the show page there should be a **button** that allows the user to delete a pitch. Hint:
this still needs to perform a request, how can you get both of these pieces of functionality?

### Bonus

So you built this great application that showcases some silly startup pitches!
Let's take this application up a bit with a few stretch features. These will be
things will not necessarily go over in class but applies the knowledge you have so far:

- Try implementing everything with an additional controller like `PitchesController`.
You need to configure the app to support that but it is just 1 additional line of code.
All the routes you would write in the `ApplicationController` can fit into the `PitchesController`.

- Create a navbar that let's us navigate to the index route and the new route from any
page within our program. Don't just copy and paste this into every `.erb`.

- On the index route, you should have a search form that will allow you to search
for a given industry and list out all the pitches under that industry. How can you
make sure that the casing doesn't matter?

- Try applying CSS to your website! Users don't like looking at black/white websites.
Explore different websites and see what part of their aesthetic you like about them.
  - Here is a website for different gradients you can apply (https://www.eggradients.com/category/teal-gradient)
  - A collection of different UIs for inspiration (https://collectui.com/)
  - A collection of different CSS snippets (https://30-seconds.github.io/30-seconds-of-css/#bouncing-loader)

- If you wanna get a headstart for tomorrow, try to refactor your code. Many of the
pitches will be connected to the same industries. Instead of associating them with
"strings" each time, how could we leverage a new model and build a relationship
between an industry and a pitch? If you're stuck, talk it through with Prince or
Gigi!