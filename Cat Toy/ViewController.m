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
    NSURL *soundURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Cat" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &soundID);
}

- (IBAction)pokeTheCat:(id)sender {
    self.catLabel.hidden = NO;
    AudioServicesPlaySystemSound(soundID);
    [NSTimer scheduledTimerWithTimeInterval:1.2 target:self selector:@selector(hideLabel) userInfo:nil repeats:NO];
}

-(void)hideLabel {
    self.catLabel.hidden = YES;
}

@end
