//
//  ViewController.h
//  TableView-obj-c
//
//  Created by SwordMac32 on 03/05/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property(strong, nonatomic)NSMutableArray *arrname;
@property(strong,nonatomic)NSMutableArray *arrsurname;


@end

