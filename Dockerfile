FROM alpine:latest
RUN apk add bash

# Add a build-time argument for the user
ARG USER=dockeruser

# Create the user
RUN adduser -D $USER

# Switch to the user
USER $USER

# Add the dummy.txt file (it will be owned by the specified user)
ADD dummy.txt /home/$USER/

# Set the working directory to the user's home directory
WORKDIR /home/$USER
