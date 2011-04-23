//
//  OnigurumaDemoAppViewController.h
//  OnigurumaDemoApp
//
//  Created by Fabio Akita on 4/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OnigurumaDemoAppViewController : UIViewController {
    
    UITextField *initialText;
    UITextField *regexPattern;
    UITextView *result;
}
@property (nonatomic, retain) IBOutlet UITextField *initialText;
@property (nonatomic, retain) IBOutlet UITextField *regexPattern;
@property (nonatomic, retain) IBOutlet UITextView *result;


- (IBAction)runRegex:(id)sender;
@end
