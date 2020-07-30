//
//  main.swift
//  FirstCourseFinalTask
//
//  Copyright © 2017 E-Legion. All rights reserved.
//

import Foundation
import FirstCourseFinalTaskChecker


class UsersStorageClass: UsersStorageProtocol{
    
    
    var userArray = [UserInitialData]()
    var followArrae = [(GenericIdentifier<UserProtocol>, GenericIdentifier<UserProtocol>)]()
    var currentUserData: GenericIdentifier<UserProtocol>
    var count: Int = 0
    
    required init?(users: [UserInitialData], followers: [(GenericIdentifier<UserProtocol>, GenericIdentifier<UserProtocol>)], currentUserID: GenericIdentifier<UserProtocol>) {
        self.userArray = users
        self.followArrae = followers
        self.currentUserData = currentUserID
        self.count = userArray.count

    }
    
    func currentUser() -> UserProtocol {
        // return User with current UserData (or current ID)
    }
      
      func user(with userID: GenericIdentifier<UserProtocol>) -> UserProtocol? {
         // return user with userId in-function
      }
      
      func findUsers(by searchString: String) -> [UserProtocol] {
        var counter = 0
        if searchString == userArray[counter].fullName || searchString == userArray[counter].username{
            //return this user with this full or user name
            counter += 1
        }else{
            counter += 1
        }
      
      func follow(_ userIDToFollow: GenericIdentifier<UserProtocol>) -> Bool {
        //return true if in cortage array user id looking like
        //current user = 1, following = 4
        // if (1,4) exist - true
      }
      
      func unfollow(_ userIDToUnfollow: GenericIdentifier<UserProtocol>) -> Bool {
        //same as follow, but if not exist ANY of followers in-func value - true
      }
      
      func usersFollowingUser(with userID: GenericIdentifier<UserProtocol>) -> [UserProtocol]? {
        //return array of ID or NIL
      }
      
      func usersFollowedByUser(with userID: GenericIdentifier<UserProtocol>) -> [UserProtocol]? {
        //return array of ID or NIL
      }
    
    
}

class PostStorageClass: PostsStorageProtocol{
    var postArray = [PostInitialData]()
    var likesArray = [(GenericIdentifier<UserProtocol>, GenericIdentifier<PostProtocol>)]()
    var currentUserData: GenericIdentifier<UserProtocol>
    var count = 0
    
    required init(posts: [PostInitialData], likes: [(GenericIdentifier<UserProtocol>, GenericIdentifier<PostProtocol>)], currentUserID: GenericIdentifier<UserProtocol>) {
        self.currentUserData = currentUserID
        self.postArray = posts
        self.likesArray =  likes
        self.count = postArray.count
    }
    //same like in the USER
    func post(with postID: GenericIdentifier<PostProtocol>) -> PostProtocol? {
        return PostProtocol.self as! PostProtocol
    }
    
    func findPosts(by authorID: GenericIdentifier<UserProtocol>) -> [PostProtocol] {
        return PostProtocol.self as! [PostProtocol]
    }
    
    func findPosts(by searchString: String) -> [PostProtocol] {
        return PostProtocol.self as! [PostProtocol]
    }
    
    func likePost(with postID: GenericIdentifier<PostProtocol>) -> Bool {
        return false
    }
    
    func unlikePost(with postID: GenericIdentifier<PostProtocol>) -> Bool {
        return false
    }
    
    func usersLikedPost(with postID: GenericIdentifier<PostProtocol>) -> [GenericIdentifier<UserProtocol>]? {
        return [GenericIdentifier<UserProtocol>]?.none
    }
    
}

let checker = Checker(usersStorageClass: UsersStorageClass.self,
                      postsStorageClass: PostStorageClass.self)
checker.run()
