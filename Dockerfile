FROM dorowu/ubuntu-desktop-lxde-vnc

RUN sudo apt-get upgrade
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E88979FB9B30ACF2
RUN sudo apt-get update
RUN sudo apt-get install -y openjdk-8-jdk

RUN  apt-get install -y zip
RUN cd /opt && wget https://nodejs.org/dist/v14.21.3/node-v14.21.3-linux-x64.tar.xz && cd /opt && tar xvf /opt/node-v14.21.3-linux-x64.tar.xz && ln -s node-v14.21.3-linux-x64 nodejs
ENV NODE_HOME /opt/nodejs
ENV PATH="/${NODE_HOME}/bin/:${PATH}"

RUN mkdir /opt/gradle
RUN curl -o gradle.zip -k -LO https://services.gradle.org/distributions/gradle-7.6.2-bin.zip
RUN unzip gradle.zip -d /opt/gradle
ENV GRADLE_HOME /opt/gradle/gradle-7.6.2
ENV PATH ${GRADLE_HOME}/bin:${PATH}

RUN apt-get install -y imagemagick

# Install Cordova
RUN npm install -g cordova@11.0.0

#RUN apt-get install -y  libwebkit2gtk-4.0-37


# Install required packages
RUN apt-get update && apt-get install -y openjdk-8-jdk wget

# Download and install Android SDK
RUN cd /opt && wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip && \
    unzip sdk-tools-linux-4333796.zip && \
    rm sdk-tools-linux-4333796.zip

RUN mkdir /opt/android-sdk && mv /opt/tools /opt/android-sdk/sdk-tools    

# Set environment variables
ENV ANDROID_HOME /opt/android-sdk
ENV ANDROID_SDK_ROOT /opt/android-sdk
ENV PATH $ANDROID_SDK_ROOT/emulator:$ANDROID_SDK_ROOT/sdk-tools/bin:$PATH

# Install Android SDK packages
RUN yes | $ANDROID_SDK_ROOT/sdk-tools/bin/sdkmanager --licenses
RUN $ANDROID_SDK_ROOT/sdk-tools/bin/sdkmanager "platforms;android-30" "build-tools;30.0.3" "extras;android;m2repository" "extras;google;m2repository"

# Verify Android SDK installation
RUN $ANDROID_SDK_ROOT/sdk-tools/bin/sdkmanager --list

#create avd
#RUN $ANDROID_SDK_ROOT/sdk-tools/bin/sdkmanager "system-images;android-30;google_apis;x86"
#RUN $ANDROID_SDK_ROOT/sdk-tools/bin/avdmanager create avd -n Nexus -k "system-images;android-30;google_apis;x86" -d "Nexus 5"
RUN apt-get install -y adb

# Install Git
RUN apt-get install -y git

# Clone the Cordova project from GitHub
RUN git clone https://github.com/AsheraCordova/HelloWorld.git /app/helloworld
RUN git clone https://github.com/AsheraCordova/playground.git /app/playground
RUN git clone https://github.com/AsheraCordova/InteractivePlayGround.git /app/InteractivePlayGround
RUN git clone https://github.com/AsheraCordova/EcommerceApp.git /app/EcommerceApp
RUN git clone https://github.com/AsheraCordova/TradeApp.git /app/TradeApp


# Set the working directory to /app
WORKDIR /app

EXPOSE 8080

