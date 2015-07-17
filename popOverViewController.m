//
//  d.m
//  
//
//  Created by Halston van der Sluys on 6/24/15.
//
//

#import "popOverViewController.h"
#import "Parse/Parse.h"
@interface popOverViewController ()

@end

@implementation popOverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    /* PFObject *lunchObject = [PFObject objectWithClassName:@"Schedule"];
     lunchObject[@"Type"] = @"Normal";
     [lunchObject saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
     if (succeeded) {
     // The object has been saved.
     } else {
     // There was a problem, check error.description
     }
     }];*/
    
    PFQuery *Textquery = [PFQuery queryWithClassName:@"LunchText"];
    [Textquery getObjectInBackgroundWithId:@"TyiebjkJH8" block:^(PFObject *lunchTextObject, NSError *error) {
        // Do something with the returned PFObject in the gameScore variable.
        NSLog(@"%@", lunchTextObject);
        
        NSString *lunchString = [lunchTextObject objectForKey:@"Text"] ;
        
        _lunchText.text = lunchString;
        [_lunchText setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:15]];
        //[_lunchText setFont:[UIFont systemFontOfSize:22]];
        //[timedisplayLabel setFont:[UIFont fontWithName:@"digital-7" size:60]];
    }];
    
    PFQuery *scheduleQuery = [PFQuery queryWithClassName:@"Schedule"];
    [scheduleQuery getObjectInBackgroundWithId:@"wBRDokk7yt" block:^(PFObject *scheduleObject, NSError *error) {
        // Do something with the returned PFObject in the gameScore variable.
        NSLog(@"%@", scheduleObject);
        
        NSString *scheduleString = [scheduleObject objectForKey:@"Type"] ;
        
        if([scheduleString isEqualToString:@"Normal"]){
            _clcText.text = @"0 period times";
            _period1Text.text = @"Enter period times here";
            _period2Text.text = @"Enter period times here";
            _period3Text.text = @"Enter period times here";
            _lunchAText.text = @"Enter period times here";
            _lunchBtext.text = @"Enter period times here";
            _lunchCText.text = @"Enter period times here";
            _lunchDText.text = @"Enter period times here";
            _period4Text.text = @"Period 4 - 12:46-2:03";
          
        }
        else if ([scheduleString isEqualToString:@"enter sceduale"]){
            _clcText.text = @"No CLC";
            _period1Text.text = @"Enter period times here";
            _period2Text.text = @"Enter period times here";
            _period3Text.text = @"Enter period times here";
            _lunchAText.text = @"Enter period times here";
            _lunchBtext.text = @"Enter period times here";
            _lunchCText.text = @"Enter period times here";
            _lunchDText.text = @"Enter period times here";
            _period4Text.text = @"Enter period times here";
          
        }
        else if ([scheduleString isEqualToString:@"enter sceduale"]){
            _clcText.text = @"No CLC";
            _period1Text.text = @"Enter period times here";
            _period2Text.text = @"Enter period times here";
            _period3Text.text = @"Enter period times here";
            _lunchAText.text = @"Enter period times here";
            _lunchBtext.text = @"Enter period times here";
            _lunchCText.text = @"Enter period times here";
            _lunchDText.text = @"Enter period times here";
            _period4Text.text = @"Enter period times here";
            
        }
        else if ([scheduleString isEqualToString:@"Half day"]){
            _clcText.text = @"Enter period times here";
            _period1Text.text = @"Enter period times here";
            _period2Text.text = @"Enter period times here";
            _period3Text.text = @"Enter period times here";
            _lunchAText.text = @"Enter period times here";
            _lunchBtext.text = @"Enter period times here";
            _lunchCText.text = @"Enter period times here";
            _lunchDText.text = @"Enter period times here";
            _period4Text.text = @"Enter period times here";
        
        }
        else{
            _clcText.text = @"";
            _period1Text.text = @"";
            _period2Text.text = @"";
            _period3Text.text = @"";
            _lunchAText.text = @"";
            _lunchBtext.text = @"";
            _lunchCText.text = @"";
            _lunchDText.text = @"";
            _period4Text.text = @"";
            
        }
        
    }];
    
    
    if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone){
        if ([ [ UIScreen mainScreen ] bounds ].size.height == 568){
            
            
        }
        else{
            NSLog(@"Else");
            self.homepageButton.center = CGPointMake( [[UIScreen mainScreen ] bounds ].size.width/2, 450);
            _scheduleText.hidden = YES;
            _clcText.hidden = YES;
            _period1Text.hidden = YES;
            _period2Text.hidden = YES;
            _period3Text.hidden = YES;
            _lunchAText.hidden = YES;
            _lunchBtext.hidden = YES;
            _lunchCText.hidden = YES;
            _lunchDText.hidden = YES;
            _period4Text.hidden = YES;
            
        }
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
