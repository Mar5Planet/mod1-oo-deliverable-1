# Part One - Intro to OO
Classes look good! The files are a little large because of your notes but if they're helpful keep them for now! One thing you'll want to start doing is putting the attr's at the top of the class, before the initialize. It's convention for readability. 
I like that you make sure the age is an integer in the patient, as well as the string. The string is less essential since when we get that information from the CLI, it will already be a string. 
Also really happy to see you testing in the run.rb file. In your else case (if they don't write doctor or patient), if you want it to start the app over again, just write run to invoke the method again.

# Part Two - More to OO
Your use of class variables and class methods v instance methods looks good! Make sure that you are testing your code to be *absolutely sure* it is working correctly. Code that is close to right but breaking because it wasn't tested will count against you in assessments. 

# Part Four - Associations
- Classes look good! 
- Languages have fancy ways they handle dates actually! Check out the docs: https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/DateTime.html. Not terribly important to delve into until you have a usecase.
- I like the different ways you handled time as optional in create appointment. Business logic wise, we probably only want to create an appointment once there is a time (depending on how our system works) but good to see that you could write it either way :)
- Methods for Part III also look good. 
- Make sure you update your `run.rb` if you're going to continue building your application! Your patient still belongs to your doctor the way you initialize it in your CLI. 
