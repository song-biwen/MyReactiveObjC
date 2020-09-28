//
//  AppDelegate.m
//  MyReactiveObjC
//
//  Created by LongTu Qi on 2020/9/28.
//

#import "AppDelegate.h"
#import "UViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[UViewController alloc] init];
    [self.window makeKeyAndVisible];
    return YES;
}


@end
