™
RC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\Abstract\IAuthService.cs
	namespace 	
Business
 
. 
Abstract 
{ 
public 

	interface 
IAuthService !
{ 
IDataResult 
< 
User 
> 
Register "
(" #
UserForRegisterDto# 5
userForRegisterDto6 H
,H I
stringJ P
passwordQ Y
)Y Z
;Z [
IDataResult 
< 
User 
> 
Login 
(  
UserForLoginDto  /
userForLoginDto0 ?
)? @
;@ A
IResult 

UserExists 
( 
string !
email" '
)' (
;( )
IDataResult 
< 
AccessToken 
>  
CreateAccessToken! 2
(2 3
User3 7
user8 <
)< =
;= >
} 
} ˇ
SC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\Abstract\IBrandService.cs
	namespace

 	
Business


 
.

 
Abstract

 
{ 
public 

	interface 
IBrandService "
{ 
IDataResult 
< 
List 
< 
Brand 
> 
>  
GetAll! '
(' (
)( )
;) *
IDataResult 
< 
Brand 
> 
GetById "
(" #
int# &
id' )
)) *
;* +
IResult 
Add 
( 
Brand 
entity  
)  !
;! "
IResult 
Update 
( 
Brand 
entity #
)# $
;$ %
IResult 
Remove 
( 
Brand 
entity #
)# $
;$ %
} 
} ˛

VC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\Abstract\ICarImageService.cs
	namespace

 	
Business


 
.

 
Abstract

 
{ 
public 

	interface 
ICarImageService %
{ 
IDataResult 
< 
List 
< 
CarImage !
>! "
>" #
GetAll$ *
(* +
)+ ,
;, -
IDataResult 
< 
List 
< 
CarImage !
>! "
>" #
GetCarImagesByCarId$ 7
(7 8
int8 ;
carId< A
)A B
;B C
IDataResult 
< 
CarImage 
> 
GetById %
(% &
int& )
imageId* 1
)1 2
;2 3
IResult 
Add 
( 
	IFormFile 
file "
," #
CarImage$ ,
carImage- 5
)5 6
;6 7
IResult 
Update 
( 
	IFormFile  
file! %
,% &
CarImage' /
carImage0 8
)8 9
;9 :
IResult 
Delete 
( 
CarImage 
carImage  (
)( )
;) *
} 
} â
QC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\Abstract\ICarService.cs
	namespace 	
Business
 
. 
Abstract 
{ 
public 

	interface 
ICarService  
{ 
IDataResult 
< 
List 
< 
Car 
> 
> 
GetAll %
(% &
)& '
;' (
IDataResult 
< 
List 
< 
CarDetailDto %
>% &
>& '
GetCarDetails( 5
(5 6
)6 7
;7 8
IDataResult 
< 
List 
< 
Car 
> 
> 
GetCarsByBrandId /
(/ 0
int0 3
brandId4 ;
); <
;< =
IDataResult 
< 
List 
< 
Car 
> 
> 
GetCarsByColorId /
(/ 0
int0 3
colorId4 ;
); <
;< =
IDataResult 
< 
List 
< 
Car 
> 
> 
GetCarsByDailyPrice 2
(2 3
int3 6
min7 :
,: ;
int< ?
max@ C
)C D
;D E
IDataResult 
< 
List 
< 
Car 
> 
> 
GetCarsByModelYear 1
(1 2
int2 5
	modelYear6 ?
)? @
;@ A
IDataResult 
< 
Car 
> 
GetById  
(  !
int! $
id% '
)' (
;( )
IResult 
Add 
( 
Car 
car 
) 
; 
IResult 
Update 
( 
Car 
car 
) 
;  
IResult 
Remove 
( 
Car 
car 
) 
;  
} 
} ˇ
SC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\Abstract\IColorService.cs
	namespace		 	
Business		
 
.		 
Abstract		 
{

 
public 

	interface 
IColorService "
{ 
IDataResult 
< 
List 
< 
Color 
> 
>  
GetAll! '
(' (
)( )
;) *
IDataResult 
< 
Color 
> 
GetById "
(" #
int# &
id' )
)) *
;* +
IResult 
Add 
( 
Color 
entity  
)  !
;! "
IResult 
Update 
( 
Color 
entity #
)# $
;$ %
IResult 
Remove 
( 
Color 
entity #
)# $
;$ %
} 
} î
VC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\Abstract\ICustomerService.cs
	namespace		 	
Business		
 
.		 
Abstract		 
{

 
public 

	interface 
ICustomerService %
{ 
IDataResult 
< 
List 
< 
Customer !
>! "
>" #
GetAll$ *
(* +
)+ ,
;, -
IDataResult 
< 
Customer 
> 
GetById %
(% &
int& )
id* ,
), -
;- .
IResult 
Add 
( 
Customer 
entity #
)# $
;$ %
IResult 
Update 
( 
Customer 
entity  &
)& '
;' (
IResult 
Remove 
( 
Customer 
entity  &
)& '
;' (
} 
} ∑
TC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\Abstract\IRentalService.cs
	namespace

 	
Business


 
.

 
Abstract

 
{ 
public 

	interface 
IRentalService #
{ 
IDataResult 
< 
List 
< 
Rental 
>  
>  !
GetAll" (
(( )
)) *
;* +
IDataResult 
< 
List 
< 
RentalDetailDto (
>( )
>) *
GetRentalDetails+ ;
(; <
)< =
;= >
IDataResult 
< 
List 
< 
Rental 
>  
>  !
GetRentalByCarId" 2
(2 3
int3 6
id7 9
)9 :
;: ;
IDataResult 
< 
List 
< 
Rental 
>  
>  !!
GetRentalByCustomerId" 7
(7 8
int8 ;
id< >
)> ?
;? @
IDataResult 
< 
Rental 
? 
> 
GetById $
($ %
int% (
id) +
)+ ,
;, -
IResult 
Add 
( 
Rental 
entity !
)! "
;" #
IResult 
Update 
( 
Rental 
entity $
)$ %
;% &
IResult 
Remove 
( 
Rental 
entity $
)$ %
;% &
} 
} €
RC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\Abstract\IUserService.cs
	namespace 	
Business
 
. 
Abstract 
{ 
public 

	interface 
IUserService !
{ 
IDataResult 
< 
List 
< 
User 
> 
> 
GetAll  &
(& '
)' (
;( )
IDataResult 
< 
List 
< 
UserDto  
>  !
>! "
	GetAllDto# ,
(, -
)- .
;. /
IDataResult 
< 
User 
> 
GetUserById %
(% &
int& )
userId* 0
)0 1
;1 2
IDataResult 
< 
UserDto 
> 
GetUserDtoById +
(+ ,
int, /
userId0 6
)6 7
;7 8
IResult 
Add 
( 
User 
user 
) 
; 
IResult 
Delete 
( 
int 
userId !
)! "
;" #
IResult 
Update 
( 
User 
user  
)  !
;! "
IResult 
UpdateByDto 
( 
UserDto #
userDto$ +
)+ ,
;, -
IDataResult 
< 
List 
< 
OperationClaim '
>' (
>( )
	GetClaims* 3
(3 4
User4 8
user9 =
)= >
;> ?
IDataResult 
< 
User 
> 
GetUserByMail '
(' (
string( .
email/ 4
)4 5
;5 6
IDataResult 
< 
UserDto 
> 
GetUserDtoByMail -
(- .
string. 4
email5 :
): ;
;; <
} 
} ¥
eC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\BusinessAspects\Autofac\SecuredOperation.cs
	namespace 	
Business
 
. 
BusinessAspects "
." #
Autofac# *
{ 
public 

class 
SecuredOperation !
:" #
MethodInterception$ 6
{ 
private 
string 
[ 
] 
_roles 
;  
private  
IHttpContextAccessor $
?$ % 
_httpContextAccessor& :
;: ;
public 
SecuredOperation 
(  
string  &
roles' ,
), -
{ 	
_roles 
= 
roles 
. 
Split  
(  !
$char! $
)$ %
;% & 
_httpContextAccessor  
=! "
ServiceTool# .
.. /
ServiceProvider/ >
.> ?

GetService? I
<I J 
IHttpContextAccessorJ ^
>^ _
(_ `
)` a
;a b
} 	
	protected 
override 
void 
OnBefore  (
(( )
IInvocation) 4

invocation5 ?
)? @
{ 	
List 
< 
string 
> 

roleClaims #
=$ % 
_httpContextAccessor& :
.: ;
HttpContext; F
.F G
UserG K
.K L

ClaimRolesL V
(V W
)W X
;X Y
foreach   
(   
var   
role   
in    
_roles  ! '
)  ' (
{!! 
if"" 
("" 

roleClaims"" 
."" 
Contains"" '
(""' (
role""( ,
)"", -
)""- .
{## 
return$$ 
;$$ 
}%% 
}&& 
throw'' 
new'' 
	Exception'' 
(''  
Messages''  (
.''( )
AuthorizationDenied'') <
)''< =
;''= >
}(( 	
})) 
}** ˇ2
QC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\Concrete\AuthManager.cs
	namespace 	
Business
 
. 
Concrete 
{ 
public 

class 
AuthManager 
: 
IAuthService +
{ 
private 
IUserService 
_userService )
;) *
private 
ITokenHelper 
_tokenHelper )
;) *
public 
AuthManager 
( 
IUserService '
userService( 3
,3 4
ITokenHelper5 A
tokenHelperB M
)M N
{ 	
_userService 
= 
userService &
;& '
_tokenHelper 
= 
tokenHelper &
;& '
} 	
[ 	
ValidationAspect	 
( 
typeof  
(  !'
UserForRegisterDtoValidator! <
)< =
)= >
]> ?
public 
IDataResult 
< 
User 
>  
Register! )
() *
UserForRegisterDto* <
userForRegisterDto= O
,O P
stringQ W
passwordX `
)` a
{ 	
byte   
[   
]   
passwordHash   
,    
passwordSalt  ! -
;  - .
HashingHelper!! 
.!! 
CreatePasswordHash!! ,
(!!, -
password!!- 5
,!!5 6
out!!7 :
passwordHash!!; G
,!!G H
out!!I L
passwordSalt!!M Y
)!!Y Z
;!!Z [
var"" 
user"" 
="" 
new"" 
User"" 
{## 
Email$$ 
=$$ 
userForRegisterDto$$ *
.$$* +
Email$$+ 0
,$$0 1
	FirstName%% 
=%% 
userForRegisterDto%% .
.%%. /
	FirstName%%/ 8
,%%8 9
LastName&& 
=&& 
userForRegisterDto&& -
.&&- .
LastName&&. 6
,&&6 7
PasswordHash'' 
='' 
passwordHash'' +
,''+ ,
PasswordSalt(( 
=(( 
passwordSalt(( +
,((+ ,
Status)) 
=)) 
true)) 
}** 
;** 
_userService++ 
.++ 
Add++ 
(++ 
user++ !
)++! "
;++" #
return,, 
new,, 
SuccessDataResult,, (
<,,( )
User,,) -
>,,- .
(,,. /
user,,/ 3
,,,3 4
Messages,,5 =
.,,= >
UserRegistered,,> L
),,L M
;,,M N
}-- 	
[// 	
ValidationAspect//	 
(// 
typeof//  
(//  !$
UserForLoginDtoValidator//! 9
)//9 :
)//: ;
]//; <
public00 
IDataResult00 
<00 
User00 
>00  
Login00! &
(00& '
UserForLoginDto00' 6
userForLoginDto007 F
)00F G
{11 	
var22 
userToCheck22 
=22 
_userService22 *
.22* +
GetUserByMail22+ 8
(228 9
userForLoginDto229 H
.22H I
Email22I N
)22N O
;22O P
if33 
(33 
userToCheck33 
.33 
Data33  
==33! #
null33$ (
)33( )
{44 
return55 
new55 
ErrorDataResult55 *
<55* +
User55+ /
>55/ 0
(550 1
Messages551 9
.559 :
UserNotFound55: F
)55F G
;55G H
}66 
if88 
(88 
!88 
HashingHelper88 
.88 
VerifyPasswordHash88 1
(881 2
userForLoginDto882 A
.88A B
Password88B J
,88J K
userToCheck88L W
.88W X
Data88X \
.88\ ]
PasswordHash88] i
,88i j
userToCheck88k v
.88v w
Data88w {
.88{ |
PasswordSalt	88| à
)
88à â
)
88â ä
{99 
return:: 
new:: 
ErrorDataResult:: *
<::* +
User::+ /
>::/ 0
(::0 1
Messages::1 9
.::9 :
PasswordError::: G
)::G H
;::H I
};; 
return== 
new== 
SuccessDataResult== (
<==( )
User==) -
>==- .
(==. /
userToCheck==/ :
.==: ;
Data==; ?
,==? @
Messages==A I
.==I J
SuccessfulLogin==J Y
)==Y Z
;==Z [
}>> 	
public@@ 
IResult@@ 

UserExists@@ !
(@@! "
string@@" (
email@@) .
)@@. /
{AA 	
ifBB 
(BB 
_userServiceBB 
.BB 
GetUserByMailBB *
(BB* +
emailBB+ 0
)BB0 1
.BB1 2
DataBB2 6
!=BB7 9
nullBB: >
)BB> ?
{CC 
returnDD 
newDD 
ErrorResultDD &
(DD& '
MessagesDD' /
.DD/ 0
UserAlreadyExistsDD0 A
)DDA B
;DDB C
}EE 
returnFF 
newFF 
SuccessResultFF $
(FF$ %
)FF% &
;FF& '
}GG 	
publicII 
IDataResultII 
<II 
AccessTokenII &
>II& '
CreateAccessTokenII( 9
(II9 :
UserII: >
userII? C
)IIC D
{JJ 	
varKK 
claimsKK 
=KK 
_userServiceKK %
.KK% &
	GetClaimsKK& /
(KK/ 0
userKK0 4
)KK4 5
;KK5 6
varLL 
accessTokenLL 
=LL 
_tokenHelperLL *
.LL* +
CreateTokenLL+ 6
(LL6 7
userLL7 ;
,LL; <
claimsLL= C
.LLC D
DataLLD H
)LLH I
;LLI J
returnMM 
newMM 
SuccessDataResultMM (
<MM( )
AccessTokenMM) 4
>MM4 5
(MM5 6
accessTokenMM6 A
,MMA B
MessagesMMC K
.MMK L
AccessTokenCreatedMML ^
)MM^ _
;MM_ `
}NN 	
}OO 
}PP π
RC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\Concrete\BrandManager.cs
	namespace 	
Business
 
. 
Concrete 
{ 
public 

class 
BrandManager 
: 
IBrandService  -
{ 
private 
readonly 
	IBrandDal "
	_brandDal# ,
;, -
public 
BrandManager 
( 
	IBrandDal %
brandDal& .
). /
{ 	
	_brandDal 
= 
brandDal  
;  !
} 	
public 
IResult 
Add 
( 
Brand  
entity! '
)' (
{ 	
	_brandDal 
. 
Add 
( 
entity  
)  !
;! "
return 
new 
SuccessResult $
($ %
Messages% -
.- .

BrandAdded. 8
)8 9
;9 :
} 	
public 
IResult 
Remove 
( 
Brand #
entity$ *
)* +
{ 	
	_brandDal 
. 
Remove 
( 
entity #
)# $
;$ %
return   
new   
SuccessResult   $
(  $ %
Messages  % -
.  - .
BrandRemoved  . :
)  : ;
;  ; <
}!! 	
public## 
IResult## 
Update## 
(## 
Brand## #
entity##$ *
)##* +
{$$ 	
	_brandDal%% 
.%% 
Update%% 
(%% 
entity%% #
)%%# $
;%%$ %
return&& 
new&& 
SuccessResult&& $
(&&$ %
Messages&&% -
.&&- .
BrandUpdated&&. :
)&&: ;
;&&; <
}'' 	
public)) 
IDataResult)) 
<)) 
List)) 
<))  
Brand))  %
>))% &
>))& '
GetAll))( .
()). /
)))/ 0
{** 	
return++ 
new++ 
SuccessDataResult++ (
<++( )
List++) -
<++- .
Brand++. 3
>++3 4
>++4 5
(++5 6
	_brandDal++6 ?
.++? @
GetAll++@ F
(++F G
)++G H
,++H I
Messages++J R
.++R S
BrandsListed++S _
)++_ `
;++` a
},, 	
public.. 
IDataResult.. 
<.. 
Brand..  
>..  !
GetById.." )
(..) *
int..* -
id... 0
)..0 1
{// 	
return00 
new00 
SuccessDataResult00 (
<00( )
Brand00) .
>00. /
(00/ 0
	_brandDal000 9
.009 :
Get00: =
(00= >
b00> ?
=>00@ B
b00C D
.00D E
Id00E G
==00H J
id00K M
)00M N
,00N O
Messages00P X
.00X Y
BrandListedById00Y h
)00h i
;00i j
}11 	
}22 
}33 íI
UC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\Concrete\CarImageManager.cs
	namespace 	
Business
 
. 
Concrete 
{ 
public 

class 
CarImageManager  
:! "
ICarImageService# 3
{ 
private 
readonly 
ICarImageDal %
_carImageDal& 2
;2 3
private 
readonly 
IFileHelper $
_fileHelper% 0
;0 1
public 
CarImageManager 
( 
ICarImageDal +
carImageDal, 7
,7 8
IFileHelper9 D

fileHelperE O
)O P
{ 	
_carImageDal 
= 
carImageDal &
;& '
_fileHelper 
= 

fileHelper $
;$ %
} 	
public 
IResult 
Add 
( 
	IFormFile $
file% )
,) *
CarImage+ 3
carImage4 <
)< =
{ 	
IResult 
result 
= 
BusinessRules *
.* +
Run+ .
(. / 
CheckIfCarImageLimit/ C
(C D
carImageD L
.L M
CarIdM R
)R S
)S T
;T U
if 
( 
result 
!= 
null 
) 
{   
return!! 
result!! 
;!! 
}"" 
carImage$$ 
.$$ 
	ImagePath$$ 
=$$  
_fileHelper$$! ,
.$$, -
Upload$$- 3
($$3 4
file$$4 8
,$$8 9
PathConstant$$: F
.$$F G

ImagesPath$$G Q
)$$Q R
;$$R S
carImage%% 
.%% 
Date%% 
=%% 
DateTime%% $
.%%$ %
UtcNow%%% +
;%%+ ,
_carImageDal&& 
.&& 
Add&& 
(&& 
carImage&& %
)&&% &
;&&& '
return(( 
new(( 
SuccessResult(( $
((($ %
Messages((% -
.((- .
CarImageAdded((. ;
)((; <
;((< =
})) 	
public++ 
IResult++ 
Update++ 
(++ 
	IFormFile++ '
file++( ,
,++, -
CarImage++. 6
carImage++7 ?
)++? @
{,, 	
carImage-- 
.-- 
	ImagePath-- 
=--  
_fileHelper--! ,
.--, -
Update--- 3
(--3 4
file--4 8
,--8 9
PathConstant--: F
.--F G

ImagesPath--G Q
+--R S
carImage--T \
.--\ ]
	ImagePath--] f
,--f g
PathConstant--h t
.--t u

ImagesPath--u 
)	-- Ä
;
--Ä Å
_carImageDal.. 
... 
Update.. 
(..  
carImage..  (
)..( )
;..) *
return// 
new// 
SuccessResult// $
(//$ %
Messages//% -
.//- .
CarImageUpdated//. =
)//= >
;//> ?
}00 	
public22 
IResult22 
Delete22 
(22 
CarImage22 &
carImage22' /
)22/ 0
{33 	
_fileHelper44 
.44 
Delete44 
(44 
PathConstant44 +
.44+ ,

ImagesPath44, 6
+447 8
carImage449 A
.44A B
	ImagePath44B K
)44K L
;44L M
_carImageDal55 
.55 
Remove55 
(55  
carImage55  (
)55( )
;55) *
return66 
new66 
SuccessResult66 $
(66$ %
Messages66% -
.66- .
CarImageDeleted66. =
)66= >
;66> ?
}77 	
public99 
IDataResult99 
<99 
List99 
<99  
CarImage99  (
>99( )
>99) *
GetAll99+ 1
(991 2
)992 3
{:: 	
return;; 
new;; 
SuccessDataResult;; (
<;;( )
List;;) -
<;;- .
CarImage;;. 6
>;;6 7
>;;7 8
(;;8 9
_carImageDal;;9 E
.;;E F
GetAll;;F L
(;;L M
);;M N
);;N O
;;;O P
}<< 	
public>> 
IDataResult>> 
<>> 
CarImage>> #
>>># $
GetById>>% ,
(>>, -
int>>- 0
imageId>>1 8
)>>8 9
{?? 	
return@@ 
new@@ 
SuccessDataResult@@ (
<@@( )
CarImage@@) 1
>@@1 2
(@@2 3
_carImageDal@@3 ?
.@@? @
Get@@@ C
(@@C D
ci@@D F
=>@@G I
ci@@J L
.@@L M
Id@@M O
==@@P R
imageId@@S Z
)@@Z [
)@@[ \
;@@\ ]
}AA 	
publicCC 
IDataResultCC 
<CC 
ListCC 
<CC  
CarImageCC  (
>CC( )
>CC) *
GetCarImagesByCarIdCC+ >
(CC> ?
intCC? B
carIdCCC H
)CCH I
{DD 	
varEE 
resultEE 
=EE 
BusinessRulesEE &
.EE& '
RunEE' *
(EE* +
CheckCarImageEE+ 8
(EE8 9
carIdEE9 >
)EE> ?
)EE? @
;EE@ A
ifFF 
(FF 
resultFF 
!=FF 
nullFF 
)FF 
{GG 
returnHH 
newHH 
ErrorDataResultHH *
<HH* +
ListHH+ /
<HH/ 0
CarImageHH0 8
>HH8 9
>HH9 :
(HH: ;
GetDefaultImageHH; J
(HHJ K
carIdHHK P
)HHP Q
.HHQ R
DataHHR V
)HHV W
;HHW X
}II 
returnJJ 
newJJ 
SuccessDataResultJJ (
<JJ( )
ListJJ) -
<JJ- .
CarImageJJ. 6
>JJ6 7
>JJ7 8
(JJ8 9
_carImageDalJJ9 E
.JJE F
GetAllJJF L
(JJL M
ciJJM O
=>JJP R
ciJJS U
.JJU V
CarIdJJV [
==JJ\ ^
carIdJJ_ d
)JJd e
)JJe f
;JJf g
}KK 	
privateOO 
IResultOO  
CheckIfCarImageLimitOO ,
(OO, -
intOO- 0
carIdOO1 6
)OO6 7
{PP 	
varQQ 
resultQQ 
=QQ 
_carImageDalQQ %
.QQ% &
GetAllQQ& ,
(QQ, -
ciQQ- /
=>QQ0 2
ciQQ3 5
.QQ5 6
CarIdQQ6 ;
==QQ< >
carIdQQ? D
)QQD E
.QQE F
CountQQF K
;QQK L
ifRR 
(RR 
resultRR 
>=RR 
$numRR 
)RR 
{SS 
returnTT 
newTT 
ErrorResultTT &
(TT& '
MessagesTT' /
.TT/ 0!
CarImageLimitExceededTT0 E
)TTE F
;TTF G
}UU 
returnVV 
newVV 
SuccessResultVV $
(VV$ %
)VV% &
;VV& '
}WW 	
privateYY 
IResultYY 
CheckCarImageYY %
(YY% &
intYY& )
carIdYY* /
)YY/ 0
{ZZ 	
var[[ 
result[[ 
=[[ 
_carImageDal[[ %
.[[% &
GetAll[[& ,
([[, -
ci[[- /
=>[[0 2
ci[[3 5
.[[5 6
CarId[[6 ;
==[[< >
carId[[? D
)[[D E
.[[E F
Count[[F K
;[[K L
if\\ 
(\\ 
result\\ 
>\\ 
$num\\ 
)\\ 
{]] 
return^^ 
new^^ 
SuccessResult^^ (
(^^( )
)^^) *
;^^* +
}__ 
return`` 
new`` 
ErrorResult`` "
(``" #
)``# $
;``$ %
}aa 	
privatecc 
IDataResultcc 
<cc 
Listcc  
<cc  !
CarImagecc! )
>cc) *
>cc* +
GetDefaultImagecc, ;
(cc; <
intcc< ?
carIdcc@ E
)ccE F
{dd 	
Listee 
<ee 
CarImageee 
>ee 
carImageee #
=ee$ %
newee& )
Listee* .
<ee. /
CarImageee/ 7
>ee7 8
(ee8 9
)ee9 :
;ee: ;
carImageff 
.ff 
Addff 
(ff 
newff 
CarImageff %
{ff& '
CarIdff( -
=ff. /
carIdff0 5
,ff5 6
Dateff7 ;
=ff< =
DateTimeff> F
.ffF G
NowffG J
,ffJ K
	ImagePathffL U
=ffV W
$strffX j
}ffk l
)ffl m
;ffm n
returngg 
newgg 
SuccessDataResultgg (
<gg( )
Listgg) -
<gg- .
CarImagegg. 6
>gg6 7
>gg7 8
(gg8 9
carImagegg9 A
)ggA B
;ggB C
}hh 	
}ii 
}jj ÃU
PC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\Concrete\CarManager.cs
	namespace 	
Business
 
. 
Concrete 
{ 
public 

class 

CarManager 
: 
ICarService )
{ 
private 
readonly 
ICarDal  
_carDal! (
;( )
IBrandService 
_brandService #
;# $
public 

CarManager 
( 
ICarDal !
carDal" (
,( )
IBrandService* 7
brandService8 D
)D E
{ 	
_carDal 
= 
carDal 
; 
_brandService   
=   
brandService   (
;  ( )
}!! 	
[## 	
SecuredOperation##	 
(## 
$str## .
)##. /
]##/ 0
[$$ 	
ValidationAspect$$	 
($$ 
typeof$$  
($$  !
CarValidator$$! -
)$$- .
)$$. /
]$$/ 0
public%% 
IResult%% 
Add%% 
(%% 
Car%% 
car%% "
)%%" #
{&& 	
IResult'' 
result'' 
='' 
BusinessRules'' *
.''* +
Run''+ .
(''. /)
CheckIfCarCountOfBrandCorrect''/ L
(''L M
car''M P
.''P Q
Id''Q S
)''S T
,''T U.
"CheckIfCarDescriptionAlreadyExists(( 2
(((2 3
car((3 6
.((6 7
Description((7 B
)((B C
,((C D$
CheckIfBrandCountCorrect((E ]
(((] ^
)((^ _
)((_ `
;((` a
if** 
(** 
result** 
!=** 
null** 
)** 
{++ 
return,, 
result,, 
;,, 
}-- 
_carDal.. 
... 
Add.. 
(.. 
car.. 
).. 
;.. 
return// 
new// 
SuccessResult// $
(//$ %
Messages//% -
.//- .
CarAdded//. 6
)//6 7
;//7 8
}00 	
public11 
IResult11 
Update11 
(11 
Car11 !
car11" %
)11% &
{22 	
_carDal33 
.33 
Update33 
(33 
car33 
)33 
;33  
return44 
new44 
SuccessResult44 $
(44$ %
Messages44% -
.44- .

CarUpdated44. 8
)448 9
;449 :
}55 	
public66 
IResult66 
Remove66 
(66 
Car66 !
car66" %
)66% &
{77 	
_carDal88 
.88 
Remove88 
(88 
car88 
)88 
;88  
return99 
new99 
SuccessResult99 $
(99$ %
Messages99% -
.99- .

CarRemoved99. 8
)998 9
;999 :
}:: 	
public;; 
IDataResult;; 
<;; 
List;; 
<;;  
Car;;  #
>;;# $
>;;$ %
GetAll;;& ,
(;;, -
);;- .
{<< 	
return== 
new== 
SuccessDataResult== (
<==( )
List==) -
<==- .
Car==. 1
>==1 2
>==2 3
(==3 4
_carDal==4 ;
.==; <
GetAll==< B
(==B C
)==C D
,==D E
Messages==F N
.==N O

CarsListed==O Y
)==Y Z
;==Z [
}>> 	
public?? 
IDataResult?? 
<?? 
List?? 
<??  
CarDetailDto??  ,
>??, -
>??- .
GetCarDetails??/ <
(??< =
)??= >
{@@ 	
returnAA 
newAA 
SuccessDataResultAA (
<AA( )
ListAA) -
<AA- .
CarDetailDtoAA. :
>AA: ;
>AA; <
(AA< =
_carDalAA= D
.AAD E
GetCarDetailsDtoAAE U
(AAU V
)AAV W
,AAW X
MessagesAAY a
.AAa b

CarDetailsAAb l
)AAl m
;AAm n
}BB 	
publicDD 
IDataResultDD 
<DD 
ListDD 
<DD  
CarDD  #
>DD# $
>DD$ %
GetCarsByBrandIdDD& 6
(DD6 7
intDD7 :
brandIdDD; B
)DDB C
{EE 	
returnFF 
newFF 
SuccessDataResultFF (
<FF( )
ListFF) -
<FF- .
CarFF. 1
>FF1 2
>FF2 3
(FF3 4
_carDalFF4 ;
.FF; <
GetAllFF< B
(FFB C
cFFC D
=>FFE G
cFFH I
.FFI J
IdFFJ L
==FFM O
brandIdFFP W
)FFW X
,FFX Y
MessagesFFZ b
.FFb c
	CarListedFFc l
)FFl m
;FFm n
}GG 	
publicII 
IDataResultII 
<II 
ListII 
<II  
CarII  #
>II# $
>II$ %
GetCarsByColorIdII& 6
(II6 7
intII7 :
colorIdII; B
)IIB C
{JJ 	
returnKK 
newKK 
SuccessDataResultKK (
<KK( )
ListKK) -
<KK- .
CarKK. 1
>KK1 2
>KK2 3
(KK3 4
_carDalKK4 ;
.KK; <
GetAllKK< B
(KKB C
cKKC D
=>KKE G
cKKH I
.KKI J
IdKKJ L
==KKM O
colorIdKKP W
)KKW X
,KKX Y
MessagesKKZ b
.KKb c
CarsListedByColorKKc t
)KKt u
;KKu v
}LL 	
publicMM 
IDataResultMM 
<MM 
ListMM 
<MM  
CarMM  #
>MM# $
>MM$ %
GetCarsByDailyPriceMM& 9
(MM9 :
intMM: =
minMM> A
,MMA B
intMMC F
maxMMG J
)MMJ K
{NN 	
returnOO 
newOO 
SuccessDataResultOO (
<OO( )
ListOO) -
<OO- .
CarOO. 1
>OO1 2
>OO2 3
(OO3 4
_carDalOO4 ;
.OO; <
GetAllOO< B
(OOB C
cOOC D
=>OOE G
cOOH I
.OOI J

DailyPriceOOJ T
>OOU V
minOOW Z
&&OO[ ]
cOO^ _
.OO_ `

DailyPriceOO` j
<OOk l
maxOOm p
)OOp q
,OOq r
MessagesOOs {
.OO{ |#
CarsListedByDailyPrice	OO| í
)
OOí ì
;
OOì î
}PP 	
publicRR 
IDataResultRR 
<RR 
ListRR 
<RR  
CarRR  #
>RR# $
>RR$ %
GetCarsByModelYearRR& 8
(RR8 9
intRR9 <
	modelYearRR= F
)RRF G
{SS 	
returnTT 
newTT 
SuccessDataResultTT (
<TT( )
ListTT) -
<TT- .
CarTT. 1
>TT1 2
>TT2 3
(TT3 4
_carDalTT4 ;
.TT; <
GetAllTT< B
(TTB C
cTTC D
=>TTE G
cTTH I
.TTI J
	ModelYearTTJ S
==TTT V
	modelYearTTW `
)TT` a
,TTa b
MessagesTTc k
.TTk l"
CarsListedByModelYear	TTl Å
)
TTÅ Ç
;
TTÇ É
}UU 	
publicWW 
IDataResultWW 
<WW 
CarWW 
>WW 
GetByIdWW  '
(WW' (
intWW( +
idWW, .
)WW. /
{XX 	
returnYY 
newYY 
SuccessDataResultYY (
<YY( )
CarYY) ,
>YY, -
(YY- .
_carDalYY. 5
.YY5 6
GetYY6 9
(YY9 :
cYY: ;
=>YY< >
cYY? @
.YY@ A
IdYYA C
==YYD F
cYYG H
.YYH I
IdYYI K
)YYK L
,YYL M
MessagesYYN V
.YYV W
CarListByIdYYW b
)YYb c
;YYc d
}ZZ 	
private\\ 
IResult\\ )
CheckIfCarCountOfBrandCorrect\\ 5
(\\5 6
int\\6 9
brandId\\: A
)\\A B
{]] 	
var^^ 
result^^ 
=^^ 
_carDal^^  
.^^  !
GetAll^^! '
(^^' (
c^^( )
=>^^* ,
c^^- .
.^^. /
BrandId^^/ 6
==^^7 9
brandId^^: A
)^^A B
.^^B C
Count^^C H
(^^H I
)^^I J
;^^J K
if`` 
(`` 
result`` 
>`` 
$num`` 
)`` 
{aa 
returnbb 
newbb 
ErrorResultbb &
(bb& '
Messagesbb' /
.bb/ 0 
CarCountOfBrandErrorbb0 D
)bbD E
;bbE F
}cc 
returndd 
newdd 
SuccessResultdd $
(dd$ %
)dd% &
;dd& '
}ee 	
privategg 
IResultgg .
"CheckIfCarDescriptionAlreadyExistsgg :
(gg: ;
stringgg; A
descriptionggB M
)ggM N
{hh 	
varii 
resultii 
=ii 
_carDalii  
.ii  !
GetAllii! '
(ii' (
cii( )
=>ii* ,
cii- .
.ii. /
Descriptionii/ :
==ii; =
descriptionii> I
)iiI J
.iiJ K
CountiiK P
(iiP Q
)iiQ R
;iiR S
ifjj 
(jj 
resultjj 
>jj 
$numjj 
)jj 
{kk 
returnll 
newll 
ErrorResultll &
(ll& '
Messagesll' /
.ll/ 0&
CarDescriptionAlreadyExistll0 J
)llJ K
;llK L
}mm 
returnnn 
newnn 
SuccessResultnn $
(nn$ %
)nn% &
;nn& '
}oo 	
privateqq 
IResultqq $
CheckIfBrandCountCorrectqq 0
(qq0 1
)qq1 2
{rr 	
varss 
resultss 
=ss 
_brandServicess &
.ss& '
GetAllss' -
(ss- .
)ss. /
.ss/ 0
Datass0 4
.ss4 5
Countss5 :
(ss: ;
)ss; <
;ss< =
iftt 
(tt 
resulttt 
>tt 
$numtt 
)tt 
{uu 
returnvv 
newvv 
ErrorResultvv &
(vv& '
Messagesvv' /
.vv/ 0$
CheckIfBrandCountCorrectvv0 H
)vvH I
;vvI J
}ww 
returnxx 
newxx 
SuccessResultxx $
(xx$ %
)xx% &
;xx& '
}yy 	
}zz 
}{{ µ
RC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\Concrete\ColorManager.cs
	namespace 	
Business
 
. 
Concrete 
{ 
public 

class 
ColorManager 
: 
IColorService  -
{ 
private 
readonly 
	IColorDal "
	_colorDal# ,
;, -
public 
ColorManager 
( 
	IColorDal %
colorDal& .
). /
{ 	
	_colorDal 
= 
colorDal  
;  !
} 	
public 
IResult 
Add 
( 
Color  
entity! '
)' (
{ 	
	_colorDal 
. 
Add 
( 
entity  
)  !
;! "
return 
new 
SuccessResult $
($ %
Messages% -
.- .

ColorAdded. 8
)8 9
;9 :
} 	
public 
IResult 
Remove 
( 
Color #
entity$ *
)* +
{ 	
	_colorDal 
. 
Remove 
( 
entity #
)# $
;$ %
return   
new   
SuccessResult   $
(  $ %
Messages  % -
.  - .
ColorRemoved  . :
)  : ;
;  ; <
}!! 	
public## 
IResult## 
Update## 
(## 
Color## #
entity##$ *
)##* +
{$$ 	
	_colorDal%% 
.%% 
Update%% 
(%% 
entity%% #
)%%# $
;%%$ %
return&& 
new&& 
SuccessResult&& $
(&&$ %
Messages&&% -
.&&- .
ColorUpdated&&. :
)&&: ;
;&&; <
}'' 	
public)) 
IDataResult)) 
<)) 
List)) 
<))  
Color))  %
>))% &
>))& '
GetAll))( .
()). /
)))/ 0
{** 	
return++ 
new++ 
SuccessDataResult++ (
<++( )
List++) -
<++- .
Color++. 3
>++3 4
>++4 5
(++5 6
	_colorDal++6 ?
.++? @
GetAll++@ F
(++F G
)++G H
,++H I
Messages++J R
.++R S
ColorsListed++S _
)++_ `
;++` a
},, 	
public.. 
IDataResult.. 
<.. 
Color..  
>..  !
GetById.." )
(..) *
int..* -
id... 0
)..0 1
{// 	
return00 
new00 
SuccessDataResult00 (
<00( )
Color00) .
>00. /
(00/ 0
	_colorDal000 9
.009 :
Get00: =
(00= >
c00> ?
=>00@ B
c00C D
.00D E
Id00E G
==00H J
id00K M
)00M N
,00N O
Messages00P X
.00X Y
ColorListed00Y d
)00d e
;00e f
}11 	
}22 
}33 ä
UC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\Concrete\CustomerManager.cs
	namespace 	
Business
 
. 
Concrete 
{ 
public 

class 
CustomerManager  
:! "
ICustomerService# 3
{ 
private 
readonly 
ICustomerDal %
_customerDal& 2
;2 3
public 
CustomerManager 
( 
ICustomerDal +
customerDal, 7
)7 8
{ 	
_customerDal 
= 
customerDal &
;& '
} 	
public 
IResult 
Add 
( 
Customer #
entity$ *
)* +
{ 	
_customerDal 
. 
Add 
( 
entity #
)# $
;$ %
return 
new 
SuccessResult $
($ %
Messages% -
.- .
CustomerAdded. ;
); <
;< =
} 	
public 
IResult 
Remove 
( 
Customer &
entity' -
)- .
{ 	
_customerDal 
. 
Remove 
(  
entity  &
)& '
;' (
return   
new   
SuccessResult   $
(  $ %
Messages  % -
.  - .
CustomerRemoved  . =
)  = >
;  > ?
}!! 	
public## 
IResult## 
Update## 
(## 
Customer## &
entity##' -
)##- .
{$$ 	
_customerDal%% 
.%% 
Update%% 
(%%  
entity%%  &
)%%& '
;%%' (
return&& 
new&& 
SuccessResult&& $
(&&$ %
Messages&&% -
.&&- .
CustomerUpdated&&. =
)&&= >
;&&> ?
}'' 	
public)) 
IDataResult)) 
<)) 
List)) 
<))  
Customer))  (
>))( )
>))) *
GetAll))+ 1
())1 2
)))2 3
{** 	
return++ 
new++ 
SuccessDataResult++ (
<++( )
List++) -
<++- .
Customer++. 6
>++6 7
>++7 8
(++8 9
_customerDal++9 E
.++E F
GetAll++F L
(++L M
)++M N
,++N O
Messages++P X
.++X Y
CustomersListed++Y h
)++h i
;++i j
},, 	
public.. 
IDataResult.. 
<.. 
Customer.. #
>..# $
GetById..% ,
(.., -
int..- 0
id..1 3
)..3 4
{// 	
return00 
new00 
SuccessDataResult00 (
<00( )
Customer00) 1
>001 2
(002 3
_customerDal003 ?
.00? @
Get00@ C
(00C D
c00D E
=>00F H
c00I J
.00J K
Id00K M
==00N P
id00Q S
)00S T
,00T U
Messages00V ^
.00^ _
CustomerListedById00_ q
)00q r
;00r s
}11 	
}22 
}33 ¬-
SC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\Concrete\RentalManager.cs
	namespace 	
Business
 
. 
Concrete 
{ 
public 

class 
RentalManager 
:  
IRentalService! /
{ 
private 
readonly 

IRentalDal #

_rentalDal$ .
;. /
public 
RentalManager 
( 

IRentalDal '
	rentalDal( 1
)1 2
{ 	

_rentalDal 
= 
	rentalDal "
;" #
} 	
public 
IResult 
Add 
( 
Rental !
entity" (
)( )
{ 	
if 
( 
entity 
. 

ReturnDate !
==" $
null% )
)) *
{ 
return 
new 
ErrorResult &
(& '
Messages' /
./ 0
AlreadyRented0 =
)= >
;> ?
} 

_rentalDal 
. 
Add 
( 
entity !
)! "
;" #
return 
new 
SuccessResult $
($ %
Messages% -
.- .
RentalAdded. 9
)9 :
;: ;
}   	
public!! 
IResult!! 
Remove!! 
(!! 
Rental!! $
entity!!% +
)!!+ ,
{"" 	

_rentalDal## 
.## 
Remove## 
(## 
entity## $
)##$ %
;##% &
return$$ 
new$$ 
SuccessResult$$ $
($$$ %
Messages$$% -
.$$- .
RentalDeleted$$. ;
)$$; <
;$$< =
}%% 	
public'' 
IResult'' 
Update'' 
('' 
Rental'' $
entity''% +
)''+ ,
{(( 	

_rentalDal)) 
.)) 
Update)) 
()) 
entity)) $
)))$ %
;))% &
return** 
new** 
SuccessResult** $
(**$ %
Messages**% -
.**- .
RentalUpdated**. ;
)**; <
;**< =
}++ 	
public-- 
IDataResult-- 
<-- 
List-- 
<--  
Rental--  &
>--& '
>--' (
GetAll--) /
(--/ 0
)--0 1
{.. 	
return// 
new// 
SuccessDataResult// (
<//( )
List//) -
<//- .
Rental//. 4
>//4 5
>//5 6
(//6 7

_rentalDal//7 A
.//A B
GetAll//B H
(//H I
)//I J
,//J K
Messages//L T
.//T U
RentalsListed//U b
)//b c
;//c d
}00 	
public22 
IDataResult22 
<22 
Rental22 !
?22! "
>22" #
GetById22$ +
(22+ ,
int22, /
id220 2
)222 3
{33 	
return44 
new44 
SuccessDataResult44 (
<44( )
Rental44) /
>44/ 0
(440 1

_rentalDal441 ;
.44; <
Get44< ?
(44? @
r44@ A
=>44B D
r44E F
.44F G
Id44G I
==44J L
id44M O
)44O P
,44P Q
Messages44R Z
.44Z [
RentalListed44[ g
)44g h
;44h i
}55 	
public77 
IDataResult77 
<77 
List77 
<77  
Rental77  &
>77& '
>77' (
GetRentalByCarId77) 9
(779 :
int77: =
id77> @
)77@ A
{88 	
return99 
new99 
SuccessDataResult99 (
<99( )
List99) -
<99- .
Rental99. 4
>994 5
>995 6
(996 7

_rentalDal997 A
.99A B
GetAll99B H
(99H I
r99I J
=>99K M
r99N O
.99O P
CarId99P U
==99V X
id99Y [
)99[ \
,99\ ]
Messages99^ f
.99f g 
RentalsListedByCarId99g {
)99{ |
;99| }
}:: 	
public<< 
IDataResult<< 
<<< 
List<< 
<<<  
Rental<<  &
><<& '
><<' (!
GetRentalByCustomerId<<) >
(<<> ?
int<<? B
id<<C E
)<<E F
{== 	
return>> 
new>> 
SuccessDataResult>> (
<>>( )
List>>) -
<>>- .
Rental>>. 4
>>>4 5
>>>5 6
(>>6 7

_rentalDal>>7 A
.>>A B
GetAll>>B H
(>>H I
r>>I J
=>>>K M
r>>N O
.>>O P

CustomerId>>P Z
==>>[ ]
id>>^ `
)>>` a
,>>a b
Messages>>c k
.>>k l&
RentalsListedByCustomerId	>>l Ö
)
>>Ö Ü
;
>>Ü á
}?? 	
publicAA 
IDataResultAA 
<AA 
ListAA 
<AA  
RentalDetailDtoAA  /
>AA/ 0
>AA0 1
GetRentalDetailsAA2 B
(AAB C
)AAC D
{BB 	
returnCC 
newCC 
SuccessDataResultCC (
<CC( )
ListCC) -
<CC- .
RentalDetailDtoCC. =
>CC= >
>CC> ?
(CC? @

_rentalDalCC@ J
.CCJ K
GetRentalDetailsDtoCCK ^
(CC^ _
)CC_ `
,CC` a
MessagesCCb j
.CCj k
RentalDetailsCCk x
)CCx y
;CCy z
}DD 	
}EE 
}FF ≤x
QC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\Concrete\UserManager.cs
	namespace 	
Business
 
. 
Concrete 
{ 
public 

class 
UserManager 
: 
IUserService +
{ 
private 
readonly 
IUserDal !
_userDal" *
;* +
public 
UserManager 
( 
IUserDal #
userDal$ +
)+ ,
{ 	
_userDal 
= 
userDal 
; 
} 	
public 
IDataResult 
< 
List 
<  
User  $
>$ %
>% &
GetAll' -
(- .
). /
{ 	
return 
new 
SuccessDataResult (
<( )
List) -
<- .
User. 2
>2 3
>3 4
(4 5
_userDal5 =
.= >
GetAll> D
(D E
)E F
,F G
MessagesH P
.P Q
UsersListedQ \
)\ ]
;] ^
} 	
public!! 
IDataResult!! 
<!! 
List!! 
<!!  
UserDto!!  '
>!!' (
>!!( )
	GetAllDto!!* 3
(!!3 4
)!!4 5
{"" 	
return## 
new## 
SuccessDataResult## (
<##( )
List##) -
<##- .
UserDto##. 5
>##5 6
>##6 7
(##7 8
_userDal##8 @
.##@ A
GetUsersDtos##A M
(##M N
)##N O
,##O P
Messages##Q Y
.##Y Z
UsersListed##Z e
)##e f
;##f g
}$$ 	
public&& 
IDataResult&& 
<&& 
User&& 
>&&  
GetUserById&&! ,
(&&, -
int&&- 0
userId&&1 7
)&&7 8
{'' 	
var(( 
user(( 
=(( 
_userDal(( 
.((  
Get((  #
(((# $
u(($ %
=>((& (
u(() *
.((* +
Id((+ -
==((. 0
userId((1 7
)((7 8
;((8 9
if)) 
()) 
user)) 
!=)) 
null)) 
))) 
{** 
return++ 
new++ 
SuccessDataResult++ ,
<++, -
User++- 1
>++1 2
(++2 3
user++3 7
,++7 8
Messages++9 A
.++A B

UserListed++B L
)++L M
;++M N
},, 
return.. 
new.. 
ErrorDataResult.. &
<..& '
User..' +
>..+ ,
(.., -
Messages..- 5
...5 6
UserNotExist..6 B
)..B C
;..C D
}// 	
public11 
IDataResult11 
<11 
UserDto11 "
>11" #
GetUserDtoById11$ 2
(112 3
int113 6
userId117 =
)11= >
{22 	
return33 
new33 
SuccessDataResult33 (
<33( )
UserDto33) 0
>330 1
(331 2
_userDal332 :
.33: ;
GetUsersDtos33; G
(33G H
u33H I
=>33J L
u33M N
.33N O
Id33O Q
==33R T
userId33U [
)33[ \
.33\ ]
SingleOrDefault33] l
(33l m
)33m n
,33n o
Messages33p x
.33x y

UserListed	33y É
)
33É Ñ
;
33Ñ Ö
}44 	
[66 	
ValidationAspect66	 
(66 
typeof66  
(66  !
UserValidator66! .
)66. /
)66/ 0
]660 1
public77 
IResult77 
Add77 
(77 
User77 
user77  $
)77$ %
{88 	
var99 
rulesResult99 
=99 
BusinessRules99 +
.99+ ,
Run99, /
(99/ 0
CheckIfEmailExist990 A
(99A B
user99B F
.99F G
Email99G L
)99L M
)99M N
;99N O
if:: 
(:: 
rulesResult:: 
!=:: 
null:: #
)::# $
{;; 
return<< 
rulesResult<< "
;<<" #
}== 
_userDal?? 
.?? 
Add?? 
(?? 
user?? 
)?? 
;?? 
return@@ 
new@@ 
SuccessResult@@ $
(@@$ %
Messages@@% -
.@@- .
	UserAdded@@. 7
)@@7 8
;@@8 9
}AA 	
[CC 	
ValidationAspectCC	 
(CC 
typeofCC  
(CC  !
UserValidatorCC! .
)CC. /
)CC/ 0
]CC0 1
publicDD 
IResultDD 
UpdateDD 
(DD 
UserDD "
userDD# '
)DD' (
{EE 	
varFF 
rulesResultFF 
=FF 
BusinessRulesFF +
.FF+ ,
RunFF, /
(FF/ 0
CheckIfUserIdExistFF0 B
(FFB C
userFFC G
.FFG H
IdFFH J
)FFJ K
,GG !
CheckIfEmailAvailableGG '
(GG' (
userGG( ,
.GG, -
EmailGG- 2
)GG2 3
)GG3 4
;GG4 5
ifHH 
(HH 
rulesResultHH 
!=HH 
nullHH #
)HH# $
{II 
returnJJ 
rulesResultJJ "
;JJ" #
}KK 
_userDalMM 
.MM 
UpdateMM 
(MM 
userMM  
)MM  !
;MM! "
returnNN 
newNN 
SuccessResultNN $
(NN$ %
MessagesNN% -
.NN- .
UserUpdatedNN. 9
)NN9 :
;NN: ;
}OO 	
[QQ 	
ValidationAspectQQ	 
(QQ 
typeofQQ  
(QQ  !
UserDtoValidatorQQ! 1
)QQ1 2
)QQ2 3
]QQ3 4
publicRR 
IResultRR 
UpdateByDtoRR "
(RR" #
UserDtoRR# *
userDtoRR+ 2
)RR2 3
{SS 	
varTT 
rulesResultTT 
=TT 
BusinessRulesTT +
.TT+ ,
RunTT, /
(TT/ 0
CheckIfUserIdExistTT0 B
(TTB C
userDtoTTC J
.TTJ K
IdTTK M
)TTM N
,UU !
CheckIfEmailAvailableUU '
(UU' (
userDtoUU( /
.UU/ 0
EmailUU0 5
)UU5 6
)UU6 7
;UU7 8
ifVV 
(VV 
rulesResultVV 
!=VV 
nullVV #
)VV# $
{WW 
returnXX 
rulesResultXX "
;XX" #
}YY 
var[[ 
updatedUser[[ 
=[[ 
_userDal[[ &
.[[& '
Get[[' *
([[* +
u[[+ ,
=>[[- /
u[[0 1
.[[1 2
Id[[2 4
==[[5 7
userDto[[8 ?
.[[? @
Id[[@ B
&&[[C E
u[[F G
.[[G H
Email[[H M
==[[N P
userDto[[Q X
.[[X Y
Email[[Y ^
)[[^ _
;[[_ `
if\\ 
(\\ 
updatedUser\\ 
==\\ 
null\\ #
)\\# $
{]] 
return^^ 
new^^ 
ErrorResult^^ &
(^^& '
Messages^^' /
.^^/ 0
UserNotFound^^0 <
)^^< =
;^^= >
}__ 
updatedUseraa 
.aa 
	FirstNameaa !
=aa" #
userDtoaa$ +
.aa+ ,
	FirstNameaa, 5
;aa5 6
updatedUserbb 
.bb 
LastNamebb  
=bb! "
userDtobb# *
.bb* +
LastNamebb+ 3
;bb3 4
_userDalcc 
.cc 
Updatecc 
(cc 
updatedUsercc '
)cc' (
;cc( )
returndd 
newdd 
SuccessResultdd $
(dd$ %
Messagesdd% -
.dd- .
UserUpdateddd. 9
)dd9 :
;dd: ;
}ee 	
[gg 	
ValidationAspectgg	 
(gg 
typeofgg  
(gg  !
UserValidatorgg! .
)gg. /
)gg/ 0
]gg0 1
publichh 
IDataResulthh 
<hh 
Listhh 
<hh  
OperationClaimhh  .
>hh. /
>hh/ 0
	GetClaimshh1 :
(hh: ;
Userhh; ?
userhh@ D
)hhD E
{ii 	
varjj 
rulesResultjj 
=jj 
BusinessRulesjj +
.jj+ ,
Runjj, /
(jj/ 0
CheckIfUserIdExistjj0 B
(jjB C
userjjC G
.jjG H
IdjjH J
)jjJ K
)jjK L
;jjL M
ifkk 
(kk 
rulesResultkk 
!=kk 
nullkk #
)kk# $
{ll 
returnmm 
newmm 
ErrorDataResultmm *
<mm* +
Listmm+ /
<mm/ 0
OperationClaimmm0 >
>mm> ?
>mm? @
(mm@ A
rulesResultmmA L
.mmL M
MessagemmM T
)mmT U
;mmU V
}nn 
returnpp 
newpp 
SuccessDataResultpp (
<pp( )
Listpp) -
<pp- .
OperationClaimpp. <
>pp< =
>pp= >
(pp> ?
_userDalpp? G
.ppG H
	GetClaimsppH Q
(ppQ R
userppR V
)ppV W
)ppW X
;ppX Y
}qq 	
publicss 
IDataResultss 
<ss 
Userss 
>ss  
GetUserByMailss! .
(ss. /
stringss/ 5
emailss6 ;
)ss; <
{tt 	
returnuu 
newuu 
SuccessDataResultuu (
<uu( )
Useruu) -
>uu- .
(uu. /
_userDaluu/ 7
.uu7 8
Getuu8 ;
(uu; <
uuu< =
=>uu> @
uuuA B
.uuB C
EmailuuC H
==uuI K
emailuuL Q
)uuQ R
)uuR S
;uuS T
}vv 	
publicxx 
IDataResultxx 
<xx 
UserDtoxx "
>xx" #
GetUserDtoByMailxx$ 4
(xx4 5
stringxx5 ;
emailxx< A
)xxA B
{yy 	
returnzz 
newzz 
SuccessDataResultzz (
<zz( )
UserDtozz) 0
>zz0 1
(zz1 2
_userDalzz2 :
.zz: ;
GetUsersDtoszz; G
(zzG H
uzzH I
=>zzJ L
uzzM N
.zzN O
EmailzzO T
==zzU W
emailzzX ]
)zz] ^
.zz^ _
SingleOrDefaultzz_ n
(zzn o
)zzo p
,zzp q
Messageszzr z
.zzz {

UserListed	zz{ Ö
)
zzÖ Ü
;
zzÜ á
}{{ 	
public}} 
IResult}} 
Delete}} 
(}} 
int}} !
userId}}" (
)}}( )
{~~ 	
var 
rulesResult 
= 
BusinessRules +
.+ ,
Run, /
(/ 0
CheckIfUserIdExist0 B
(B C
userIdC I
)I J
)J K
;K L
if
ÄÄ 
(
ÄÄ 
rulesResult
ÄÄ 
!=
ÄÄ 
null
ÄÄ #
)
ÄÄ# $
{
ÅÅ 
return
ÇÇ 
rulesResult
ÇÇ "
;
ÇÇ" #
}
ÉÉ 
var
ÖÖ 
deletedUser
ÖÖ 
=
ÖÖ 
_userDal
ÖÖ &
.
ÖÖ& '
Get
ÖÖ' *
(
ÖÖ* +
u
ÖÖ+ ,
=>
ÖÖ- /
u
ÖÖ0 1
.
ÖÖ1 2
Id
ÖÖ2 4
==
ÖÖ5 7
userId
ÖÖ8 >
)
ÖÖ> ?
;
ÖÖ? @
_userDal
ÜÜ 
.
ÜÜ 
Remove
ÜÜ 
(
ÜÜ 
deletedUser
ÜÜ '
)
ÜÜ' (
;
ÜÜ( )
return
áá 
new
áá 
SuccessResult
áá $
(
áá$ %
Messages
áá% -
.
áá- .
UserDeleted
áá. 9
)
áá9 :
;
áá: ;
}
àà 	
private
åå 
IResult
åå  
CheckIfUserIdExist
åå *
(
åå* +
int
åå+ .
userId
åå/ 5
)
åå5 6
{
çç 	
var
éé 
result
éé 
=
éé 
_userDal
éé !
.
éé! "
GetAll
éé" (
(
éé( )
u
éé) *
=>
éé+ -
u
éé. /
.
éé/ 0
Id
éé0 2
==
éé3 5
userId
éé6 <
)
éé< =
.
éé= >
Any
éé> A
(
ééA B
)
ééB C
;
ééC D
if
èè 
(
èè 
!
èè 
result
èè 
)
èè 
{
êê 
return
ëë 
new
ëë 
ErrorResult
ëë &
(
ëë& '
Messages
ëë' /
.
ëë/ 0
UserNotExist
ëë0 <
)
ëë< =
;
ëë= >
}
íí 
return
ìì 
new
ìì 
SuccessResult
ìì $
(
ìì$ %
)
ìì% &
;
ìì& '
}
îî 	
private
ññ 
IResult
ññ 
CheckIfEmailExist
ññ )
(
ññ) *
string
ññ* 0
	userEmail
ññ1 :
)
ññ: ;
{
óó 	
var
òò 
result
òò 
=
òò #
BaseCheckIfEmailExist
òò .
(
òò. /
	userEmail
òò/ 8
)
òò8 9
;
òò9 :
if
ôô 
(
ôô 
result
ôô 
)
ôô 
{
öö 
return
õõ 
new
õõ 
ErrorResult
õõ &
(
õõ& '
Messages
õõ' /
.
õõ/ 0
UserEmailExist
õõ0 >
)
õõ> ?
;
õõ? @
}
úú 
return
ùù 
new
ùù 
SuccessResult
ùù $
(
ùù$ %
)
ùù% &
;
ùù& '
}
ûû 	
private
†† 
IResult
†† #
CheckIfEmailAvailable
†† -
(
††- .
string
††. 4
	userEmail
††5 >
)
††> ?
{
°° 	
var
¢¢ 
result
¢¢ 
=
¢¢ #
BaseCheckIfEmailExist
¢¢ .
(
¢¢. /
	userEmail
¢¢/ 8
)
¢¢8 9
;
¢¢9 :
if
££ 
(
££ 
!
££ 
result
££ 
)
££ 
{
§§ 
return
•• 
new
•• 
ErrorResult
•• &
(
••& '
Messages
••' /
.
••/ 0#
UserEmailNotAvailable
••0 E
)
••E F
;
••F G
}
¶¶ 
return
ßß 
new
ßß 
SuccessResult
ßß $
(
ßß$ %
)
ßß% &
;
ßß& '
}
®® 	
private
™™ 
bool
™™ #
BaseCheckIfEmailExist
™™ *
(
™™* +
string
™™+ 1
	userEmail
™™2 ;
)
™™; <
{
´´ 	
return
¨¨ 
_userDal
¨¨ 
.
¨¨ 
GetAll
¨¨ "
(
¨¨" #
u
¨¨# $
=>
¨¨% '
u
¨¨( )
.
¨¨) *
Email
¨¨* /
==
¨¨0 2
	userEmail
¨¨3 <
)
¨¨< =
.
¨¨= >
Any
¨¨> A
(
¨¨A B
)
¨¨B C
;
¨¨C D
}
≠≠ 	
}
ÆÆ 
}ØØ íG
OC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\Constants\Messages.cs
	namespace		 	
Business		
 
.		 
	Constants		 
{

 
public 

static 
class 
Messages  
{ 
public 
static 
string 
CarAdded %
=& '
$str( 3
;3 4
public 
static 
string 
CarAddConstraint -
=. /
$str	0 °
;
° ¢
public 
static 
string 
CouldNotAddedCar -
=. /
$str0 L
;L M
public 
static 
string 

CarRemoved '
=( )
$str* 7
;7 8
public 
static 
string 
CouldNotRemovedCar /
=0 1
$str2 P
;P Q
public 
static 
string 

CarUpdated '
=( )
$str* 7
;7 8
public 
static 
string 
CouldNotUpdatedCar /
=0 1
$str2 P
;P Q
public 
static 
string 

CarsListed '
=( )
$str* 7
;7 8
public 
static 
string 
	CarListed &
=' (
$str) 5
;5 6
public 
static 
string 
CarsListedByColor .
=/ 0
$str1 I
;I J
public 
static 
string "
CarsListedByDailyPrice 3
=4 5
$str6 R
;R S
public 
static 
string !
CarsListedByModelYear 2
=3 4
$str5 P
;P Q
public 
static 
string 
CarListById (
=) *
$str+ =
;= >
public 
static 
string 

CarDetails '
=( )
$str* 7
;7 8
public 
static 
string 
RentalDetails *
=+ ,
$str- =
;= >
public!! 
static!! 
string!! 
AlreadyRented!! *
=!!+ ,
$str!!- K
;!!K L
public"" 
static"" 
string"" 
RentalAdded"" (
="") *
$str""+ 9
;""9 :
public## 
static## 
string## 
RentalDeleted## *
=##+ ,
$str##- =
;##= >
public$$ 
static$$ 
string$$ 
RentalUpdated$$ *
=$$+ ,
$str$$- =
;$$= >
public%% 
static%% 
string%% 
RentalsListed%% *
=%%+ ,
$str%%- =
;%%= >
public&& 
static&& 
string&& 
RentalListed&& )
=&&* +
$str&&, ;
;&&; <
public'' 
static'' 
string''  
RentalsListedByCarId'' 1
=''2 3
$str''4 N
;''N O
public(( 
static(( 
string(( %
RentalsListedByCustomerId(( 6
=((7 8
$str((9 X
;((X Y
public** 
static** 
string** 

BrandAdded** '
=**( )
$str*** 7
;**7 8
public++ 
static++ 
string++ 
BrandRemoved++ )
=++* +
$str++, ;
;++; <
public,, 
static,, 
string,, 
BrandUpdated,, )
=,,* +
$str,,, ;
;,,; <
public-- 
static-- 
string-- 
BrandsListed-- )
=--* +
$str--, ;
;--; <
public.. 
static.. 
string.. 
BrandListedById.. ,
=..- .
$str../ C
;..C D
public00 
static00 
string00 

ColorAdded00 '
=00( )
$str00* 7
;007 8
public11 
static11 
string11 
ColorRemoved11 )
=11* +
$str11, ;
;11; <
public22 
static22 
string22 
ColorUpdated22 )
=22* +
$str22, ;
;22; <
public33 
static33 
string33 
ColorsListed33 )
=33* +
$str33, ;
;33; <
public44 
static44 
string44 
ColorListed44 (
=44) *
$str44+ 9
;449 :
public66 
static66 
string66 
CustomerAdded66 *
=66+ ,
$str66- =
;66= >
public77 
static77 
string77 
CustomerRemoved77 ,
=77- .
$str77/ A
;77A B
public88 
static88 
string88 
CustomerUpdated88 ,
=88- .
$str88/ A
;88A B
public99 
static99 
string99 
CustomersListed99 ,
=99- .
$str99/ A
;99A B
public:: 
static:: 
string:: 
CustomerListedById:: /
=::0 1
$str::2 I
;::I J
public;; 
static;; 
string;; "
CustomerListedByUserId;; 3
=;;4 5
$str;;6 R
;;;R S
public== 
static== 
string== 
	UserAdded== &
===' (
$str==) 5
;==5 6
public>> 
static>> 
string>> 
UserRemoved>> (
=>>) *
$str>>+ 9
;>>9 :
public?? 
static?? 
string?? 
UserUpdated?? (
=??) *
$str??+ 9
;??9 :
public@@ 
static@@ 
string@@ 
UsersListed@@ (
=@@) *
$str@@+ 9
;@@9 :
publicAA 
staticAA 
stringAA  
CarCountOfBrandErrorAA 1
=AA2 3
$strAA4 [
;AA[ \
publicBB 
staticBB 
stringBB &
CarDescriptionAlreadyExistBB 7
=BB8 9
$strBB: Y
;BBY Z
publicCC 
staticCC 
stringCC $
CheckIfBrandCountCorrectCC 5
=CC6 7
$strCC8 ]
;CC] ^
publicDD 
staticDD 
stringDD 
CarImageSavedDD *
=DD+ ,
$strDD- >
;DD> ?
publicEE 
staticEE 
stringEE 
CarImageUpdatedEE ,
=EE- .
$strEE/ B
;EEB C
publicFF 
staticFF 
stringFF 
CarImageDeletedFF ,
=FF- .
$strFF/ B
;FFB C
publicGG 
staticGG 
stringGG 
CarImagesListedGG ,
=GG- .
$strGG/ B
;GGB C
publicHH 
staticHH 
stringHH 
CarsImagesListedHH -
=HH. /
$strHH0 D
;HHD E
publicII 
staticII 
stringII 
GetDefaultCarImageII /
=II0 1
$strII2 E
;IIE F
publicJJ 
staticJJ 
stringJJ 
CarImageListedJJ +
=JJ, -
$strJJ. @
;JJ@ A
publicKK 
staticKK 
stringKK !
CarImageLimitExceededKK 2
=KK3 4
$strKK5 O
;KKO P
publicLL 
staticLL 
stringLL 
CarImageAddedLL *
=LL+ ,
$strLL- >
;LL> ?
publicMM 
staticMM 
stringMM 
AuthorizationDeniedMM 0
=MM1 2
$strMM3 L
;MML M
internalNN 
staticNN 
stringNN 

UserListedNN )
;NN) *
internalOO 
staticOO 
stringOO !
UserEmailNotAvailableOO 4
;OO4 5
internalPP 
staticPP 
stringPP 
UserEmailExistPP -
;PP- .
internalQQ 
staticQQ 
stringQQ 
UserNotFoundQQ +
;QQ+ ,
internalRR 
staticRR 
stringRR 
UserNotExistRR +
;RR+ ,
internalSS 
staticSS 
stringSS 
UserDeletedSS *
;SS* +
internalTT 
staticTT 
stringTT 
UserRegisteredTT -
;TT- .
internalUU 
staticUU 
UserUU 
PasswordErrorUU *
;UU* +
internalVV 
staticVV 
stringVV 
SuccessfulLoginVV .
;VV. /
internalWW 
staticWW 
stringWW 
UserAlreadyExistsWW 0
;WW0 1
internalXX 
staticXX 
stringXX 
AccessTokenCreatedXX 1
;XX1 2
}YY 
}ZZ ∑
SC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\Constants\PathConstant.cs
	namespace 	
Business
 
. 
	Constants 
{ 
public		 

static		 
class		 
PathConstant		 $
{

 
public 
static 
string 

ImagesPath '
=( )
$str* F
;F G
} 
} ù6
nC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\DependencyResolvers\Autofac\AutofacBusinessModule.cs
	namespace 	
Business
 
. 
DependencyResolvers &
.& '
Autofac' .
{ 
public 

class !
AutofacBusinessModule &
:' (
Module) /
{ 
	protected 
override 
void 
Load  $
($ %
ContainerBuilder% 5
builder6 =
)= >
{ 	
builder 
. 
RegisterType  
<  !

CarManager! +
>+ ,
(, -
)- .
.. /
As/ 1
<1 2
ICarService2 =
>= >
(> ?
)? @
.@ A
SingleInstanceA O
(O P
)P Q
;Q R
builder 
. 
RegisterType  
<  !
EfCarDal! )
>) *
(* +
)+ ,
., -
As- /
</ 0
ICarDal0 7
>7 8
(8 9
)9 :
.: ;
SingleInstance; I
(I J
)J K
;K L
builder 
. 
RegisterType  
<  !
BrandManager! -
>- .
(. /
)/ 0
.0 1
As1 3
<3 4
IBrandService4 A
>A B
(B C
)C D
.D E
SingleInstanceE S
(S T
)T U
;U V
builder 
. 
RegisterType  
<  !

EfBrandDal! +
>+ ,
(, -
)- .
.. /
As/ 1
<1 2
	IBrandDal2 ;
>; <
(< =
)= >
.> ?
SingleInstance? M
(M N
)N O
;O P
builder 
. 
RegisterType  
<  !
ColorManager! -
>- .
(. /
)/ 0
.0 1
As1 3
<3 4
IColorService4 A
>A B
(B C
)C D
.D E
SingleInstanceE S
(S T
)T U
;U V
builder 
. 
RegisterType  
<  !

EfColorDal! +
>+ ,
(, -
)- .
.. /
As/ 1
<1 2
	IColorDal2 ;
>; <
(< =
)= >
.> ?
SingleInstance? M
(M N
)N O
;O P
builder 
. 
RegisterType  
<  !
CustomerManager! 0
>0 1
(1 2
)2 3
.3 4
As4 6
<6 7
ICustomerService7 G
>G H
(H I
)I J
.J K
SingleInstanceK Y
(Y Z
)Z [
;[ \
builder   
.   
RegisterType    
<    !
EfCustomerDal  ! .
>  . /
(  / 0
)  0 1
.  1 2
As  2 4
<  4 5
ICustomerDal  5 A
>  A B
(  B C
)  C D
.  D E
SingleInstance  E S
(  S T
)  T U
;  U V
builder"" 
."" 
RegisterType""  
<""  !
RentalManager""! .
>"". /
(""/ 0
)""0 1
.""1 2
As""2 4
<""4 5
IRentalService""5 C
>""C D
(""D E
)""E F
.""F G
SingleInstance""G U
(""U V
)""V W
;""W X
builder## 
.## 
RegisterType##  
<##  !
EfRentalDal##! ,
>##, -
(##- .
)##. /
.##/ 0
As##0 2
<##2 3

IRentalDal##3 =
>##= >
(##> ?
)##? @
.##@ A
SingleInstance##A O
(##O P
)##P Q
;##Q R
builder%% 
.%% 
RegisterType%%  
<%%  !
CarImageManager%%! 0
>%%0 1
(%%1 2
)%%2 3
.%%3 4
As%%4 6
<%%6 7
ICarImageService%%7 G
>%%G H
(%%H I
)%%I J
.%%J K
SingleInstance%%K Y
(%%Y Z
)%%Z [
;%%[ \
builder&& 
.&& 
RegisterType&&  
<&&  !
EfCarImageDal&&! .
>&&. /
(&&/ 0
)&&0 1
.&&1 2
As&&2 4
<&&4 5
ICarImageDal&&5 A
>&&A B
(&&B C
)&&C D
.&&D E
SingleInstance&&E S
(&&S T
)&&T U
;&&U V
builder(( 
.(( 
RegisterType((  
<((  !
UserManager((! ,
>((, -
(((- .
)((. /
.((/ 0
As((0 2
<((2 3
IUserService((3 ?
>((? @
(((@ A
)((A B
.((B C
SingleInstance((C Q
(((Q R
)((R S
;((S T
builder)) 
.)) 
RegisterType))  
<))  !
	EfUserDal))! *
>))* +
())+ ,
))), -
.))- .
As)). 0
<))0 1
IUserDal))1 9
>))9 :
()): ;
))); <
.))< =
SingleInstance))= K
())K L
)))L M
;))M N
builder++ 
.++ 
RegisterType++  
<++  !
AuthManager++! ,
>++, -
(++- .
)++. /
.++/ 0
As++0 2
<++2 3
IAuthService++3 ?
>++? @
(++@ A
)++A B
;++B C
builder,, 
.,, 
RegisterType,,  
<,,  !
	JwtHelper,,! *
>,,* +
(,,+ ,
),,, -
.,,- .
As,,. 0
<,,0 1
ITokenHelper,,1 =
>,,= >
(,,> ?
),,? @
;,,@ A
var.. 
assembly.. 
=.. 
System.. !
...! "

Reflection.." ,
..., -
Assembly..- 5
...5 6 
GetExecutingAssembly..6 J
(..J K
)..K L
;..L M
builder00 
.00 !
RegisterAssemblyTypes00 )
(00) *
assembly00* 2
)002 3
.003 4#
AsImplementedInterfaces004 K
(00K L
)00L M
.11 '
EnableInterfaceInterceptors11 ,
(11, -
new11- 0"
ProxyGenerationOptions111 G
(11G H
)11H I
{22 
Selector33 
=33 
new33 "%
AspectInterceptorSelector33# <
(33< =
)33= >
}44 
)44 
.44 
SingleInstance44 !
(44! "
)44" #
;44# $
}55 	
}66 
}77 º
YC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\ValidationRules\CarValidator.cs
	namespace		 	
Business		
 
.		 
ValidationRules		 "
{

 
public 

class 
CarValidator 
: 
AbstractValidator  1
<1 2
Car2 5
>5 6
{ 
public 
CarValidator 
( 
) 
{ 	
RuleFor 
( 
c 
=> 
c 
. 
Description &
)& '
.' (
NotEmpty( 0
(0 1
)1 2
;2 3
RuleFor 
( 
c 
=> 
c 
. 
Description &
)& '
.' (
MinimumLength( 5
(5 6
$num6 7
)7 8
;8 9
RuleFor 
( 
c 
=> 
c 
. 

DailyPrice %
)% &
.& '
NotEmpty' /
(/ 0
)0 1
;1 2
RuleFor 
( 
c 
=> 
c 
. 

DailyPrice %
)% &
.& ' 
GreaterThanOrEqualTo' ;
(; <
$num< =
)= >
;> ?
RuleFor 
( 
c 
=> 
c 
. 

DailyPrice %
)% &
.& ' 
GreaterThanOrEqualTo' ;
(; <
$num< ?
)? @
.@ A
WhenA E
(E F
cF G
=>H J
cK L
.L M
BrandIdM T
==U W
$numX Y
)Y Z
;Z [
} 	
} 
} ¢
]C:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\ValidationRules\UserDtoValidator.cs
	namespace		 	
Business		
 
.		 
ValidationRules		 "
{

 
public 

class 
UserDtoValidator !
:" #
AbstractValidator$ 5
<5 6
UserDto6 =
>= >
{ 
public 
UserDtoValidator 
(  
)  !
{ 	
RuleFor 
( 
u 
=> 
u 
. 
	FirstName $
)$ %
.% &
NotEmpty& .
(. /
)/ 0
;0 1
RuleFor 
( 
u 
=> 
u 
. 
	FirstName $
)$ %
.% &
NotNull& -
(- .
). /
;/ 0
RuleFor 
( 
u 
=> 
u 
. 
	FirstName $
)$ %
.% &
MinimumLength& 3
(3 4
$num4 5
)5 6
;6 7
RuleFor 
( 
u 
=> 
u 
. 
	FirstName $
)$ %
.% &
MaximumLength& 3
(3 4
$num4 6
)6 7
;7 8
RuleFor 
( 
u 
=> 
u 
. 
LastName #
)# $
.$ %
NotEmpty% -
(- .
). /
;/ 0
RuleFor 
( 
u 
=> 
u 
. 
LastName #
)# $
.$ %
NotNull% ,
(, -
)- .
;. /
RuleFor 
( 
u 
=> 
u 
. 
LastName #
)# $
.$ %
MinimumLength% 2
(2 3
$num3 4
)4 5
;5 6
RuleFor 
( 
u 
=> 
u 
. 
LastName #
)# $
.$ %
MaximumLength% 2
(2 3
$num3 5
)5 6
;6 7
RuleFor 
( 
u 
=> 
u 
. 
Email  
)  !
.! "
NotEmpty" *
(* +
)+ ,
;, -
RuleFor 
( 
u 
=> 
u 
. 
Email  
)  !
.! "
NotNull" )
() *
)* +
;+ ,
RuleFor 
( 
u 
=> 
u 
. 
Email  
)  !
.! "
EmailAddress" .
(. /
)/ 0
;0 1
} 	
} 
} ±
eC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\ValidationRules\UserForLoginDtoValidator.cs
	namespace		 	
Business		
 
.		 
ValidationRules		 "
{

 
public 

class $
UserForLoginDtoValidator )
:* +
AbstractValidator, =
<= >
UserForLoginDto> M
>M N
{ 
public $
UserForLoginDtoValidator '
(' (
)( )
{ 	
RuleFor 
( 
u 
=> 
u 
. 
Email  
)  !
.! "
NotNull" )
() *
)* +
;+ ,
RuleFor 
( 
u 
=> 
u 
. 
Email  
)  !
.! "
NotEmpty" *
(* +
)+ ,
;, -
RuleFor 
( 
u 
=> 
u 
. 
Email  
)  !
.! "
EmailAddress" .
(. /
)/ 0
;0 1
RuleFor 
( 
u 
=> 
u 
. 
Password #
)# $
.$ %
NotNull% ,
(, -
)- .
;. /
RuleFor 
( 
u 
=> 
u 
. 
Password #
)# $
.$ %
NotEmpty% -
(- .
). /
;/ 0
RuleFor 
( 
u 
=> 
u 
. 
Password #
)# $
.$ %
MinimumLength% 2
(2 3
$num3 4
)4 5
;5 6
RuleFor 
( 
u 
=> 
u 
. 
Password #
)# $
.$ %
MaximumLength% 2
(2 3
$num3 5
)5 6
;6 7
} 	
} 
} €
hC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\ValidationRules\UserForRegisterDtoValidator.cs
	namespace		 	
Business		
 
.		 
ValidationRules		 "
{

 
public 

class '
UserForRegisterDtoValidator ,
:- .
AbstractValidator/ @
<@ A
UserForRegisterDtoA S
>S T
{ 
public '
UserForRegisterDtoValidator *
(* +
)+ ,
{ 	
RuleFor 
( 
u 
=> 
u 
. 
	FirstName $
)$ %
.% &
NotNull& -
(- .
). /
;/ 0
RuleFor 
( 
u 
=> 
u 
. 
	FirstName $
)$ %
.% &
NotEmpty& .
(. /
)/ 0
;0 1
RuleFor 
( 
u 
=> 
u 
. 
	FirstName $
)$ %
.% &
MinimumLength& 3
(3 4
$num4 5
)5 6
;6 7
RuleFor 
( 
u 
=> 
u 
. 
	FirstName $
)$ %
.% &
MaximumLength& 3
(3 4
$num4 6
)6 7
;7 8
RuleFor 
( 
u 
=> 
u 
. 
LastName #
)# $
.$ %
NotNull% ,
(, -
)- .
;. /
RuleFor 
( 
u 
=> 
u 
. 
LastName #
)# $
.$ %
NotEmpty% -
(- .
). /
;/ 0
RuleFor 
( 
u 
=> 
u 
. 
LastName #
)# $
.$ %
MinimumLength% 2
(2 3
$num3 4
)4 5
;5 6
RuleFor 
( 
u 
=> 
u 
. 
LastName #
)# $
.$ %
MaximumLength% 2
(2 3
$num3 5
)5 6
;6 7
RuleFor 
( 
u 
=> 
u 
. 
Email  
)  !
.! "
NotNull" )
() *
)* +
;+ ,
RuleFor 
( 
u 
=> 
u 
. 
Email  
)  !
.! "
NotEmpty" *
(* +
)+ ,
;, -
RuleFor 
( 
u 
=> 
u 
. 
Email  
)  !
.! "
EmailAddress" .
(. /
)/ 0
;0 1
RuleFor 
( 
u 
=> 
u 
. 
Password #
)# $
.$ %
NotNull% ,
(, -
)- .
;. /
RuleFor 
( 
u 
=> 
u 
. 
Password #
)# $
.$ %
NotEmpty% -
(- .
). /
;/ 0
RuleFor 
( 
u 
=> 
u 
. 
Password #
)# $
.$ %
MinimumLength% 2
(2 3
$num3 4
)4 5
;5 6
RuleFor   
(   
u   
=>   
u   
.   
Password   #
)  # $
.  $ %
MaximumLength  % 2
(  2 3
$num  3 5
)  5 6
;  6 7
}"" 	
}## 
}$$ ñ
ZC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Business\ValidationRules\UserValidator.cs
	namespace		 	
Business		
 
.		 
ValidationRules		 "
{

 
public 

class 
UserValidator 
:  
AbstractValidator! 2
<2 3
User3 7
>7 8
{ 
public 
UserValidator 
( 
) 
{ 	
RuleFor 
( 
u 
=> 
u 
. 
	FirstName $
)$ %
.% &
NotEmpty& .
(. /
)/ 0
;0 1
RuleFor 
( 
u 
=> 
u 
. 
	FirstName $
)$ %
.% &
NotNull& -
(- .
). /
;/ 0
RuleFor 
( 
u 
=> 
u 
. 
	FirstName $
)$ %
.% &
MinimumLength& 3
(3 4
$num4 5
)5 6
;6 7
RuleFor 
( 
u 
=> 
u 
. 
	FirstName $
)$ %
.% &
MaximumLength& 3
(3 4
$num4 6
)6 7
;7 8
RuleFor 
( 
u 
=> 
u 
. 
LastName #
)# $
.$ %
NotEmpty% -
(- .
). /
;/ 0
RuleFor 
( 
u 
=> 
u 
. 
LastName #
)# $
.$ %
NotNull% ,
(, -
)- .
;. /
RuleFor 
( 
u 
=> 
u 
. 
LastName #
)# $
.$ %
MinimumLength% 2
(2 3
$num3 4
)4 5
;5 6
RuleFor 
( 
u 
=> 
u 
. 
LastName #
)# $
.$ %
MaximumLength% 2
(2 3
$num3 5
)5 6
;6 7
RuleFor 
( 
u 
=> 
u 
. 
Email  
)  !
.! "
NotEmpty" *
(* +
)+ ,
;, -
RuleFor 
( 
u 
=> 
u 
. 
Email  
)  !
.! "
NotNull" )
() *
)* +
;+ ,
RuleFor 
( 
u 
=> 
u 
. 
Email  
)  !
.! "
EmailAddress" .
(. /
)/ 0
;0 1
} 	
} 
} 