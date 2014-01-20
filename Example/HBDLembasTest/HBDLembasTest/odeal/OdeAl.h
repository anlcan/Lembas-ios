extern NSString * const OdeAlHost;
extern NSString * const OdeAlEndPoint;
/*

created by anlcan
on 2014-01-20 10:02:47.182520
using /base/data/home/apps/s~sync-server/yoxo.373024562454382839/generate.pyc
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
@class CustomerGetCardsRequest;
@class CustomerGetCardsResponse;
@class CustomerRemoveCardRequest;
@class CustomerRemoveCardResponse;
@class CustomerResponse;
@class CustomerUpsertPasswordRequest;
@class CustomerUpsertPasswordResponse;
@class PushRegisterRequest;
@class PushRegisterResponse;
@class RestRequest;
@class RestResponse;
@class BankInfo;
@class Item;
@class Merchant;
@class Organisation;
@class Payback;
@class Payment;
@class PaymentMetaData;
@class Product;
@class Registration;
@class ActivateRequest;
@class ActivateResponse;
@class CancelRequest;
@class CancelResponse;
@class RegisterRequest;
@class RegisterResponse;
@class SetupPasswordRequest;
@class SetupPasswordResponse;
@class LoginRequest;
@class LoginResponse;
@class SecondFactorRequest;
@class SecondFactorResponse;
@class CreditCard;
@class Device;
@class CancelPaymentRequest;
@class CancelPaymentResponse;
@class FinalizePaymentRequest;
@class FinalizePaymentResponse;
@class InitPaymentRequest;
@class InitPaymentResponse;
@class UpdatePaymentRequest;
@class UpdatePaymentResponse;
@class CustomerActivationRequest;
@class CustomerActivationResponse;
@class CustomerRegisterRequest;
@class CustomerRegisterResponse;
@class Customer;
@class CheckMerchantStatusRequest;
@class CheckMerchantStatusResponse;
@class DeleteBankInfoRequest;
@class DeleteBankInfoResponse;
@class GetMerchantPaymentsRequest;
@class GetMerchantPaymentsResponse;
@class GetPaybacksRequest;
@class GetPaybacksResponse;
@class LogoutRequest;
@class LogoutResponse;
@class PaybackForPaymentRequest;
@class PaybackForPaymentResponse;
@class PaybacksRequest;
@class PaybacksResponse;
@class PaymentsForPaybackRequest;
@class PaymentsForPaybackResponse;
@class ProductsRequest;
@class ProductsResponse;
@class RecentPaymentsRequest;
@class RecentPaymentsResponse;
@class RefundPaymentRequest;
@class RefundPaymentResponse;
@class UpdatePasswordRequest;
@class UpdatePasswordResponse;
@class UpsertBankInfoRequest;
@class UpsertBankInfoResponse;
@class UpsertProductRequest;


#pragma mark enum declaration

typedef enum{
	PaybackStatus_PENDING = 0,
	PaybackStatus_PAID = 1,
	PaybackStatus_CANCELLED = 2,
	PaybackStatus_DELAYED = 3,
	PaybackStatus_RESERVED_1 = 4,
	PaybackStatus_RESERVED_2 = 5,
	PaybackStatus_RESERVED_3 = 6
} PaybackStatus;


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
	SecondFactorAuth_SMS = 0,
	SecondFactorAuth_PUSH = 1,
	SecondFactorAuth_MOBILE_SIGNATURE = 2,
	SecondFactorAuth_PHONE = 3
} SecondFactorAuth;


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
@interface CustomerAddCreditCardRequest : OdeAlRequest {

}
@property(nonatomic, strong) CreditCard * creditCard;
@property(nonatomic, strong) NSString * customerKey;


@end
@interface CustomerAddCreditCardResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface CustomerGetCardsRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * customerKey;


@end
@interface CustomerGetCardsResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) NSMutableArray * cards;


@end
@interface CustomerRemoveCardRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * cardKey;
@property(nonatomic, strong) NSString * customerKey;


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


@end
@interface CustomerUpsertPasswordResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface PushRegisterRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * message;
@property(nonatomic, strong) NSString * deviceKey;
@property(nonatomic, strong) NSString * customerKey;
@property(nonatomic, strong) NSString * token;


@end
@interface PushRegisterResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface RestRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * method;
@property(nonatomic, strong) NSString * path;
@property(nonatomic, strong) NSString * customerKey;


@end
@interface RestResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface BankInfo : OdeAlObject {

}
@property(nonatomic, strong) NSString * city;
@property(nonatomic, strong) NSString * bank;
@property(nonatomic, strong) NSString * agency;
@property(nonatomic, strong) NSString * owner;
@property(nonatomic, strong) NSString * account;
@property(nonatomic, strong) NSString * iban;


@end
@interface Item : OdeAlObject {

}
@property(nonatomic, strong) Product * product;
@property(nonatomic) int  quantity;


@end
@interface Merchant : OdeAlObject {

}
@property(nonatomic, strong) NSString * email;
@property(nonatomic, strong) NSString * lastName;
@property(nonatomic, strong) NSString * tckNo;
@property(nonatomic, strong) NSString * firstName;
@property(nonatomic, strong) NSString * organisationName;
@property(nonatomic, strong) NSString * activeBankInfoKey;
@property(nonatomic, strong) NSString * phone;


@end
@interface Organisation : OdeAlObject {

}
@property(nonatomic, strong) NSString * city;
@property(nonatomic) long  paybackDate;
@property(nonatomic, strong) NSString * phone;
@property(nonatomic, strong) NSString * name;
@property(nonatomic, strong) NSString * area;
@property(nonatomic, strong) NSString * contactPhone;
@property(nonatomic, strong) NSString * vergiNo;
@property(nonatomic, strong) NSString * contactName;
@property(nonatomic, strong) NSString * email;
@property(nonatomic, strong) NSString * address;


@end
@interface Payback : OdeAlObject {

}
@property(nonatomic, strong) LembasDate * creationDate;
@property(nonatomic) PaybackStatus  paymentStatus;
@property(nonatomic, strong) LembasDate * dueDate;
@property(nonatomic, strong) NSString * amount;


@end
@interface Payment : OdeAlObject {

}
@property(nonatomic, strong) NSString * cardNumber;
@property(nonatomic) double  latitude;
@property(nonatomic) PaymentStatus  currentStatus;
@property(nonatomic, strong) LembasDate * cancelDate;
@property(nonatomic, strong) NSString * amount;
@property(nonatomic) double  longitude;
@property(nonatomic, strong) LembasDate * signedDate;
@property(nonatomic, strong) NSString * paymentId;


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
@interface Registration : OdeAlObject {

}
@property(nonatomic, strong) NSString * lastName;
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) NSString * tckNo;
@property(nonatomic) double  latitude;
@property(nonatomic, strong) NSString * activationCode;
@property(nonatomic, strong) NSString * phoneNumber;
@property(nonatomic, strong) NSString * firstName;
@property(nonatomic) double  longitude;


@end
@interface ActivateRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * activationCode;
@property(nonatomic, strong) NSString * registrationKey;


@end
@interface ActivateResponse : OdeAlResponse {

}
@property(nonatomic, strong) Merchant * merchant;
@property(nonatomic, strong) LembasObject * info;


@end
@interface CancelRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * requestKey;


@end
@interface CancelResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface RegisterRequest : OdeAlRequest {

}
@property(nonatomic, strong) Device * device;
@property(nonatomic, strong) Registration * registration;


@end
@interface RegisterResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) Registration * registration;


@end
@interface SetupPasswordRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * customerKey;
@property(nonatomic, strong) NSString * desiredPassword;
@property(nonatomic, strong) NSString * merchantKey;


@end
@interface SetupPasswordResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) Merchant * merchant;
@property(nonatomic, strong) Customer * customer;


@end
@interface LoginRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * tckNo;
@property(nonatomic, strong) Device * device;
@property(nonatomic, strong) NSString * password;
@property(nonatomic, strong) NSString * phone;


@end
@interface LoginResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) Organisation * organisation;
@property(nonatomic, strong) Merchant * merchant;
@property(nonatomic, strong) Device * device;
@property(nonatomic, strong) LembasDate * lastLogin;
@property(nonatomic, strong) NSMutableArray * bankInfo;
@property(nonatomic, strong) NSString * sessionId;
@property(nonatomic, strong) NSString * authorization;
@property(nonatomic, strong) Customer * customer;
@property(nonatomic) BOOL  needsSecondFactorAuth;
@property(nonatomic) SecondFactorAuth  secondFactorAuth;


@end
@interface SecondFactorRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * password;


@end
@interface SecondFactorResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface CreditCard : OdeAlObject {

}
@property(nonatomic, strong) NSString * cvv;
@property(nonatomic) long  expiryMonth;
@property(nonatomic, strong) NSString * type;
@property(nonatomic, strong) NSString * lastDigits;
@property(nonatomic, strong) NSString * number;
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
@interface CancelPaymentRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * paymentKey;


@end
@interface CancelPaymentResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface FinalizePaymentRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic) BOOL  storeCustomer;
@property(nonatomic, strong) Payment * payment;
@property(nonatomic, strong) NSString * hash;
@property(nonatomic, strong) CreditCard * card;
@property(nonatomic, strong) NSString * signatureImageData;


@end
@interface FinalizePaymentResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface InitPaymentRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;


@end
@interface InitPaymentResponse : OdeAlResponse {

}
@property(nonatomic, strong) NSString * challenge;
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) Payment * payment;
@property(nonatomic) double  paymentLimit;


@end
@interface UpdatePaymentRequest : OdeAlRequest {

}
@property(nonatomic, strong) CreditCard * card;
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) NSMutableArray * metaDataList;
@property(nonatomic, strong) NSString * customerPhone;
@property(nonatomic, strong) NSString * paymentKey;
@property(nonatomic, strong) NSString * customerName;


@end
@interface UpdatePaymentResponse : OdeAlResponse {

}
@property(nonatomic, strong) Customer * customer;
@property(nonatomic) BOOL  customerHasApp;
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) NSMutableArray * cards;


@end
@interface CustomerActivationRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * customerKey;
@property(nonatomic, strong) NSString * activationCode;


@end
@interface CustomerActivationResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface CustomerRegisterRequest : OdeAlRequest {

}
@property(nonatomic, strong) Customer * customer;


@end
@interface CustomerRegisterResponse : OdeAlResponse {

}
@property(nonatomic, strong) Customer * customer;
@property(nonatomic, strong) LembasObject * info;


@end
@interface Customer : OdeAlObject {

}
@property(nonatomic, strong) NSString * email;
@property(nonatomic, strong) NSString * lastName;
@property(nonatomic, strong) NSString * firstName;
@property(nonatomic, strong) NSString * phone;


@end
@interface CheckMerchantStatusRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;


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
@property(nonatomic, strong) NSString * bankInfoKey;


@end
@interface DeleteBankInfoResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface GetMerchantPaymentsRequest : OdeAlRequest {

}
@property(nonatomic) int  index;
@property(nonatomic) int  size;
@property(nonatomic, strong) NSString * merchantKey;


@end
@interface GetMerchantPaymentsResponse : OdeAlResponse {

}
@property(nonatomic, strong) NSMutableArray * payments;
@property(nonatomic, strong) LembasObject * info;


@end
@interface GetPaybacksRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;


@end
@interface GetPaybacksResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) NSMutableArray * paybacks;


@end
@interface LogoutRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;


@end
@interface LogoutResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface PaybackForPaymentRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) NSString * paymentKey;


@end
@interface PaybackForPaymentResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface PaybacksRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;


@end
@interface PaybacksResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) NSMutableArray * paybacks;


@end
@interface PaymentsForPaybackRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) NSString * paybackKey;


@end
@interface PaymentsForPaybackResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) NSMutableArray * payments;


@end
@interface ProductsRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;


@end
@interface ProductsResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) NSMutableArray * products;


@end
@interface RecentPaymentsRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;


@end
@interface RecentPaymentsResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;
@property(nonatomic, strong) NSMutableArray * payments;


@end
@interface RefundPaymentRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * paymentKey;
@property(nonatomic, strong) NSString * merchantKey;


@end
@interface RefundPaymentResponse : OdeAlResponse {

}
@property(nonatomic, strong) LembasObject * info;


@end
@interface UpdatePasswordRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) NSString * desiredPassword;
@property(nonatomic, strong) NSString * oldPassword;


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


@end
@interface UpsertBankInfoResponse : OdeAlResponse {

}
@property(nonatomic, strong) BankInfo * bankInfo;
@property(nonatomic, strong) LembasObject * info;


@end
@interface UpsertProductRequest : OdeAlRequest {

}
@property(nonatomic, strong) NSString * merchantKey;
@property(nonatomic, strong) Product * product;


@end
