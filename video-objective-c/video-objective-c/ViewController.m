//
//  ViewController.m
//  video-objective-c
//
//  Created by SwordMac32 on 08/05/23.
//

#import "ViewController.h"
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()
{
    AVPlayer *player;
    AVAudioPlayer *player1;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do  any additional setup after loading the view.
}


- (IBAction)btnaudio:(id)sender {
    
    //************code for audio start!******************
    
    NSString *strpath1 = [[NSBundle mainBundle]pathForResource:@"Dhokha" ofType: @"mp3"];
    NSURL *url1 = [NSURL URLWithString:strpath1];
    
    player1=[[AVAudioPlayer alloc]initWithContentsOfURL:url1 error:nil];
    
    //player1.volume= 10.0; //for increasaeing the volume of the audio!!
    
    //for playing the audio
    [player1 play];
    
    //************code for audio end!******************
    
    
    //************code for video start!******************
    
    NSString *strpath = [[NSBundle mainBundle]pathForResource:@"demo" ofType:@"mp4"];
    NSURL *url = [NSURL fileURLWithPath:strpath];
    
    AVPlayerItem *item= [AVPlayerItem playerItemWithURL:url];
    player = [AVPlayer playerWithPlayerItem:item];
    //player.volume = 20.0;
    
    AVPlayerLayer *layer1 = [AVPlayerLayer playerLayerWithPlayer:player];
    layer1.videoGravity = AVLayerVideoGravityResizeAspectFill;
    layer1.frame = _videoview.layer.bounds;
    
    [_videoview.layer addSublayer:layer1];
    [player play];
    
    //************code for audio end!******************
}
@end
