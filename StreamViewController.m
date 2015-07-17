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
    
    PFQuery *query = [PFQuery queryWithClassName:@"Settings"];
    [query getObjectInBackgroundWithId:@"iNe0Z29cBj" block:^(PFObject *myURL, NSError *error) {
        // Do something with the returned PFObject in the gameScore variable.
        NSLog(@"%@", myURL);
        
        //NSString *URLString = [myURL objectForKey:@"LiveFeed"] ;
        NSString *URLString = myURL[@"LiveURL"];
        NSLog(@"String: %@", URLString);
        
        self.webView.delegate = self;
        
        NSString *urlAddress = URLString;
        //Create a URL object.
        NSURL *url = [NSURL URLWithString:urlAddress];
        //URL Requst Object
        NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
        //Load the request in the UIWebView.
        [_webView loadRequest:requestObj];
        
        
        
    }];
    
    
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
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
