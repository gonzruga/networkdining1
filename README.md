# Notes & References

FirebaseFirestore:  Entry point to access Firestore from Flutter App

.instance - A getter that returns an instance of a single Firebase App using the default FirebaseApp

.collection() - A method to get a CollectionReference for the specified Firestore path. It can be used for adding and getting document references, and querying for document.

.snapshots() - A method to generate a stream of QuerySnapthot that notifies of query results at this location.

# Assets
Icons:  https://api.flutter.dev/flutter/widgets/Icon-class.html
https://www.fluttericon.com

# Flutter <-> Firebase
Google Developers: https://www.youtube.com/watch?v=DqJ_KjFzL9I


# Authentication Signup/Login:
Sickle-Att.MS; Input Fields:
https://www.youtube.com/watch?v=ZxbaOD1fG7M&list=PL9VH9BI56M6gxfhabVGcIgumNchE8B5Rw
NWF: https://www.youtube.com/watch?v=IQ1cBz66BQU&t=7s
(# Shows how to recal & insert data(parameter) e.g. user name. Color)


# Read & Write Firestore: 
Max: https://www.youtube.com/watch?v=TcwQ74WVTTc
(# Events)
#Number(Attend) Button (passing live data into build methods): 
https://www.youtube.com/watch?v=DqJ_KjFzL9I

# Forms & FormField
https://docs.flutter.dev/development/ui/widgets/input

# Decoration
https://www.youtube.com/watch?v=cfHkQEhTMlQ
AppBar: https://www.youtube.com/watch?v=uG-wwS_0xiA
Builder UI(15:15): https://youtu.be/Kn2vOrznAxs?t=915


# Images  
https://www.youtube.com/watch?v=Hxh6nNHSUjo

# Show User Profile & Edit
https://www.youtube.com/watch?v=Kn2vOrznAxs


# Event Management Flutter
Flutter Force (26): https://www.youtube.com/watch?v=Zl6kZR6o3Sg&list=PLWNYjcx_ZHPeamRJbGhn8pH1AmmCw48F0&index=15


# LOCALIZATION
flutter pub add intl:any 
flutter pub add flutter_localization
flutter gen-l10n
supportedLocales
localizationsDelegates
https://www.youtube.com/watch?v=o5NngkDJcSQ
https://www.youtube.com/watch?v=sTGyufxPnUM
Getx https://www.youtube.com/watch?v=P_D8KNrw1YI

# IMAGES
https://www.youtube.com/watch?v=u52TWx41oU4

Droidmonk (diff ListView)  https://pub.dev/packages/image_picker
1. Pick / Capture image using image_picker plugin  
2. Upload image to Firebase storage
3. Get URL of uploaded image
4. Store image URL inside corresponding document of the database.
5. Display image on list.
