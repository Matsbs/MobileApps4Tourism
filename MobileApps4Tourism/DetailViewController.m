//
//  DetailViewController.m
//  MobileApps4Tourism
//
//  Created by Mats Sandvoll on 18.09.13.
//  Copyright (c) 2013 Mats Sandvoll. All rights reserved.
//

#import "DetailViewController.h"
#import "QuartzCore/QuartzCore.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.title = self.attraction.name;
    
    self.imageView = [[UIImageView alloc] initWithImage:self.attraction.image];
    self.imageView.frame = CGRectMake(30, 80, 250, 150);
    [self.view addSubview:self.imageView];
    
    self.imageView.layer.cornerRadius = 5.0;
    self.imageView.layer.masksToBounds = YES;
    self.imageView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.imageView.layer.borderWidth = 1.0;
    
    self.textView = [[UITextView alloc] initWithFrame:CGRectMake(30, 300, 260, 200)];
    self.textView.text = self.attraction.description;
    [self.view addSubview:self.textView];
   
    self.textView.editable = NO;
    self.textView.scrollEnabled = YES;
    self.textView.font = [UIFont fontWithName:@"Helvetica" size:14];
    
    UIBarButtonItem *newButton = [[UIBarButtonItem alloc] initWithTitle:@"Map" style:UIBarButtonItemStylePlain target:self action:@selector(mapClicked:)] ;
    self.navigationItem.rightBarButtonItem = newButton;
}
-(IBAction) mapClicked:(id)sender{
    MapViewController *mapView = [[MapViewController alloc] init];
    [self.navigationController pushViewController:mapView animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
