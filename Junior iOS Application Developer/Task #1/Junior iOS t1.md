
# Test Application with posts

A test task to create a part of the application from scratch. 

## Goal

### 1️⃣ Main task

Implement an iOS application that should show the list of posts with comments (see the API details section below). The home screen must have a clickable list of posts and the name of the current user on the top (*user with id == 1 by default*). Clicking a cell of the list with posts should redirect the user to the next view controller with the list of post comments. 

<img src="https://github.com/bananaRanger/Interviews/blob/5ef4c600a073266b73c52b0f44d0a5b85ed34d57/Junior%20iOS%20Application%20Developer/Task%20%231/Assets/general.png" width="36%">

### 2️⃣ Bonus task

Add a button on the main screen (right top corner, icon for it you can find in the Assets folder) that should open a clickable list of the users. When a specific user is selected - the app should close the screen with the list of users and update the list of posts by the selected user.

<img src="https://github.com/bananaRanger/Interviews/blob/5ef4c600a073266b73c52b0f44d0a5b85ed34d57/Junior%20iOS%20Application%20Developer/Task%20%231/Assets/bonus.png" width="50%">

### 3️⃣ Ninja task

Integrate CoreData or Realm to cache the data (posts, comments, users).

## Main requirements
- You should use only Swift (UIKit).
- App architecture is up to you (MVC, MVP, MVVM, etc.).
- Use `URLSession` or `Alamofire` for the network layer.
- **Bonus** and **Ninja** tasks aren’t required, it’s up to you.

#### 🌐 API Details
- A list of users: https://jsonplaceholder.typicode.com/users
- A list of posts: https://jsonplaceholder.typicode.com/posts
- A list of posts by the user ID: https://jsonplaceholder.typicode.com/posts?userId=1 
- A list of users: https://jsonplaceholder.typicode.com/comments

###### 🍀 Good luck! 
