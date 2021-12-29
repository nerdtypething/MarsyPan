MarzyPan is an app that allows users to view photos taken by Mars rovers during their time on the planet.

This is a starter project that has some UI already built up.

- The first screen is a list of the Mars rovers for which NASA has photos available.
- Tapping into each rover's screen shows a new view that has an input text field and a list of available cameras.
  - The input text field is meant to take an input for the Sol for which we want to fetch photos.
- The API key to use is found in the NasaAPI struct.
- API documentation can be found here: https://api.nasa.gov/index.html (Mars Rover Photos).

Assignment:

1. When a user taps on a specific camera, the app should display the first photo that is returned by the API for the specific rover, the specific camera, on the specified Sol value. (The API allows paging and usually returns a number of results per page, but for our assignment we only want the very first photo that is returned.)
  - If there are no photos returned for the specific combination of parameters, the screen should indicate that.
2. In RoversCamViewController, appropriately set the name of the rover (see the TODO comment in setContentAndStyle()).

Constraints:
1. There should be clear separation of concerns in the different modules of code.
2. The app should be usable in both landscape and portrait mode.

Make it Interesting:
1. The API key that we have is rate-limited, which means we can only call the API a certain number of times per hour. What can we do to reduce the chance of hitting the rate limit?
