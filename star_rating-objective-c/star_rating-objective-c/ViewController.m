//
//  ViewController.m
//  star_rating-objective-c
//
//  Created by SwordMac32 on 08/05/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)btn_act:(UIButton *)sender {
    NSInteger store= sender.tag;
    for (UIButton *btn in _btn_out){
        if(btn.tag<=store){
            [btn setTitle:@"🌟" forState:UIControlStateNormal];
        }
        else{
            [btn setTitle:@"✩" forState:UIControlStateNormal];
        }
    }
}
@end
