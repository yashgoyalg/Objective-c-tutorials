//
//  ViewController.m
//  Audio-obj-c
//
//  Created by SwordMac32 on 05/05/23.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@interface ViewController ()

{
    AVAudioPlayer *player;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    // Do any additional setup after loading the view.
}


- (IBAction)btn:(id)sender {
    NSString *strpath = [[NSBundle mainBundle]pathForResource:@"Dhokha" ofType: @"mp3"];
    NSURL *url = [NSURL URLWithString:strpath];
    
    player=[[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil];
    
    player.volume= 20.0; //for increasaeing the volume of the audio!!
    
    //for playing the audio
    [player play];
}
@end
