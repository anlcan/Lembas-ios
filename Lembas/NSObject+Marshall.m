//
//  NSObject+Marshall.m
//  Runtime
//
//  Created by Anil Can Baykal on 7/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NSObject+Marshall.h"

@implementation Marshall

NSString * typeIdentifier = @"_type";

//==============================================================================
+(id) deserialize:(NSDictionary*)payload{
    return [NSObject deserialize:payload]; 
}

+(NSDictionary*) serialize:(id)value{
    return [NSObject serialize:value]; 
}

@end


//==============================================================================
@implementation NSObject(Marshall)

+ (id) parseValue:(id) value{
    
    if([(id)value isKindOfClass:[NSNumber class]] ){
        
        //const char * t = [value objCType];
        return value;
        
    } else if([value isKindOfClass:[NSString class]]) {
                
        return value; 
        
    } else if ( [value isKindOfClass:[NSArray class]]) {
        
        NSMutableArray * array  = [NSMutableArray arrayWithCapacity:[value count]]; 
        
        for ( id v in value){			
            [array addObject:[self parseValue:v]];
        }
			
        return array; 
        
    } else if ( [value isKindOfClass:[NSDictionary class]]) {
        
        id newVar = [NSObject deserialize:value]; 			
        return newVar;         
    }
    
    _NSLogC(LOG_EXCEPTION,@"parse failed for:%@",value);
    return nil;     
}

+(id) deserialize:(NSDictionary*)payload{
   
    NSString *  className = [payload objectForKey:typeIdentifier]; 
    
    Class class = NSClassFromString (className);
    id ins = [[class alloc] init];
    
    for ( NSString * key in [payload allKeys]) {
		
		id rawValue = [payload objectForKey:key]; 		        
		_NSLogC(LOG_DESERIALIZE, @"parsing %@ : %@", key, rawValue);
        
        id value = NULL;
        
        @try {
            value = [NSObject parseValue:rawValue];
            
            if (value && ![key isEqualToString:typeIdentifier]) {
                [ins setValue:value forKey:key];
            }
        }
        @catch (NSException *exception) {
            _NSLogC(LOG_EXCEPTION, @"Deserialize exception for %@:%@\n%@",key, value, exception);
        }

	}
    
    return ins;
}

+(id)evaluateValue:(id)value{
        
    if([(id)value isKindOfClass:[NSNumber class]] ){
        
        //const char * t = [value objCType];
        //NSLog(@"number type %s %@",t, value);
        return value;
        
    } else if([value isKindOfClass:[NSString class]] ){
        
        //[dict setObject:value forKey:nsname]; 
        return value; 
        
    } else if ( [value isKindOfClass:[NSArray class]]){
        
        id __strong strongValue = value;
        NSMutableArray * array = [NSMutableArray arrayWithCapacity:1];
        
        for ( id v in strongValue)
            [array addObject:[NSObject evaluateValue:v]];
        
        return array;
        
    } else  {
        
        NSDictionary * data = [NSObject serialize:value];
        //[dict setObject:data forKey:nsname]; 
        return data; 
        
    } 
}

+(NSMutableArray*) getSuperClasses:(NSObject*)obj{
    
    NSMutableArray * classes =  [NSMutableArray arrayWithCapacity:3]; 
	
    Class class = [obj class];
    [classes addObject:class];     
    
    while (class_getSuperclass(class) != [NSObject class]) {
        
        class = class_getSuperclass(class);
        [classes addObject:class]; 
        
    }
	
    return classes; 
}


+(NSDictionary*) serialize:(id) instance {
	   
    // FIXME bad design
    // request skip list
    static const  char* delegate 	= "delegate";
    static const  char* request  	= "httpRequest";
    
    const char * className = class_getName([instance class]);    
	unsigned int outCount, i;
    
	NSMutableDictionary * dict = [NSMutableDictionary dictionaryWithCapacity:3];
    
    [dict setObject:[NSString stringWithFormat:@"%s", className] forKey:typeIdentifier]; 
    
    NSMutableArray * classes = [self getSuperClasses:instance];
    @try {
        for ( Class requestClass in classes) {

            objc_property_t *properties = class_copyPropertyList(requestClass, &outCount);
            
            for (i = 0; i < outCount; i++) {
                objc_property_t property = properties[i];
                
                id value = NULL;
                const char * name = property_getName(property);
                if (strcmp(delegate, name) == 0 ||
                    strcmp(request, name) == 0
                    ){
                    _NSLog(@"%s",name);
                    continue;
                }
                    
                //Ivar ivar = object_getInstanceVariable(instance, name, &value);
                //const char * encoding  = ivar_getTypeEncoding(ivar);
                NSString  * nsname = [NSString stringWithUTF8String:name];
                value = [instance valueForKey:nsname];
                
                // only send variables with values, let the server worry about that.
                if (value != NULL) {
                    
                    id newValue = [NSObject evaluateValue:value];
                    [dict setObject:newValue forKey:nsname];
                    
                } else {
                    _NSLogC(LOG_EMPTY,@"Class %s.%@ -> empty var", className, nsname);
                }
            }
            
            free(properties);
        }
    } @catch (NSException * exception) {
        _NSLogC(LOG_EXCEPTION,@"Serialize exception for %@:", exception);
    }
    
    return dict; 
}

@end
