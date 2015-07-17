//
//  SocialViewController.m
//  
//
//  Created by Halston van der Sluys on 7/2/15.
//
//

#import "SocialViewController.h"

@interface SocialViewController ()

@end

@implementation SocialViewController

- (IBAction)twitterPresed:(id)sender {
    
    NSURL *urlApp = [NSURL URLWithString: [NSString stringWithFormat:@"%@", @"twitter:///user?screen_name=JDCHS"]];
    
    if([[UIApplication sharedApplication] canOpenURL:urlApp]){
        
        [[UIApplication sharedApplication] openURL:urlApp];
        
    }
    else{
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/JDCHS"]];
    }
    
}

- (IBAction)facebookPressed:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.facebook.com/JuanDiegoCHS"]];
}
- (IBAction)phonePressed:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"Tel:(801)984-7650"]];
}
- (IBAction)emailPressed:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"mailto: Techhelp@skaggscatholiccenter.org"]];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//

@end
