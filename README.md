# Makersbnb

## Project Description

Create a clone of the Airbnb website in Ruby. This is a group project focused on pair programming, delivering the MVP and utilizing XP principles.

## Tech Stack:

- [Ruby]
- [Sinatra](http://sinatrarb.com/) Sinatra is a DSL for quickly creating web. applications in Ruby with minimal effort.
- [PostgreSQL](https://www.postgresql.org/) Open Source Relational Database
- [RSpec](https://rspec.info/) Behaviour Driven.
- [Capybara](https://github.com/teamcapybara/capybara) Capybara helps you test web applications by simulating how a real user would interact with your app.
  Development for Ruby. **TDD**.
- [Rubocop](https://github.com/rubocop-hq/rubocop) RuboCop is a Ruby static code analyzer (a.k.a. linter) and code formatter.
- [Bootstrap](https://getbootstrap.com/) & CSS for styling.




## User Stories

```

- Any signed-up user can list a new space.

As a user,
So I can have an account,
I am able to sign up.

As a user,
So I can interact with the website,
I am able to log in.

As a user,
So I can create a new listing,
I am able to list a new space.


```
```

- Users can list multiple spaces.

As a user,
So I can advertise multiple spaces,
I am able to list multiple spaces.

```

```

- Users should be able to name their space, provide a short description of the space, and a price per night.

As a user,
So I can name my space,
I can give my space a name.

As a user,
So that I can advertise my space,
I can write a short description for my space.

As a user,
So that others know how much my space costs,
I can give it a price per night.

```
```

- Users should be able to offer a range of dates where their space is available.

As a user,
So I can show when the space is available,
I want to make the space available to book over a range of dates.

```
```

- Any signed-up user can request to hire any space for one night, and this should be approved by the user that owns that space.

As a user,
So that I can rent a space,
I need to be able to request the property on a certain date.

As a user,
So that I can rent my space,
I need to be able to see my requests and approve them.

```

```

- Nights for which a space has already been booked should not be available for users to book that space.

As a user,
So that a space can't be double booked,
I shouldn't be able to book a space on those dates


```



```

- Until a user has confirmed a booking request, that space can still be booked for that night.

As a user,
So that I can decide who books the space,
My space is still available to book until I have confirmed a request.

```








```

- Extras

As a user,
so i can book an ad,
I am able to log in.

As a user,
I can view rooms.

```

## Database

`USER` table:

| field | type |
| --- | --- |
| USER ID | PRIMARY SERIAL ID |
| EMAIL | VARCHAR(200) |
| PASSWORD | VARCHAR(60) |
| USERNAME | VARCHAR(100) |
| REAL NAME | VARCHAR(100) |

`SPACE ADVERTISMENT` table:

| field | type |
| --- | --- |
| SPACE ID | PRIMARY SERIAL ID |
| USER ID (host) | VARCHAR(100) (FOREIGN KEY) |
| NAME OF SPACE | VARCHAR(100) |
| DESCRIPTION | VARCHAR(250) |
| PRICE | Integer |
| DATES AVAILABLE | VARCHAR |


`CONFIRMED BOOKING` table:

| field | type |
| --- | --- |
| ID | PRIMARY SERIAL ID |
| USER ID (guest) | VARCHAR(100) (FOREIGN KEY)  |
| SPACE ID  | (FOREIGN KEY) |
| DATE OF BOOKING | DATE |



## Models

| class | methods |
| --- | --- |
| user | @spaces |
| | .log_in	 |
| | .sign_up |

| class | methods |
| --- | --- |
| Space | @name |
| | .add_space(name, description, price, dates_available) |
| | .view_spaces |

| class | methods |
| --- | --- |
| Booking | .book_space(name, date) |
| | .view_book_space |
| | @price |

| class | methods |
| --- | --- |
| Request | .see_requests(bookings?) |
| | .approve_request |
| | .decline_request |
| | ._update_dates_available |
