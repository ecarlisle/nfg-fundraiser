#nfg-fundraiser

##The Fundraiser Scaffold
A scaffold for *Fundraiser* was created via the Rails scaffold generation tool. I did this for brevity, but generating each of the MVC components separately could be a surgical option for getting only needed files.

##Fundraiser Fields 
*Fundraiser* was created with the following fields:

* first_name (string)
* last_name (string)
* goal_amount (decimal)
* current_amount (decimal)

##Model
The additional fields were added to the *Fundraiser* model:

* full_name
* percent_to_goal
* image_file
 
##Assets
I used gems for assets like bootstrap instead of bower or NPM to be more in the spirit of a Rails approach. The immediate result are several scripts and link tags in the head, but this could be cleaned up with the Rails Asset Pipeline and minimization tools like Uglify.

##Routing
The root view is route mapped to the *index* method of the *fundraisers* controller.

##Seed Data
There is a seed data file for populating the database with six fundraisers.

##HAML 
I made HAML versions of the files related to the root view:

* app/views/layouts/application.haml
* app/views/fundraisers/index.haml
* app/views/fundraisers/_fundraiser.haml

##CSS
As this was more an exercise in Rails and HAML, I used CSS instead of LESS generation. Please let me know if that is a concern.

##Percent to Goal
I tried a few approaches to rendering the green around around each fundraiser image.

* canvas
* svg
* D3
* NVD3

Each of them were close matches, but in each case the arc didn't align perfectly with the fundraiser image. The arc needs to have responsive behavior and resize just as the Bootstrap responsive image does. For now, I'v listed the percent_to_goal as text under each fundraiser image. 


