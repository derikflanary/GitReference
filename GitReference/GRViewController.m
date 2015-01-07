//
//  GRViewController.m
//  GitReference
//
//  Created by Derik Flanary on 1/6/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "GRViewController.h"

static CGFloat margin = 20;
static CGFloat width = 300;
static CGFloat textHeight = 20;
static CGFloat topMargin = 5;


@interface GRViewController ()

@end

@implementation GRViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIScrollView *myScrollView= [[UIScrollView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height - 20)];
    [self.view addSubview:myScrollView];
    
    self.title = @"My Git Reference App";
    
    
    //created a title
    
    
    
    
  //Created arrays of command names and statuses to be looped into existance
    
    NSArray *theCommands = @[@"git status", @"git diff", @"git add", @"git commit", @"git push Origin _branch_", @"git log", @"git comment --amend", @"git clone", @"git help", @"git remote", @"cd"];
    
    NSArray *theDefinitions = @[@"Shows changed files", @"Shows actual changes", @"Adds changed files to the commit", @"Commits the changes", @"Pushes commits to the branch named _branch_", @"Displays the progress log", @"Re-enter last commit message", @"copy a repository", @"explains different git commands", @"connect to a remote repository", @"navigate to a local directory"];
    
    
    NSDictionary *gitCommandsAndDefs = @{
                                         @"git status" : @"Shows changed files",
                                         @"git diff" : @"Shows actual changes",
                                         @"git add" : @"Adds changed files to the commit",
                                         @"git commit" : @"Commits the changes",
                                         @"git push Origin _branch_" : @"Pushes commits to branch named _branch_",
                                         @"git log" : @"Displays the progress log",
                                         @"git comment --amend" : @"Re-enter last commit message",
                                         
                                         };
    
    
    
    //for (id key in gitCommandsAndDefs){
    for (NSString *command in theCommands) {
        //NSString *command = key;
        //NSString *definition = gitCommandsAndDefs[key];
        
        UILabel *gitCommand = [[UILabel alloc] initWithFrame:CGRectMake(margin, topMargin, width, textHeight)];
        gitCommand.text = command;
        gitCommand.font = [UIFont boldSystemFontOfSize:18];
        gitCommand.font = [UIFont fontWithName:@"HelveticaNeue-CondensedBlack" size:18];
        [myScrollView addSubview:gitCommand];
        
        topMargin = topMargin + 50;
        
    }
    
    topMargin = 25;
    
    for (NSString *definition in theDefinitions){
        UILabel *gitDefinition = [[UILabel alloc] initWithFrame:CGRectMake(margin, topMargin, width, textHeight)];
        gitDefinition.text = definition;
        gitDefinition.font = [UIFont boldSystemFontOfSize:13];
        [myScrollView addSubview:gitDefinition];
        
        topMargin = topMargin + 50;
        
        
    }
    myScrollView.contentSize = CGSizeMake(self.view.frame.size.width, topMargin);
}
//
//- (NSArray *)gitCommands {
//    
//    return @[@{Command: @"git status", Reference: @": shows changed files"},
//             @{Command: @"git diff", Reference: @": shows actual changes"},
//             @{Command: @"git add .", Reference: @": adds changed files to the commit"},
//             @{Command: @"git commit -m \"notes\"", Reference: @": commits the changes"},
//             @{Command: @"git push origin _branch_", Reference: @": pushes commits to branch named _branch_"},
//             @{Command: @"git log", Reference: @": displays progress log"},
//             @{Command: @"git comment --amend", Reference: @": re-enter last commit message"}
//             ];
//    
//}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
