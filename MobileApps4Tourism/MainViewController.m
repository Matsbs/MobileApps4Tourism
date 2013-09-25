//
//  MainViewController.m
//  MobileApps4Tourism
//
//  Created by Mats Sandvoll on 18.09.13.
//  Copyright (c) 2013 Mats Sandvoll. All rights reserved.
//

#import "MainViewController.h"
#import "DetailViewController.h"
#import "Spots.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //Init objects
    self.spotsArray = [[NSMutableArray alloc] init];
    
    self.spot = [[Spots alloc] init];
    self.spot.name = @"Vicentine coast";
    self.spot.description = @"The beach is easily reached by using the toll road west of Faro. Vicentine beach is a protected natural park where the high cliffs eroded by the Atlantic into a fantastic shape and sweep to the long sandy strand. Vila Nova de Milfontes is the most attractive resort there, despite the village Almograve and Zambujeira Mar has other best beaches.";
    self.spot.image = [UIImage imageNamed:@"1.png"];
    [self.spotsArray addObject:self.spot];
    
    self.spot = [[Spots alloc] init];
    self.spot.name = @"Algarve";
    self.spot.description = @"Resort in Carvoeiro Algarve is a popular tourist spot in Portugal. Algarve resort is safer than other larger and has a bar complete with live music, and parents can keep an eye on the things that made ​​the children of one of the restaurants located in the outdoor area. Beach at the resort is crowded during the summer, but it paid off with the presence of a remarkable sandy beach.";
    self.spot.image = [UIImage imageNamed:@"2.png"];
    [self.spotsArray addObject:self.spot];
    
    self.spot = [[Spots alloc] init];
    self.spot.name = @"Faro";
    self.spot.description = @"Tavira is located at east of Faro commonly visited by British tourists. Convento da Graca, a 16th-century Pousada which has been renovated very popular because it offers excellent service. You can take the train along the coast as far to the west of Lagos and Vila Real de Santo Antonio on the Spanish border. Sitting beside a long sandy beach cabanas to the opening menu for the departure of a boat trip through the Formosa Ria nature reserve.";
    self.spot.image = [UIImage imageNamed:@"3.png"];
    [self.spotsArray addObject:self.spot];
    
    self.spot = [[Spots alloc] init];
    self.spot.name = @"Sintra";
    self.spot.description = @"A romantic spot of the 19th century who became a favorite tourist. There are a beautiful palace in Sintra Hotels in this area has been renovated to provide modern comfort behind the old world elegance. Here you can enjoy a wonderful trip, with panoramic views, through the wooded hills.";
    self.spot.image = [UIImage imageNamed:@"4.png"];
    [self.spotsArray addObject:self.spot];
    
    self.spot = [[Spots alloc] init];
    self.spot.name = @"Porto";
    self.spot.description = @"Porto is a great city, a combination of quaint shops that sell a lot of corsets, pastry cream, and clodhopping shoes, and a striking modern design, especially Serralves Museum of Contemporary Art and the home of the famous acoustic House of Music.";
    self.spot.image = [UIImage imageNamed:@"5.png"];
    [self.spotsArray addObject:self.spot];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 460) style:UITableViewStylePlain];
    
    self.tableView.rowHeight = 50;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    self.title = @"Attractions";
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.spotsArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    self.spot = [self.spotsArray objectAtIndex:indexPath.row];
    cell.textLabel.text = self.spot.name;
    cell.imageView.image = self.spot.image;
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    DetailViewController *detailView = [[DetailViewController alloc] init];
    detailView.spot = [self.spotsArray objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:detailView animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
