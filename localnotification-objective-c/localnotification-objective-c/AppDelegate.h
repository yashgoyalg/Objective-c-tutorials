//
//  AppDelegate.h
//  localnotification-objective-c
//
//  Created by SwordMac32 on 10/05/23.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import <UserNotifications/UserNotifications.h>
@interface AppDelegate : UIResponder <UIApplicationDelegate,UNUserNotificationCenterDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

