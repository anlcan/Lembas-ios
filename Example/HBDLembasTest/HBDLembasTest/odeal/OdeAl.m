NSString * const OdeAlHost		= @"http://localhost:8080/";
NSString * const OdeAlEndPoint		= @"http://localhost:8080/OdeAl/";

#import "OdeAl.h"


//==============================================================================
@implementation OdeAl



+(LoxoService*)shared{
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
        _projectId  = @"123";
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

-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

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
@synthesize customerKey;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        		self.creditCard = [[CreditCard alloc] init];

    }
    
    return self;
}

-(void)dealloc{

	creditCard = nil;
	creditCard = nil;
	customerKey = nil;


}

@end

@implementation CustomerAddCreditCardResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation CustomerGetCardsRequest

@synthesize customerKey;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	customerKey = nil;


}

@end

@implementation CustomerGetCardsResponse

@synthesize info;
@synthesize cards;



-(void)dealloc{

}

@end
@implementation CustomerRemoveCardRequest

@synthesize cardKey;
@synthesize customerKey;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	cardKey = nil;
	customerKey = nil;


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


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

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

@end

@implementation CustomerUpsertPasswordResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation PushRegisterRequest

@synthesize message;
@synthesize deviceKey;
@synthesize customerKey;
@synthesize token;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	message = nil;
	deviceKey = nil;
	customerKey = nil;
	token = nil;


}

@end

@implementation PushRegisterResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation RestRequest

@synthesize method;
@synthesize path;
@synthesize customerKey;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	method = nil;
	path = nil;
	customerKey = nil;


}

@end

@implementation RestResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation BankInfo
@synthesize city;
@synthesize bank;
@synthesize agency;
@synthesize owner;
@synthesize account;
@synthesize iban;


-(void)dealloc{

	city = nil;
	bank = nil;
	agency = nil;
	owner = nil;
	account = nil;
	iban = nil;


}

@end
@implementation Item
@synthesize product;
@synthesize quantity;


-(void)dealloc{

	product = nil;
	product = nil;


}

@end
@implementation Merchant
@synthesize email;
@synthesize lastName;
@synthesize tckNo;
@synthesize firstName;
@synthesize organisationName;
@synthesize activeBankInfoKey;
@synthesize phone;


-(void)dealloc{

	email = nil;
	lastName = nil;
	tckNo = nil;
	firstName = nil;
	organisationName = nil;
	activeBankInfoKey = nil;
	phone = nil;


}

@end
@implementation Organisation
@synthesize city;
@synthesize paybackDate;
@synthesize phone;
@synthesize name;
@synthesize area;
@synthesize contactPhone;
@synthesize vergiNo;
@synthesize contactName;
@synthesize email;
@synthesize address;


-(void)dealloc{

	city = nil;
	phone = nil;
	name = nil;
	area = nil;
	contactPhone = nil;
	vergiNo = nil;
	contactName = nil;
	email = nil;
	address = nil;


}

@end
@implementation Payback
@synthesize creationDate;
@synthesize paymentStatus;
@synthesize dueDate;
@synthesize amount;


-(void)dealloc{

	creationDate = nil;
	dueDate = nil;
	amount = nil;


}

@end
@implementation Payment
@synthesize cardNumber;
@synthesize latitude;
@synthesize currentStatus;
@synthesize cancelDate;
@synthesize amount;
@synthesize longitude;
@synthesize signedDate;
@synthesize paymentId;


-(void)dealloc{

	cardNumber = nil;
	cancelDate = nil;
	amount = nil;
	signedDate = nil;
	paymentId = nil;


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
@implementation Registration
@synthesize lastName;
@synthesize merchantKey;
@synthesize tckNo;
@synthesize latitude;
@synthesize activationCode;
@synthesize phoneNumber;
@synthesize firstName;
@synthesize longitude;


-(void)dealloc{

	lastName = nil;
	merchantKey = nil;
	tckNo = nil;
	activationCode = nil;
	phoneNumber = nil;
	firstName = nil;


}

@end
@implementation ActivateRequest

@synthesize activationCode;
@synthesize registrationKey;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	activationCode = nil;
	registrationKey = nil;


}

@end

@implementation ActivateResponse

@synthesize merchant;
@synthesize info;



-(void)dealloc{

}

@end
@implementation CancelRequest

@synthesize requestKey;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	requestKey = nil;


}

@end

@implementation CancelResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation RegisterRequest

@synthesize device;
@synthesize registration;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

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

@end

@implementation RegisterResponse

@synthesize info;
@synthesize registration;



-(void)dealloc{

}

@end
@implementation SetupPasswordRequest

@synthesize customerKey;
@synthesize desiredPassword;
@synthesize merchantKey;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	customerKey = nil;
	desiredPassword = nil;
	merchantKey = nil;


}

@end

@implementation SetupPasswordResponse

@synthesize info;
@synthesize merchant;
@synthesize customer;



-(void)dealloc{

}

@end
@implementation LoginRequest

@synthesize tckNo;
@synthesize device;
@synthesize password;
@synthesize phone;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

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
	password = nil;
	phone = nil;


}

@end

@implementation LoginResponse

@synthesize info;
@synthesize organisation;
@synthesize merchant;
@synthesize device;
@synthesize lastLogin;
@synthesize bankInfo;
@synthesize sessionId;
@synthesize authorization;
@synthesize customer;
@synthesize needsSecondFactorAuth;
@synthesize secondFactorAuth;



-(void)dealloc{

}

@end
@implementation SecondFactorRequest

@synthesize password;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	password = nil;


}

@end

@implementation SecondFactorResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation CreditCard
@synthesize cvv;
@synthesize expiryMonth;
@synthesize type;
@synthesize lastDigits;
@synthesize number;
@synthesize expiryYear;


-(void)dealloc{

	cvv = nil;
	type = nil;
	lastDigits = nil;
	number = nil;


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
@implementation CancelPaymentRequest

@synthesize paymentKey;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	paymentKey = nil;


}

@end

@implementation CancelPaymentResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation FinalizePaymentRequest

@synthesize merchantKey;
@synthesize storeCustomer;
@synthesize payment;
@synthesize hash;
@synthesize card;
@synthesize signatureImageData;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        		self.payment = [[Payment alloc] init];
		self.card = [[CreditCard alloc] init];

    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	payment = nil;
	payment = nil;
	hash = nil;
	card = nil;
	card = nil;
	signatureImageData = nil;


}

@end

@implementation FinalizePaymentResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation InitPaymentRequest

@synthesize merchantKey;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;


}

@end

@implementation InitPaymentResponse

@synthesize challenge;
@synthesize info;
@synthesize payment;
@synthesize paymentLimit;



-(void)dealloc{

}

@end
@implementation UpdatePaymentRequest

@synthesize card;
@synthesize merchantKey;
@synthesize metaDataList;
@synthesize customerPhone;
@synthesize paymentKey;
@synthesize customerName;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        		self.card = [[CreditCard alloc] init];

    }
    
    return self;
}

-(void)dealloc{

	card = nil;
	card = nil;
	merchantKey = nil;
	metaDataList = nil;
	customerPhone = nil;
	paymentKey = nil;
	customerName = nil;


}

@end

@implementation UpdatePaymentResponse

@synthesize customer;
@synthesize customerHasApp;
@synthesize info;
@synthesize cards;



-(void)dealloc{

}

@end
@implementation CustomerActivationRequest

@synthesize customerKey;
@synthesize activationCode;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	customerKey = nil;
	activationCode = nil;


}

@end

@implementation CustomerActivationResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation CustomerRegisterRequest

@synthesize customer;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        		self.customer = [[Customer alloc] init];

    }
    
    return self;
}

-(void)dealloc{

	customer = nil;
	customer = nil;


}

@end

@implementation CustomerRegisterResponse

@synthesize customer;
@synthesize info;



-(void)dealloc{

}

@end
@implementation Customer
@synthesize email;
@synthesize lastName;
@synthesize firstName;
@synthesize phone;


-(void)dealloc{

	email = nil;
	lastName = nil;
	firstName = nil;
	phone = nil;


}

@end
@implementation CheckMerchantStatusRequest

@synthesize merchantKey;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;


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
@synthesize bankInfoKey;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	bankInfoKey = nil;


}

@end

@implementation DeleteBankInfoResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation GetMerchantPaymentsRequest

@synthesize index;
@synthesize size;
@synthesize merchantKey;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;


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


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;


}

@end

@implementation GetPaybacksResponse

@synthesize info;
@synthesize paybacks;



-(void)dealloc{

}

@end
@implementation LogoutRequest

@synthesize merchantKey;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;


}

@end

@implementation LogoutResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation PaybackForPaymentRequest

@synthesize merchantKey;
@synthesize paymentKey;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	paymentKey = nil;


}

@end

@implementation PaybackForPaymentResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation PaybacksRequest

@synthesize merchantKey;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;


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
@synthesize paybackKey;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	paybackKey = nil;


}

@end

@implementation PaymentsForPaybackResponse

@synthesize info;
@synthesize payments;



-(void)dealloc{

}

@end
@implementation ProductsRequest

@synthesize merchantKey;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;


}

@end

@implementation ProductsResponse

@synthesize info;
@synthesize products;



-(void)dealloc{

}

@end
@implementation RecentPaymentsRequest

@synthesize merchantKey;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;


}

@end

@implementation RecentPaymentsResponse

@synthesize info;
@synthesize payments;



-(void)dealloc{

}

@end
@implementation RefundPaymentRequest

@synthesize paymentKey;
@synthesize merchantKey;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	paymentKey = nil;
	merchantKey = nil;


}

@end

@implementation RefundPaymentResponse

@synthesize info;



-(void)dealloc{

}

@end
@implementation UpdatePasswordRequest

@synthesize merchantKey;
@synthesize desiredPassword;
@synthesize oldPassword;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        
    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	desiredPassword = nil;
	oldPassword = nil;


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


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

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

@end

@implementation UpsertBankInfoResponse

@synthesize bankInfo;
@synthesize info;



-(void)dealloc{

}

@end
@implementation UpsertProductRequest

@synthesize merchantKey;
@synthesize product;


-(id)initWithDelegate:(id<HandsomeRequestDelegate>)d{

    self = [super initWithDelegate:d];

    if (self) {
        		self.product = [[Product alloc] init];

    }
    
    return self;
}

-(void)dealloc{

	merchantKey = nil;
	product = nil;
	product = nil;


}

@end