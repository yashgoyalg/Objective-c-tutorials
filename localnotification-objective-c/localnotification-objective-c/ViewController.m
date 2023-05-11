//
//  ViewController.m
//  localnotification-objective-c
//
//  Created by SwordMac32 on 10/05/23.
//

#import "ViewController.h"
#import <UserNotifications/UserNotifications.h>
@interface ViewController ()
{
    BOOL isgrandnotificationacsess;
}
@end

@implementation ViewController
 
- (void)viewDidLoad {
    [super viewDidLoad];
    isgrandnotificationacsess=false;
    
    // Schedule the notification.
    UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
    UNAuthorizationOptions options= UNAuthorizationOptionAlert + UNAuthorizationOptionSound;
    [center requestAuthorizationWithOptions:options completionHandler:^(BOOL granted, NSError * _Nullable error){
        isgrandnotificationacsess = granted;
    }
    ];
}


- (IBAction)btn:(UIButton *)sender {
    if(isgrandnotificationacsess){
        UNUserNotificationCenter *center =[UNUserNotificationCenter currentNotificationCenter];
        
        // Configure the notification's payload.
        UNMutableNotificationContent *mucontent = [[UNMutableNotificationContent alloc]init ];
        mucontent.title = @"Wake up!";
        mucontent.subtitle=@"Yash Goyal";
        mucontent.body=@"Rise and shine! It's morning time!";
        mucontent.sound=[UNNotificationSound defaultSound];
        
        // Deliver the notification in three seconds.
        UNTimeIntervalNotificationTrigger *trigger=[UNTimeIntervalNotificationTrigger triggerWithTimeInterval:3 repeats:NO];
        
        //create the request object:
        UNNotification *request = [UNNotificationRequest requestWithIdentifier:@"MorningAlarm" content:mucontent trigger:trigger];
        
        
        
        [center addNotificationRequest:request withCompletionHandler:nil];
        
    }
}
@end
