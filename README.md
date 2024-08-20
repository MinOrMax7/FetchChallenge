# FetchChallenge

FetchChallenge is a  simple app that fetches data of meals and display the data on UI.

## Installation

Download or clone a git repostory and open the project using Xcode. Don't foget to update to Xcode to the latest version.

## Design

It is a simple two views of app that is built on MVC structure. The Models contains a Meal struct that represents a single Meal Dish.

View layers is responsible for display the fetched data through API and users interaction.

Controller contains api function to fetch data and filter data.

The app's logic: API fetching data, filter data, display data.

performence considerations: cached data in case of unstable network and faster data displaying, lazy loading to reduce memory issues.

I used asynchronous function to fetch data through JSON file. But the JSON data structure is really bad. And I hard code to filter the results. Definitely we should place the ingredients and measurement inside a array, instead using single pair values to represent one property. 

I didn't implement image cache and data cache, ideally, I can implement cached data so that we don't need call api call everytime when we need data. 

For performence issues, I should use List to display each dessert as a cell. But there is a external bug in Swift that List view doesn't work well with asyncImage. List view utilizes lazy loading which helps us to reduce memory usage. 