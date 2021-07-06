//
//  AppDelegate.m
//  Lec29HWObjC
//
//  Created by badyi on 05.07.2021.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "DataSourceService.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    ViewController *viewController = [[ViewController alloc] init];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    DataSourceService *dataSource = [[DataSourceService alloc] init];
    viewController.dataSource = dataSource;
    
    self.window.rootViewController = viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
