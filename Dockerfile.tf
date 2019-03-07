FROM tensorflow/tensorflow:latest-py3

MAINTAINER Seetharami R. Seelam (sseelam@nyu.edu)

WORKDIR /app
ENV DATA_DIR /input
ADD tf-mnist/convolutional_network.py convolutional_network.py
ADD tf-mnist/input_data.py input_data.py

ENV RESULT_DIR /output/

CMD ["sh", "-c", "python3 convolutional_network.py --trainImagesFile ${DATA_DIR}/train-images-idx3-ubyte.gz --trainLabelsFile ${DATA_DIR}/train-labels-idx1-ubyte.gz --testImagesFile ${DATA_DIR}/t10k-images-idx3-ubyte.gz --testLabelsFile ${DATA_DIR}/t10k-labels-idx1-ubyte.gz --learningRate 0.001 --trainingIters 20000"]
