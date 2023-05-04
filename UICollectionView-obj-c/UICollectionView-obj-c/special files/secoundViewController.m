//
//  secoundViewController.m
//  UICollectionView-obj-c
//
//  Created by SwordMac32 on 03/05/23.
//

#import "secoundViewController.h"
#import "ViewController.h"
@interface secoundViewController ()

@end

@implementation secoundViewController
@synthesize strimage, imag2;
- (void)viewDidLoad {
    [super viewDidLoad];
    imag2.image= [UIImage imageNamed:strimage];
    
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
