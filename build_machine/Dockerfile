FROM node:20.17.0-alpine

# Install Java 1.8
RUN apk add --no-cache openjdk8

# Set the Java version
ENV JAVA_VERSION 1.8
ENV PATH="/usr/lib/jvm/java-1.8-openjdk/bin:$PATH"

# Install Maven
RUN apk add maven
RUN apk add apache-ant

# Install Git
RUN apk add --no-cache git

# Clone the Cordova project from GitHub
RUN git clone https://github.com/AsheraCordova/widget_library /app/widget_library
RUN git clone https://github.com/AsheraCordova/code_generator /app/code_generator
RUN git clone https://github.com/AsheraCordova/css_parser /app/css_parser
RUN git clone https://github.com/AsheraCordova/html_parser /app/html_parser
RUN git clone https://github.com/AsheraCordova/Plugin_Converter /app/Plugin_Converter
RUN git clone https://github.com/AsheraCordova/Plugin_HtmlParser /app/Plugin_HtmlParser
RUN git clone https://github.com/AsheraCordova/AndroidJParent /app/AndroidJParent
RUN git clone https://github.com/AsheraCordova/AndroidJ /app/AndroidJ
RUN git clone https://github.com/AsheraCordova/AndroidXJ /app/AndroidXJ
RUN git clone https://github.com/AsheraCordova/AndroidJMaterial /app/AndroidJMaterial
RUN git clone https://github.com/AsheraCordova/AndroidXJConstraintLayout /app/AndroidXJConstraintLayout
RUN git clone https://github.com/AsheraCordova/AndroidXJDrawerLayout /app/AndroidXJDrawerLayout
RUN git clone https://github.com/AsheraCordova/AndroidXJGridlayout /app/AndroidXJGridlayout
RUN git clone https://github.com/AsheraCordova/AndroidXJRecyclerView /app/AndroidXJRecyclerView
RUN git clone https://github.com/AsheraCordova/AndroidXJToolBar /app/AndroidXJToolBar
RUN git clone https://github.com/AsheraCordova/CordovaAndroidJLib /app/CordovaAndroidJLib
RUN git clone https://github.com/AsheraCordova/AndroidXJCoordinatorLayout /app/AndroidXJCoordinatorLayout
RUN git clone https://github.com/AsheraCordova/AndroidJSnackbar /app/AndroidJSnackbar
RUN git clone https://github.com/AsheraCordova/AndroidJNavigationView /app/AndroidJNavigationView
RUN git clone https://github.com/AsheraCordova/SWTParent /app/SWTParent
RUN git clone https://github.com/AsheraCordova/SWTCommon /app/SWTCommon
RUN git clone https://github.com/AsheraCordova/Core /app/Core
RUN git clone https://github.com/AsheraCordova/ConstraintLayout /app/ConstraintLayout
RUN git clone https://github.com/AsheraCordova/GridLayout /app/GridLayout
RUN git clone https://github.com/AsheraCordova/CapInsets /app/CapInsets
RUN git clone https://github.com/AsheraCordova/CSSBorder /app/CSSBorder
RUN git clone https://github.com/AsheraCordova/DateTime /app/DateTime
RUN git clone https://github.com/AsheraCordova/Drawer /app/Drawer
RUN git clone https://github.com/AsheraCordova/RecycleView /app/RecycleView
RUN git clone https://github.com/AsheraCordova/ShutterBug /app/ShutterBug
RUN git clone https://github.com/AsheraCordova/Toolbar /app/Toolbar
RUN git clone https://github.com/AsheraCordova/Snackbar /app/Snackbar
RUN git clone https://github.com/AsheraCordova/ViewPager /app/ViewPager
RUN git clone https://github.com/AsheraCordova/TextInputLayout /app/TextInputLayout
RUN git clone https://github.com/AsheraCordova/CoordinatorLayout /app/CoordinatorLayout
RUN git clone https://github.com/AsheraCordova/AppBarLayout /app/AppBarLayout
RUN git clone https://github.com/AsheraCordova/NestedScrollView /app/NestedScrollView
RUN git clone https://github.com/AsheraCordova/NavigationView /app/NavigationView
RUN git clone https://github.com/AsheraCordova/SWTAopMacLib /app/SWTAopMacLib
RUN git clone https://github.com/AsheraCordova/teavm /app/teavm
RUN git clone https://github.com/AsheraCordova/WebParent /app/WebParent
RUN git clone https://github.com/AsheraCordova/Dialog /app/Dialog
RUN git clone https://github.com/AsheraCordova/BrowserDialogs /app/BrowserDialogs
RUN git clone https://github.com/AsheraCordova/AbsoluteLayout /app/AbsoluteLayout
RUN git clone https://github.com/AsheraCordova/IQkeyboardManager /app/IQkeyboardManager
RUN git clone https://github.com/AsheraCordova/SDWebImagePlugin /app/SDWebImagePlugin
RUN git clone https://github.com/AsheraCordova/cordova-plugin-qrscanner /app/cordova-plugin-qrscanner
RUN git clone https://github.com/AsheraCordova/cordova-web /app/cordova-web
RUN git clone https://github.com/AsheraCordova/cordova-swt /app/cordova-swt
RUN git clone https://github.com/AsheraCordova/CustomWidgetExtension /app/CustomWidgetExtension
RUN git clone https://github.com/AsheraCordova/Custom /app/Custom
RUN git clone https://github.com/AsheraCordova/CodePoacher /app/CodePoacher
RUN git clone https://github.com/AsheraCordova/Splash /app/Splash
RUN git clone https://github.com/AsheraCordova/Picasso /app/Picasso
RUN git clone https://github.com/AsheraCordova/Glide /app/Glide
RUN git clone https://github.com/AsheraCordova/cordova-plugin-sqlite-2-swt /app/cordova-plugin-sqlite-2-swt
RUN git clone https://github.com/AsheraCordova/cordova-plugin-qrscanner-swt /app/cordova-plugin-qrscanner-swt
RUN git clone https://github.com/AsheraCordova/cordova-plugin-camera-swt /app/cordova-plugin-camera-swt
RUN git clone https://github.com/AsheraCordova/iOSParent /app/iOSParent
RUN git clone https://github.com/AsheraCordova/IndexedDB /app/IndexedDB
RUN git clone https://github.com/AsheraCordova/cordova-plugin-camera /app/cordova-plugin-camera
RUN git clone https://github.com/AsheraCordova/AndroidParent /app/AndroidParent

RUN git clone https://github.com/AsheraCordova/HelloWorld /app/HelloWorld
RUN git clone https://github.com/AsheraCordova/InteractivePlayGround /app/InteractivePlayGround
RUN git clone https://github.com/AsheraCordova/TradeApp /app/TradeApp
RUN git clone https://github.com/AsheraCordova/EcommerceApp /app/EcommerceApp
RUN git clone https://github.com/AsheraCordova/playground /app/playground

RUN git clone https://github.com/AsheraCordova/mvn-ashera-swt-repo /app/mvn-ashera-swt-repo
RUN git clone https://github.com/AsheraCordova/mvn-ashera-web-repo /app/mvn-ashera-web-repo
RUN git clone https://github.com/AsheraCordova/mvn-ashera-java-repo /app/mvn-ashera-java-repo
RUN git clone https://github.com/AsheraCordova/mvn-ashera-ios-repo /app/mvn-ashera-ios-repo
RUN git clone https://github.com/AsheraCordova/mvn-ashera-android-repo /app/mvn-ashera-android-repo
RUN git clone https://github.com/AsheraCordova/Docker /app/Docker
RUN git clone https://github.com/AsheraCordova/AsheraCordova.github.io /app/AsheraCordova.github.io

# Set the working directory to /app
WORKDIR /app

# Copy the project files into the container
COPY . /app

# Expose the port for Node.js
EXPOSE 8080