# Project plan

The whole project will consist of a number of microservices:

1. Manager -> this service will be responsible for storing, updating and tracking of all products stored in the fridge;
2. Logistic -> will monitor the food storage and keep track of all products' freshness expiration due date;
3. Recogniser -> will parse all new products data to retrieve information on them for the Manager;
4. Adviser -> will provide some insights on how some left-overs can be cooked or used lest they are thrown away unused;

Possible improvements:

1. Calories counter;
2. Extended adviser that keeps track of how much there was of a particular product/food used last time, so that the next time 
it can be bought in a smaller amount or quantity;
3. Calories intake limiter: counts the calories and alerts the user when there is a surge of it;

