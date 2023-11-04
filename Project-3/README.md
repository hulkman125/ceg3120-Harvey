1. The goal of the project is to create 3 host instances and a proxy instance that is supposed to be a hub for the client, when the client tries to access the proxy instance they will emediatly be redirected to 1 of the other host instances in sequence, the client will then see whatever html code that is on that host instance.

2. a) sudo vim /etc/hosts
   
   b) The host file is mainly a text file that is used by Windows to help directed IP addresses to host names/ domain names. In other words this file acts like a DNS service for your PC. It overrides the mappings from the DNS server that your personal computer is currently connected to.
   
   c) if you are trying to ssh into the proxy instance then type down "ssh -i privatekey.pem ubuntu@public IP address". If you are trying to ssh into the hosts instances, then you need to first ssh into the proxy server and make a copy of your private key into each of the hosts server then you can ssh into them from your proxy instance with the following code:
   
                            ssh -i privatekey.pem ubuntu@private IP address
   
4. when I went on my wsl I ssh'd into my proxy server, then I typed down sudo vim /etc/haproxy/haproxy.cfg
   
    a) I had made the neccessary modification in the file path of /etc/haproxy/haproxy.cfg.
   
    b)following the configurations:
         ![alt text](config.png)
            
    c) "systemctl restart haproxy" is the command to restart the haproxy.
   
    d) the resources were my notes from class.

6. 
    a) the files on each host instance are the index.html file.
   
    b)the configurations I made were just to display the proper web page for each host instance, such as the 1st host instance will display "this is server 1", server 2 will display "this is server 2", and the third server will display "this is server 3".
   
    c)/var/www/html/index.html
   
    d)"sudo systemctl restart apache2" is the command to restart apache2
   
    e)the resources were from my notes again

8. 
    This is the image for the first server(with my own personal css style):
        ![alt text](Server1.png)

    This is the second Server image:
        ![alt text](Server2.png)

    This is the third:
        ![alt text](Server3.png)




Extra credit part:

   1. HTTPs is basically the same as HTTP except it is far more secure. HTTPS uses TLS/SSL to encryp normal HTTP code and make it safer for traveling over the internet so even if a hacker hacks into the datastream and downloads the data it is perfectly encryped and without the private key to decryped the data, it will be useless to them.

   2. image to show the new haproxy.cfg :
      ![alt text](https_image.png)

   3. this is the code I made to make apache2 handle https:
      ![alt text](ssl_image.png)

   4. I just altered the security groups to accept any ip address range if the port is 443, or if its an https protocal.

   5.
