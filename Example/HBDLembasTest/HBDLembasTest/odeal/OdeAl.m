NSString * const OdeAlHost			= @"https://ode-al-dev.appspot.com/";
NSString * const OdeAlEndPoint		= @"https://ode-al-dev.appspot.com/OdeAl/";

#import "OdeAl.h"


//==============================================================================
@implementation OdeAl



+(LembasService*)shared{
    static OdeAl *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[OdeAl alloc] init];
        // Do any other initialisation stuff here
    });
    return sharedInstance;
}

-(id)init{

    self = [super init];

    if ( self != nil){
        _projectId  = @"ode-al-dev";
        _host = OdeAlEndPoint;
    }
    return self;
}

@end

@implementation OdeAlObject
-(id)init{

    self = [super init];
    if (self != nil){
        self.service = [OdeAl shared];
    }
    return self;
}


@end

@implementation OdeAlRequest

-(id)initWithDelegate:(id<LembasRequestDelegate>)d{
    
    self = [super initWithDelegate:d];
    
    if (self) {
        self.service = [OdeAl shared];
        host = self.service.host;
    }
    
    return self;
}
@end

@implementation OdeAlResponse
-(id)init{
    
    self = [super init];
    if (self != nil){
        self.   service = [OdeAl shared];
    }
    return self;
}
@end

//==============================================================================

@implementation CustomerAddCreditCardRequest

@synthesize creditCard;
@synthesize storageId;
@synthesize customerKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        		self.creditCard = [[CreditCard alloc] init];

    }
    
    return self;
}

-(void)dealloc{

	creditCard = nil;
	creditCard = nil;
	storageId = nil;
	customerKey = nil;


}

-(CustomerAddCreditCardResponse*)lembasResponse{
    return (CustomerAddCreditCardResponse*)self.response;
}

@end

@implementation CustomerAddCreditCardResponse

@synthesize info;
@synthesize secureUrl;
@synthesize card;



-(void)dealloc{

}

@end
@implementation CustomerFinalizePaymentRequest

@synthesize paymentKey;
@synthesize creditCardKey;
@synthesize latitude;
@synthesize longitude;
@synthesize customerKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	paymentKey = nil;
	creditCardKey = nil;
	customerKey = nil;


}

-(CustomerFinalizePaymentResponse*)lembasResponse{
    return (CustomerFinalizePaymentResponse*)self.response;
}

@end

@implementation CustomerFinalizePaymentResponse

@synthesize info;
@synthesize reason;
@synthesize result;



-(void)dealloc{

}

@end
@implementation CustomerGetCardsRequest

@synthesize customerKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	customerKey = nil;


}

-(CustomerGetCardsResponse*)lembasResponse{
    return (CustomerGetCardsResponse*)self.response;
}

@end

@implementation CustomerGetCardsResponse

@synthesize info;
@synthesize cards;



-(void)dealloc{

}

@end
@implementation CustomerPaymentsRequest

@synthesize customerKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	customerKey = nil;


}

-(CustomerPaymentsResponse*)lembasResponse{
    return (CustomerPaymentsResponse*)self.response;
}

@end

@implementation CustomerPaymentsResponse

@synthesize payments;
@synthesize info;



-(void)dealloc{

}

@end
@implementation CustomerRemoveCardRequest

@synthesize cardKey;
@synthesize customerKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	cardKey = nil;
	customerKey = nil;


}

-(CustomerRemoveCardResponse*)lembasResponse{
    return (CustomerRemoveCardResponse*)self.response;
}

@end

@implementation CustomerRemoveCardResponse

@synthesize info;



-(void)dealloc{

}

@end

@implementation CustomerResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation CustomerUpsertPasswordRequest

@synthesize desiredPassword;
@synthesize oldPassword;
@synthesize customerKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	desiredPassword = nil;
	oldPassword = nil;
	customerKey = nil;


}

-(CustomerUpsertPasswordResponse*)lembasResponse{
    return (CustomerUpsertPasswordResponse*)self.response;
}

@end

@implementation CustomerUpsertPasswordResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation GetCitiesRequest

@synthesize customerKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	customerKey = nil;


}

-(GetCitiesResponse*)lembasResponse{
    return (GetCitiesResponse*)self.response;
}

@end

@implementation GetCitiesResponse

@synthesize cities;
@synthesize info;



-(void)dealloc{

}

@end
@implementation GetNearByRequest

@synthesize lon;
@synthesize radius;
@synthesize lat;
@synthesize district;
@synthesize customerKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	district = nil;
	customerKey = nil;


}

-(GetNearByResponse*)lembasResponse{
    return (GetNearByResponse*)self.response;
}

@end

@implementation GetNearByResponse

@synthesize organisationList;
@synthesize esnafList;
@synthesize info;



-(void)dealloc{

}

@end
@implementation GetPaymentRequest

@synthesize paymentKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	paymentKey = nil;


}

-(GetPaymentResponse*)lembasResponse{
    return (GetPaymentResponse*)self.response;
}

@end

@implementation GetPaymentResponse

@synthesize info;
@synthesize payment;
@synthesize merchant;



-(void)dealloc{

}

@end
@implementation PushRegisterRequest

@synthesize deviceKey;
@synthesize customerKey;
@synthesize token;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	deviceKey = nil;
	customerKey = nil;
	token = nil;


}

-(PushRegisterResponse*)lembasResponse{
    return (PushRegisterResponse*)self.response;
}

@end

@implementation PushRegisterResponse

@synthesize type;
@synthesize info;



-(void)dealloc{

}

@end
@implementation AddDocumentRequest

@synthesize merchantKey;
@synthesize start;
@synthesize requestKey;
@synthesize stop;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	requestKey = nil;
	stop = nil;


}

-(AddDocumentResponse*)lembasResponse{
    return (AddDocumentResponse*)self.response;
}

@end

@implementation AddDocumentResponse

@synthesize info;
@synthesize requirement;



-(void)dealloc{

}

@end
@implementation GetDocumentsRequest

@synthesize merchantKey;
@synthesize start;
@synthesize stop;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	stop = nil;


}

-(GetDocumentsResponse*)lembasResponse{
    return (GetDocumentsResponse*)self.response;
}

@end

@implementation GetDocumentsResponse

@synthesize documents;
@synthesize info;



-(void)dealloc{

}

@end
@implementation DeleteProductRequest

@synthesize merchantKey;
@synthesize start;
@synthesize stop;
@synthesize productKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	stop = nil;
	productKey = nil;


}

-(DeleteProductResponse*)lembasResponse{
    return (DeleteProductResponse*)self.response;
}

@end

@implementation DeleteProductResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation ProductsRequest

@synthesize merchantKey;
@synthesize start;
@synthesize stop;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	stop = nil;


}

-(ProductsResponse*)lembasResponse{
    return (ProductsResponse*)self.response;
}

@end

@implementation ProductsResponse

@synthesize info;
@synthesize categories;
@synthesize products;



-(void)dealloc{

}

@end
@implementation UpsertProductRequest

@synthesize merchantKey;
@synthesize start;
@synthesize stop;
@synthesize product;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        		self.product = [[Product alloc] init];

    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	stop = nil;
	product = nil;
	product = nil;


}

-(UpsertProductResponse*)lembasResponse{
    return (UpsertProductResponse*)self.response;
}

@end

@implementation UpsertProductResponse

@synthesize productCategory;
@synthesize info;
@synthesize product;



-(void)dealloc{

}

@end
@implementation CancelPaymentRequest

@synthesize merchantKey;
@synthesize start;
@synthesize stop;
@synthesize paymentKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	stop = nil;
	paymentKey = nil;


}

-(CancelPaymentResponse*)lembasResponse{
    return (CancelPaymentResponse*)self.response;
}

@end

@implementation CancelPaymentResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation CustomerAppPaymentRequest

@synthesize merchantKey;
@synthesize start;
@synthesize stop;
@synthesize paymentKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	stop = nil;
	paymentKey = nil;


}

-(CustomerAppPaymentResponse*)lembasResponse{
    return (CustomerAppPaymentResponse*)self.response;
}

@end

@implementation CustomerAppPaymentResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation CustomerPhonePaymentRequest

@synthesize merchantKey;
@synthesize start;
@synthesize stop;
@synthesize paymentKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	stop = nil;
	paymentKey = nil;


}

-(CustomerPhonePaymentResponse*)lembasResponse{
    return (CustomerPhonePaymentResponse*)self.response;
}

@end

@implementation CustomerPhonePaymentResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation FinalizePaymentRequest

@synthesize merchantKey;
@synthesize storeCustomer;
@synthesize start;
@synthesize hash;
@synthesize paymentType;
@synthesize stop;
@synthesize paymentKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	hash = nil;
	stop = nil;
	paymentKey = nil;


}

-(FinalizePaymentResponse*)lembasResponse{
    return (FinalizePaymentResponse*)self.response;
}

@end

@implementation FinalizePaymentResponse

@synthesize dailyTransactionLimit;
@synthesize info;
@synthesize payment;



-(void)dealloc{

}

@end
@implementation InitPaymentRequest

@synthesize latitude;
@synthesize merchantKey;
@synthesize start;
@synthesize stop;
@synthesize longitude;
@synthesize paymentKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	stop = nil;
	paymentKey = nil;


}

-(InitPaymentResponse*)lembasResponse{
    return (InitPaymentResponse*)self.response;
}

@end

@implementation InitPaymentResponse

@synthesize info;
@synthesize paymentGateway;
@synthesize requiresCustomer;
@synthesize challenge;
@synthesize payment;
@synthesize requiresCVV;
@synthesize paymentLimit;



-(void)dealloc{

}

@end
@implementation SendInfoMailRequest

@synthesize email;
@synthesize paymentId;
@synthesize paymenId;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	email = nil;
	paymentId = nil;
	paymenId = nil;


}

-(SendInfoMailResponse*)lembasResponse{
    return (SendInfoMailResponse*)self.response;
}

@end

@implementation SendInfoMailResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation UpdatePaymentRequest

@synthesize customerFirstName;
@synthesize card;
@synthesize merchantKey;
@synthesize amount;
@synthesize cardKey;
@synthesize customerLastName;
@synthesize start;
@synthesize customerPhone;
@synthesize stop;
@synthesize paymentKey;
@synthesize cart;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        		self.card = [[CreditCard alloc] init];
		self.cart = [[Cart alloc] init];

    }
    
    return self;
}

-(void)dealloc{

	customerFirstName = nil;
	card = nil;
	card = nil;
	merchantKey = nil;
	amount = nil;
	cardKey = nil;
	customerLastName = nil;
	start = nil;
	customerPhone = nil;
	stop = nil;
	paymentKey = nil;
	cart = nil;
	cart = nil;


}

-(UpdatePaymentResponse*)lembasResponse{
    return (UpdatePaymentResponse*)self.response;
}

@end

@implementation UpdatePaymentResponse

@synthesize customer;
@synthesize customerHasApp;
@synthesize returningCustomer;
@synthesize customerHasValidCard;
@synthesize info;
@synthesize cards;



-(void)dealloc{

}

@end
@implementation CheckMerchantStatusRequest

@synthesize merchantKey;
@synthesize start;
@synthesize stop;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	stop = nil;


}

-(CheckMerchantStatusResponse*)lembasResponse{
    return (CheckMerchantStatusResponse*)self.response;
}

@end

@implementation CheckMerchantStatusResponse

@synthesize archived;
@synthesize activated;
@synthesize info;
@synthesize suspended;



-(void)dealloc{

}

@end
@implementation DeleteBankInfoRequest

@synthesize merchantKey;
@synthesize start;
@synthesize stop;
@synthesize bankInfoKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	stop = nil;
	bankInfoKey = nil;


}

-(DeleteBankInfoResponse*)lembasResponse{
    return (DeleteBankInfoResponse*)self.response;
}

@end

@implementation DeleteBankInfoResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation GetAlertsRequest

@synthesize merchantKey;
@synthesize start;
@synthesize stop;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	stop = nil;


}

-(GetAlertsResponse*)lembasResponse{
    return (GetAlertsResponse*)self.response;
}

@end

@implementation GetAlertsResponse

@synthesize alerts;
@synthesize info;



-(void)dealloc{

}

@end
@implementation GetMerchantPaymentsRequest

@synthesize index;
@synthesize size;
@synthesize merchantKey;
@synthesize start;
@synthesize stop;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	stop = nil;


}

-(GetMerchantPaymentsResponse*)lembasResponse{
    return (GetMerchantPaymentsResponse*)self.response;
}

@end

@implementation GetMerchantPaymentsResponse

@synthesize payments;
@synthesize info;



-(void)dealloc{

}

@end
@implementation GetPaybacksRequest

@synthesize merchantKey;
@synthesize start;
@synthesize stop;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	stop = nil;


}

-(GetPaybacksResponse*)lembasResponse{
    return (GetPaybacksResponse*)self.response;
}

@end

@implementation GetPaybacksResponse

@synthesize info;
@synthesize paybacks;



-(void)dealloc{

}

@end
@implementation GetTownsRequest

@synthesize provinceId;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	provinceId = nil;


}

-(GetTownsResponse*)lembasResponse{
    return (GetTownsResponse*)self.response;
}

@end

@implementation GetTownsResponse

@synthesize info;
@synthesize towns;



-(void)dealloc{

}

@end
@implementation LogoutRequest

@synthesize merchantKey;
@synthesize start;
@synthesize stop;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	stop = nil;


}

-(LogoutResponse*)lembasResponse{
    return (LogoutResponse*)self.response;
}

@end

@implementation LogoutResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation OrganisationPaymentLocationRequest

@synthesize merchantKey;
@synthesize latitude;
@synthesize start;
@synthesize stop;
@synthesize longitude;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	stop = nil;


}

-(OrganisationPaymentLocationResponse*)lembasResponse{
    return (OrganisationPaymentLocationResponse*)self.response;
}

@end

@implementation OrganisationPaymentLocationResponse

@synthesize info;
@synthesize paymentLocation;



-(void)dealloc{

}

@end
@implementation PaybackForPaymentRequest

@synthesize merchantKey;
@synthesize start;
@synthesize stop;
@synthesize paymentKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	stop = nil;
	paymentKey = nil;


}

-(PaybackForPaymentResponse*)lembasResponse{
    return (PaybackForPaymentResponse*)self.response;
}

@end

@implementation PaybackForPaymentResponse

@synthesize info;
@synthesize paybacks;



-(void)dealloc{

}

@end
@implementation PaybackPaymentRequest

@synthesize merchantKey;
@synthesize start;
@synthesize stop;
@synthesize paymentKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	stop = nil;
	paymentKey = nil;


}

-(PaybackPaymentResponse*)lembasResponse{
    return (PaybackPaymentResponse*)self.response;
}

@end

@implementation PaybackPaymentResponse

@synthesize payback;
@synthesize info;



-(void)dealloc{

}

@end
@implementation PaybacksRequest

@synthesize merchantKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;


}

-(PaybacksResponse*)lembasResponse{
    return (PaybacksResponse*)self.response;
}

@end

@implementation PaybacksResponse

@synthesize info;
@synthesize paybacks;



-(void)dealloc{

}

@end
@implementation PaymentsForPaybackRequest

@synthesize merchantKey;
@synthesize start;
@synthesize stop;
@synthesize paybackKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	stop = nil;
	paybackKey = nil;


}

-(PaymentsForPaybackResponse*)lembasResponse{
    return (PaymentsForPaybackResponse*)self.response;
}

@end

@implementation PaymentsForPaybackResponse

@synthesize info;
@synthesize payments;



-(void)dealloc{

}

@end
@implementation QueryCustomerRequest

@synthesize merchantKey;
@synthesize start;
@synthesize phone;
@synthesize stop;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	phone = nil;
	stop = nil;


}

-(QueryCustomerResponse*)lembasResponse{
    return (QueryCustomerResponse*)self.response;
}

@end

@implementation QueryCustomerResponse

@synthesize customerHasValidCard;
@synthesize returningCustomer;
@synthesize info;
@synthesize customer;
@synthesize customerHasApp;



-(void)dealloc{

}

@end
@implementation RecentPaymentsRequest

@synthesize merchantKey;
@synthesize start;
@synthesize stop;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	stop = nil;


}

-(RecentPaymentsResponse*)lembasResponse{
    return (RecentPaymentsResponse*)self.response;
}

@end

@implementation RecentPaymentsResponse

@synthesize info;
@synthesize payments;



-(void)dealloc{

}

@end
@implementation RefundPaymentRequest

@synthesize merchantKey;
@synthesize start;
@synthesize amount;
@synthesize paymentKey;
@synthesize stop;
@synthesize language;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	amount = nil;
	paymentKey = nil;
	stop = nil;
	language = nil;


}

-(RefundPaymentResponse*)lembasResponse{
    return (RefundPaymentResponse*)self.response;
}

@end

@implementation RefundPaymentResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation UpdateMerchantSecurityRequest

@synthesize name;
@synthesize value;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	name = nil;
	value = nil;


}

-(UpdateMerchantSecurityResponse*)lembasResponse{
    return (UpdateMerchantSecurityResponse*)self.response;
}

@end

@implementation UpdateMerchantSecurityResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation UpdatePasswordRequest

@synthesize merchantKey;
@synthesize desiredPassword;
@synthesize start;
@synthesize oldPassword;
@synthesize stop;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	desiredPassword = nil;
	start = nil;
	oldPassword = nil;
	stop = nil;


}

-(UpdatePasswordResponse*)lembasResponse{
    return (UpdatePasswordResponse*)self.response;
}

@end

@implementation UpdatePasswordResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation UpsertBankInfoRequest

@synthesize info;
@synthesize isActive;
@synthesize merchantKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        		self.info = [[BankInfo alloc] init];

    }
    
    return self;
}

-(void)dealloc{

	info = nil;
	info = nil;
	merchantKey = nil;


}

-(UpsertBankInfoResponse*)lembasResponse{
    return (UpsertBankInfoResponse*)self.response;
}

@end

@implementation UpsertBankInfoResponse

@synthesize bankInfo;
@synthesize info;



-(void)dealloc{

}

@end
@implementation BankInfo
@synthesize city;
@synthesize verified;
@synthesize bank;
@synthesize agency;
@synthesize bankInfoId;
@synthesize owner;
@synthesize account;
@synthesize iban;


-(void)dealloc{

	city = nil;
	bank = nil;
	agency = nil;
	bankInfoId = nil;
	owner = nil;
	account = nil;
	iban = nil;


}

@end
@implementation Cart
@synthesize items;


-(void)dealloc{

	items = nil;


}

@end
@implementation Esnaf
@synthesize city;
@synthesize vergiDairesi;
@synthesize categoryKey1;
@synthesize categoryKey2;
@synthesize monthlyTransactionLimit;
@synthesize madePayment;
@synthesize phone;
@synthesize longitude;
@synthesize balance;
@synthesize operationPaymentAmount;
@synthesize singleTransactionLimit;
@synthesize isMobile;
@synthesize dailyTransactionLimit;
@synthesize paybackType;
@synthesize latitude;
@synthesize vergiNo;
@synthesize receivedPayback;
@synthesize isIndividual;
@synthesize paybackDate;
@synthesize activatedAt;
@synthesize creditScore;
@synthesize name;
@synthesize createdAt;
@synthesize area;
@synthesize operationMonthlySale;
@synthesize contactTckNo;
@synthesize unvan;
@synthesize organisationId;
@synthesize contactFirstName;
@synthesize contactLastName;
@synthesize contactPhone;
@synthesize contactBirthDate;
@synthesize address;
@synthesize isActivated;
@synthesize activeBankInfoKey;
@synthesize commissionRate;


-(void)dealloc{

	city = nil;
	vergiDairesi = nil;
	categoryKey1 = nil;
	categoryKey2 = nil;
	phone = nil;
	vergiNo = nil;
	activatedAt = nil;
	name = nil;
	createdAt = nil;
	area = nil;
	contactTckNo = nil;
	unvan = nil;
	organisationId = nil;
	contactFirstName = nil;
	contactLastName = nil;
	contactPhone = nil;
	contactBirthDate = nil;
	address = nil;
	activeBankInfoKey = nil;


}

@end
@implementation Item
@synthesize price;
@synthesize productKey;
@synthesize quantity;


-(void)dealloc{

	price = nil;
	productKey = nil;


}

@end
@implementation Merchant
@synthesize email;
@synthesize activationDate;
@synthesize isVerifiedmail;
@synthesize lastName;
@synthesize role;
@synthesize tckNo;
@synthesize firstName;
@synthesize organisationName;
@synthesize isActive;
@synthesize phone;


-(void)dealloc{

	email = nil;
	activationDate = nil;
	lastName = nil;
	tckNo = nil;
	firstName = nil;
	organisationName = nil;
	phone = nil;


}

@end
@implementation Organisation
@synthesize city;
@synthesize categoryKey1;
@synthesize vergiDairesi;
@synthesize categoryKey2;
@synthesize monthlyTransactionLimit;
@synthesize madePayment;
@synthesize phone;
@synthesize longitude;
@synthesize balance;
@synthesize operationPaymentAmount;
@synthesize singleTransactionLimit;
@synthesize dailyTransactionLimit;
@synthesize isMobile;
@synthesize paybackType;
@synthesize latitude;
@synthesize vergiNo;
@synthesize receivedPayback;
@synthesize isIndividual;
@synthesize paybackDate;
@synthesize activatedAt;
@synthesize creditScore;
@synthesize name;
@synthesize createdAt;
@synthesize area;
@synthesize contactTckNo;
@synthesize operationMonthlySale;
@synthesize unvan;
@synthesize organisationId;
@synthesize contactFirstName;
@synthesize contactLastName;
@synthesize contactPhone;
@synthesize contactBirthDate;
@synthesize address;
@synthesize activeBankInfoKey;
@synthesize isActivated;
@synthesize commissionRate;


-(void)dealloc{

	city = nil;
	categoryKey1 = nil;
	vergiDairesi = nil;
	categoryKey2 = nil;
	phone = nil;
	vergiNo = nil;
	activatedAt = nil;
	name = nil;
	createdAt = nil;
	area = nil;
	contactTckNo = nil;
	unvan = nil;
	organisationId = nil;
	contactFirstName = nil;
	contactLastName = nil;
	contactPhone = nil;
	contactBirthDate = nil;
	address = nil;
	activeBankInfoKey = nil;


}

@end
@implementation OrganisationCategory
@synthesize category;
@synthesize fraudScore;


-(void)dealloc{

	category = nil;


}

@end
@implementation Payback
@synthesize paidDate;
@synthesize start;
@synthesize paymentCount;
@synthesize creationDate;
@synthesize orgName;
@synthesize paymentStatus;
@synthesize dueDate;
@synthesize bank;
@synthesize bankPaymentId;
@synthesize amount;
@synthesize paybackId;
@synthesize stop;


-(void)dealloc{

	paidDate = nil;
	start = nil;
	creationDate = nil;
	orgName = nil;
	dueDate = nil;
	bank = nil;
	bankPaymentId = nil;
	amount = nil;
	paybackId = nil;
	stop = nil;


}

@end
@implementation PaybackInfo
@synthesize type;


-(void)dealloc{



}

@end
@implementation Payment
@synthesize chargedAmount;
@synthesize paybackAmount;
@synthesize cardNumber;
@synthesize paymentType;
@synthesize organisationName;
@synthesize cancelDate;
@synthesize merchantName;
@synthesize signedDate;
@synthesize paymentId;
@synthesize appliedRate;
@synthesize refundedAmount;
@synthesize latitude;
@synthesize isService;
@synthesize currentStatus;
@synthesize cart;
@synthesize amount;
@synthesize longitude;
@synthesize signatureURL;


-(void)dealloc{

	cardNumber = nil;
	organisationName = nil;
	cancelDate = nil;
	merchantName = nil;
	signedDate = nil;
	paymentId = nil;
	cart = nil;
	cart = nil;
	amount = nil;
	signatureURL = nil;


}

@end
@implementation PaymentLimit
@synthesize singleTransactionLimit;
@synthesize dailyTransactionLimit;
@synthesize monthlyTransactionLimit;
@synthesize createdAt;
@synthesize archivedAt;


-(void)dealloc{

	createdAt = nil;
	archivedAt = nil;


}

@end
@implementation PaymentMetaData
@synthesize collectDate;
@synthesize type;
@synthesize value;
@synthesize name;


-(void)dealloc{

	collectDate = nil;
	value = nil;
	name = nil;


}

@end
@implementation Product
@synthesize name;
@synthesize category;
@synthesize price;


-(void)dealloc{

	name = nil;
	category = nil;
	price = nil;


}

@end
@implementation ProductCategory
@synthesize name;


-(void)dealloc{

	name = nil;


}

@end
@implementation Registration
@synthesize email;
@synthesize birthYear;
@synthesize merchantKey;
@synthesize isVerifiedmail;
@synthesize tckNo;
@synthesize lastName;
@synthesize latitude;
@synthesize statusNote;
@synthesize activationStatus;
@synthesize firstName;
@synthesize activationCode;
@synthesize customerKey;
@synthesize phone;
@synthesize requestDate;
@synthesize longitude;


-(void)dealloc{

	email = nil;
	merchantKey = nil;
	tckNo = nil;
	lastName = nil;
	statusNote = nil;
	activationStatus = nil;
	firstName = nil;
	activationCode = nil;
	customerKey = nil;
	phone = nil;
	requestDate = nil;


}

@end
@implementation ActivateRequest

@synthesize registrationKey;
@synthesize activationCode;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	registrationKey = nil;
	activationCode = nil;


}

-(ActivateResponse*)lembasResponse{
    return (ActivateResponse*)self.response;
}

@end

@implementation ActivateResponse

@synthesize merchant;
@synthesize info;
@synthesize customer;



-(void)dealloc{

}

@end
@implementation CancelRequest

@synthesize requestKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	requestKey = nil;


}

-(CancelResponse*)lembasResponse{
    return (CancelResponse*)self.response;
}

@end

@implementation CancelResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation CheckMailRequest



-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{



}

-(CheckMailResponse*)lembasResponse{
    return (CheckMailResponse*)self.response;
}

@end

@implementation CheckMailResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation CheckTckRequest

@synthesize tckNo;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	tckNo = nil;


}

-(CheckTckResponse*)lembasResponse{
    return (CheckTckResponse*)self.response;
}

@end

@implementation CheckTckResponse

@synthesize info;
@synthesize result;



-(void)dealloc{

}

@end
@implementation CreateOrganisationRequest

@synthesize organisation;
@synthesize registrationKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        		self.organisation = [[Organisation alloc] init];

    }
    
    return self;
}

-(void)dealloc{

	organisation = nil;
	organisation = nil;
	registrationKey = nil;


}

-(CreateOrganisationResponse*)lembasResponse{
    return (CreateOrganisationResponse*)self.response;
}

@end

@implementation CreateOrganisationResponse

@synthesize info;
@synthesize organisation;



-(void)dealloc{

}

@end
@implementation CustomerRegisterRequest

@synthesize device;
@synthesize customer;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        		self.device = [[Device alloc] init];
		self.customer = [[Customer alloc] init];

    }
    
    return self;
}

-(void)dealloc{

	device = nil;
	device = nil;
	customer = nil;
	customer = nil;


}

-(CustomerRegisterResponse*)lembasResponse{
    return (CustomerRegisterResponse*)self.response;
}

@end

@implementation CustomerRegisterResponse

@synthesize info;
@synthesize registration;
@synthesize customer;



-(void)dealloc{

}

@end
@implementation RegisterDeviceRequest

@synthesize device;
@synthesize merchantKey;
@synthesize customerKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        		self.device = [[Device alloc] init];

    }
    
    return self;
}

-(void)dealloc{

	device = nil;
	device = nil;
	merchantKey = nil;
	customerKey = nil;


}

-(RegisterDeviceResponse*)lembasResponse{
    return (RegisterDeviceResponse*)self.response;
}

@end

@implementation RegisterDeviceResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation RegisterRequest

@synthesize device;
@synthesize registration;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        		self.device = [[Device alloc] init];
		self.registration = [[Registration alloc] init];

    }
    
    return self;
}

-(void)dealloc{

	device = nil;
	device = nil;
	registration = nil;
	registration = nil;


}

-(RegisterResponse*)lembasResponse{
    return (RegisterResponse*)self.response;
}

@end

@implementation RegisterResponse

@synthesize info;
@synthesize registration;



-(void)dealloc{

}

@end
@implementation SetupPasswordRequest

@synthesize desiredPassword;
@synthesize merchantKey;
@synthesize registrationKey;
@synthesize customerKey;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	desiredPassword = nil;
	merchantKey = nil;
	registrationKey = nil;
	customerKey = nil;


}

-(SetupPasswordResponse*)lembasResponse{
    return (SetupPasswordResponse*)self.response;
}

@end

@implementation SetupPasswordResponse

@synthesize info;
@synthesize merchant;
@synthesize customer;



-(void)dealloc{

}

@end
@implementation VerifyTckRequest

@synthesize tckNo;
@synthesize lastName;
@synthesize birthYear;
@synthesize firstName;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	lastName = nil;
	firstName = nil;


}

-(VerifyTckResponse*)lembasResponse{
    return (VerifyTckResponse*)self.response;
}

@end

@implementation VerifyTckResponse

@synthesize result;
@synthesize info;



-(void)dealloc{

}

@end
@implementation ForgetPasswordRequest

@synthesize phone;
@synthesize email;
@synthesize tckNo;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	phone = nil;
	email = nil;
	tckNo = nil;


}

-(ForgetPasswordResponse*)lembasResponse{
    return (ForgetPasswordResponse*)self.response;
}

@end

@implementation ForgetPasswordResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation LoginRequest

@synthesize tckNo;
@synthesize device;
@synthesize appVersion;
@synthesize password;
@synthesize locale;
@synthesize phone;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        		self.device = [[Device alloc] init];

    }
    
    return self;
}

-(void)dealloc{

	tckNo = nil;
	device = nil;
	device = nil;
	appVersion = nil;
	password = nil;
	locale = nil;
	phone = nil;


}

-(LoginResponse*)lembasResponse{
    return (LoginResponse*)self.response;
}

@end

@implementation LoginResponse

@synthesize paymentLimit;
@synthesize needsUpdate;
@synthesize registration;
@synthesize info;
@synthesize applicationsStatusMessage;
@synthesize organisation;
@synthesize applicationsStatus;
@synthesize documents;
@synthesize merchant;
@synthesize device;
@synthesize awsKeySecret;
@synthesize lastLogin;
@synthesize customerCards;
@synthesize bankInfo;
@synthesize sessionId;
@synthesize paymentLocations;
@synthesize authorization;
@synthesize customer;
@synthesize needsSecondFactorAuth;
@synthesize awsKeyId;
@synthesize secondFactorAuth;
@synthesize alerts;



-(void)dealloc{

}

@end
@implementation SecondFactorRequest

@synthesize password;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	password = nil;


}

-(SecondFactorResponse*)lembasResponse{
    return (SecondFactorResponse*)self.response;
}

@end

@implementation SecondFactorResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation VerifyPinRequest

@synthesize device;
@synthesize personKey;
@synthesize password;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        		self.device = [[Device alloc] init];

    }
    
    return self;
}

-(void)dealloc{

	device = nil;
	device = nil;
	personKey = nil;
	password = nil;


}

-(VerifyPinResponse*)lembasResponse{
    return (VerifyPinResponse*)self.response;
}

@end

@implementation VerifyPinResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation DeleteMemberRequest

@synthesize merchantKey;
@synthesize start;
@synthesize memberKey;
@synthesize stop;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	memberKey = nil;
	stop = nil;


}

-(DeleteMemberResponse*)lembasResponse{
    return (DeleteMemberResponse*)self.response;
}

@end

@implementation DeleteMemberResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation ListMembersRequest

@synthesize merchantKey;
@synthesize start;
@synthesize stop;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	start = nil;
	stop = nil;


}

-(ListMembersResponse*)lembasResponse{
    return (ListMembersResponse*)self.response;
}

@end

@implementation ListMembersResponse

@synthesize members;
@synthesize info;



-(void)dealloc{

}

@end
@implementation UpsertMemberRequest

@synthesize merchantKey;
@synthesize memberKey;
@synthesize start;
@synthesize password;
@synthesize stop;
@synthesize requested;


-(id)initWithDelegate:(id<LembasRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        		self.requested = [[Merchant alloc] init];

    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	memberKey = nil;
	start = nil;
	password = nil;
	stop = nil;
	requested = nil;
	requested = nil;


}

-(UpsertMemberResponse*)lembasResponse{
    return (UpsertMemberResponse*)self.response;
}

@end

@implementation UpsertMemberResponse

@synthesize info;
@synthesize member;



-(void)dealloc{

}

@end
@implementation ApplicationCurrentStatus
@synthesize controller;
@synthesize isActive;
@synthesize message;
@synthesize applicationStatusType;
@synthesize uniqueId;


-(void)dealloc{

	controller = nil;
	message = nil;


}

@end
@implementation CreditCard
@synthesize lastUsed;
@synthesize cvv;
@synthesize bank;
@synthesize expiryMonth;
@synthesize type;
@synthesize lastDigits;
@synthesize category;
@synthesize number;
@synthesize secured;
@synthesize alias;
@synthesize expiryYear;


-(void)dealloc{

	lastUsed = nil;
	cvv = nil;
	bank = nil;
	type = nil;
	lastDigits = nil;
	category = nil;
	number = nil;
	alias = nil;


}

@end
@implementation Device
@synthesize osVersion;
@synthesize pushToken;
@synthesize manufacturer;
@synthesize device;
@synthesize uniqueId;


-(void)dealloc{

	osVersion = nil;
	pushToken = nil;
	manufacturer = nil;
	device = nil;
	uniqueId = nil;


}

@end
@implementation DocumentRequirement
@synthesize verified;
@synthesize documentUrl0;
@synthesize documentUrl1;
@synthesize documentUrl2;
@synthesize note;
@synthesize type;
@synthesize provided;
@synthesize documentKey;


-(void)dealloc{

	documentUrl0 = nil;
	documentUrl1 = nil;
	documentUrl2 = nil;
	note = nil;
	documentKey = nil;


}

@end
@implementation Geolocation
@synthesize latitude;
@synthesize longitude;


-(void)dealloc{



}

@end
@implementation UserAlert
@synthesize option1;
@synthesize option2;
@synthesize description;
@synthesize key;


-(void)dealloc{

	description = nil;
	key = nil;


}

@end
@implementation City
@synthesize name;
@synthesize districts;


-(void)dealloc{

	name = nil;
	districts = nil;


}

@end
@implementation Customer
@synthesize email;
@synthesize isVerifiedmail;
@synthesize lastName;
@synthesize firstName;
@synthesize phone;
@synthesize defaultCard;


-(void)dealloc{

	email = nil;
	lastName = nil;
	firstName = nil;
	phone = nil;
	defaultCard = nil;


}

@end