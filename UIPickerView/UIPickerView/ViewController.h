//
//  ViewController.h
//  UIPickerView
//
//  Created by SwordMac32 on 04/05/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>
@property (strong, nonatomic)NSMutableArray *arr;
@property (strong,nonatomic)NSMutableArray  *arr1;
@property (strong, nonatomic) IBOutlet UITextField *txt1;
@property (strong, nonatomic) IBOutlet UITextField *txt2;


@end

