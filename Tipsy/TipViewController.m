//
//  TipViewController.m
//  Tipsy
//
//  Created by Jake Torres on 6/14/22.
//

#import "TipViewController.h"

@interface TipViewController ()
    @property (weak, nonatomic) IBOutlet UISegmentedControl *tipSegCtrl;
    @property (weak, nonatomic) IBOutlet UITextField *tipField;
    @property (weak, nonatomic) IBOutlet UILabel *tipLabel;
    @property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@end

@implementation TipViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)onTap:(id)sender {
    NSLog(@"Tapped");
    [self.view endEditing:true];
    
}

- (IBAction)updateTotal:(id)sender {
    double bill = [self.tipField.text doubleValue];
    double tips[] = {0.15, 0.18, 0.20};
    double selectedPercentage = tips[self.tipSegCtrl.selectedSegmentIndex];
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", bill * selectedPercentage];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", bill * selectedPercentage + bill];
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
