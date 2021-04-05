import 'beach.dart';

/**
 * DataManager class, stores important data such as list
 * of beaches and beach information.
 * 
 * Author: Devin Arena
 * Version: 1.0
 * Date: 4/3/2021
 */
class DataManager {

  // The list of beaches (used to display cards and select which beach for info screen)
  static List<Beach> beaches = [];

  /**
   * Initialization method used to create test beaches.
   */
  static void init() {
    // Actual beach taken from https://www.leegov.com/parks/beaches/bowditchpoint.
    beaches.add(Beach(
      name: "Bowditch Beach Park",
      description: "Bowditch Point Regional Park is 17-acres that is located at the northern tip of Estero Island. Approximately seven acres are a developed park for passive recreational use and the remaining 10-acres are a restoration/preserve area.\n\nThis serene location, which encompasses the entire end of the island, offers a choice of settings to fulfill your needs. The back bay offers quiet waters, peaceful surroundings and a close up look of vessels entering and exiting the bay. The park area features tables and grills, available on a first come first serve basis, in a shaded tropical setting sure to please any picnicker.\n\nThe gulf front is more active while still providing a relaxed atmosphere for walkers, swimmers and sunbathers. Walking trails, through the restoration/preserve area, carry you through varied environments and offers an excellent opportunity for bird watching while being highlighted by panoramic views of Estero Bay. This is one of the first beaches Lee County Parks & Recreation made accessible for individuals with disabilities from parking area to the Gulf of Mexico. There is also an accessible boat dock. A Land Stewardship (Management) Plan has been developed that provides direction on the management of natural resources within the Park.\n\nBowditch Point Park is a designated Great Florida Birding Trail site.\n\nFor more information, maps and guides please visit the Great Florida Birding Trail. A Saltwater Fishing License is required to saltwater fish from shore. There is no fee for Florida residents.",
      summary: "17-acre beautiful park located at the northern tip of Estero Island.",
      imagePath: "assets/bowditch.png",
      addressLink: "https://www.google.com/maps?q=50+Estero+Boulevard%3Cbr%3EFort+Myers,+FL+33931",
      distance: 1.0, // mock distance of one mile
      freeSpaces: 20, // mock number of available spaces
      totalSpaces: 200, // mock number of total spaces
    ));
    // Test beaches to populate buttons
    beaches.add(Beach(
      name: "Beach Access A",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      summary: "An example beach access (A)",
      distance: 2.6, // mock distance of one mile
      freeSpaces: 14, // mock number of available spaces
      totalSpaces: 400, // mock number of total spaces
    ));
    beaches.add(Beach(
      name: "Beach Access B",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      summary: "An example beach access (B)",
      distance: 3.4, // mock distance of one mile
      freeSpaces: 8, // mock number of available spaces
      totalSpaces: 600, // mock number of total spaces
    ));
    beaches.add(Beach(
      name: "Beach Access C",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      summary: "An example beach access (C)",
      distance: 5.7, // mock distance of one mile
      freeSpaces: 2, // mock number of available spaces
      totalSpaces: 50, // mock number of total spaces
    ));
    beaches.add(Beach(
      name: "Beach Access D",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      summary: "An example beach access (D)",
      distance: 6.1, // mock distance of one mile
      freeSpaces: 146, // mock number of available spaces
      totalSpaces: 250, // mock number of total spaces
    ));
    beaches.add(Beach(
      name: "Beach Access E",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      summary: "An example beach access (E)",
      distance: 7.4, // mock distance of one mile
      freeSpaces: 95, // mock number of available spaces
      totalSpaces: 300, // mock number of total spaces
    ));
  }

  /**
   * Static cleanup, remove resources to prevent memory leaks.
   * 
   * @return void
   */
  static void dispose() {
    beaches.clear();
    beaches = null;
  }

}