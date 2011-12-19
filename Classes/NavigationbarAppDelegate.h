//
//  NavigationbarAppDelegate.h
//  Navigationbar
//
//  Created by Xubing Zhang on 11-12-19.
//  Copyright 2011 Ad-Sage. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NavigationbarAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UINavigationController *navController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

