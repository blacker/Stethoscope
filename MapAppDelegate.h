//
//  MapAppDelegate.h
//  Map
//
//  Created by Benjamin Lacker on 4/20/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class STFirstViewController;

@interface MapAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    STFirstViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet STFirstViewController *viewController;

@end

