//
//  AppDelegate.m
//  DQM_IOSBaseKit
//
//  Created by 漂读网 on 2019/1/5.
//  Copyright © 2019 漂读网. All rights reserved.
//

#import "AppDelegate.h"
#import "IQKeyboardManager.h"
#import "YYFPSLabel.h"
#import "DQMTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  
  /*配置键盘*/
  IQKeyboardManager *manager = [IQKeyboardManager sharedManager];
  manager.enable = YES;//    控制整个功能是否启用。
  manager.overrideKeyboardAppearance = YES;
  manager.shouldResignOnTouchOutside = YES;//控制点击背景是否收起键盘
  manager.enableAutoToolbar = YES;//控制是否显示键盘上的工具条。
  manager.keyboardDistanceFromTextField = 10.0f; // 输入框距离键盘的距离
  manager.toolbarDoneBarButtonItemText = @"完成";// 将英文done换成中文
  
  self.window.rootViewController = [[DQMTabBarController alloc] init];
  [self.window makeKeyAndVisible];
  
  [self.window addSubview:[[YYFPSLabel alloc] initWithFrame:CGRectMake(61, STATUS_BAR_HEIGHT, 0, 0)]];
  
  
  return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
  // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
  // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
  // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
  // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
  // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
  // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
  // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
