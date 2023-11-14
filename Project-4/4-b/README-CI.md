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
and html files in the file path of home/hulkman125/cobra/finalFile. Then on wsl I created a Dockerfile
with the following Dockerfile code to display the index.html when the user enters 
the correct phrase in the URL: 

          FROM nginx
      
          COPY index.html /usr/share/nginx/html

3. to run the container which I named CobraComicsWebSite, I type down the following code:

          docker run --name CobraComicsWebSite -v /home/hulkman125/cobra/finalFile/:/usr/share/nginx/html:ro -d -p 8080:80 nginx

4. In the code I made the container port 8080 so in order to make my website visibal to my computer I 
simply type down the following sequence in the URL:

          localhost:8080



    PART-2

I created my account and named it Cobraking1.

1. To create a public repository I simply went to my repository page and pressed the "create repository" button. 
I then chose an appropriate name for my repository, mine is called "repo4cobra".

2. I created an Access Token. Go to Account Settings/Security and press on the "New Access Token" button.
    I choose my description as "cobraComics_access" and I chose my access permissions as "Read, Write, Delete". I was then sent to an open page that showed me access code that I copied. I then went to my WSL and typed the following:

        docker login -u cobraking1

    I then had to paste my passcode that I previously copied.



3. I used the latest nginx image by typing down:

          docker tag nginx:latest cobraking1/repo4cobra:latest

   to create a new image container called "dockerking1/repo4cobra" to my Docker software on my PC.
   I then pushed my new container by typing down:
   
          docker push cobraking1/repo4cobra:latest

5. to set a secret on Github, go to settings/Secrets and variables/Actions then click on the "New repository secret" button.  I chose my secrets as Docker_Password to store my Dockerhub password, Docker_Username to store my Dockerhub username, and Docker_Token to set my Dockerhub access token.

6. In my yml workflow I called it github_actions_demo.yml. Ther variable called "{{ github.actor}}" represents my username in github. This shows that since the yml file compiled correctly, it should say "hulkman125 is testing out GitHub Actions" once it has been pushed. The steps for this workflow will display outputs depending on the type of step I used. The ones with a run step will display sentances using their own variable in each step. For example, the first step uses a variable of github.event_name which displays what king of event the user uses, in this case I used a push event. This will display the sentance of "The Job was automatically triggered by a push event". The name step will display the phrase "Check out repository code" and then will us the uses command. which will run v4 of the actions/checkout action, which will check your repository onto the runner, which will allow you to run scripts or some other actions. the run step with the "ls" sub-step has a variable name of github.workspace which will display all the files in my current folder in github. 
