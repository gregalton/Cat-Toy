//
//  AppDelegate.h
//  Cat Toy
//
//  Created by Greg Alton on 1/30/19.
//  Copyright © 2019 Greg Alton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

