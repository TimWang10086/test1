//
//  ViewController.m
//  test1
//
//  Created by tim wang on 2022/7/27.
//

#import "ViewController.h"
#import "MyGreeterClient.h"
@interface ViewController ()
//问候
@property (weak, nonatomic) IBOutlet UILabel *showLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
//点击
- (IBAction)touch:(id)sender {
   _showLabel.text = [[MyGreeterClient sharedInstance]getGreetingMessage];
}

@end
