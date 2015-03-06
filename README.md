# TimeCard.net
A demo .net MVC utility for tracking employee hours

# The main idea/motivation
Let's imagine that a business owner has a desire to track the hours kept by his staff. In particular, calculation of overtime is complex; for example, when there is a company holiday or someone takes paid time off, they are credited with 8 hours worked on that day, but those hours do *not* count towards overtime.

The beginning step of this project is to simply allow employees to punch in and out of a normal day, with a lunch break somewhere in the middle of it. That is what this project is currently capable of.

In the future, I will be adding an Administrator page where superusers may edit schedules and view reports. But that doesn't really exist yet. More extensive (and prettier) reporting for employees is also in the plan, as well as change logs.

# Building & Running
This project should build out-of-the-box in Visual Studio. I used VS Community 2013 to build it. 

I've included the actual database files, which is annoying in that they generate changes as you simply use the app. However, I believe that was necessary in order to have the project run immediately when you clone the repo and open up the solution.

# Implementation
## Models
The records of time worked are stored in a SQLite database, which is related to the built-in LocalDB which manages identities with the default system provided by Asp.Net. In a real world deployment, I probably wouldn't use two separate databases, tied together in such a way. However, it was quicker for me to make use of the SQLite database initialization that I'd previously done, instead of learn all the details of Microsoft's Model designs and Migrations.

The models in this project have a reasonably high degree of logic in them, not only for persistence, but also for things like consistency checking. In a real project I would not hesitate to include functions like "compute the total hours worked in a week" in the UserModel class, although I would not be offended if a teammate felt that something like that was *business* logic, and belonged in Controllers. To some extent, these sorts of distinctions are often just lines in the sand.

You may note that right now, the SQL to interface between objects and the database uses string concatenation, not prepared statements. I know that this is terrible from a security (and performance) perspective, and I would never ship such code. Unfortunately, I was having problems with the prepared statement code I wrote, and so had to hack around it due to time constraints.

## Controllers
The controllers are actually fairly close to what I would expect them to be at this point in the construction of a real-world project; they handle page requests and manipulate models. There aren't any surprises in there for an experienced developer.

## Views
The views are also pretty typical. I enjoy using Bootstrap because it does help an awful lot with generating pages that render well across all browsers. I only tested with Google Chrome.

# Future Work

Currently, there is no way to register a new Employee account; I hand-edited the "SQLite User ID" into the User table in LocalDB in order to hook up the two separate databses.

So far, I have not created a true administrator account or any associated functionality

The "Report" feature available to logged-in Employees merely shows the events of the last week in a basic table. In reality, this should include nice charts with timelines and averages over whatever time is selected, similar to (say) Google Finance. I would expect to implement those views as partials, so that they could be shown for all employees on a single page in the admin portal.
