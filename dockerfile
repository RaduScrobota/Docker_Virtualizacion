# get the oficial image of kali Linux
FROM kalilinux/kali-rolling

# update the image 
RUN apt-get update 

# install the tools
RUN apt-get install -y nmap

# Each student must fill this file with the correct information
#LABEL authors = "RaduIuvalScrobota 21937899"
#LABEL version = "1.0"
#LABEL description = "Dockerfile for a custom image of Kali Linux OS"



# Set credentials for the root user, ROOT = all privileges, 21937899 = password
ENV USER root
ENV PASSWORD 21937899

# Reduce the size of the image by removing nmap, metasploit
RUN apt-get clean

# Expose ports for nmap and metasploit
EXPOSE 400 500

# Run the following commands when the container is created
CMD ["bash"]

# Build the image
# docker build -t custom-kali-image-21937899 .
# Run the container
# docker run -it --rm --name custom-kali-container-21937899 custom-kali-image-21937899