Command line git

    •	status
                Shows status of the local repository. This status includes:
                        number of local commits that have not been    synced with  remote (GitHub)
                        list of files in local folder than are NOT being tracked by git
                        list of files in local folder that have changes that need to be committed

                        git status

    •	clone
                Clone a repository into a new directory

                        git clone RepositoryName

    •	add
                Add file contents to the index
        
                        git add Filename

    •	rm
                Remove files from the working tree  and from the index

                        git rm Filename

    •	commit
                Record changes to the repository

                        git commit -a -m "comments"
                        git commit -a -m "repository for homework"


    •	push
                Update remote refs along with associated objects

                        git push filename master
                        git push filename branch_name
                        git push -all filename
                        git push filename :branch_name

    •	fetch
                Download objects and refs from another repository

                        git fetch
                        git fetch -all
                        git fetch --append


    •	merge
                Join two or more development histories together

                        git merge branch_name
                        git merge hotfix main

    •	pull
                Fetch from and integrate with another repository or a local branch

                        git pull Repository_link

    •	branch
                List, create or delete branches

                        git branch
                        git branch branch_name
                        git branch -d branch_name
                        git branch -d hotfix


    •	checkout
                Switch branches or restore working tree files

                        git checkout branch_name
                        git checkout -b branch_name

    •	init
                Create an empty Git repository or reinitialize an existing one

                        gitt init repository_name

    •	remote
                Connect your local repository to the remote server

                        git remote add variable_name Remote_Server_Link

git files & folders

•               .git folder

                        The directory which is created when you do git init(in case of a new project) or you do git clone(in case of pulling a project from somewhere else).

•	        .gitignore file

                        A file that is usually ignored.

                        git config --global core.excludesFile ~/.gitignore // If there are any file you wish to ignore in all repositories, 
                                                                                you can put the in a global .gitignore file

•	        .git/hooks

                        scripts that run automatically before or after executing Git commands like Commit and Push.

GitHub

•	        Pull requests

                        A feature of online git services like Github that allow pull requests to suggest changes to a project, recieve suggested changes to your own projects, and address issues in pull requests.

                                Demonstration: I went to my Github account of Hulkman125 and went to my repository of ceg3120-Harvey. While there I clicked on my README.md file. I then clicked on the "Edit File" button on the top right to allow myself to edit it. at the top of my file I moved the text down 2 lines then at the top I typed down " #Example for pull requests tutorial". I then clicked on my commit changes which opens up the propose changes dialog box. At the bottom I then selected the option that says "Create a new branch for this commit and start a pull request".I then clicked on the "propose changes" button, then I typed down the commit "Example for pull requests tutorial" before I pressed the commit button. I then clicked on the pull request tab at the top of the page. You will be able to see the pull request I made for my README.md file.
                        

•	        SSH authentication to repositories

                        accessing data in repositories on Github using SSH (Secure Shell Protocol). You use a private key on your local machine, and add the public SSH key to your Github account.

•	        Actions

                        help you build robust and dynamic automations. helps you automate your software development workflows from within Github.

Resources

•	        Pro Git Book

                        A book written by Scott Chacon and Ben Straub and published by Apress, that explains the fundamental aspects of Git. It instructs the starting, the installation, and the creating of an environment to work.





Project Made By:
Tyler Raymond Harvey
