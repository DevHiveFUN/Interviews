
# Test Application with posts

A test task to create a part of the application from scratch. 

## Goal

### 1️⃣ Main task

Implement a Flutter application that should show the list of posts with comments (see the API details section below). The home screen must have a clickable list of posts and the name of the current user on the top (*user with id == 1 by default*). Clicking a cell of the list with posts should redirect the user to the next view controller with the list of post comments. 

<img src="https://github.com/DevHiveFUN/Interviews/blob/main/Strong%20Junior,%20Middle%20Flutter%20Application%20Developer/Assets/general.png" width="36%">

### 2️⃣ Bonus task

Add a button on the main screen (right top corner, icon for it you can find in the Assets folder) that should open a clickable list of the users. When a specific user is selected - the app should close the screen with the list of users and update the list of posts by the selected user.

<img src="https://github.com/DevHiveFUN/Interviews/blob/main/Strong%20Junior,%20Middle%20Flutter%20Application%20Developer/Assets/bonus.png" width="50%">

### 3️⃣ Ninja task

Integrate Storage to cache the data (posts, comments, users). 
And provide a way to use the app in offline mode.

## Main requirements
- App should works the same way for both platfroms iOS and Android.
- App architecture is up to you (MVC, MVP, MVVM, etc.).
- **Bonus** and **Ninja** tasks aren’t required, it’s up to you.

#### 🌐 API Details
- A list of users: https://jsonplaceholder.typicode.com/users
- A list of posts: https://jsonplaceholder.typicode.com/posts
- A list of posts by the user ID: https://jsonplaceholder.typicode.com/posts?userId=1 
- A list of users: https://jsonplaceholder.typicode.com/comments

###### 🍀 Good luck! 
