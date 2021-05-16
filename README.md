# Safe-ify
> Because Safety comes first, "Gender" second. 

Nowadays, the news says a lot about Crimes in this world. To save the world from being the unruly place, we have developed this application where the current location of the user will be  tracked and there will be a button which will send the current location coordinates to the numbers as stored by the user.

## Installing / Getting started

Step - I: Download "Android Studio".<br>
Step - II: Download Flutter and Dart. The dart package comes inbuilt with Flutter.<br>
Step - III: Clone the repository.<br>
Step - IV: Open the repository on "Android Studio".<br>
Step - V: Open "Projects" tab on the left, and open "Pubspec.yaml". Click on "Packagaes Get".<br>
                                    OR<br>
Step - V: Open Terminal and type "Flutter Pub Get" by being the in the project directory.<br>
Step - VI: Goto <No Devices> section and start the "Emulator". If you don't have an emulator then goto AVD Manager and create one.<br>
Step - VII: Click on the Start button, Green Play Button, and let the gradle buiild and then start the app.<br>
Step - VIII: Click on "Login" and enter the credentials (Email - admin@yahoo.com, Password - 123456) else Register and then login.<br>
Step - IX: There will be a button on the lower right, clicking on it will send an SMS.<br>

### Initial Configuration
1. Android Studio Installed
2. An actual physical device connected
3. Device is connected to internet, and also the laptop.

## Developing


```shell
git clone https://github.com/sauravsomxz/Safe-ify.git
cd Safe-ify-main/
Open in Android Studio
```

## Features
* Main Functionality - Sending the user coordinates to the close friends as specified by the user.
* Live Location

### Drawbacks
* We use free SMS API, so the user cannot send the message to a list of phone numbers, and also to unverified numbers.
* We have used MapBox, so MapBox doesn't show nearby locations like Google Maps

## Contributing

Further Development Ideas -
* Integrating database or storage to store the details of close people
* Finding an SMS API that will take input the list of phone numbers, as set by the user, and send them the coordinates
* Showing nearby police stations on the project for the user
* Saving the "close people" details to Firebase storage and retrieval from the same.
* Adding Session, when the user click on back that log out and not go to "Login/Register" Page
* Adding "Fogot Password" to the "Login" page so that the user can reset the password.
* <strike>Adding "Register Here" to the "Login" Page for unregistered users, so that it will get redirected to the registration page.</strike>
* <strike>Adding "Login" page if the user tried to register and already exists.</strike>

## Contributors && Managers

| Name                       | GitHub                                                 | Social                                                                    |
| :------------------        | :-------------------------------------------           | :----------------------------------------------------                     |
| **Sourav Ranjan Maharana** | [**@sauravsomxz**](https://github.com/sauravsomxz)     | [**linkedin**](https://www.linkedin.com/in/sourav-ranjan-maharana/)       |
| **Pulkit Agarwal**         | [**@pulkit-2025**](https://github.com/pulkit-2025)     | [**linkedin**](https://www.linkedin.com/in/pulkit-2025/)                  |
