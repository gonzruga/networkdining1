import "package:get/get.dart";

class LocalString extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        //German
        'de_DE': {
          'intro': 'Willkommen zum Essen und Netzwerken',
          'login': 'Anmeldung',
          'submit': 'Einreichen',
          'signup': 'Anmeldung (Erstes Mal)',
          'email': 'Email',
          'password': 'Passwort. 6 Zeichen',
          'eventsTitle': 'VERANSTALTUNGEN',
          'welcomeDine': 'WILLKOMMEN BEI EINEM DER DINING-VERANSTALTUNGEN',
          'eventCreateBtn': 'Ereignis Erstellen',
          'eventCreateTitle': 'VERANSTALTUNG ERSTELLEN',
          'date': 'Datum: 2023-06-23 13:00:00.000',
          'restaurant': 'Name des Restaurants',
          'cuisine': 'Küche',
          'cuisineExamples': 'Beispiel: Sushi, Italian, Steak',
          'description': 'Beschreibung',
          'address': 'Adresse',
          'websiteMenu': 'Website-Menü',
          'attending': 'Teilnahme',
        },

        // English - UK
        'en_UK': {
          'intro': 'Welcome to Dine and Network',
          'login': 'Login',
          'submit': 'Submit',
          'signup': 'Signup (First Time)',
          'email': 'Email',
          'password': 'Password. 6 Characters',
          'eventsTitle': 'EVENTS',
          'welcomeDine': 'WELCOME TO JOIN ANY OF THE DINING EVENTS',
          'eventCreateBtn': 'Create Event',
          'eventCreateTitle': 'CREATE EVENT',
          'date': 'Date: 2023-06-23 13:00:00.000',
          'restaurant': 'Restaurant Name',
          'cuisine': 'Cuisine',
          'cuisineExamples': 'Example: Sushi, Italian, Steak',
          'description': 'Description',
          'address': 'Address',
          'websiteMenu': 'Website Menu',
          'attending': 'Attending',
        },
      };
}
