   PART-1
    
    CI PROJECT OVERVIEW

1. My goal for this part of project 4 is to simply create a website using my own chosen resources
so they can be displayed on the internet using my personal computer. this can be done using the Docker Desktop software and typing down the right 
code and Dockerfile(the file that tells Docker how to display your container online)
 
    RUN PROJECT LOCALLY

1. I simply went to a web browser and typed this in the URL to get me to the neccessary website:

    https://docs.docker.com/desktop/install/windows-install/

I then clicked on the button that says "Docker Desktop for Windows" 
which then began installing Docker Dessktop on my Laptop.

2. I copied all of my web site resources, such as images, javascript files, 
and html files in the file path of home/hulkman125/cobra/finalFile. Then on wsl I created a Dockerfile by typing vim Dockerfile
with the following Dockerfile code to display the index.html in the finalFile folder when the user enters 
the correct phrase in the URL: 

          FROM nginx
      
          COPY index.html /usr/share/nginx/html

   this will copy my index.html file into my container with the filepath above.

4. to run the container which I named CobraComicsWebSite, I type down the following code:

          docker run --name CobraComicsWebSite -v /home/hulkman125/cobra/finalFile/:/usr/share/nginx/html:ro -d -p 8080:80 nginx
   this will share my files on my personal pc filepath with the file path on my container, the flags I used are:
      *read only
      * detached
      * and portbind with my container port of 8080 and a host port of 80.

6. In the code I made the container port 8080 so in order to make my website visibal to my computer I 
simply type down the following sequence in the URL:

          localhost:8080


