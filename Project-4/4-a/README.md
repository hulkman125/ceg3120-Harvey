1. In order to install docker to my website I just go to the following URL:
    https://docs.docker.com/desktop/install/windows-install/
    I then clicked on the "Docker Desktop for Windows" button where it emediatly begins downloading the Docker software to my laptop.

2. I build my Dockerfile by typing down "sudo vim dockerfile" and typing down the following text into it: 
    FROM nginx

    COPY index.html /usr/share/nginx/html

3. in order to create and run my container( which I will name CobraComicsWebSite, due note my website is about a set of comic books I am making) I type down the following code:
    docker run --name CobraComicsWebSite -v /home/hulkman125/cobra/finalFile/:/usr/share/nginx/html: ro -d -p 8080:80 nginx

4. in order for my website to be seen I need to first change the permissions of my website folder to 744, then I go to the URL and type down "localhost:8080" it needs to be 8080 because that is the host port I gave it. 
