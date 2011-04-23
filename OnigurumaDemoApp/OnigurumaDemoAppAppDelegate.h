//
//  OnigurumaDemoAppAppDelegate.h
//  OnigurumaDemoApp
//
//  Created by Fabio Akita on 4/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class OnigurumaDemoAppViewController;

@interface OnigurumaDemoAppAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet OnigurumaDemoAppViewController *viewController;

@end
