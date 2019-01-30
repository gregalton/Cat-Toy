//
//  ViewController.m
//  Cat Toy
//
//  Created by Greg Alton on 1/30/19.
//  Copyright © 2019 Greg Alton. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *catLabel;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.catLabel.hidden = YES;
    
    NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"];
    NSURL *soundURL = [NSURL fileURLWithPath:soundPath];
    self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:soundURL
                                                            error:nil];
    self.player.volume = 0.05;
}

- (IBAction)pokeTheCat:(id)sender {
    self.catLabel.hidden = NO;
    [self.player play];
    [NSTimer scheduledTimerWithTimeInterval:1.2 target:self selector:@selector(hideLabel) userInfo:nil repeats:NO];
}

-(void)hideLabel {
    self.catLabel.hidden = YES;
}

@end
