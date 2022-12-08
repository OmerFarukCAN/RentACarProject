Ò
dC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Aspects\Autofac\Validation\ValidationAspect.cs
	namespace 	
Core
 
. 
Aspects 
. 
Autofac 
. 

Validation )
{ 
public 

class 
ValidationAspect !
:" #
MethodInterception$ 6
{ 
private 
Type 
_validatorType #
;# $
public 
ValidationAspect 
(  
Type  $
validatorType% 2
)2 3
{ 	
if 
( 
! 
typeof 
( 

IValidator "
)" #
.# $
IsAssignableFrom$ 4
(4 5
validatorType5 B
)B C
)C D
{ 
throw 
new 
System  
.  !
	Exception! *
(* +
$str+ L
)L M
;M N
} 
_validatorType 
= 
validatorType *
;* +
} 	
	protected 
override 
void 
OnBefore  (
(( )
IInvocation) 4

invocation5 ?
)? @
{ 	
var 
	validator 
= 
( 

IValidator '
)' (
	Activator( 1
.1 2
CreateInstance2 @
(@ A
_validatorTypeA O
)O P
;P Q
var 

entityType 
= 
_validatorType +
.+ ,
BaseType, 4
.4 5
GetGenericArguments5 H
(H I
)I J
[J K
$numK L
]L M
;M N
var 
entities 
= 

invocation %
.% &
	Arguments& /
./ 0
Where0 5
(5 6
t6 7
=>8 :
t; <
.< =
GetType= D
(D E
)E F
==G I

entityTypeJ T
)T U
;U V
foreach 
( 
var 
entity 
in  "
entities# +
)+ ,
{ 
ValidationTool   
.   
Validate   '
(  ' (
	validator  ( 1
,  1 2
entity  3 9
)  9 :
;  : ;
}!! 
}"" 	
}## 
}$$ ∞

hC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\CrossCuttingConcerns\Validation\ValidationTools.cs
	namespace		 	
Core		
 
.		  
CrossCuttingConcerns		 #
.		# $

Validation		$ .
{

 
public 

static 
class 
ValidationTool &
{ 
public 
static 
void 
Validate #
(# $

IValidator$ .
	validator/ 8
,8 9
object: @
entityA G
)G H
{ 	
var 
context 
= 
new 
ValidationContext /
</ 0
object0 6
>6 7
(7 8
entity8 >
)> ?
;? @
var 
result 
= 
	validator "
." #
Validate# +
(+ ,
context, 3
)3 4
;4 5
if 
( 
! 
result 
. 
IsValid 
)  
{ 
throw 
new 
ValidationException -
(- .
result. 4
.4 5
Errors5 ;
); <
;< =
} 
} 	
} 
} Û(
jC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\DataAccess\EntityFramework\EfEntityRepositoryBase.cs
	namespace

 	
Core


 
.

 

DataAccess

 
.

 
EntityFramework

 )
{ 
public 

class "
EfEntityRepositoryBase '
<' (
TEntity( /
,/ 0
TContext1 9
>9 :
:; <
IEntityRepository= N
<N O
TEntityO V
>V W
where 
TEntity 
: 
class 
, 
IEntity &
,& '
new( +
(+ ,
), -
where 
TContext 
: 
	DbContext "
," #
new$ '
(' (
)( )
{ 
public 
void 
Add 
( 
TEntity 
entity  &
)& '
{ 	
using 
( 
TContext 
context #
=$ %
new& )
TContext* 2
(2 3
)3 4
)4 5
{ 
var 
addedEntity 
=  !
context" )
.) *
Entry* /
(/ 0
entity0 6
)6 7
;7 8
addedEntity 
. 
State !
=" #
EntityState$ /
./ 0
Added0 5
;5 6
context 
. 
SaveChanges #
(# $
)$ %
;% &
} 
} 	
public 
void 
Update 
( 
TEntity "
entity# )
)) *
{ 	
using 
( 
TContext 
context #
=$ %
new& )
TContext* 2
(2 3
)3 4
)4 5
{ 
var 
updatedEntity !
=" #
context$ +
.+ ,
Entry, 1
(1 2
entity2 8
)8 9
;9 :
updatedEntity 
. 
State #
=$ %
EntityState& 1
.1 2
Modified2 :
;: ;
context   
.   
SaveChanges   #
(  # $
)  $ %
;  % &
}!! 
}"" 	
public$$ 
void$$ 
Remove$$ 
($$ 
TEntity$$ "
entity$$# )
)$$) *
{%% 	
using&& 
(&& 
TContext&& 
context&& #
=&&$ %
new&&& )
TContext&&* 2
(&&2 3
)&&3 4
)&&4 5
{'' 
var(( 
deletedEntity(( !
=((" #
context(($ +
.((+ ,
Entry((, 1
(((1 2
entity((2 8
)((8 9
;((9 :
deletedEntity)) 
.)) 
State)) #
=))$ %
EntityState))& 1
.))1 2
Deleted))2 9
;))9 :
context** 
.** 
SaveChanges** #
(**# $
)**$ %
;**% &
}++ 
},, 	
public.. 
List.. 
<.. 
TEntity.. 
>.. 
GetAll.. #
(..# $

Expression..$ .
<... /
Func../ 3
<..3 4
TEntity..4 ;
,..; <
bool..= A
>..A B
>..B C
?..C D
filter..E K
=..L M
null..N R
)..R S
{// 	
using00 
(00 
TContext00 
context00 #
=00$ %
new00& )
TContext00* 2
(002 3
)003 4
)004 5
{11 
return22 
filter22 
==22  
null22! %
?33 
context33 
.33 
Set33 
<33 
TEntity33 %
>33% &
(33& '
)33' (
.33( )
ToList33) /
(33/ 0
)330 1
:44 
context44 
.44 
Set44 
<44 
TEntity44 %
>44% &
(44& '
)44' (
.44( )
Where44) .
(44. /
filter44/ 5
)445 6
.446 7
ToList447 =
(44= >
)44> ?
;44? @
}55 
}66 	
public88 
TEntity88 
?88 
Get88 
(88 

Expression88 &
<88& '
Func88' +
<88+ ,
TEntity88, 3
,883 4
bool885 9
>889 :
>88: ;
filter88< B
)88B C
{99 	
using:: 
(:: 
TContext:: 
context:: #
=::$ %
new::& )
TContext::* 2
(::2 3
)::3 4
)::4 5
{;; 
return<< 
context<< 
.<< 
Set<< "
<<<" #
TEntity<<# *
><<* +
(<<+ ,
)<<, -
.<<- .
SingleOrDefault<<. =
(<<= >
filter<<> D
)<<D E
;<<E F
}== 
}>> 	
}?? 
}@@ π
UC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\DataAccess\IEntityRepository.cs
	namespace

 	
Core


 
.

 

DataAccess

 
{ 
public 

	interface 
IEntityRepository &
<& '
T' (
>( )
where* /
T0 1
:1 2
class3 8
,8 9
IEntity: A
,A B
newC F
(F G
)G H
{ 
List 
< 
T 
> 
GetAll 
( 

Expression !
<! "
Func" &
<& '
T' (
,( )
bool* .
>. /
>/ 0
?0 1
filter2 8
=9 :
null; ?
)? @
;@ A
T 	
?	 

Get 
( 

Expression 
< 
Func 
< 
T  
,  !
bool" &
>& '
>' (
filter) /
)/ 0
;0 1
void 
Add 
( 
T 
entity 
) 
; 
void 
Update 
( 
T 
entity 
) 
; 
void 
Remove 
( 
T 
entity 
) 
; 
} 
} È
WC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\DependencyResolvers\CoreModule.cs
	namespace 	
Core
 
. 
DependencyResolvers "
{ 
public 

class 

CoreModule 
: 
ICoreModule )
{		 
public

 
void

 
Load

 
(

 
IServiceCollection

 +
serviceCollections

, >
)

> ?
{ 	
serviceCollections 
. 
AddSingleton +
<+ , 
IHttpContextAccessor, @
,@ A
HttpContextAccessorB U
>U V
(V W
)W X
;X Y
} 	
} 
} •
YC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Entities\Concrete\OperationClaim.cs
	namespace 	
Core
 
. 
Entities 
. 
Concrete  
{ 
public		 

class		 
OperationClaim		 
:		  !
IEntity		" )
{

 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
? 
Name 
{ 
get !
;! "
set# &
;& '
}( )
} 
} ó
OC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Entities\Concrete\User.cs
	namespace 	
Core
 
. 
Entities 
. 
Concrete  
{ 
public		 

class		 
User		 
:		 
IEntity		 
{

 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
? 
	FirstName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
? 
LastName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
? 
Email 
{ 
get "
;" #
set$ '
;' (
}) *
public 
byte 
[ 
] 
? 
PasswordSalt #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
byte 
[ 
] 
? 
PasswordHash #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
bool 
Status 
{ 
get  
;  !
set" %
;% &
}' (
} 
} æ
]C:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Entities\Concrete\UserOperationClaim.cs
	namespace 	
Core
 
. 
Entities 
. 
Concrete  
{ 
public		 

class		 
UserOperationClaim		 #
:		$ %
IEntity		& -
{

 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public 
int 
OperationClaimId #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} â
FC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Entities\IDto.cs
	namespace 	
Core
 
. 
Entities 
{ 
public		 

	interface		 
IDto		 
{

 
} 
} è
IC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Entities\IEntity.cs
	namespace 	
Core
 
. 
Entities 
{ 
public		 

	interface		 
IEntity		 
{

 
} 
} ¯
SC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Extensions\ClaimExtensions.cs
	namespace 	
Core
 
. 

Extensions 
{ 
public 

static 
class 
ClaimExtensions '
{ 
public 
static 
void 
AddEmail #
(# $
this$ (
ICollection) 4
<4 5
Claim5 :
>: ;
claims< B
,B C
stringD J
emailK P
)P Q
{		 	
claims

 
.

 
Add

 
(

 
new

 
Claim

  
(

  !#
JwtRegisteredClaimNames

! 8
.

8 9
Email

9 >
,

> ?
email

@ E
)

E F
)

F G
;

G H
} 	
public 
static 
void 
AddName "
(" #
this# '
ICollection( 3
<3 4
Claim4 9
>9 :
claims; A
,A B
stringC I
nameJ N
)N O
{ 	
claims 
. 
Add 
( 
new 
Claim  
(  !

ClaimTypes! +
.+ ,
Name, 0
,0 1
name2 6
)6 7
)7 8
;8 9
} 	
public 
static 
void 
AddNameIdentifier ,
(, -
this- 1
ICollection2 =
<= >
Claim> C
>C D
claimsE K
,K L
stringM S
nameIdentifierT b
)b c
{ 	
claims 
. 
Add 
( 
new 
Claim  
(  !

ClaimTypes! +
.+ ,
NameIdentifier, :
,: ;
nameIdentifier< J
)J K
)K L
;L M
} 	
public 
static 
void 
AddRoles #
(# $
this$ (
ICollection) 4
<4 5
Claim5 :
>: ;
claims< B
,B C
stringD J
[J K
]K L
rolesM R
)R S
{ 	
roles 
. 
ToList 
( 
) 
. 
ForEach "
(" #
role# '
=>( *
claims+ 1
.1 2
Add2 5
(5 6
new6 9
Claim: ?
(? @

ClaimTypes@ J
.J K
RoleK O
,O P
roleQ U
)U V
)V W
)W X
;X Y
} 	
} 
} æ
]C:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Extensions\ClaimsPrincipalExtensions.cs
	namespace 	
Core
 
. 

Extensions 
{		 
public

 

static

 
class

 %
ClaimsPrincipalExtensions

 1
{ 
public 
static 
List 
< 
string !
>! "
Claims# )
() *
this* .
ClaimsPrincipal/ >
claimsPrincipal? N
,N O
stringP V
	claimTypeW `
)` a
{ 	
var 
result 
= 
claimsPrincipal (
?( )
.) *
FindAll* 1
(1 2
	claimType2 ;
); <
?< =
.= >
Select> D
(D E
xE F
=>G I
xJ K
.K L
ValueL Q
)Q R
.R S
ToListS Y
(Y Z
)Z [
;[ \
return 
result 
; 
} 	
public 
static 
List 
< 
string !
>! "

ClaimRoles# -
(- .
this. 2
ClaimsPrincipal3 B
claimsPrincipalC R
)R S
{ 	
return 
claimsPrincipal "
?" #
.# $
Claims$ *
(* +

ClaimTypes+ 5
.5 6
Role6 :
): ;
;; <
} 	
} 
} ⁄
_C:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Extensions\ServiceCollectionExtensions.cs
	namespace		 	
Core		
 
.		 

Extensions		 
{

 
public 

static 
class '
ServiceCollectionExtensions 3
{ 
public 
static 
IServiceCollection ("
AddDependencyResolvers) ?
(? @
this@ D
IServiceCollectionE W
serviceCollectionX i
,i j
ICoreModulek v
[v w
]w x
modules	y Ä
)
Ä Å
{ 	
foreach 
( 
var 
module 
in  "
modules# *
)* +
{ 
module 
. 
Load 
( 
serviceCollection -
)- .
;. /
} 
return 
ServiceTool 
. 
Create %
(% &
serviceCollection& 7
)7 8
;8 9
} 	
} 
} ¬
YC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\Business\BusinessRules.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Business !
{		 
public

 

class

 
BusinessRules

 
{ 
public 
static 
IResult 
Run !
(! "
params" (
IResult) 0
[0 1
]1 2
logics3 9
)9 :
{ 	
foreach 
( 
var 
logic 
in !
logics" (
)( )
{ 
if 
( 
! 
logic 
. 
Success "
)" #
{ 
return 
logic  
;  !
} 
} 
return 
null 
; 
} 	
} 
} ⁄
hC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\Helpers\FileHelpers\FileHelperManager.cs
	namespace		 	
Core		
 
.		 
	Utilities		 
.		 
Helpers		  
.		  !
FileHelpers		! ,
{

 
public 

class 
FileHelperManager "
:# $
IFileHelper% 0
{ 
public 
string 
Upload 
( 
	IFormFile &
file' +
,+ ,
string- 3
root4 8
)8 9
{ 	
if 
( 
file 
. 
Length 
> 
$num 
)  
{ 
if 
( 
! 
	Directory 
. 
Exists %
(% &
root& *
)* +
)+ ,
{ 
	Directory 
. 
CreateDirectory -
(- .
root. 2
)2 3
;3 4
} 
string 
	extension  
=! "
Path# '
.' (
GetExtension( 4
(4 5
file5 9
.9 :
FileName: B
)B C
;C D
string 
guid 
= 

GuidHelper (
.( )

CreateGuid) 3
(3 4
)4 5
;5 6
string 
filePath 
=  !
guid" &
+' (
	extension) 2
;2 3
using 
( 

FileStream !

fileStream" ,
=- .
File/ 3
.3 4
Create4 :
(: ;
root; ?
+@ A
filePathB J
)J K
)K L
{ 
file 
. 
CopyTo 
(  

fileStream  *
)* +
;+ ,

fileStream 
. 
Flush $
($ %
)% &
;& '
return 
filePath #
;# $
} 
} 
return   
null   
;   
}!! 	
public## 
string## 
Update## 
(## 
	IFormFile## &
file##' +
,##+ ,
string##- 3
filePath##4 <
,##< =
string##> D
root##E I
)##I J
{$$ 	
if%% 
(%% 
File%% 
.%% 
Exists%% 
(%% 
filePath%% $
)%%$ %
)%%% &
{&& 
File'' 
.'' 
Delete'' 
('' 
filePath'' $
)''$ %
;''% &
}(( 
return)) 
Upload)) 
()) 
file)) 
,)) 
root))  $
)))$ %
;))% &
}** 	
public,, 
void,, 
Delete,, 
(,, 
string,, !
filePath,," *
),,* +
{-- 	
if.. 
(.. 
File.. 
... 
Exists.. 
(.. 
filePath.. $
)..$ %
)..% &
{// 
File00 
.00 
Delete00 
(00 
filePath00 $
)00$ %
;00% &
}11 
}22 	
}33 
}44 ï
bC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\Helpers\FileHelpers\IFileHelper.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Helpers  
.  !
FileHelpers! ,
{		 
public

 

	interface

 
IFileHelper

  
{ 
string 
Upload 
( 
	IFormFile 
file  $
,$ %
string& ,
root- 1
)1 2
;2 3
void 
Delete 
( 
string 
filePath #
)# $
;$ %
string 
Update 
( 
	IFormFile 
file  $
,$ %
string& ,
filePath- 5
,5 6
string7 =
root> B
)B C
;C D
} 
} —
aC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\Helpers\GuidHelpers\GuidHelper.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Helpers  
.  !
GuidHelpers! ,
{ 
public		 

static		 
class		 

GuidHelper		 "
{

 
public 
static 
string 

CreateGuid '
(' (
)( )
{ 	
return 
Guid 
. 
NewGuid 
(  
)  !
.! "
ToString" *
(* +
)+ ,
;, -
} 	
} 
} Ò
iC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\Interceptors\AspectInterceptorSelector.cs
	namespace		 	
Core		
 
.		 
	Utilities		 
.		 
Interceptors		 %
{

 
public 

class %
AspectInterceptorSelector *
:+ , 
IInterceptorSelector- A
{ 
public 
IInterceptor 
[ 
] 
SelectInterceptors 0
(0 1
Type1 5
type6 :
,: ;

MethodInfo< F
methodG M
,M N
IInterceptorO [
[[ \
]\ ]
interceptors^ j
)j k
{ 	
var 
classAttributes 
=  !
type" &
.& '
GetCustomAttributes' :
<: ;+
MethodInterceptionBaseAttribute; Z
>Z [
( 
true 
) 
. 
ToList 
( 
) 
;  
var 
methodAttributes  
=! "
type# '
.' (
	GetMethod( 1
(1 2
method2 8
.8 9
Name9 =
)= >
. 
GetCustomAttributes $
<$ %+
MethodInterceptionBaseAttribute% D
>D E
(E F
trueF J
)J K
;K L
classAttributes 
. 
AddRange $
($ %
methodAttributes% 5
)5 6
;6 7
return 
classAttributes "
." #
OrderBy# *
(* +
x+ ,
=>- /
x0 1
.1 2
Priority2 :
): ;
.; <
ToArray< C
(C D
)D E
;E F
} 	
} 
} º
bC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\Interceptors\MethodInterception.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Interceptors %
{		 
public

 

abstract

 
class

 
MethodInterception

 ,
:

- .+
MethodInterceptionBaseAttribute

/ N
{ 
	protected 
virtual 
void 
OnBefore '
(' (
IInvocation( 3

invocation4 >
)> ?
{@ A
}B C
	protected 
virtual 
void 
OnAfter &
(& '
IInvocation' 2

invocation3 =
)= >
{? @
}A B
	protected 
virtual 
void 
OnException *
(* +
IInvocation+ 6

invocation7 A
,A B
SystemC I
.I J
	ExceptionJ S
eT U
)U V
{W X
}Y Z
	protected 
virtual 
void 
	OnSuccess (
(( )
IInvocation) 4

invocation5 ?
)? @
{A B
}C D
public 
override 
void 
	Intercept &
(& '
IInvocation' 2

invocation3 =
)= >
{ 	
var 
	isSuccess 
= 
true  
;  !
OnBefore 
( 

invocation 
)  
;  !
try 
{ 

invocation 
. 
Proceed "
(" #
)# $
;$ %
} 
catch 
( 
	Exception 
e 
) 
{ 
	isSuccess 
= 
false !
;! "
OnException 
( 

invocation &
,& '
e( )
)) *
;* +
throw 
; 
} 
finally 
{ 
if   
(   
	isSuccess   
)   
{!! 
	OnSuccess"" 
("" 

invocation"" (
)""( )
;"") *
}## 
}$$ 
OnAfter%% 
(%% 

invocation%% 
)%% 
;%%  
}&& 	
}'' 
}(( ™	
oC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\Interceptors\MethodInterceptionBaseAttribute.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Interceptors %
{		 
[

 
AttributeUsage

 
(

 
AttributeTargets

 $
.

$ %
Class

% *
|

+ ,
AttributeTargets

- =
.

= >
Method

> D
,

D E
AllowMultiple

F S
=

T U
true

V Z
,

Z [
	Inherited

\ e
=

f g
true

h l
)

l m
]

m n
public 

abstract 
class +
MethodInterceptionBaseAttribute 9
:: ;
	Attribute< E
,E F
IInterceptorG S
{ 
public 
int 
Priority 
{ 
get !
;! "
set# &
;& '
}( )
public 
virtual 
void 
	Intercept %
(% &
IInvocation& 1

invocation2 <
)< =
{ 	
} 	
} 
} Õ
RC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\IoC\ICoreModule.cs
	namespace 	
Core
 
. 
	Utilities 
. 
IoC 
{		 
public

 

	interface

 
ICoreModule

  
{ 
void 
Load 
( 
IServiceCollection $
serviceCollection% 6
)6 7
;7 8
} 
}  
RC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\IoC\ServiceTool.cs
	namespace 	
Core
 
. 
	Utilities 
. 
IoC 
{		 
public

 

static

 
class

 
ServiceTool

 #
{ 
public 
static 
IServiceProvider &
ServiceProvider' 6
{7 8
get9 <
;< =
private> E
setF I
;I J
}K L
public 
static 
IServiceCollection (
Create) /
(/ 0
IServiceCollection0 B
servicesC K
)K L
{ 	
ServiceProvider 
= 
services &
.& ' 
BuildServiceProvider' ;
(; <
)< =
;= >
return 
services 
; 
} 	
} 
} ›

UC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\Results\DataResult.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Results  
{ 
public		 

class		 

DataResult		 
<		 
T		 
>		 
:		  
Result		! '
,		' (
IDataResult		) 4
<		4 5
T		5 6
>		6 7
{

 
public 

DataResult 
( 
T 
data  
,  !
bool" &
success' .
,. /
string0 6
message7 >
)> ?
:@ A
baseB F
(F G
successG N
,N O
messageP W
)W X
{ 	
Data 
= 
data 
; 
} 	
public 

DataResult 
( 
T 
data  
,  !
bool" &
success' .
). /
:0 1
base2 6
(6 7
success7 >
)> ?
{ 	
Data 
= 
data 
; 
} 	
public 
T 
Data 
{ 
get 
; 
} 
} 
} ª
ZC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\Results\ErrorDataResult.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Results  
{ 
public		 

class		 
ErrorDataResult		  
<		  !
T		! "
>		" #
:		$ %

DataResult		& 0
<		0 1
T		1 2
>		2 3
{

 
public 
ErrorDataResult 
( 
T  
data! %
,% &
string' -
message. 5
)5 6
:7 8
base9 =
(= >
data> B
,B C
falseD I
,I J
messageK R
)R S
{ 	
} 	
public 
ErrorDataResult 
( 
T  
data! %
)% &
:' (
base) -
(- .
data. 2
,2 3
false4 9
)9 :
{ 	
} 	
public 
ErrorDataResult 
( 
string %
message& -
)- .
:/ 0
base1 5
(5 6
default6 =
,= >
false? D
,D E
messageF M
)M N
{ 	
} 	
public 
ErrorDataResult 
( 
)  
:! "
base# '
(' (
default( /
,/ 0
false1 6
)6 7
{ 	
} 	
} 
} ß
VC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\Results\ErrorResult.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Results  
{ 
public		 

class		 
ErrorResult		 
:		 
Result		 %
{

 
public 
ErrorResult 
( 
string !
message" )
)) *
:+ ,
base- 1
(1 2
false2 7
,7 8
message9 @
)@ A
{ 	
} 	
public 
ErrorResult 
( 
) 
: 
base #
(# $
false$ )
)) *
{ 	
} 	
} 
} ı
VC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\Results\IDataResult.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Results  
{ 
public		 

	interface		 
IDataResult		  
<		  !
T		! "
>		" #
:		$ %
IResult		& -
{

 
T 	
Data
 
{ 
get 
; 
} 
} 
} â
RC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\Results\IResult.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Results  
{ 
public		 

	interface		 
IResult		 
{

 
bool 
Success 
{ 
get 
; 
} 
string 
Message 
{ 
get 
; 
} 
} 
} Å	
QC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\Results\Result.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Results  
{ 
public		 

class		 
Result		 
:		 
IResult		 !
{

 
public 
Result 
( 
bool 
success "
," #
string$ *
message+ 2
)2 3
:4 5
this6 :
(: ;
success; B
)B C
{ 	
Message 
= 
message 
; 
} 	
public 
Result 
( 
bool 
success "
)" #
{ 	
Success 
= 
success 
; 
} 	
public 
bool 
Success 
{ 
get !
;! "
}# $
public 
string 
Message 
{ 
get  #
;# $
}% &
} 
} √
\C:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\Results\SuccessDataResult.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Results  
{ 
public		 

class		 
SuccessDataResult		 "
<		" #
T		# $
>		$ %
:		& '

DataResult		( 2
<		2 3
T		3 4
>		4 5
{

 
public 
SuccessDataResult  
(  !
T! "
data# '
,' (
string) /
message0 7
)7 8
:9 :
base; ?
(? @
data@ D
,D E
trueF J
,J K
messageL S
)S T
{ 	
} 	
public 
SuccessDataResult  
(  !
T! "
data# '
)' (
:) *
base+ /
(/ 0
data0 4
,4 5
true6 :
): ;
{ 	
} 	
public 
SuccessDataResult  
(  !
string! '
message( /
)/ 0
:1 2
base3 7
(7 8
default8 ?
,? @
trueA E
,E F
messageG N
)N O
{ 	
} 	
public 
SuccessDataResult  
(  !
)! "
:# $
base% )
() *
default* 1
,1 2
true3 7
)7 8
{ 	
} 	
} 
} ≠
XC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\Results\SuccessResult.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Results  
{ 
public		 

class		 
SuccessResult		 
:		  
Result		! '
{

 
public 
SuccessResult 
( 
string #
message$ +
)+ ,
:- .
base/ 3
(3 4
true4 8
,8 9
message: A
)A B
{ 	
} 	
public 
SuccessResult 
( 
) 
:  
base! %
(% &
true& *
)* +
{ 	
} 	
} 
} —
hC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\Security\Encryption\SecurityKeyHelper.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Security !
.! "

Encryption" ,
{		 
public

 

class

 
SecurityKeyHelper

 "
{ 
public 
static 
SecurityKey !
CreateSecurityKey" 3
(3 4
string4 :
securityKey; F
)F G
{ 	
return 
new  
SymmetricSecurityKey +
(+ ,
Encoding, 4
.4 5
UTF85 9
.9 :
GetBytes: B
(B C
securityKeyC N
)N O
)O P
;P Q
} 	
} 
} ’
oC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\Security\Encryption\SigningCredentialsHelper.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Security !
.! "

Encryption" ,
{		 
public

 

class

 $
SigningCredentialsHelper

 )
{ 
public 
static 
SigningCredentials ($
CreateSigningCredentials) A
(A B
SecurityKeyB M
securityKeyN Y
)Y Z
{ 	
return 
new 
SigningCredentials )
() *
securityKey* 5
,5 6
SecurityAlgorithms7 I
.I J
HmacSha512SignatureJ ]
)] ^
;^ _
} 	
} 
} ‰
aC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\Security\Hashing\HashingHelper.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Security !
.! "
Hashing" )
{ 
public		 

class		 
HashingHelper		 
{

 
public 
static 
void 
CreatePasswordHash -
(- .
string. 4
password5 =
,= >
out? B
byteC G
[G H
]H I
passwordHashJ V
,V W
outX [
byte\ `
[` a
]a b
passwordSaltc o
)o p
{ 	
using 
( 
var 
hmac 
= 
new !
System" (
.( )
Security) 1
.1 2
Cryptography2 >
.> ?

HMACSHA512? I
(I J
)J K
)K L
{ 
passwordSalt 
= 
hmac #
.# $
Key$ '
;' (
passwordHash 
= 
hmac #
.# $
ComputeHash$ /
(/ 0
Encoding0 8
.8 9
UTF89 =
.= >
GetBytes> F
(F G
passwordG O
)O P
)P Q
;Q R
} 
} 	
public 
static 
bool 
VerifyPasswordHash -
(- .
string. 4
password5 =
,= >
byte? C
[C D
]D E
passwordHashF R
,R S
byteT X
[X Y
]Y Z
passwordSalt[ g
)g h
{ 	
using 
( 
var 
hmac 
= 
new !
System" (
.( )
Security) 1
.1 2
Cryptography2 >
.> ?

HMACSHA512? I
(I J
passwordSaltJ V
)V W
)W X
{ 
var 
computedHash  
=! "
passwordHash# /
=0 1
hmac2 6
.6 7
ComputeHash7 B
(B C
EncodingC K
.K L
UTF8L P
.P Q
GetBytesQ Y
(Y Z
passwordZ b
)b c
)c d
;d e
for 
( 
int 
i 
= 
$num 
; 
i  !
<" #
computedHash$ 0
.0 1
Length1 7
;7 8
i9 :
++: <
)< =
{ 
if 
( 
computedHash $
[$ %
i% &
]& '
!=( *
passwordHash+ 7
[7 8
i8 9
]9 :
): ;
{ 
return 
false $
;$ %
} 
} 
return   
true   
;   
}!! 
}"" 	
}## 
}$$ Ø
[C:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\Security\JWT\AccessToken.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Security !
.! "
JWT" %
{ 
public		 

class		 
AccessToken		 
{

 
public 
string 
? 
Token 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 

Expiration "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} Ë
\C:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\Security\JWT\ITokenHelper.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Security !
.! "
JWT" %
{		 
public

 

	interface

 
ITokenHelper

 !
{ 
AccessToken 
CreateToken 
(  
User  $
user% )
,) *
List+ /
</ 0
OperationClaim0 >
>> ?
operationClaims@ O
)O P
;P Q
} 
} º/
YC:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\Security\JWT\JwtHelper.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Security !
.! "
JWT" %
{ 
public 

class 
	JwtHelper 
: 
ITokenHelper )
{ 
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
private 
TokenOptions 
_tokenOptions *
;* +
private 
DateTime "
_accessTokenExpiration /
;/ 0
public 
	JwtHelper 
( 
IConfiguration '
configuration( 5
)5 6
{ 	
Configuration 
= 
configuration )
;) *
_tokenOptions 
= 
Configuration )
.) *

GetSection* 4
(4 5
$str5 C
)C D
.D E
GetE H
<H I
TokenOptionsI U
>U V
(V W
)W X
;X Y
} 	
public 
AccessToken 
CreateToken &
(& '
User' +
user, 0
,0 1
List2 6
<6 7
OperationClaim7 E
>E F
operationClaimsG V
)V W
{ 	"
_accessTokenExpiration "
=# $
DateTime% -
.- .
Now. 1
.1 2

AddMinutes2 <
(< =
_tokenOptions= J
.J K!
AccessTokenExpirationK `
)` a
;a b
var 
securityKey 
= 
SecurityKeyHelper /
./ 0
CreateSecurityKey0 A
(A B
_tokenOptionsB O
.O P
SecurityKeyP [
)[ \
;\ ]
var 
signingCredentials "
=# $$
SigningCredentialsHelper% =
.= >$
CreateSigningCredentials> V
(V W
securityKeyW b
)b c
;c d
var   
jwt   
=   "
CreateJwtSecurityToken   ,
(  , -
_tokenOptions  - :
,  : ;
user  < @
,  @ A
signingCredentials  B T
,  T U
operationClaims  V e
)  e f
;  f g
var!! #
jwtSecurityTokenHandler!! '
=!!( )
new!!* -#
JwtSecurityTokenHandler!!. E
(!!E F
)!!F G
;!!G H
var"" 
token"" 
="" #
jwtSecurityTokenHandler"" /
.""/ 0

WriteToken""0 :
("": ;
jwt""; >
)""> ?
;""? @
return$$ 
new$$ 
AccessToken$$ "
{%% 
Token&& 
=&& 
token&& 
,&& 

Expiration'' 
='' "
_accessTokenExpiration'' 3
}(( 
;(( 
}** 	
public,, 
JwtSecurityToken,, "
CreateJwtSecurityToken,,  6
(,,6 7
TokenOptions,,7 C
tokenOptions,,D P
,,,P Q
User,,R V
user,,W [
,,,[ \
SigningCredentials-- 
signingCredentials-- 1
,--1 2
List--3 7
<--7 8
OperationClaim--8 F
>--F G
operationClaims--H W
)--W X
{.. 	
var// 
jwt// 
=// 
new// 
JwtSecurityToken// *
(//* +
issuer00 
:00 
tokenOptions00 $
.00$ %
Issuer00% +
,00+ ,
audience11 
:11 
tokenOptions11 &
.11& '
Audience11' /
,11/ 0
expires22 
:22 "
_accessTokenExpiration22 /
,22/ 0
	notBefore33 
:33 
DateTime33 #
.33# $
Now33$ '
,33' (
claims44 
:44 
	SetClaims44 !
(44! "
user44" &
,44& '
operationClaims44( 7
)447 8
,448 9
signingCredentials55 "
:55" #
signingCredentials55$ 6
)66 
;66 
return77 
jwt77 
;77 
}88 	
private:: 
IEnumerable:: 
<:: 
Claim:: !
>::! "
	SetClaims::# ,
(::, -
User::- 1
user::2 6
,::6 7
List::8 <
<::< =
OperationClaim::= K
>::K L
operationClaims::M \
)::\ ]
{;; 	
var<< 
claims<< 
=<< 
new<< 
List<< !
<<<! "
Claim<<" '
><<' (
(<<( )
)<<) *
;<<* +
claims== 
.== 
AddNameIdentifier== $
(==$ %
user==% )
.==) *
Id==* ,
.==, -
ToString==- 5
(==5 6
)==6 7
)==7 8
;==8 9
claims>> 
.>> 
AddEmail>> 
(>> 
user>>  
.>>  !
Email>>! &
)>>& '
;>>' (
claims?? 
.?? 
AddName?? 
(?? 
$"?? 
{?? 
user?? "
.??" #
	FirstName??# ,
}??, -
$str??- .
{??. /
user??/ 3
.??3 4
LastName??4 <
}??< =
"??= >
)??> ?
;??? @
claims@@ 
.@@ 
AddRoles@@ 
(@@ 
operationClaims@@ +
.@@+ ,
Select@@, 2
(@@2 3
c@@3 4
=>@@5 7
c@@8 9
.@@9 :
Name@@: >
)@@> ?
.@@? @
ToArray@@@ G
(@@G H
)@@H I
)@@I J
;@@J K
returnBB 
claimsBB 
;BB 
}CC 	
}DD 
}EE ë
\C:\Users\omerf\Desktop\ReCapProject\ReCapProject\Core\Utilities\Security\JWT\TokenOptions.cs
	namespace 	
Core
 
. 
	Utilities 
. 
Security !
.! "
JWT" %
{ 
public		 

class		 
TokenOptions		 
{

 
public 
string 
? 
Audience 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
? 
Issuer 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int !
AccessTokenExpiration (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
string 
? 
SecurityKey "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} 