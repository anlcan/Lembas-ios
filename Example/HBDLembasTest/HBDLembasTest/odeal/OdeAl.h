extern NSString * const OdeAlHost;
extern NSString * const OdeAlEndPoint;
/*

created by anlcan
on 2014-11-19 16:46:56.092380
using /base/data/home/apps/s~sync-server/yoxo.378868771829241484/generate.pyc
for http://localhost:8080/

*/

#import "LembasCommons.h"
#import "LoxoService.h"

@interface OdeAl : LoxoService

+(OdeAl*)shared;

@end

//

@interface OdeAlObject : LembasObject{

}

@end

@interface OdeAlRequest : LembasRequest{

}

@end

@interface OdeAlResponse : LembasResponse {

}
@end

#pragma mark forward class declaration

@class CustomerAddCreditCardRequest;
@class CustomerAddCreditCardResponse;
@class CustomerFinalizePaymentRequest;
@class CustomerFinalizePaymentResponse;
@class CustomerGetCardsRequest;
@class CustomerGetCardsResponse;
@class CustomerPaymentsRequest;
@class CustomerPaymentsResponse;
@class CustomerRemoveCardRequest;
@class CustomerRemoveCardResponse;
@class CustomerResponse;
@class CustomerUpsertPasswordRequest;
@class CustomerUpsertPasswordResponse;
@class GetCitiesRequest;
@class GetCitiesResponse;
@class GetNearByRequest;
@class GetNearByResponse;
@class GetPaymentRequest;
@class GetPaymentResponse;
@class PushRegisterRequest;
@class PushRegisterResponse;
@class AddDocumentRequest;
@class AddDocumentResponse;
@class GetDocumentsRequest;
@class GetDocumentsResponse;
@class DeleteProductRequest;
@class DeleteProductResponse;
@class ProductsRequest;
@class ProductsResponse;
@class UpsertProductRequest;
@class UpsertProductResponse;
@class CancelPaymentRequest;
@class CancelPaymentResponse;
@class CustomerAppPaymentRequest;
@class CustomerAppPaymentResponse;
@class CustomerPhonePaymentRequest;
@class CustomerPhonePaymentResponse;
@class FinalizePaymentRequest;
@class FinalizePaymentResponse;
@class InitPaymentRequest;
@class InitPaymentResponse;
@class SendInfoMailRequest;
@class SendInfoMailResponse;
@class UpdatePaymentRequest;
@class UpdatePaymentResponse;
@class CheckMerchantStatusRequest;
@class CheckMerchantStatusResponse;
@class DeleteBankInfoRequest;
@class DeleteBankInfoResponse;
@class GetAlertsRequest;
@class GetAlertsResponse;
@class GetMerchantPaymentsRequest;
@class GetMerchantPaymentsResponse;
@class GetPaybacksRequest;
@class GetPaybacksResponse;
@class GetTownsRequest;
@class GetTownsResponse;
@class LogoutRequest;
@class LogoutResponse;
@class OrganisationPaymentLocationRequest;
@class OrganisationPaymentLocationResponse;
@class PaybackForPaymentRequest;
@class PaybackForPaymentResponse;
@class PaybackPaymentRequest;
@class PaybackPaymentResponse;
@class PaybacksRequest;
@class PaybacksResponse;
@class PaymentsForPaybackRequest;
@class PaymentsForPaybackResponse;
@class QueryCustomerRequest;
@class QueryCustomerResponse;
@class RecentPaymentsRequest;
@class RecentPaymentsResponse;
@class RefundPaymentRequest;
@class RefundPaymentResponse;
@class UpdateMerchantSecurityRequest;
@class UpdateMerchantSecurityResponse;
@class UpdatePasswordRequest;
@class UpdatePasswordResponse;
@class UpsertBankInfoRequest;
@class UpsertBankInfoResponse;
@class BankInfo;
@class Cart;
@class Esnaf;
@class Item;
@class Merchant;
@class Organisation;
@class OrganisationCategory;
@class Payback;
@class PaybackInfo;
@class Payment;
@class PaymentLimit;
@class PaymentMetaData;
@class Product;
@class ProductCategory;
@class Registration;
@class ActivateRequest;
@class ActivateResponse;
@class CancelRequest;
@class CancelResponse;
@class CheckMailRequest;
@class CheckMailResponse;
@class CheckTckRequest;
@class CheckTckResponse;
@class CreateOrganisationRequest;
@class CreateOrganisationResponse;
@class CustomerRegisterRequest;
@class CustomerRegisterResponse;
@class RegisterDeviceRequest;
@class RegisterDeviceResponse;
@class RegisterRequest;
@class RegisterResponse;
@class SetupPasswordRequest;
@class SetupPasswordResponse;
@class VerifyTckRequest;
@class VerifyTckResponse;
@class ForgetPasswordRequest;
@class ForgetPasswordResponse;
@class LoginRequest;
@class LoginResponse;
@class SecondFactorRequest;
@class SecondFactorResponse;
@class VerifyPinRequest;
@class VerifyPinResponse;
@class DeleteMemberRequest;
@class DeleteMemberResponse;
@class ListMembersRequest;
@class ListMembersResponse;
@class UpsertMemberRequest;
@class UpsertMemberResponse;
@class ApplicationCurrentStatus;
@class CreditCard;
@class Device;
@class DocumentRequirement;
@class Geolocation;
@class UserAlert;
@class City;
@class Customer;


#pragma mark enum declaration

typedef enum{
	ApplicationStatus_NONE = 0,
	ApplicationStatus_SUSPENDED = 1,
	ApplicationStatus_WARNING = 2,
	ApplicationStatus_ALERT = 3
} ApplicationStatus;


#pragma mark -
#pragma mark MObjects
typedef enum{
	PaybackType_DAILY = 0,
	PaybackType_WEEKLY = 1
} PaybackType;


#pragma mark -
#pragma mark MObjects
typedef enum{
	PaymentStatus_INACTIVE = 0,
	PaymentStatus_ACTIVE = 1,
	PaymentStatus_ARCHIVED = 2,
	PaymentStatus_SUSPENDED = 3,
	PaymentStatus_INITIALIZED = 4,
	PaymentStatus_FINALIZED = 5,
	PaymentStatus_PAID = 6,
	PaymentStatus_TRANSACTION_ERROR = 7,
	PaymentStatus_USER_CANCELLED = 8,
	PaymentStatus_MERCHANT_CANCELLED = 9,
	PaymentStatus_PAID_BACK = 10
} PaymentStatus;


#pragma mark -
#pragma mark MObjects
typedef enum{
	PaybackStatus_PENDING = 0,
	PaybackStatus_PAID = 1,
	PaybackStatus_CANCELLED = 2,
	PaybackStatus_DELAYED = 3,
	PaybackStatus_WAITING_PAYMENT = 4,
	PaybackStatus_RESERVED_1 = 5,
	PaybackStatus_RESERVED_2 = 6,
	PaybackStatus_RESERVED_3 = 7
} PaybackStatus;


#pragma mark -
#pragma mark MObjects
typedef enum{
	PaymentType_ODEAL = 0,
	PaymentType_ODEAL_PHONE = 1,
	PaymentType_ODEAL_CLIENT = 2,
	PaymentType_CASH = 3,
	PaymentType_POS = 4
} PaymentType;


#pragma mark -
#pragma mark MObjects
typedef enum{
	PaymentMetaDataType_GYRO = 0,
	PaymentMetaDataType_SOUND = 1,
	PaymentMetaDataType_STORAGE = 2,
	PaymentMetaDataType_BATTERY = 3,
	PaymentMetaDataType_VOLUME = 4,
	PaymentMetaDataType_SSID = 5,
	PaymentMetaDataType_CARRIER = 6,
	PaymentMetaDataType_LOCATION = 7,
	PaymentMetaDataType_RESERVED1 = 8,
	PaymentMetaDataType_RESERVED2 = 9,
	PaymentMetaDataType_RESERVED3 = 10,
	PaymentMetaDataType_RESERVED4 = 11
} PaymentMetaDataType;


#pragma mark -
#pragma mark MObjects
typedef enum{
	MerchantRole_OWNER = 0,
	MerchantRole_MEMBER = 1
} MerchantRole;


#pragma mark -
#pragma mark MObjects
typedef enum{
	PushNotificationType_ALERT = 0,
	PushNotificationType_ACTIVATION = 1,
	PushNotificationType_SIGN_KEY = 2,
	PushNotificationType_CUSTOMER_APP_RESULT = 3,
	PushNotificationType_CUSTOMER_PHONE_RESULT = 4,
	PushNotificationType_PAYMENT_REQUEST = 5,
	PushNotificationType_RESERVED_1 = 6,
	PushNotificationType_RESERVED_2 = 7
} PushNotificationType;


#pragma mark -
#pragma mark MObjects
typedef enum{
	DocumentType_Ehliyet = 0,
	DocumentType_Nufus_cuzdani = 1,
	DocumentType_Vergi_levhasi = 2,
	DocumentType_Sicil_gazetesi = 3,
	DocumentType_Fatura = 4,
	DocumentType_Dukkan = 5,
	DocumentType_reserved1 = 6,
	DocumentType_reserved2 = 7
} DocumentType;


#pragma mark -
#pragma mark MObjects
typedef enum{
	SecondFactorAuth_SMS = 0,
	SecondFactorAuth_PUSH = 1,
	SecondFactorAuth_MOBILE_SIGNATURE = 2,
	SecondFactorAuth_PHONE = 3
} SecondFactorAuth;


#pragma mark -
#pragma mark MObjects
typedef enum{
	OrganisationPaymentAmount_zero2twentyFive = 0,
	OrganisationPaymentAmount_twentyFive2fifty = 1,
	OrganisationPaymentAmount_fifty2hundred = 2,
	OrganisationPaymentAmount_hundredPlus = 3
} OrganisationPaymentAmount;


#pragma mark -
#pragma mark MObjects
typedef enum{
	OrganisationMonthlySale_zero2twoThousand = 0,
	OrganisationMonthlySale_twoThousand2fiveThousand = 1,
	OrganisationMonthlySale_plusFiveThousand = 2
} OrganisationMonthlySale;


#pragma mark -
#pragma mark MObjects
@interface CustomerAddCreditCardRequest : OdeAlRequest {

}
@property(nonatomic, strong) CreditCard * creditCard;
@property(nonatomic, strong) NSString * storageId;
@property(nonatomic, strong) NSString * customerKey;


-(CustomerAddCreditCardResponse*)lembasResponse;

@end
@interface CustomerAddCreditCardResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) NSString * secureUrl;
@property(nonatomic, strong) CreditCard * card;


@end
@interface CustomerFinalizePaymentRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * paymentKey;
@property(nonatomic, strong) NSString * creditCardKey;
@property(nonatomic) double  latitude;
@property(nonatomic) double  longitude;
@property(nonatomic, strong) NSString * customerKey;


-(CustomerFinalizePaymentResponse*)lembasResponse;

@end
@interface CustomerFinalizePaymentResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) NSString * reason;
@property(nonatomic) BOOL  result;


@end
@interface CustomerGetCardsRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * customerKey;


-(CustomerGetCardsResponse*)lembasResponse;

@end
@interface CustomerGetCardsResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) NSMutableArray * cards;


@end
@interface CustomerPaymentsRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * customerKey;


-(CustomerPaymentsResponse*)lembasResponse;

@end
@interface CustomerPaymentsResponse : OdeAlResponse {

}
@property(nonatomic, strong) NSMutableArray * payments;
@property(nonatomic, strong) LembasObject * info;


@end
@interface CustomerRemoveCardRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * cardKey;
@property(nonatomic, strong) NSString * customerKey;


-(CustomerRemoveCardResponse*)lembasResponse;

@end
@interface CustomerRemoveCardResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface CustomerResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface CustomerUpsertPasswordRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * desiredPassword;
@property(nonatomic, strong) NSString * oldPassword;
@property(nonatomic, strong) NSString * customerKey;


-(CustomerUpsertPasswordResponse*)lembasResponse;

@end
@interface CustomerUpsertPasswordResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface GetCitiesRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * customerKey;


-(GetCitiesResponse*)lembasResponse;

@end
@interface GetCitiesResponse : OdeAlResponse {

}
@property(nonatomic, strong) NSMutableArray * cities;
@property(nonatomic, strong) LembasObject * info;


@end
@interface GetNearByRequest : OdeAlRequest {

}
@property(nonatomic) double  lon;
@property(nonatomic) NSUInteger  radius;
@property(nonatomic) double  lat;
@property(nonatomic, strong) NSString * district;
@property(nonatomic, strong) NSString * customerKey;


-(GetNearByResponse*)lembasResponse;

@end
@interface GetNearByResponse : OdeAlResponse {

}
@property(nonatomic, strong) NSMutableArray * organisationList;
@property(nonatomic, strong) NSMutableArray * esnafList;
@property(nonatomic, strong) LembasObject * info;


@end
@interface GetPaymentRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * paymentKey;


-(GetPaymentResponse*)lembasResponse;

@end
@interface GetPaymentResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) Payment * payment;
@property(nonatomic, strong) Merchant * merchant;


@end
@interface PushRegisterRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * deviceKey;
@property(nonatomic, strong) NSString * customerKey;
@property(nonatomic, strong) NSString * token;


-(PushRegisterResponse*)lembasResponse;

@end
@interface PushRegisterResponse : OdeAlResponse {

}
@property(nonatomic) PushNotificationType  type;
@property(nonatomic, strong) LembasObject * info;


@end
@interface AddDocumentRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) NSString * requestKey;
@property(nonatomic, strong) LembasDate * stop;


-(AddDocumentResponse*)lembasResponse;

@end
@interface AddDocumentResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) DocumentRequirement * requirement;


@end
@interface GetDocumentsRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) LembasDate * stop;


-(GetDocumentsResponse*)lembasResponse;

@end
@interface GetDocumentsResponse : OdeAlResponse {

}
@property(nonatomic, strong) NSMutableArray * documents;
@property(nonatomic, strong) LembasObject * info;


@end
@interface DeleteProductRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) LembasDate * stop;
@property(nonatomic, strong) NSString * productKey;


-(DeleteProductResponse*)lembasResponse;

@end
@interface DeleteProductResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface ProductsRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) LembasDate * stop;


-(ProductsResponse*)lembasResponse;

@end
@interface ProductsResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) NSMutableArray * categories;
@property(nonatomic, strong) NSMutableArray * products;


@end
@interface UpsertProductRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) LembasDate * stop;
@property(nonatomic, strong) Product * product;


-(UpsertProductResponse*)lembasResponse;

@end
@interface UpsertProductResponse : OdeAlResponse {

}
@property(nonatomic, strong) ProductCategory * productCategory;
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) Product * product;


@end
@interface CancelPaymentRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) LembasDate * stop;
@property(nonatomic, strong) NSString * paymentKey;


-(CancelPaymentResponse*)lembasResponse;

@end
@interface CancelPaymentResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface CustomerAppPaymentRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) LembasDate * stop;
@property(nonatomic, strong) NSString * paymentKey;


-(CustomerAppPaymentResponse*)lembasResponse;

@end
@interface CustomerAppPaymentResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface CustomerPhonePaymentRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) LembasDate * stop;
@property(nonatomic, strong) NSString * paymentKey;


-(CustomerPhonePaymentResponse*)lembasResponse;

@end
@interface CustomerPhonePaymentResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface FinalizePaymentRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic) BOOL  storeCustomer;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) NSString * hash;
@property(nonatomic) PaymentType  paymentType;
@property(nonatomic, strong) LembasDate * stop;
@property(nonatomic, strong) NSString * paymentKey;


-(FinalizePaymentResponse*)lembasResponse;

@end
@interface FinalizePaymentResponse : OdeAlResponse {

}
@property(nonatomic) double  dailyTransactionLimit;
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) Payment * payment;


@end
@interface InitPaymentRequest : OdeAlRequest {

}
@property(nonatomic) double  latitude;
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) LembasDate * stop;
@property(nonatomic) double  longitude;
@property(nonatomic, strong) NSString * paymentKey;


-(InitPaymentResponse*)lembasResponse;

@end
@interface InitPaymentResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) NSString * paymentGateway;
@property(nonatomic) BOOL  requiresCustomer;
@property(nonatomic, strong) NSString * challenge;
@property(nonatomic, strong) Payment * payment;
@property(nonatomic) BOOL  requiresCVV;
@property(nonatomic) double  paymentLimit;


@end
@interface SendInfoMailRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * email;
@property(nonatomic, strong) NSString * paymentId;
@property(nonatomic, strong) NSString * paymenId;


-(SendInfoMailResponse*)lembasResponse;

@end
@interface SendInfoMailResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface UpdatePaymentRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * customerFirstName;
@property(nonatomic, strong) CreditCard * card;
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) NSString * amount;
@property(nonatomic, strong) NSString * cardKey;
@property(nonatomic, strong) NSString * customerLastName;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) NSString * customerPhone;
@property(nonatomic, strong) LembasDate * stop;
@property(nonatomic, strong) NSString * paymentKey;
@property(nonatomic, strong) Cart * cart;


-(UpdatePaymentResponse*)lembasResponse;

@end
@interface UpdatePaymentResponse : OdeAlResponse {

}
@property(nonatomic, strong) Customer * customer;
@property(nonatomic) BOOL  customerHasApp;
@property(nonatomic) BOOL  returningCustomer;
@property(nonatomic) BOOL  customerHasValidCard;
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) NSMutableArray * cards;


@end
@interface CheckMerchantStatusRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) LembasDate * stop;


-(CheckMerchantStatusResponse*)lembasResponse;

@end
@interface CheckMerchantStatusResponse : OdeAlResponse {

}
@property(nonatomic) BOOL  archived;
@property(nonatomic) BOOL  activated;
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic) BOOL  suspended;


@end
@interface DeleteBankInfoRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) LembasDate * stop;
@property(nonatomic, strong) NSString * bankInfoKey;


-(DeleteBankInfoResponse*)lembasResponse;

@end
@interface DeleteBankInfoResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface GetAlertsRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) LembasDate * stop;


-(GetAlertsResponse*)lembasResponse;

@end
@interface GetAlertsResponse : OdeAlResponse {

}
@property(nonatomic, strong) NSMutableArray * alerts;
@property(nonatomic, strong) LembasObject * info;


@end
@interface GetMerchantPaymentsRequest : OdeAlRequest {

}
@property(nonatomic) NSUInteger  index;
@property(nonatomic) NSUInteger  size;
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) LembasDate * stop;


-(GetMerchantPaymentsResponse*)lembasResponse;

@end
@interface GetMerchantPaymentsResponse : OdeAlResponse {

}
@property(nonatomic, strong) NSMutableArray * payments;
@property(nonatomic, strong) LembasObject * info;


@end
@interface GetPaybacksRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) LembasDate * stop;


-(GetPaybacksResponse*)lembasResponse;

@end
@interface GetPaybacksResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) NSMutableArray * paybacks;


@end
@interface GetTownsRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * provinceId;


-(GetTownsResponse*)lembasResponse;

@end
@interface GetTownsResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) NSMutableArray * towns;


@end
@interface LogoutRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) LembasDate * stop;


-(LogoutResponse*)lembasResponse;

@end
@interface LogoutResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface OrganisationPaymentLocationRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic) double  latitude;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) LembasDate * stop;
@property(nonatomic) double  longitude;


-(OrganisationPaymentLocationResponse*)lembasResponse;

@end
@interface OrganisationPaymentLocationResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) Geolocation * paymentLocation;


@end
@interface PaybackForPaymentRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) LembasDate * stop;
@property(nonatomic, strong) NSString * paymentKey;


-(PaybackForPaymentResponse*)lembasResponse;

@end
@interface PaybackForPaymentResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) NSMutableArray * paybacks;


@end
@interface PaybackPaymentRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) LembasDate * stop;
@property(nonatomic, strong) NSString * paymentKey;


-(PaybackPaymentResponse*)lembasResponse;

@end
@interface PaybackPaymentResponse : OdeAlResponse {

}
@property(nonatomic, strong) Payback * payback;
@property(nonatomic, strong) LembasObject * info;


@end
@interface PaybacksRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;


-(PaybacksResponse*)lembasResponse;

@end
@interface PaybacksResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) NSMutableArray * paybacks;


@end
@interface PaymentsForPaybackRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) LembasDate * stop;
@property(nonatomic, strong) NSString * paybackKey;


-(PaymentsForPaybackResponse*)lembasResponse;

@end
@interface PaymentsForPaybackResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) NSMutableArray * payments;


@end
@interface QueryCustomerRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) NSString * phone;
@property(nonatomic, strong) LembasDate * stop;


-(QueryCustomerResponse*)lembasResponse;

@end
@interface QueryCustomerResponse : OdeAlResponse {

}
@property(nonatomic) BOOL  customerHasValidCard;
@property(nonatomic) BOOL  returningCustomer;
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) Customer * customer;
@property(nonatomic) BOOL  customerHasApp;


@end
@interface RecentPaymentsRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) LembasDate * stop;


-(RecentPaymentsResponse*)lembasResponse;

@end
@interface RecentPaymentsResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) NSMutableArray * payments;


@end
@interface RefundPaymentRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) NSString * amount;
@property(nonatomic, strong) NSString * paymentKey;
@property(nonatomic, strong) LembasDate * stop;
@property(nonatomic, strong) NSString * language;


-(RefundPaymentResponse*)lembasResponse;

@end
@interface RefundPaymentResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface UpdateMerchantSecurityRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * name;
@property(nonatomic, strong) NSString * value;


-(UpdateMerchantSecurityResponse*)lembasResponse;

@end
@interface UpdateMerchantSecurityResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface UpdatePasswordRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) NSString * desiredPassword;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) NSString * oldPassword;
@property(nonatomic, strong) LembasDate * stop;


-(UpdatePasswordResponse*)lembasResponse;

@end
@interface UpdatePasswordResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface UpsertBankInfoRequest : OdeAlRequest {

}
@property(nonatomic, strong) BankInfo * info;
@property(nonatomic) BOOL  isActive;
@property(nonatomic, strong) NSString * merchantKey;


-(UpsertBankInfoResponse*)lembasResponse;

@end
@interface UpsertBankInfoResponse : OdeAlResponse {

}
@property(nonatomic, strong) BankInfo * bankInfo;
@property(nonatomic, strong) LembasObject * info;


@end
@interface BankInfo : OdeAlObject {

}
@property(nonatomic, strong) NSString * city;
@property(nonatomic) BOOL  verified;
@property(nonatomic, strong) NSString * bank;
@property(nonatomic, strong) NSString * agency;
@property(nonatomic, strong) NSString * bankInfoId;
@property(nonatomic, strong) NSString * owner;
@property(nonatomic, strong) NSString * account;
@property(nonatomic, strong) NSString * iban;


@end
@interface Cart : OdeAlObject {

}
@property(nonatomic, strong) NSMutableArray * items;


@end
@interface Esnaf : OdeAlObject {

}
@property(nonatomic, strong) NSString * city;
@property(nonatomic, strong) NSString * vergiDairesi;
@property(nonatomic, strong) NSString * categoryKey1;
@property(nonatomic, strong) NSString * categoryKey2;
@property(nonatomic) double  monthlyTransactionLimit;
@property(nonatomic) BOOL  madePayment;
@property(nonatomic, strong) NSString * phone;
@property(nonatomic) double  longitude;
@property(nonatomic) double  balance;
@property(nonatomic) OrganisationPaymentAmount  operationPaymentAmount;
@property(nonatomic) double  singleTransactionLimit;
@property(nonatomic) BOOL  isMobile;
@property(nonatomic) double  dailyTransactionLimit;
@property(nonatomic) PaybackType  paybackType;
@property(nonatomic) double  latitude;
@property(nonatomic, strong) NSString * vergiNo;
@property(nonatomic) BOOL  receivedPayback;
@property(nonatomic) BOOL  isIndividual;
@property(nonatomic) long  paybackDate;
@property(nonatomic, strong) LembasDate * activatedAt;
@property(nonatomic) long  creditScore;
@property(nonatomic, strong) NSString * name;
@property(nonatomic, strong) LembasDate * createdAt;
@property(nonatomic, strong) NSString * area;
@property(nonatomic) OrganisationMonthlySale  operationMonthlySale;
@property(nonatomic, strong) NSString * contactTckNo;
@property(nonatomic, strong) NSString * unvan;
@property(nonatomic, strong) NSString * organisationId;
@property(nonatomic, strong) NSString * contactFirstName;
@property(nonatomic, strong) NSString * contactLastName;
@property(nonatomic, strong) NSString * contactPhone;
@property(nonatomic, strong) LembasDate * contactBirthDate;
@property(nonatomic, strong) NSString * address;
@property(nonatomic) BOOL  isActivated;
@property(nonatomic, strong) NSString * activeBankInfoKey;
@property(nonatomic) double  commissionRate;


@end
@interface Item : OdeAlObject {

}
@property(nonatomic, strong) NSString * price;
@property(nonatomic, strong) NSString * productKey;
@property(nonatomic) NSUInteger  quantity;


@end
@interface Merchant : OdeAlObject {

}
@property(nonatomic, strong) NSString * email;
@property(nonatomic, strong) LembasDate * activationDate;
@property(nonatomic) BOOL  isVerifiedmail;
@property(nonatomic, strong) NSString * lastName;
@property(nonatomic) MerchantRole  role;
@property(nonatomic, strong) NSString * tckNo;
@property(nonatomic, strong) NSString * firstName;
@property(nonatomic, strong) NSString * organisationName;
@property(nonatomic) BOOL  isActive;
@property(nonatomic, strong) NSString * phone;


@end
@interface Organisation : OdeAlObject {

}
@property(nonatomic, strong) NSString * city;
@property(nonatomic, strong) NSString * categoryKey1;
@property(nonatomic, strong) NSString * vergiDairesi;
@property(nonatomic, strong) NSString * categoryKey2;
@property(nonatomic) double  monthlyTransactionLimit;
@property(nonatomic) BOOL  madePayment;
@property(nonatomic, strong) NSString * phone;
@property(nonatomic) double  longitude;
@property(nonatomic) double  balance;
@property(nonatomic) OrganisationPaymentAmount  operationPaymentAmount;
@property(nonatomic) double  singleTransactionLimit;
@property(nonatomic) double  dailyTransactionLimit;
@property(nonatomic) BOOL  isMobile;
@property(nonatomic) PaybackType  paybackType;
@property(nonatomic) double  latitude;
@property(nonatomic, strong) NSString * vergiNo;
@property(nonatomic) BOOL  receivedPayback;
@property(nonatomic) BOOL  isIndividual;
@property(nonatomic) long  paybackDate;
@property(nonatomic, strong) LembasDate * activatedAt;
@property(nonatomic) long  creditScore;
@property(nonatomic, strong) NSString * name;
@property(nonatomic, strong) LembasDate * createdAt;
@property(nonatomic, strong) NSString * area;
@property(nonatomic, strong) NSString * contactTckNo;
@property(nonatomic) OrganisationMonthlySale  operationMonthlySale;
@property(nonatomic, strong) NSString * unvan;
@property(nonatomic, strong) NSString * organisationId;
@property(nonatomic, strong) NSString * contactFirstName;
@property(nonatomic, strong) NSString * contactLastName;
@property(nonatomic, strong) NSString * contactPhone;
@property(nonatomic, strong) LembasDate * contactBirthDate;
@property(nonatomic, strong) NSString * address;
@property(nonatomic, strong) NSString * activeBankInfoKey;
@property(nonatomic) BOOL  isActivated;
@property(nonatomic) double  commissionRate;


@end
@interface OrganisationCategory : OdeAlObject {

}
@property(nonatomic, strong) NSString * category;
@property(nonatomic) long  fraudScore;


@end
@interface Payback : OdeAlObject {

}
@property(nonatomic, strong) LembasDate * paidDate;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic) long  paymentCount;
@property(nonatomic, strong) LembasDate * creationDate;
@property(nonatomic, strong) NSString * orgName;
@property(nonatomic) PaybackStatus  paymentStatus;
@property(nonatomic, strong) LembasDate * dueDate;
@property(nonatomic, strong) NSString * bank;
@property(nonatomic, strong) NSString * bankPaymentId;
@property(nonatomic, strong) NSString * amount;
@property(nonatomic, strong) NSString * paybackId;
@property(nonatomic, strong) LembasDate * stop;


@end
@interface PaybackInfo : OdeAlObject {

}
@property(nonatomic) PaybackType  type;


@end
@interface Payment : OdeAlObject {

}
@property(nonatomic) double  chargedAmount;
@property(nonatomic) double  paybackAmount;
@property(nonatomic, strong) NSString * cardNumber;
@property(nonatomic) PaymentType  paymentType;
@property(nonatomic, strong) NSString * organisationName;
@property(nonatomic, strong) LembasDate * cancelDate;
@property(nonatomic, strong) NSString * merchantName;
@property(nonatomic, strong) LembasDate * signedDate;
@property(nonatomic, strong) NSString * paymentId;
@property(nonatomic) double  appliedRate;
@property(nonatomic) double  refundedAmount;
@property(nonatomic) double  latitude;
@property(nonatomic) BOOL  isService;
@property(nonatomic) PaymentStatus  currentStatus;
@property(nonatomic, strong) Cart * cart;
@property(nonatomic, strong) NSString * amount;
@property(nonatomic) double  longitude;
@property(nonatomic, strong) NSString * signatureURL;


@end
@interface PaymentLimit : OdeAlObject {

}
@property(nonatomic) double  singleTransactionLimit;
@property(nonatomic) double  dailyTransactionLimit;
@property(nonatomic) double  monthlyTransactionLimit;
@property(nonatomic, strong) LembasDate * createdAt;
@property(nonatomic, strong) LembasDate * archivedAt;


@end
@interface PaymentMetaData : OdeAlObject {

}
@property(nonatomic, strong) LembasDate * collectDate;
@property(nonatomic) PaymentMetaDataType  type;
@property(nonatomic, strong) NSString * value;
@property(nonatomic, strong) NSString * name;


@end
@interface Product : OdeAlObject {

}
@property(nonatomic, strong) NSString * name;
@property(nonatomic, strong) NSString * category;
@property(nonatomic, strong) NSString * price;


@end
@interface ProductCategory : OdeAlObject {

}
@property(nonatomic, strong) NSString * name;


@end
@interface Registration : OdeAlObject {

}
@property(nonatomic, strong) NSString * email;
@property(nonatomic) long  birthYear;
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic) BOOL  isVerifiedmail;
@property(nonatomic, strong) NSString * tckNo;
@property(nonatomic, strong) NSString * lastName;
@property(nonatomic) double  latitude;
@property(nonatomic, strong) NSString * statusNote;
@property(nonatomic, strong) NSString * activationStatus;
@property(nonatomic, strong) NSString * firstName;
@property(nonatomic, strong) NSString * activationCode;
@property(nonatomic, strong) NSString * customerKey;
@property(nonatomic, strong) NSString * phone;
@property(nonatomic, strong) LembasDate * requestDate;
@property(nonatomic) double  longitude;


@end
@interface ActivateRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * registrationKey;
@property(nonatomic, strong) NSString * activationCode;


-(ActivateResponse*)lembasResponse;

@end
@interface ActivateResponse : OdeAlResponse {

}
@property(nonatomic, strong) Merchant * merchant;
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) Customer * customer;


@end
@interface CancelRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * requestKey;


-(CancelResponse*)lembasResponse;

@end
@interface CancelResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface CheckMailRequest : OdeAlRequest {

}


-(CheckMailResponse*)lembasResponse;

@end
@interface CheckMailResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface CheckTckRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * tckNo;


-(CheckTckResponse*)lembasResponse;

@end
@interface CheckTckResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic) BOOL  result;


@end
@interface CreateOrganisationRequest : OdeAlRequest {

}
@property(nonatomic, strong) Organisation * organisation;
@property(nonatomic, strong) NSString * registrationKey;


-(CreateOrganisationResponse*)lembasResponse;

@end
@interface CreateOrganisationResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) Organisation * organisation;


@end
@interface CustomerRegisterRequest : OdeAlRequest {

}
@property(nonatomic, strong) Device * device;
@property(nonatomic, strong) Customer * customer;


-(CustomerRegisterResponse*)lembasResponse;

@end
@interface CustomerRegisterResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) Registration * registration;
@property(nonatomic, strong) Customer * customer;


@end
@interface RegisterDeviceRequest : OdeAlRequest {

}
@property(nonatomic, strong) Device * device;
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) NSString * customerKey;


-(RegisterDeviceResponse*)lembasResponse;

@end
@interface RegisterDeviceResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface RegisterRequest : OdeAlRequest {

}
@property(nonatomic, strong) Device * device;
@property(nonatomic, strong) Registration * registration;


-(RegisterResponse*)lembasResponse;

@end
@interface RegisterResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) Registration * registration;


@end
@interface SetupPasswordRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * desiredPassword;
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) NSString * registrationKey;
@property(nonatomic, strong) NSString * customerKey;


-(SetupPasswordResponse*)lembasResponse;

@end
@interface SetupPasswordResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) Merchant * merchant;
@property(nonatomic, strong) Customer * customer;


@end
@interface VerifyTckRequest : OdeAlRequest {

}
@property(nonatomic) long  tckNo;
@property(nonatomic, strong) NSString * lastName;
@property(nonatomic) long  birthYear;
@property(nonatomic, strong) NSString * firstName;


-(VerifyTckResponse*)lembasResponse;

@end
@interface VerifyTckResponse : OdeAlResponse {

}
@property(nonatomic) BOOL  result;
@property(nonatomic, strong) LembasObject * info;


@end
@interface ForgetPasswordRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * phone;
@property(nonatomic, strong) NSString * email;
@property(nonatomic, strong) NSString * tckNo;


-(ForgetPasswordResponse*)lembasResponse;

@end
@interface ForgetPasswordResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface LoginRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * tckNo;
@property(nonatomic, strong) Device * device;
@property(nonatomic, strong) NSString * appVersion;
@property(nonatomic, strong) NSString * password;
@property(nonatomic, strong) NSString * locale;
@property(nonatomic, strong) NSString * phone;


-(LoginResponse*)lembasResponse;

@end
@interface LoginResponse : OdeAlResponse {

}
@property(nonatomic, strong) PaymentLimit * paymentLimit;
@property(nonatomic) BOOL  needsUpdate;
@property(nonatomic, strong) Registration * registration;
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) NSString * applicationsStatusMessage;
@property(nonatomic, strong) Organisation * organisation;
@property(nonatomic) ApplicationStatus  applicationsStatus;
@property(nonatomic, strong) NSMutableArray * documents;
@property(nonatomic, strong) Merchant * merchant;
@property(nonatomic, strong) Device * device;
@property(nonatomic, strong) NSString * awsKeySecret;
@property(nonatomic, strong) LembasDate * lastLogin;
@property(nonatomic, strong) NSMutableArray * customerCards;
@property(nonatomic, strong) NSMutableArray * bankInfo;
@property(nonatomic, strong) NSString * sessionId;
@property(nonatomic, strong) NSMutableArray * paymentLocations;
@property(nonatomic, strong) NSString * authorization;
@property(nonatomic, strong) Customer * customer;
@property(nonatomic) BOOL  needsSecondFactorAuth;
@property(nonatomic, strong) NSString * awsKeyId;
@property(nonatomic) SecondFactorAuth  secondFactorAuth;
@property(nonatomic, strong) NSMutableArray * alerts;


@end
@interface SecondFactorRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * password;


-(SecondFactorResponse*)lembasResponse;

@end
@interface SecondFactorResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface VerifyPinRequest : OdeAlRequest {

}
@property(nonatomic, strong) Device * device;
@property(nonatomic, strong) NSString * personKey;
@property(nonatomic, strong) NSString * password;


-(VerifyPinResponse*)lembasResponse;

@end
@interface VerifyPinResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface DeleteMemberRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) NSString * memberKey;
@property(nonatomic, strong) LembasDate * stop;


-(DeleteMemberResponse*)lembasResponse;

@end
@interface DeleteMemberResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface ListMembersRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) LembasDate * stop;


-(ListMembersResponse*)lembasResponse;

@end
@interface ListMembersResponse : OdeAlResponse {

}
@property(nonatomic, strong) NSMutableArray * members;
@property(nonatomic, strong) LembasObject * info;


@end
@interface UpsertMemberRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) NSString * memberKey;
@property(nonatomic, strong) LembasDate * start;
@property(nonatomic, strong) NSString * password;
@property(nonatomic, strong) LembasDate * stop;
@property(nonatomic, strong) Merchant * requested;


-(UpsertMemberResponse*)lembasResponse;

@end
@interface UpsertMemberResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) Merchant * member;


@end
@interface ApplicationCurrentStatus : OdeAlObject {

}
@property(nonatomic, strong) NSString * controller;
@property(nonatomic) BOOL  isActive;
@property(nonatomic, strong) NSString * message;
@property(nonatomic) ApplicationStatus  applicationStatusType;
@property(nonatomic) long  uniqueId;


@end
@interface CreditCard : OdeAlObject {

}
@property(nonatomic, strong) LembasDate * lastUsed;
@property(nonatomic, strong) NSString * cvv;
@property(nonatomic, strong) NSString * bank;
@property(nonatomic) long  expiryMonth;
@property(nonatomic, strong) NSString * type;
@property(nonatomic, strong) NSString * lastDigits;
@property(nonatomic, strong) NSString * category;
@property(nonatomic, strong) NSString * number;
@property(nonatomic) BOOL  secured;
@property(nonatomic, strong) NSString * alias;
@property(nonatomic) long  expiryYear;


@end
@interface Device : OdeAlObject {

}
@property(nonatomic, strong) NSString * osVersion;
@property(nonatomic, strong) NSString * pushToken;
@property(nonatomic, strong) NSString * manufacturer;
@property(nonatomic, strong) NSString * device;
@property(nonatomic, strong) NSString * uniqueId;


@end
@interface DocumentRequirement : OdeAlObject {

}
@property(nonatomic) BOOL  verified;
@property(nonatomic, strong) NSString * documentUrl0;
@property(nonatomic, strong) NSString * documentUrl1;
@property(nonatomic, strong) NSString * documentUrl2;
@property(nonatomic, strong) NSString * note;
@property(nonatomic) DocumentType  type;
@property(nonatomic) BOOL  provided;
@property(nonatomic, strong) NSString * documentKey;


@end
@interface Geolocation : OdeAlObject {

}
@property(nonatomic) double  latitude;
@property(nonatomic) double  longitude;


@end
@interface UserAlert : OdeAlObject {

}
@property(nonatomic) BOOL  option1;
@property(nonatomic) BOOL  option2;
@property(nonatomic, strong) NSString * description;
@property(nonatomic, strong) NSString * key;


@end
@interface City : OdeAlObject {

}
@property(nonatomic, strong) NSString * name;
@property(nonatomic, strong) NSMutableArray * districts;


@end
@interface Customer : OdeAlObject {

}
@property(nonatomic, strong) NSString * email;
@property(nonatomic) BOOL  isVerifiedmail;
@property(nonatomic, strong) NSString * lastName;
@property(nonatomic, strong) NSString * firstName;
@property(nonatomic, strong) NSString * phone;
@property(nonatomic, strong) NSString * defaultCard;


@end
