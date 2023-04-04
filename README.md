README:   # MOTOR-WORLD-KENYA APP
## Project Description
This is a Rails API for an online car showroom where one can view, purchase, and sell a car. It has the following resources:
- Cars
- Users
- ShowRoom
- Reviews ( which is the joint table for Cars and Users)

## Requirements
To use this API, you must have:
- ruby -v 2.7.4
- rails -v 7.0.4.3
## Project SetUP
To use this project, just click on the deployment link:. Alternatively, follow the these steps:
1. Clone the repository
   git clone https://github.com/DKarimi90/motor-world-kenya for rails backend API.
   git clone https://github.com/DKarimi90/mota-world for the react frontend of the project.
2. Run bundle install to install the dependencies
3. Set up the database;
   rails db:migrate
   rails db:seed
4. Start the server
   rails server
Once the server is up and running, you should be able to access the API at `https://localhost:3000`.
## Models
This API has the following models:
### User
A `User` has many `reviews` and also has many `cars`s through `reviews`.
### Car
 A `Car` belongs to a `showroom`, has many reviews and also has many users through `reviews`.
### ShowRoom
A `ShowRoom` has many `cars`.
### Review
A `Review` belongs to a `car` and also belongs to a `user`.
## Routes
- This API has the following routes:
### GET/cars
- Returns a list of all cars
### GET/cars/:id
- Returns a specific car
### POST/cars
- Create a new car
### PUT/cars/:id
- Updating the details of a specific car
### DELETE/cars/:id
- Deleting a specific car
### GET/reviews
- Getting a list of all reviews
### POST/reviews
- Creating a review
### DELETE/review/:id
- Deleting a specific review
### GET/users
- Getting a list of all users
## Authors
- Esther Musyoka
- Dennis Taiti
- Davis Kimwole
- David Mwai
## License
This project is under MIT License