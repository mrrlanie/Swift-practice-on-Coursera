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
        print("onr")
        return UserProtocol.self as! UserProtocol
      }
      
      func user(with userID: GenericIdentifier<UserProtocol>) -> UserProtocol? {
        return UserProtocol.self as! UserProtocol
      }
      
      func findUsers(by searchString: String) -> [UserProtocol] {
        print("onr")
          return UserProtocol.self as! [UserProtocol]
      }
      
      func follow(_ userIDToFollow: GenericIdentifier<UserProtocol>) -> Bool {
        print("onr")
          return false
      }
      
      func unfollow(_ userIDToUnfollow: GenericIdentifier<UserProtocol>) -> Bool {
        print("onr")
          return false
      }
      
      func usersFollowingUser(with userID: GenericIdentifier<UserProtocol>) -> [UserProtocol]? {
        print("onr")
          return UserProtocol.self as! [UserProtocol]
      }
      
      func usersFollowedByUser(with userID: GenericIdentifier<UserProtocol>) -> [UserProtocol]? {
        print("onr")
          return UserProtocol.self as! [UserProtocol]
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
