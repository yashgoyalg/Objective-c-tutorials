//
//  ViewController.m
//  pdf_display-objective-c
//
//  Created by SwordMac32 on 08/05/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *strpath = [[NSBundle mainBundle]pathForResource:@"ObjC" ofType:@"pdf"];
    NSURL *url = [NSURL URLWithString:strpath];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_webview loadRequest:request];
    [_webview setScalesPageToFit:YES];
    
                // Do any additional setup after loading the view.
}


@end
