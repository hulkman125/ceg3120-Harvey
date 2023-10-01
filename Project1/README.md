PART 1 Build a VPC

    1. A VPC (or virtual private cloud) is a collection of shared resources such as a subnet, an internet gateway, a route table, etc, that is allocated within a public cloud environment, which will give the user a certain level of isolation from one VPC user and all the other users who use the same cloud.
    ![alt text](VPC.PNG)















    

    2. A subnet is a set of divided IP addresses in an Ip network. When I added the /24 CIDR block to my subnet, it uses the first 3 octets. But when you add a /23 CIDR block to the VPC, it leaves behind exactly 1 bit left. so if you do not include the IP addresses in the subnet you are left with an IP range of 172.18.1.0 to 172.18.1.255.
    ![alt text](Subnet.PNG)

    3. An internet gateway is a network node(or in this case a virtual router) that will be able to connect the VPC to the internet by using different protocols that allow this communication to be possible.
    ![alt text](Internet_Gateway_Create.PNG)
    ![alt text](Internet_Gateway_Attach.PNG)

    4. A route table is date that is stored on your Internet Gateway that is used to control what data can be sent to or from your VPC.
    ![alt text](Route_Table.png)
    ![alt text](Route_Table_Subnet.PNG)
    ![alt text](Route_Table_Destinations.PNG)

    5. A Security Group is basically a firewall on AWS which can allow data in and out of your instance depending on both the inbound and outbound rules that are given for it.
    ![alt text](Security_Group.PNG)
    ![alt text](Security_Group_InboundRules.PNG)

    6. A Key Pair is basically a set of security credential that contain a private key as well as a public key. A public key is used like a lock to be installed on the AWS instance while a private key acts like a house key that will be used to unlock the public key so you will have access to the instance.
    ![alt text](key_pair.PNG)
    ![alt text](key_pair_location.PNG)

PART 2 EC2 instances

        1. 
            a) I went with the AMI of ubuntu
            b) The username of the instance type is also Ubuntu
            c) Instance type ist2.micro
            d) My key pair name is Harvey-keyPair
            e) I need my key pair to be able to login to my new instance, it will have for itself a public key which will act as a lock to a door. So when I use my private key that I downloaded named Harvey-keyPair.pem whicj is located at a filepath of Linux/Ubuntu/home/hulkman125/ , i will be able to have access to my instance.
    
    ![alt text](Instance_and_AMI.PNG)
    ![alt text](Instance_type.PNG)
    ![alt text](keypair.PNG)

    2. While creating my instance I pressed the edit button on the Network settings section and chose my VPC and I also chose my Subnet that goes with it.
    ![alt text](Subnet_to_Instance.PNG) 

    3. No because a public Ip would change when an instance is stopped and started again while I do not have to worry about that while using an elastic ip address.

    4. on the Launch an instance page in the Configure storage section, click the add new volume button. click how many gigabytes you with for it to use as well as the root you wish.
    ![alt text](Storage.PNG)

    5. On the Launch an Instance page near the top at the Name and tags section I just typed down "Harvey-instance".

    ![alt text](Instance_Name.PNG)

    6. On the Launch an Instance page in the Network setting section, I selected the "Select existing security group" radio button, then in the "Common security groups" box I just chose my security group of "Harvey-sg".

    ![alt text](Instance_to_SG.PNG)

    7. click the Elastic IPs section then click "Associate Elastic IP address". Then click the "Allocate" button. Then click the "Associate this Elastic IP address", where it will redirect me to a new page where I can type down my Instance in the Instance box. then click Associate.

    ![alt text](Instance_Name.PNG)
    ![alt text](EIP_Instance.PNG)

    8. Screenshot of Instance details:
    ![alt text](Instance_Details.PNG)

    9. to change your hostname to like Slytherin just type down "hostnamectl set-hostname Slytherin"

    10. Screen shot of SSH connection to my instance with new Hostname:
    ![alt text](Hostname.PNG)
