//
//  StreamViewController.m
//  
//
//  Created by Halston van der Sluys on 6/24/15.
//
//

#import "StreamViewController.h"
#import "Parse/Parse.h"

@interface StreamViewController ()

@end

@implementation StreamViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _webView.delegate = self;
    NSString *myURLString = @"www.thecube.com/cube/juan-diego-catholic-high-school-draper-utah";
    
  ;
          // Do something with the returned PFObject in the gameScore variable.
    
        //NSString *URLString = [myURL objectForKey:@"LiveFeed"] ;
        
        

    
    


    // Not necessary to do anything here.
    _activityIndicator.startAnimating;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    NSLog(@"Loaded Sucessfully!");
    _activityIndicator.stopAnimating;
    _activityIndicator.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//

@end
