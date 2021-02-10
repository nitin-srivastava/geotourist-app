# Geotourist App

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Ruby
You must have Ruby version `2.7.2`. Use `rbenv` or `rvm` to install it. I prefer `rbenv` over `rvm`. You can check out, on how to install [rbenv](https://github.com/rbenv/rbenv).

### Rails
This app is developed on `rails -v 6.0.3.4`. See the Project setup instruction to install.

### Postgresql
This app is using Postgres database. If not installed, one can look into their official documentation [here](https://www.postgresql.org/download/) and follow the steps as given.

If you are using MacOS and love commands then run below lines
```
brew install postgresql
brew services start postgresql
```
### Redis Server
If you don't have a Redis server running yet, install it for your platform of choice:
#### Mac OS X

Make sure you have brew installed.
```cassandraql
$ brew update
$ brew install redis
$ brew services start redis
```
#### Ubuntu
```
$ sudo apt install redis-server
$ sudo service redis-server restart
```

### Git
Make sure you have git installed on your system, if you haven't, just refer this [How to install Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).

### Test
#### Rspec
I have used `rspec` for REST API testing. Please note, I didn't write any test cases for GraphQL. Use below command to run the test suits.
```
$ bundle exec rake db:migrate db:test:prepare
$ bundle exec rspec
```
### Simulate CREATE and UPDATE operations on the database
I have added a `lib/schedule.rb` to simulate the below operations on the database.
* The CREATE operation to add a randomly generated view to a tour.
* The UPDATE operation to update a randomly selected user. 

Run the below commands to start the simulators.
```
$ scheduler = Scheduler.new
$ scheduler.start # To start the simulator.
$ scheduler.stop # To stop the simulator.
```

### Available APIs
This app has two APIs.
1. REST API
2. GraphQL API

#### 1. REST API
The namespace `/api/v1/` is given for REST api. To call this REST api on development from simulator use path `http://localhost:3000/api/v1/`

Available endpoints are:
* Update User
```
  PUT http://localhost:3000/api/v1/users/:id
  # body params
  "user": {
    "name": "Test User",
    "email": "test.user@example.com"  
  }
```
* Update Tour
```
  PUT http://localhost:3000/api/v1/tours/:id
  # body params
  "tour": {
    "name": "Test Tour",
    "description": "Test Tour Description",
    "user_id": "1"
  }
```
* Update Point
```
  PUT http://localhost:3000/api/v1/points/:id
  # body params
  "point": {
    "name": "Test Point",
    "description": "Test Point Description",
    "tour_id": "10",
    "latitude": "latitude value",
    "longitude": "longitude value"
  }
```
* Create Visit
```
  POST http://localhost:3000/api/v1/visits
  # body params
  "visit": {
    "point_id": "100"
  }
```

* Create Views
```
  POST http://localhost:3000/api/v1/views
  # body params
  "view": {
    "user_id": "1",
    "tour_id": "10",
    "point_id": "100",
    "latitude": "latitude value",
    "longitude": "longitude value"
  }
```

* Update Views
```
  PUT http://localhost:3000/api/v1/views/:id
  # body params
  "view": {
    "user_id": "1",
    "tour_id": "10",
    "point_id": "100",
    "latitude": "latitude value",
    "longitude": "longitude value"
  }
```
#### 2. GraphQL API
The namespace `/api/v2/` is given for GraphQL api. To use this GraphQL api, open your browser and go to `http://localhost:3000/api/v2/graphiql`

We have defined a couple for mutations and queries for User, Tour and other entities.

* User mutations and queries
  - createUser - mutations
```
mutation {
  createUser(input: {
      name: "Test User"
      email: "test.user@example.com"
    }) {
    user {
      id
      name
      email
      }
    }
}
```
  - updateUser - mutations
```
mutation {
  updateUser(input: {
    id: "101"
    attributes: {
     	name: "Updated User"
    	email: "updated.user@example.com" 
    }}) {
    user {
      id
      name
      email
      }
    }
}
```
  - users - query #=> To get all users
```
{
  users {
    id
    name
    email
  }
}
```
  - user - query  #=> get a user by id
```
{
  user(id: "10") {
    id
    name
    email
  }
}
```
* Tour mutations and queries
  - createTour - mutations
```
mutation {
  createTour(input: {
    attributes: {
      name: "Test Tour"
      description: "Some description"
      userId: "10"
  }}) {
    tour {
      id
      name
      description
      user {
        id
        name
        email
      }
    }
  }
}
```
  - updateTour - mutations
```
mutation {
  updateTour(input: {
    id: "20"
    attributes: {
      name: "Test Tour"
      description: "Some description"
      userId: "10"
  }}) {
    tour {
      id
      name
      description
      user {
        id
        name
        email
      }
    }
  }
}
```
  - tours - query #=> To get all tours
```
{
  tours {
    id
    name
    description
    user {
      id
      name
      email
    }
  }
}
```
  - tour - query  #=> get a tour by id
```
{
  tour(id: "10" {
    id
    name
    description
    user {
      id
      name
      email
    }
  }
}
```
* Point mutations and queries
  - createPoint - mutations
```
mutation {
  createPoint(input: {
    attributes: {
      name: "Taj Mahal"
      description: "Symbol of Love"
      fullAddress: "Agra, Uttar Pradesh, India"
      tourId: "1000"
    }
  }) {
    point {
      id
      fullAddress
      tour {
        id
        name
        description
      }
    }
  }
}
```
  - points - query #=> To get all points
```
{
  points {
    id
    name
    description
    fullAddress
    tour {
      id
      name
      description
    }
  }
}
```
  - point - query  #=> get a point by id
```
{
  point(id: "100") {
    id
    name
    description
    fullAddress
    tour {
      id
      name
      description
    }
  }
}
```
* View mutations and queries
  - createView - mutations
```
mutation {
  createView(input: {
    attributes: {
      fullAddress: "Taj Mahal, Agra, Uttar Pradesh, India"
      userId: "100"
      tourId: "1000"
      pointId: "10000"
    }
  }) {
    view {
      id
      fullAddress
      user {
        id
        name
        email
      }
      tour {
        id
        name
        description
      }
      point {
        name
        description
      }
    }
  }
}
```
  - updateView - mutations
```
mutation {
  updateView(input: {
    id: "20"
    attributes: {
      fullAddress: "Taj Mahal, Agra, Uttar Pradesh, India"
      userId: "100"
      tourId: "1000"
      pointId: "10000"
    }
  }) {
    view {
      id
      fullAddress
      user {
        id
        name
        email
      }
      tour {
        id
        name
        description
      }
      point {
        name
        description
      }
    }
  }
}
```
  - views - query #=> To get all views
```
{
  views {
    id
    fullAddress
    user {
      id
      name
      email
    }
    tour {
      id
      name
      description
    }
    point {
      name
      description
    }
  }
}
```
  - view - query  #=> get a view by id
```
{
  view(id: "10" {
    id
    fullAddress
    user {
      id
      name
      email
    }
    tour {
      id
      name
      description
    }
    point {
      name
      description
    }
  }
}
```
* Visit mutation
  - createVisit - mutations
```
mutation {
  createVisit(input: {
    pointId: "101"
  }) {
    visit {
      id
      point {
        name
        description
        fullAddress
      }
    }
  }
}
```
Hope this Readme file will help you to setup the app at your machine.
### Developer
This project design and developed by Nitin Srivastava.