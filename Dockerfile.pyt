FROM pytorch/pytorch

# Document who is responsible for this image
MAINTAINER Seetharami R. Seelam (sselam@nyu.edu)

RUN conda install -y pytorch torchvision -c pytorch

# Set up a working folder and install the pre-reqs
WORKDIR /app

# Add the code as the last Docker layer because it changes the most
ADD pyt-mnist/main.py  .

# Run the service
CMD [ "python", "main.py" ]

