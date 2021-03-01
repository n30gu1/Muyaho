//
//  ViewController.m
//  Muyaho
//
//  Created by Seongheon Park on 2021/02/24.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()
@property (nonatomic, strong) AVAudioPlayer* player;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSURL* url = [[NSBundle mainBundle] URLForResource:@"muyaho_sound" withExtension:@"m4a"];
    
    NSError* error = nil;
    
    [self setPlayer:[[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error]];
    
    // If error occurres
    if(!self.player) {
        NSLog(@"Error creating player from asset: %@", error);
    }
}

- (IBAction)onTapMuyaho:(UITapGestureRecognizer *)sender {
    NSLog(@"Muyaho!");
    
    [[self player] stop];
    [[self player] play];
}


@end
