//
//  AppDelegate.h
//  Scrollview-objective-c
//
//  Created by SwordMac32 on 09/05/23.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

