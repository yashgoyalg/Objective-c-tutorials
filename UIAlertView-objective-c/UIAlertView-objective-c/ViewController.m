//
//  ViewController.m
//  UIAlertView-objective-c
//
//  Created by SwordMac32 on 12/05/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)btn:(UIButton *)sender {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Congratulation!!!!!" message:@"You Won the Match..." preferredStyle:UIAlertControllerStyleAlert];
    
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"Thank You" style:UIAlertActionStyleDestructive
                      handler:^(UIAlertAction *action)
                      {
                        [self.navigationController popViewControllerAnimated:YES];
                      }];
    
        [alertController addAction:cancelAction];
        [alertController addAction:okAction];
        [self presentViewController:alertController animated:YES completion:nil];
}
@end
