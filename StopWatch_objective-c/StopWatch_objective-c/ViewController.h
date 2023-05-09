//
//  ViewController.h
//  StopWatch_objective-c
//
//  Created by SwordMac32 on 08/05/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    NSTimer *timer;
    int mili;
    int sec;
    int min;
    int micro;
    
}

@property (strong, nonatomic) IBOutlet UILabel *lblmin;
@property (strong, nonatomic) IBOutlet UILabel *lblsec;
@property (strong, nonatomic) IBOutlet UILabel *lblmili;
@property (strong, nonatomic) IBOutlet UILabel *lblmicro;

- (IBAction)start:(UIButton *)sender;
- (IBAction)stop:(UIButton *)sender;
- (IBAction)split:(UIButton *)sender;
- (IBAction)reset:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UITableView *tableview;

@property(strong, nonatomic)NSMutableArray *arrdata;
@property(strong, nonatomic)NSString *strmili;
@property(strong, nonatomic)NSString *strsec;
@property(strong, nonatomic)NSString *strmin;
@property(strong, nonatomic)NSString *strmicro;
@property(strong, nonatomic)NSString *strhistory;

@end

