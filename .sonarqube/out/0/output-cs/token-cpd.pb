�
`D:\GitHub-Projects\Recyclable-Scroll-Rect\Assets\Recyclable Scroll Rect\Demo\Scripts\DemoCell.cs
public		 
class		 
DemoCell		 
:		 
MonoBehaviour		 %
,		% &
ICell		' ,
{

 
public 

Text 
	nameLabel 
; 
public 

Text 
genderLabel 
; 
public 

Text 
idLabel 
; 
private 
ContactInfo 
_contactInfo $
;$ %
private 
int 

_cellIndex 
; 
private 
void 
Start 
( 
) 
{ 
GetComponent 
< 
Button 
> 
( 
) 
. 
onClick &
.& '
AddListener' 2
(2 3
ButtonListener3 A
)A B
;B C
} 
public 

void 
ConfigureCell 
( 
ContactInfo )
contactInfo* 5
,5 6
int6 9
	cellIndex: C
)C D
{ 

_cellIndex 
= 
	cellIndex 
; 
_contactInfo 
= 
contactInfo "
;" #
	nameLabel   
.   
text   
=   
contactInfo   $
.  $ %
Name  % )
;  ) *
genderLabel!! 
.!! 
text!! 
=!! 
contactInfo!! &
.!!& '
Gender!!' -
;!!- .
idLabel"" 
."" 
text"" 
="" 
contactInfo"" "
.""" #
id""# %
;""% &
}## 
private&& 
void&& 
ButtonListener&& 
(&&  
)&&  !
{'' 
Debug(( 
.(( 
Log(( 
((( 
$str(( 
+(( 

_cellIndex(( )
+((* +
$str((- 8
+((9 :
_contactInfo((; G
.((G H
Name((H L
+((N O
$str((P ]
+((^ _
_contactInfo((` l
.((l m
Gender((m s
)((s t
;((t u
})) 
}** �
nD:\GitHub-Projects\Recyclable-Scroll-Rect\Assets\Recyclable Scroll Rect\Demo\Scripts\RecyclableScrollerDemo.cs
public 
struct 
ContactInfo 
{ 
public 

string 
Name 
; 
public 

string 
Gender 
; 
public 

string 
id 
; 
} 
public 
class "
RecyclableScrollerDemo #
:$ %
MonoBehaviour& 3
,3 4+
IRecyclableScrollRectDataSource5 T
{ 
[ 
SerializeField 
]  
RecyclableScrollRect !
_recyclableScrollRect .
;. /
[ 
SerializeField 
] 
private 
int 
_dataLength 
; 
private 
List 
< 
ContactInfo 
> 
_contactList *
=+ ,
new- 0
List1 5
<5 6
ContactInfo6 A
>A B
(B C
)C D
;D E
private 
void 
Awake 
( 
) 
{   
InitData!! 
(!! 
)!! 
;!! !
_recyclableScrollRect"" 
."" 

DataSource"" (
="") *
this""+ /
;""/ 0
}## 
private&& 
void&& 
InitData&& 
(&& 
)&& 
{'' 
if(( 

((( 
_contactList(( 
!=(( 
null((  
)((  !
_contactList((" .
.((. /
Clear((/ 4
(((4 5
)((5 6
;((6 7
string** 
[** 
]** 
genders** 
=** 
{** 
$str** #
,**# $
$str**% -
}**. /
;**/ 0
for++ 
(++ 
int++ 
i++ 
=++ 
$num++ 
;++ 
i++ 
<++ 
_dataLength++ '
;++' (
i++) *
++++* ,
)++, -
{,, 	
ContactInfo-- 
obj-- 
=-- 
new-- !
ContactInfo--" -
(--- .
)--. /
;--/ 0
obj.. 
... 
Name.. 
=.. 
i.. 
+.. 
$str.. "
;.." #
obj// 
.// 
Gender// 
=// 
genders//  
[//  !
Random//! '
.//' (
Range//( -
(//- .
$num//. /
,/// 0
$num//1 2
)//2 3
]//3 4
;//4 5
obj00 
.00 
id00 
=00 
$str00 
+00  
i00! "
;00" #
_contactList11 
.11 
Add11 
(11 
obj11  
)11  !
;11! "
}22 	
}33 
public:: 

int:: 
GetItemCount:: 
(:: 
):: 
{;; 
return<< 
_contactList<< 
.<< 
Count<< !
;<<! "
}== 
publicCC 

voidCC 
SetCellCC 
(CC 
ICellCC 
cellCC "
,CC" #
intCC$ '
indexCC( -
)CC- .
{DD 
varFF 
itemFF 
=FF 
cellFF 
asFF 
DemoCellFF #
;FF# $
itemGG 
.GG 
ConfigureCellGG 
(GG 
_contactListGG '
[GG' (
indexGG( -
]GG- .
,GG. /
indexGG/ 4
)GG4 5
;GG5 6
}HH 
}KK �V
rD:\GitHub-Projects\Recyclable-Scroll-Rect\Assets\Recyclable Scroll Rect\Main\Editor1\RecyclableScrollRectEditor.cs
	namespace 	
PolyAndCode
 
. 
UI 
{ 
[ 
CustomEditor 
( 
typeof 
(  
RecyclableScrollRect -
)- .
,. /
true0 4
)4 5
]5 6
[		 "
CanEditMultipleObjects		 
]		 
public 

class &
RecyclableScrollRectEditor +
:, -
Editor. 4
{ 
SerializedProperty 
	m_Content $
;$ %
SerializedProperty 
m_MovementType )
;) *
SerializedProperty 
m_Elasticity '
;' (
SerializedProperty 
	m_Inertia $
;$ %
SerializedProperty 
m_DecelerationRate -
;- .
SerializedProperty 
m_ScrollSensitivity .
;. /
SerializedProperty 

m_Viewport %
;% &
SerializedProperty 
m_OnValueChanged +
;+ ,
SerializedProperty 
_protoTypeCell )
;) *
SerializedProperty 
_selfInitialize *
;* +
SerializedProperty 

_direction %
;% &
SerializedProperty 
_type  
;  !
SerializedProperty 
	_segments $
;$ %
AnimBool   
m_ShowElasticity   !
;  ! "
AnimBool!! "
m_ShowDecelerationRate!! '
;!!' ( 
RecyclableScrollRect## 
_script## $
;##$ %
	protected$$ 
virtual$$ 
void$$ 
OnEnable$$ '
($$' (
)$$( )
{%% 	
_script&& 
=&& 
(&&  
RecyclableScrollRect&& +
)&&+ ,
target&&, 2
;&&2 3
	m_Content(( 
=(( 
serializedObject(( (
.((( )
FindProperty(() 5
(((5 6
$str((6 A
)((A B
;((B C
m_MovementType)) 
=)) 
serializedObject)) -
.))- .
FindProperty)). :
()): ;
$str)); K
)))K L
;))L M
m_Elasticity** 
=** 
serializedObject** +
.**+ ,
FindProperty**, 8
(**8 9
$str**9 G
)**G H
;**H I
	m_Inertia++ 
=++ 
serializedObject++ (
.++( )
FindProperty++) 5
(++5 6
$str++6 A
)++A B
;++B C
m_DecelerationRate,, 
=,,  
serializedObject,,! 1
.,,1 2
FindProperty,,2 >
(,,> ?
$str,,? S
),,S T
;,,T U
m_ScrollSensitivity-- 
=--  !
serializedObject--" 2
.--2 3
FindProperty--3 ?
(--? @
$str--@ U
)--U V
;--V W

m_Viewport.. 
=.. 
serializedObject.. )
...) *
FindProperty..* 6
(..6 7
$str..7 C
)..C D
;..D E
m_OnValueChanged// 
=// 
serializedObject// /
./// 0
FindProperty//0 <
(//< =
$str//= O
)//O P
;//P Q
_protoTypeCell22 
=22 
serializedObject22 -
.22- .
FindProperty22. :
(22: ;
$str22; J
)22J K
;22K L
_selfInitialize33 
=33 
serializedObject33 .
.33. /
FindProperty33/ ;
(33; <
$str33< L
)33L M
;33M N

_direction44 
=44 
serializedObject44 )
.44) *
FindProperty44* 6
(446 7
$str447 B
)44B C
;44C D
_type55 
=55 
serializedObject55 $
.55$ %
FindProperty55% 1
(551 2
$str552 8
)558 9
;559 :
	_segments66 
=66 
serializedObject66 (
.66( )
FindProperty66) 5
(665 6
$str666 A
)66A B
;66B C
m_ShowElasticity88 
=88 
new88 "
AnimBool88# +
(88+ ,
Repaint88, 3
)883 4
;884 5"
m_ShowDecelerationRate99 "
=99# $
new99% (
AnimBool99) 1
(991 2
Repaint992 9
)999 :
;99: ;
SetAnimBools:: 
(:: 
true:: 
):: 
;:: 
};; 	
	protected== 
virtual== 
void== 
	OnDisable== (
(==( )
)==) *
{>> 	
m_ShowElasticity?? 
.?? 
valueChanged?? )
.??) *
RemoveListener??* 8
(??8 9
Repaint??9 @
)??@ A
;??A B"
m_ShowDecelerationRate@@ "
.@@" #
valueChanged@@# /
.@@/ 0
RemoveListener@@0 >
(@@> ?
Repaint@@? F
)@@F G
;@@G H
}AA 	
voidCC 
SetAnimBoolsCC 
(CC 
boolCC 
instantCC &
)CC& '
{DD 	
SetAnimBoolEE 
(EE 
m_ShowElasticityEE (
,EE( )
!EE* +
m_MovementTypeEE+ 9
.EE9 :&
hasMultipleDifferentValuesEE: T
&&EEU W
m_MovementTypeEEX f
.EEf g
enumValueIndexEEg u
==EEv x
(EEy z
intEEz }
)EE} ~

ScrollRect	EE~ �
.
EE� �
MovementType
EE� �
.
EE� �
Elastic
EE� �
,
EE� �
instant
EE� �
)
EE� �
;
EE� �
SetAnimBoolFF 
(FF "
m_ShowDecelerationRateFF .
,FF. /
!FF0 1
	m_InertiaFF1 :
.FF: ;&
hasMultipleDifferentValuesFF; U
&&FFV X
	m_InertiaFFY b
.FFb c
	boolValueFFc l
==FFm o
trueFFp t
,FFt u
instantFFv }
)FF} ~
;FF~ 
}GG 	
voidII 
SetAnimBoolII 
(II 
AnimBoolII !
aII" #
,II# $
boolII% )
valueII* /
,II/ 0
boolII1 5
instantII6 =
)II= >
{JJ 	
ifKK 
(KK 
instantKK 
)KK 
aLL 
.LL 
valueLL 
=LL 
valueLL 
;LL  
elseMM 
aNN 
.NN 
targetNN 
=NN 
valueNN  
;NN  !
}OO 	
publicQQ 
overrideQQ 
voidQQ 
OnInspectorGUIQQ +
(QQ+ ,
)QQ, -
{RR 	
SetAnimBoolsSS 
(SS 
falseSS 
)SS 
;SS  
serializedObjectTT 
.TT 
UpdateTT #
(TT# $
)TT$ %
;TT% &
EditorGUILayoutWW 
.WW 
PropertyFieldWW )
(WW) *

_directionWW* 4
)WW4 5
;WW5 6
EditorGUILayoutXX 
.XX 
PropertyFieldXX )
(XX) *
_typeXX* /
)XX/ 0
;XX0 1
ifYY 
(YY 
_typeYY 
.YY 
	boolValueYY 
)YY  
{ZZ 
string\\ 
title\\ 
=\\ 

_direction\\ )
.\\) *
enumValueIndex\\* 8
==\\9 ;
(\\< =
int\\= @
)\\@ A 
RecyclableScrollRect\\A U
.\\U V
DirectionType\\V c
.\\c d
Vertical\\d l
?\\m n
$str\\o y
:\\z {
$str	\\| �
;
\\� �
_script]] 
.]] 
Segments]] 
=]]  !
EditorGUILayout]]# 2
.]]2 3
IntField]]3 ;
(]]; <
title]]< A
,]]A B
_script]]C J
.]]J K
Segments]]K S
)]]S T
;]]T U
}^^ 
EditorGUILayout`` 
.`` 
PropertyField`` )
(``) *
_selfInitialize``* 9
)``9 :
;``: ;
EditorGUILayoutaa 
.aa 
PropertyFieldaa )
(aa) *

m_Viewportaa* 4
)aa4 5
;aa5 6
EditorGUILayoutbb 
.bb 
PropertyFieldbb )
(bb) *
	m_Contentbb* 3
)bb3 4
;bb4 5
EditorGUILayoutcc 
.cc 
PropertyFieldcc )
(cc) *
_protoTypeCellcc* 8
)cc8 9
;cc9 :
EditorGUILayoutdd 
.dd 
Spacedd !
(dd! "
)dd" #
;dd# $
EditorGUILayoutff 
.ff 
PropertyFieldff )
(ff) *
m_MovementTypeff* 8
)ff8 9
;ff9 :
ifgg 
(gg 
EditorGUILayoutgg 
.gg  
BeginFadeGroupgg  .
(gg. /
m_ShowElasticitygg/ ?
.gg? @
fadedgg@ E
)ggE F
)ggF G
{hh 
	EditorGUIii 
.ii 
indentLevelii %
++ii% '
;ii' (
EditorGUILayoutjj 
.jj  
PropertyFieldjj  -
(jj- .
m_Elasticityjj. :
)jj: ;
;jj; <
	EditorGUIkk 
.kk 
indentLevelkk %
--kk% '
;kk' (
}ll 
EditorGUILayoutmm 
.mm 
EndFadeGroupmm (
(mm( )
)mm) *
;mm* +
EditorGUILayoutoo 
.oo 
PropertyFieldoo )
(oo) *
	m_Inertiaoo* 3
)oo3 4
;oo4 5
ifpp 
(pp 
EditorGUILayoutpp 
.pp  
BeginFadeGrouppp  .
(pp. /"
m_ShowDecelerationRatepp/ E
.ppE F
fadedppF K
)ppK L
)ppL M
{qq 
	EditorGUIrr 
.rr 
indentLevelrr %
++rr% '
;rr' (
EditorGUILayoutss 
.ss  
PropertyFieldss  -
(ss- .
m_DecelerationRatess. @
)ss@ A
;ssA B
	EditorGUItt 
.tt 
indentLeveltt %
--tt% '
;tt' (
}uu 
EditorGUILayoutvv 
.vv 
EndFadeGroupvv (
(vv( )
)vv) *
;vv* +
EditorGUILayoutxx 
.xx 
PropertyFieldxx )
(xx) *
m_ScrollSensitivityxx* =
)xx= >
;xx> ?
EditorGUILayoutzz 
.zz 
Spacezz !
(zz! "
)zz" #
;zz# $
EditorGUILayout|| 
.|| 
PropertyField|| )
(||) *
m_OnValueChanged||* :
)||: ;
;||; <
serializedObject~~ 
.~~ #
ApplyModifiedProperties~~ 4
(~~4 5
)~~5 6
;~~6 7
} 	
}
�� 
}�� �
vD:\GitHub-Projects\Recyclable-Scroll-Rect\Assets\Recyclable Scroll Rect\Main\Editor1\RecyclableScrollViewEditorTool.cs
	namespace 	
PolyAndCode
 
. 
UI 
{ 
[ 
ExecuteInEditMode 
] 
public 

static 
class *
RecyclableScrollViewEditorTool 6
{ 
const		 
string		 

PrefabPath		 
=		  !
$str		" k
;		k l
[ 	
MenuItem	 
( 
$str 8
)8 9
]9 :
private 
static 
void &
createRecyclableScrollView 6
(6 7
)7 8
{ 	

GameObject 
selected 
=  !
	Selection" +
.+ ,
activeGameObject, <
;< =
if 
( 
! 
selected 
|| 
selected %
.% &
	transform& /
./ 0
GetType0 7
(7 8
)8 9
!=: <
typeof= C
(C D
RectTransformD Q
)Q R
)R S
{ 
selected 
= 

GameObject %
.% &
FindObjectOfType& 6
<6 7
Canvas7 =
>= >
(> ?
)? @
.@ A

gameObjectA K
;K L
} 
if 
( 
! 
selected 
) 
return !
;! "

GameObject 
asset 
= 
AssetDatabase ,
., -
LoadAssetAtPath- <
(< =

PrefabPath= G
,G H
typeofI O
(O P

GameObjectP Z
)Z [
)[ \
as] _

GameObject` j
;j k

GameObject 
item 
= 
UnityEngine )
.) *
Object* 0
.0 1
Instantiate1 <
(< =
asset= B
)B C
asD F

GameObjectG Q
;Q R
item 
. 
name 
= 
$str 0
;0 1
item 
. 
	transform 
. 
	SetParent $
($ %
selected% -
.- .
	transform. 7
)7 8
;8 9
item 
. 
	transform 
. 
localPosition (
=) *
Vector3+ 2
.2 3
zero3 7
;7 8
	Selection 
. 
activeGameObject &
=' (
item) -
;- .
Undo   
.   %
RegisterCreatedObjectUndo   *
(  * +
item  + /
,  / 0
$str  1 Q
)  Q R
;  R S
}!! 	
}"" 
}## ��
qD:\GitHub-Projects\Recyclable-Scroll-Rect\Assets\Recyclable Scroll Rect\Main\Scripts\HorizontalRecyclingSystem.cs
	namespace

 	
PolyAndCode


 
.

 
UI

 
{

 
public 

class %
HorizontalRecyclingSystem *
:+ ,
RecyclingSystem- <
{ 
private 
int 
_rows 
; 
private 
float 

_cellWidth  
,  !
_cellHeight" -
;- .
private 
int 
_leftMostCellRow $
,$ %
_RightMostCellRow& 7
,7 8
_currentRow9 D
;D E
private 
bool !
_contentSizeIncreased *
;* +
private +
IRecyclableScrollRectDataSource /
_dataSource0 ;
;; <
private 
List 
< 
RectTransform "
>" #
	_cellPool$ -
;- .
private 
List 
< 
ICell 
> 
_cachedCells (
;( )
private 
RectTransform 
_listContainer ,
;, -
private 
Bounds !
_recyclableViewBounds ,
;, -
private 
float 
_recyclingThreshold )
=* +
$num, /
;/ 0
private!! 
Vector3!! 
[!! 
]!! 
_corners!! "
=!!# $
new!!% (
Vector3!!) 0
[!!0 1
$num!!1 2
]!!2 3
;!!3 4
private"" 
bool"" 

_recycling"" 
;""  
private%% 
int%% 
leftMostCellIndex%% %
,%%% &
rightMostCellIndex%%' 9
;%%9 :
private&& 
int&& 
currentItemCount&& $
;&&$ %
public)) %
HorizontalRecyclingSystem)) (
())( )
RectTransform))) 6
prototypeCell))7 D
,))D E
RectTransform))F S
viewport))T \
,))\ ]
RectTransform))^ k
content))l s
,))s t,
IRecyclableScrollRectDataSource	))u �

dataSource
))� �
,
))� �
bool
))� �
isGrid
))� �
,
))� �
int
))� �
rows
))� �
)
))� �
{** 	
PrototypeCell++ 
=++ 
prototypeCell++ )
;++) *
Viewport,, 
=,, 
viewport,, 
;,,  
Content-- 
=-- 
content-- 
;-- 
_dataSource.. 
=.. 

dataSource.. $
;..$ %
IsGrid// 
=// 
isGrid// 
;// 
_rows00 
=00 
isGrid00 
?00 
rows00 !
:00" #
$num00$ %
;00% &
}11 	
public33 
override33 
IEnumerator33 #
InitCoroutine33$ 1
(331 2
Action332 8
onInitialized339 F
)33F G
{44 	
	SetAnchor66 
(66 
Content66 
)66 
;66 
Content77 
.77 
anchoredPosition77 $
=77% &
Vector377' .
.77. /
zero77/ 3
;773 4
yield88 
return88 
null88 
;88 
SetRecyclingBounds99 
(99 
)99  
;99  !
CreateCellPool<< 
(<< 
)<< 
;<< 
leftMostCellIndex== 
=== 
$num==  !
;==! "
rightMostCellIndex>> 
=>>  
	_cellPool>>! *
.>>* +
Count>>+ 0
->>1 2
$num>>3 4
;>>4 5
int@@ 
coloums@@ 
=@@ 
(@@ 
int@@ 
)@@ 
Mathf@@ $
.@@$ %
Ceil@@% )
(@@) *
(@@* +
float@@+ 0
)@@0 1
	_cellPool@@1 :
.@@: ;
Count@@; @
/@@A B
(@@C D
float@@D I
)@@I J
_rows@@J O
)@@O P
;@@P Q
floatCC 
contentXSizeCC 
=CC  
coloumsCC! (
*CC( )
PrototypeCellCC* 7
.CC7 8
	sizeDeltaCC8 A
.CCA B
xCCB C
;CCC D
ContentDD 
.DD 
	sizeDeltaDD 
=DD 
newDD  #
Vector2DD$ +
(DD+ ,
contentXSizeDD, 8
,DD8 9
ContentDD: A
.DDA B
	sizeDeltaDDB K
.DDK L
yDDL M
)DDM N
;DDN O
currentItemCountEE 
=EE 
	_cellPoolEE (
.EE( )
CountEE) .
;EE. /
	SetAnchorFF 
(FF 
ContentFF 
)FF 
;FF 
onInitializedGG 
(GG 
)GG 
;GG 
}HH 	
privateNN 
voidNN 
SetRecyclingBoundsNN '
(NN' (
)NN( )
{OO 	
ViewportPP 
.PP 
GetWorldCornersPP $
(PP$ %
_cornersPP% -
)PP- .
;PP. /
floatQQ 

threshHoldQQ 
=QQ 
_recyclingThresholdQQ 2
*QQ3 4
(QQ5 6
_cornersQQ6 >
[QQ> ?
$numQQ? @
]QQ@ A
.QQA B
xQQB C
-QQD E
_cornersQQF N
[QQN O
$numQQO P
]QQP Q
.QQQ R
xQQR S
)QQS T
;QQT U!
_recyclableViewBoundsRR !
.RR! "
minRR" %
=RR& '
newRR( +
Vector3RR, 3
(RR3 4
_cornersRR4 <
[RR< =
$numRR= >
]RR> ?
.RR? @
xRR@ A
-RRB C

threshHoldRRD N
,RRN O
_cornersRRP X
[RRX Y
$numRRY Z
]RRZ [
.RR[ \
yRR\ ]
)RR] ^
;RR^ _!
_recyclableViewBoundsSS !
.SS! "
maxSS" %
=SS& '
newSS( +
Vector3SS, 3
(SS3 4
_cornersSS4 <
[SS< =
$numSS= >
]SS> ?
.SS? @
xSS@ A
+SSB C

threshHoldSSD N
,SSN O
_cornersSSP X
[SSX Y
$numSSY Z
]SSZ [
.SS[ \
ySS\ ]
)SS] ^
;SS^ _
}TT 	
privateYY 
voidYY 
CreateCellPoolYY #
(YY# $
)YY$ %
{ZZ 	
if\\ 
(\\ 
	_cellPool\\ 
!=\\ 
null\\ !
)\\! "
{]] 
	_cellPool^^ 
.^^ 
ForEach^^ !
(^^! "
(^^" #
RectTransform^^# 0
item^^1 5
)^^5 6
=>^^7 9
UnityEngine^^: E
.^^E F
Object^^F L
.^^L M
Destroy^^M T
(^^T U
item^^U Y
.^^Y Z

gameObject^^Z d
)^^d e
)^^e f
;^^f g
	_cellPool__ 
.__ 
Clear__ 
(__  
)__  !
;__! "
_cachedCells`` 
.`` 
Clear`` "
(``" #
)``# $
;``$ %
}aa 
elsebb 
{cc 
_cachedCellsdd 
=dd 
newdd "
Listdd# '
<dd' (
ICelldd( -
>dd- .
(dd. /
)dd/ 0
;dd0 1
	_cellPoolee 
=ee 
newee 
Listee  $
<ee$ %
RectTransformee% 2
>ee2 3
(ee3 4
)ee4 5
;ee5 6
}ff 
PrototypeCellii 
.ii 

gameObjectii $
.ii$ %
	SetActiveii% .
(ii. /
trueii/ 3
)ii3 4
;ii4 5
	SetAnchorjj 
(jj 
PrototypeCelljj #
)jj# $
;jj$ %
floatmm 
currentPoolCoveragemm %
=mm& '
$nummm( )
;mm) *
intnn 
poolSizenn 
=nn 
$numnn 
;nn 
floatoo 
posXoo 
=oo 
$numoo 
;oo 
floatpp 
posYpp 
=pp 
$numpp 
;pp 
_cellHeightss 
=ss 
Contentss !
.ss! "
rectss" &
.ss& '
heightss' -
/ss. /
_rowsss0 5
;ss5 6

_cellWidthtt 
=tt 
PrototypeCelltt &
.tt& '
	sizeDeltatt' 0
.tt0 1
xtt1 2
/tt3 4
PrototypeCelltt5 B
.ttB C
	sizeDeltattC L
.ttL M
yttM N
*ttO P
_cellHeightttQ \
;tt\ ]
PrototypeCelluu 
.uu 
	sizeDeltauu #
=uu$ %
newuu& )
Vector3uu* 1
(uu1 2

_cellWidthuu2 <
,uu< =
_cellHeightuu> I
)uuI J
;uuJ K
_currentRowvv 
=vv 
_leftMostCellRowvv *
=vv+ ,
$numvv- .
;vv. /
floatzz 
requriedCoveragezz "
=zz# $
MinPoolCoveragezz% 4
*zz5 6
Viewportzz7 ?
.zz? @
rectzz@ D
.zzD E
widthzzE J
;zzJ K
int|| 
minPoolSize|| 
=|| 
Math|| "
.||" #
Min||# &
(||& '
MinPoolSize||' 2
,||2 3
_dataSource||4 ?
.||? @
GetItemCount||@ L
(||L M
)||M N
)||N O
;||O P
while~~ 
(~~ 
(~~ 
poolSize~~ 
<~~ 
minPoolSize~~ *
||~~+ -
currentPoolCoverage~~. A
<~~B C
requriedCoverage~~D T
)~~T U
&&~~V X
poolSize~~Y a
<~~b c
_dataSource~~d o
.~~o p
GetItemCount~~p |
(~~| }
)~~} ~
)~~~ 
{ 
RectTransform
�� 
item
�� "
=
��# $
(
��% &
UnityEngine
��& 1
.
��1 2
Object
��2 8
.
��8 9
Instantiate
��9 D
(
��D E
PrototypeCell
��E R
.
��R S

gameObject
��S ]
)
��] ^
as
��_ a

GameObject
��b l
)
��l m
.
��m n
GetComponent
��n z
<
��z {
RectTransform��{ �
>��� �
(��� �
)��� �
;��� �
item
�� 
.
�� 
name
�� 
=
�� 
$str
�� "
;
��" #
	_cellPool
�� 
.
�� 
Add
�� 
(
�� 
item
�� "
)
��" #
;
��# $
item
�� 
.
�� 
	SetParent
�� 
(
�� 
Content
�� &
,
��& '
false
��( -
)
��- .
;
��. /
if
�� 
(
�� 
IsGrid
�� 
)
�� 
{
�� 
item
�� 
.
�� 
anchoredPosition
�� )
=
��* +
new
��, /
Vector2
��0 7
(
��7 8
posX
��8 <
,
��< =
posY
��> B
)
��B C
;
��C D
_currentRow
�� 
++
�� !
;
��! "
posY
�� 
=
�� 
_currentRow
�� &
>=
��' )
_rows
��* /
?
��0 1
$num
��2 3
:
��4 5
posY
��6 :
-
��; <
_cellHeight
��= H
;
��H I
posX
�� 
=
�� 
_currentRow
�� &
>=
��' )
_rows
��* /
?
��0 1
posX
��2 6
+
��7 8

_cellWidth
��9 C
:
��D E
posX
��F J
;
��J K
if
�� 
(
�� 
_currentRow
�� #
>=
��$ &
_rows
��' ,
)
��, -
{
�� 
_currentRow
�� #
=
��$ %
$num
��& '
;
��' (!
currentPoolCoverage
�� +
+=
��, .
item
��/ 3
.
��3 4
rect
��4 8
.
��8 9
width
��9 >
;
��> ?
}
�� 
}
�� 
else
�� 
{
�� 
item
�� 
.
�� 
anchoredPosition
�� )
=
��* +
new
��, /
Vector2
��0 7
(
��7 8
posX
��8 <
,
��< =
$num
��> ?
)
��? @
;
��@ A
posX
�� 
=
�� 
item
�� 
.
��  
anchoredPosition
��  0
.
��0 1
x
��1 2
+
��3 4
item
��5 9
.
��9 :
rect
��: >
.
��> ?
width
��? D
;
��D E!
currentPoolCoverage
�� '
+=
��( *
item
��+ /
.
��/ 0
rect
��0 4
.
��4 5
width
��5 :
;
��: ;
}
�� 
_cachedCells
�� 
.
�� 
Add
��  
(
��  !
item
��! %
.
��% &
GetComponent
��& 2
<
��2 3
ICell
��3 8
>
��8 9
(
��9 :
)
��: ;
)
��; <
;
��< =
_dataSource
�� 
.
�� 
SetCell
�� #
(
��# $
_cachedCells
��$ 0
[
��0 1
_cachedCells
��1 =
.
��= >
Count
��> C
-
��D E
$num
��F G
]
��G H
,
��H I
poolSize
��J R
)
��R S
;
��S T
poolSize
�� 
++
�� 
;
�� 
}
�� 
_leftMostCellRow
�� 
=
�� 
$num
��  
;
��  !
_RightMostCellRow
�� 
=
�� 
(
��  !
_currentRow
��! ,
-
��- .
$num
��/ 0
+
��1 2
_rows
��3 8
)
��8 9
%
��: ;
_rows
��< A
;
��A B
if
�� 
(
�� 
PrototypeCell
�� 
.
�� 

gameObject
�� (
.
��( )
scene
��) .
.
��. /
IsValid
��/ 6
(
��6 7
)
��7 8
)
��8 9
{
�� 
PrototypeCell
�� 
.
�� 

gameObject
�� (
.
��( )
	SetActive
��) 2
(
��2 3
false
��3 8
)
��8 9
;
��9 :
}
�� 
}
�� 	
Vector2
�� 

zeroVector
�� 
=
�� 
Vector2
�� $
.
��$ %
zero
��% )
;
��) *
public
�� 
override
�� 
Vector2
�� $
OnValueChangedListener
��  6
(
��6 7
Vector2
��7 >
args
��? C
)
��C D
{
�� 	
if
�� 
(
�� 

_recycling
�� 
||
�� 
	_cellPool
�� '
==
��( *
null
��+ /
||
��0 2
	_cellPool
��3 <
.
��< =
Count
��= B
==
��C E
$num
��F G
)
��G H
return
��I O

zeroVector
��P Z
;
��Z [ 
SetRecyclingBounds
�� 
(
�� 
)
��  
;
��  !
if
�� 
(
�� 
	_cellPool
�� 
[
��  
rightMostCellIndex
�� ,
]
��, -
.
��- .
MinX
��. 2
(
��2 3
)
��3 4
<
��5 6#
_recyclableViewBounds
��7 L
.
��L M
max
��M P
.
��P Q
x
��Q R
)
��R S
{
�� 
return
��  
RecycleLeftToRight
�� (
(
��( )
)
��) *
;
��* +
}
�� 
else
�� 
if
�� 
(
�� 
	_cellPool
�� 
[
�� 
leftMostCellIndex
�� 0
]
��0 1
.
��1 2
MaxX
��2 6
(
��6 7
)
��7 8
>
��9 :#
_recyclableViewBounds
��; P
.
��P Q
min
��Q T
.
��T U
x
��U V
)
��V W
{
�� 
return
��  
RecycleRightToleft
�� (
(
��( )
)
��) *
;
��* +
}
�� 
return
�� 

zeroVector
�� 
;
�� 
}
�� 	
private
�� 
Vector2
��  
RecycleLeftToRight
�� *
(
��* +
)
��+ ,
{
�� 	

_recycling
�� 
=
�� 
true
�� 
;
�� 
int
�� 
n
�� 
=
�� 
$num
�� 
;
�� 
float
�� 
posX
�� 
=
�� 
$num
�� 
;
�� 
float
�� 
posY
�� 
=
�� 
$num
�� 
;
�� 
if
�� 
(
�� 
IsGrid
�� 
)
�� 
{
�� 
posX
�� 
=
�� 
	_cellPool
��  
[
��  ! 
rightMostCellIndex
��! 3
]
��3 4
.
��4 5
anchoredPosition
��5 E
.
��E F
x
��F G
;
��G H
if
�� 
(
�� 
_RightMostCellRow
�� %
==
��& (
_rows
��) .
-
��/ 0
$num
��1 2
)
��2 3
{
�� 
posX
�� 
+=
�� 

_cellWidth
�� &
;
��& '
}
�� 
_currentRow
�� 
=
�� 
_RightMostCellRow
�� /
;
��/ 0
}
�� 
while
�� 
(
�� 
	_cellPool
�� 
[
�� 
leftMostCellIndex
�� .
]
��. /
.
��/ 0
MaxX
��0 4
(
��4 5
)
��5 6
<
��7 8#
_recyclableViewBounds
��9 N
.
��N O
min
��O R
.
��R S
x
��S T
&&
��U W
currentItemCount
��X h
<
��i j
_dataSource
��k v
.
��v w
GetItemCount��w �
(��� �
)��� �
)��� �
{
�� 
if
�� 
(
�� 
IsGrid
�� 
)
�� 
{
�� 
_currentRow
�� 
++
�� !
;
��! "
if
�� 
(
�� 
_currentRow
�� "
>=
��# %
_rows
��& +
)
��+ ,
{
�� 
n
�� 
++
�� 
;
�� 
_currentRow
�� #
=
��$ %
$num
��& '
;
��' (
}
�� 
posY
�� 
=
�� 
-
�� 
_currentRow
�� '
*
��( )
_cellHeight
��* 5
;
��5 6
if
�� 
(
�� 
_currentRow
�� #
==
��$ &
$num
��' (
)
��( )
{
�� 
posX
�� 
=
�� 
	_cellPool
�� (
[
��( ) 
rightMostCellIndex
��) ;
]
��; <
.
��< =
anchoredPosition
��= M
.
��M N
x
��N O
+
��P Q

_cellWidth
��R \
;
��\ ]
}
�� 
	_cellPool
�� 
[
�� 
leftMostCellIndex
�� /
]
��/ 0
.
��0 1
anchoredPosition
��1 A
=
��B C
new
��D G
Vector2
��H O
(
��O P
posX
��P T
,
��T U
posY
��V Z
)
��Z [
;
��[ \
_leftMostCellRow
�� $
=
��% &
(
��' (
_leftMostCellRow
��( 8
+
��9 :
$num
��; <
)
��< =
%
��> ?
_rows
��@ E
;
��E F
}
�� 
else
�� 
{
�� 
posX
�� 
=
�� 
	_cellPool
�� $
[
��$ % 
rightMostCellIndex
��% 7
]
��7 8
.
��8 9
anchoredPosition
��9 I
.
��I J
x
��J K
+
��L M
	_cellPool
��N W
[
��W X 
rightMostCellIndex
��X j
]
��j k
.
��k l
	sizeDelta
��l u
.
��u v
x
��v w
;
��w x
	_cellPool
�� 
[
�� 
leftMostCellIndex
�� /
]
��/ 0
.
��0 1
anchoredPosition
��1 A
=
��B C
new
��D G
Vector2
��H O
(
��O P
posX
��P T
,
��T U
	_cellPool
��V _
[
��_ `
leftMostCellIndex
��` q
]
��q r
.
��r s
anchoredPosition��s �
.��� �
y��� �
)��� �
;��� �
}
�� 
_dataSource
�� 
.
�� 
SetCell
�� #
(
��# $
_cachedCells
��$ 0
[
��0 1
leftMostCellIndex
��1 B
]
��B C
,
��C D
currentItemCount
��E U
)
��U V
;
��V W 
rightMostCellIndex
�� "
=
��# $
leftMostCellIndex
��% 6
;
��6 7
leftMostCellIndex
�� !
=
��" #
(
��$ %
leftMostCellIndex
��% 6
+
��7 8
$num
��9 :
)
��: ;
%
��< =
	_cellPool
��> G
.
��G H
Count
��H M
;
��M N
currentItemCount
��  
++
��  "
;
��" #
if
�� 
(
�� 
!
�� 
IsGrid
�� 
)
�� 
n
�� 
++
��  
;
��  !
}
�� 
if
�� 
(
�� 
IsGrid
�� 
)
�� 
{
�� 
_RightMostCellRow
�� !
=
��" #
_currentRow
��$ /
;
��/ 0
if
�� 
(
�� 
!
�� #
_contentSizeIncreased
�� *
)
��* +
{
�� 
if
�� 
(
�� 
_currentRow
�� #
!=
��$ &
_rows
��' ,
-
��- .
$num
��/ 0
)
��0 1
{
�� 
Content
�� 
.
��  
	sizeDelta
��  )
+=
��* ,
Vector2
��- 4
.
��4 5
right
��5 :
*
��; <

_cellWidth
��= G
;
��G H
n
�� 
-=
�� 
$num
�� 
;
�� #
_contentSizeIncreased
�� -
=
��. /
true
��0 4
;
��4 5
}
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
_currentRow
�� #
==
��$ &
_rows
��' ,
-
��- .
$num
��/ 0
)
��0 1
{
�� 
Content
�� 
.
��  
	sizeDelta
��  )
-=
��* ,
Vector2
��- 4
.
��4 5
right
��5 :
*
��; <

_cellWidth
��= G
;
��G H#
_contentSizeIncreased
�� -
=
��. /
false
��0 5
;
��5 6
}
�� 
}
�� 
}
�� 
	_cellPool
�� 
.
�� 
ForEach
�� 
(
�� 
(
�� 
RectTransform
�� ,
cell
��- 1
)
��1 2
=>
��3 5
cell
��6 :
.
��: ;
anchoredPosition
��; K
-=
��L N
n
��O P
*
��Q R
Vector2
��S Z
.
��Z [
right
��[ `
*
��a b
	_cellPool
��c l
[
��l m
leftMostCellIndex
��m ~
]
��~ 
.�� �
	sizeDelta��� �
.��� �
x��� �
)��� �
;��� �
Content
�� 
.
�� 
anchoredPosition
�� $
+=
��% '
n
��( )
*
��* +
Vector2
��, 3
.
��3 4
right
��4 9
*
��: ;
	_cellPool
��< E
[
��E F
leftMostCellIndex
��F W
]
��W X
.
��X Y
	sizeDelta
��Y b
.
��b c
x
��c d
;
��d e

_recycling
�� 
=
�� 
false
�� 
;
�� 
return
�� 
n
�� 
*
�� 
Vector2
�� 
.
��  
right
��  %
*
��& '
	_cellPool
��( 1
[
��1 2
leftMostCellIndex
��2 C
]
��C D
.
��D E
	sizeDelta
��E N
.
��N O
x
��O P
;
��P Q
}
�� 	
private
�� 
Vector2
��  
RecycleRightToleft
�� *
(
��* +
)
��+ ,
{
�� 	

_recycling
�� 
=
�� 
true
�� 
;
�� 
int
�� 
n
�� 
=
�� 
$num
�� 
;
�� 
float
�� 
posX
�� 
=
�� 
$num
�� 
;
�� 
float
�� 
posY
�� 
=
�� 
$num
�� 
;
�� 
if
�� 
(
�� 
IsGrid
�� 
)
�� 
{
�� 
float
�� 
_posX
�� 
=
�� 
	_cellPool
�� '
[
��' (
leftMostCellIndex
��( 9
]
��9 :
.
��: ;
anchoredPosition
��; K
.
��K L
x
��L M
-
��N O

_cellWidth
��P Z
;
��Z [
if
�� 
(
�� 
_leftMostCellRow
�� $
==
��% '
$num
��( )
)
��) *
{
�� 
_posX
�� 
-=
�� 

_cellWidth
�� '
;
��' (
}
�� 
_currentRow
�� 
=
�� 
_leftMostCellRow
�� .
;
��. /
}
�� 
while
�� 
(
�� 
	_cellPool
�� 
[
��  
rightMostCellIndex
�� /
]
��/ 0
.
��0 1
MinX
��1 5
(
��5 6
)
��6 7
>
��8 9#
_recyclableViewBounds
��: O
.
��O P
max
��P S
.
��S T
x
��T U
&&
��V X
currentItemCount
��Y i
>
��j k
	_cellPool
��l u
.
��u v
Count
��v {
)
��{ |
{
�� 
if
�� 
(
�� 
IsGrid
�� 
)
�� 
{
�� 
_currentRow
�� 
--
��  "
;
��" #
if
�� 
(
�� 
_currentRow
�� #
<
��$ %
$num
��& '
)
��' (
{
�� 
n
�� 
++
�� 
;
�� 
_currentRow
�� #
=
��$ %
_rows
��& +
-
��, -
$num
��. /
;
��/ 0
}
�� 
posY
�� 
=
�� 
-
�� 
_currentRow
�� '
*
��( )
_cellHeight
��* 5
;
��5 6
if
�� 
(
�� 
_currentRow
�� #
==
��$ &
_rows
��' ,
-
��- .
$num
��/ 0
)
��0 1
{
�� 
posX
�� 
=
�� 
	_cellPool
�� (
[
��( )
leftMostCellIndex
��) :
]
��: ;
.
��; <
anchoredPosition
��< L
.
��L M
x
��M N
-
��O P

_cellWidth
��Q [
;
��[ \
}
�� 
	_cellPool
�� 
[
��  
rightMostCellIndex
�� 0
]
��0 1
.
��1 2
anchoredPosition
��2 B
=
��C D
new
��E H
Vector2
��I P
(
��P Q
posX
��Q U
,
��U V
posY
��W [
)
��[ \
;
��\ ]
_leftMostCellRow
�� $
=
��% &
(
��' (
_leftMostCellRow
��( 8
-
��9 :
$num
��; <
+
��= >
_rows
��? D
)
��D E
%
��F G
_rows
��H M
;
��M N
}
�� 
else
�� 
{
�� 
posX
�� 
=
�� 
	_cellPool
�� $
[
��$ %
leftMostCellIndex
��% 6
]
��6 7
.
��7 8
anchoredPosition
��8 H
.
��H I
x
��I J
-
��K L
	_cellPool
��M V
[
��V W
leftMostCellIndex
��W h
]
��h i
.
��i j
	sizeDelta
��j s
.
��s t
x
��t u
;
��u v
	_cellPool
�� 
[
��  
rightMostCellIndex
�� 0
]
��0 1
.
��1 2
anchoredPosition
��2 B
=
��C D
new
��E H
Vector2
��I P
(
��P Q
posX
��Q U
,
��U V
	_cellPool
��W `
[
��` a 
rightMostCellIndex
��a s
]
��s t
.
��t u
anchoredPosition��u �
.��� �
y��� �
)��� �
;��� �
n
�� 
++
�� 
;
�� 
}
�� 
currentItemCount
��  
--
��  "
;
��" #
_dataSource
�� 
.
�� 
SetCell
�� #
(
��# $
_cachedCells
��$ 0
[
��0 1 
rightMostCellIndex
��1 C
]
��C D
,
��D E
currentItemCount
��F V
-
��W X
	_cellPool
��Y b
.
��b c
Count
��c h
)
��h i
;
��i j
leftMostCellIndex
�� !
=
��" # 
rightMostCellIndex
��$ 6
;
��6 7 
rightMostCellIndex
�� "
=
��# $
(
��% & 
rightMostCellIndex
��& 8
-
��9 :
$num
��; <
+
��= >
	_cellPool
��? H
.
��H I
Count
��I N
)
��N O
%
��P Q
	_cellPool
��R [
.
��[ \
Count
��\ a
;
��a b
}
�� 
if
�� 
(
�� 
IsGrid
�� 
)
�� 
{
�� 
_leftMostCellRow
��  
=
��! "
_currentRow
��# .
;
��. /
if
�� 
(
�� 
!
�� #
_contentSizeIncreased
�� *
)
��* +
{
�� 
if
�� 
(
�� 
_currentRow
�� #
!=
��$ &
$num
��' (
)
��( )
{
�� 
Content
�� 
.
��  
	sizeDelta
��  )
+=
��* ,
Vector2
��- 4
.
��4 5
right
��5 :
*
��; <

_cellWidth
��= G
;
��G H
n
�� 
-=
�� 
$num
�� 
;
�� #
_contentSizeIncreased
�� -
=
��. /
true
��0 4
;
��4 5
}
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
_currentRow
�� #
==
��$ &
$num
��' (
)
��( )
{
�� 
Content
�� 
.
��  
	sizeDelta
��  )
-=
��* ,
Vector2
��- 4
.
��4 5
right
��5 :
*
��; <

_cellWidth
��= G
;
��G H#
_contentSizeIncreased
�� -
=
��. /
false
��0 5
;
��5 6
}
�� 
}
�� 
}
�� 
	_cellPool
�� 
.
�� 
ForEach
�� 
(
�� 
(
�� 
RectTransform
�� ,
cell
��- 1
)
��1 2
=>
��3 5
cell
��6 :
.
��: ;
anchoredPosition
��; K
+=
��L N
n
��O P
*
��Q R
Vector2
��S Z
.
��Z [
right
��[ `
*
��a b
	_cellPool
��c l
[
��l m
leftMostCellIndex
��m ~
]
��~ 
.�� �
	sizeDelta��� �
.��� �
x��� �
)��� �
;��� �
Content
�� 
.
�� 
anchoredPosition
�� $
-=
��% '
n
��( )
*
��* +
Vector2
��, 3
.
��3 4
right
��4 9
*
��: ;
	_cellPool
��< E
[
��E F
leftMostCellIndex
��F W
]
��W X
.
��X Y
	sizeDelta
��Y b
.
��b c
x
��c d
;
��d e

_recycling
�� 
=
�� 
false
�� 
;
�� 
return
�� 
-
�� 
n
�� 
*
�� 
Vector2
�� 
.
��  
right
��  %
*
��& '
	_cellPool
��( 1
[
��1 2
leftMostCellIndex
��2 C
]
��C D
.
��D E
	sizeDelta
��E N
.
��N O
x
��O P
;
��P Q
}
�� 	
private
�� 
void
�� 
	SetAnchor
�� 
(
�� 
RectTransform
�� ,
rectTransform
��- :
)
��: ;
{
�� 	
float
�� 
width
�� 
=
�� 
rectTransform
�� '
.
��' (
rect
��( ,
.
��, -
width
��- 2
;
��2 3
float
�� 
height
�� 
=
�� 
rectTransform
�� (
.
��( )
rect
��) -
.
��- .
height
��. 4
;
��4 5
Vector2
�� 
pos
�� 
=
�� 
IsGrid
��  
?
��! "
new
��# &
Vector2
��' .
(
��. /
$num
��/ 0
,
��0 1
$num
��2 3
)
��3 4
:
��5 6
new
��7 :
Vector2
��; B
(
��B C
$num
��C D
,
��D E
$num
��F J
)
��J K
;
��K L
rectTransform
�� 
.
�� 
	anchorMin
�� #
=
��$ %
pos
��& )
;
��) *
rectTransform
�� 
.
�� 
	anchorMax
�� #
=
��$ %
pos
��& )
;
��) *
rectTransform
�� 
.
�� 
pivot
�� 
=
��  !
pos
��" %
;
��% &
rectTransform
�� 
.
�� 
	sizeDelta
�� #
=
��$ %
new
��& )
Vector2
��* 1
(
��1 2
width
��2 7
,
��7 8
height
��9 ?
)
��? @
;
��@ A
}
�� 	
}
�� 
}�� �
]D:\GitHub-Projects\Recyclable-Scroll-Rect\Assets\Recyclable Scroll Rect\Main\Scripts\ICell.cs
	namespace		 	
PolyAndCode		
 
.		 
UI		 
{

 
public 

	interface 
ICell 
{ 
} 
} �
wD:\GitHub-Projects\Recyclable-Scroll-Rect\Assets\Recyclable Scroll Rect\Main\Scripts\IRecyclableScrollRectDataSource.cs
	namespace		 	
PolyAndCode		
 
.		 
UI		 
{

 
public 

	interface +
IRecyclableScrollRectDataSource 4
{ 
int 
GetItemCount 
( 
) 
; 
void 
SetCell 
( 
ICell 
cell 
,  
int! $
index% *
)* +
;+ ,
} 
} �+
lD:\GitHub-Projects\Recyclable-Scroll-Rect\Assets\Recyclable Scroll Rect\Main\Scripts\RecyclableScrollRect.cs
	namespace 	
PolyAndCode
 
. 
UI 
{ 
public 

class  
RecyclableScrollRect %
:& '

ScrollRect( 2
{ 
public 
bool 
Grid 
; 
public 
enum 
DirectionType !
{ 	
Vertical 
, 

Horizontal 
} 	
public 
DirectionType 
	Direction &
;& '
[ 	
SerializeField	 
] 
public 
int 
Segments 
{ 
set 
{ 
	_segments 
= 
Math  
.  !
Max! $
($ %
value% *
,* +
$num, -
)- .
;. /
}   
get!! 
{!! 
return"" 
	_segments""  
;""  !
}## 
}$$ 	
[&& 	
SerializeField&&	 
]&& 
private'' 
int'' 
	_segments'' 
;'' 
public(( 
RectTransform(( 
PrototypeCell(( *
;((* +
public)) 
bool)) 
SelfInitialize)) "
=))# $
true))% )
;))) *
[++ 	
HideInInspector++	 
]++ 
public,, +
IRecyclableScrollRectDataSource,, .

DataSource,,/ 9
;,,9 :
private.. 
RecyclingSystem..  
recyclableScrollRect..  4
;..4 5
	protected00 
override00 
void00 
Start00  %
(00% &
)00& '
{11 	
vertical44 
=44 
false44 
;44 

horizontal55 
=55 
true55 
;55 
if77 
(77 
!77 
Application77 
.77 
	isPlaying77 &
)77& '
return77( .
;77. /
if99 
(99 
SelfInitialize99 
)99 

Initialize99  *
(99* +
)99+ ,
;99, -
}:: 	
private== 
void== 

Initialize== 
(==  
)==  !
{>> 	
if?? 
(?? 
	Direction?? 
==?? 
DirectionType?? *
.??* +
Vertical??+ 3
)??3 4
{@@  
recyclableScrollRectAA $
=AA% &
newAA' *#
VerticalRecyclingSystemAA+ B
(AAB C
PrototypeCellAAC P
,AAP Q
viewportAAR Z
,AAZ [
contentAA\ c
,AAc d

DataSourceAAe o
,AAo p
GridAAq u
,AAu v
SegmentsAAw 
)	AA �
;
AA� �
}BB 
elseCC 
ifCC 
(CC 
	DirectionCC 
==CC !
DirectionTypeCC" /
.CC/ 0

HorizontalCC0 :
)CC: ;
{DD  
recyclableScrollRectEE $
=EE% &
newEE' *%
HorizontalRecyclingSystemEE+ D
(EED E
PrototypeCellEEE R
,EER S
viewportEET \
,EE\ ]
contentEE^ e
,EEe f

DataSourceEEg q
,EEq r
GridEEs w
,EEw x
Segments	EEy �
)
EE� �
;
EE� �
}FF 
verticalHH 
=HH 
	DirectionHH  
==HH! #
DirectionTypeHH$ 1
.HH1 2
VerticalHH2 :
;HH: ;

horizontalII 
=II 
	DirectionII "
==II# %
DirectionTypeII& 3
.II3 4

HorizontalII4 >
;II> ?
onValueChangedKK 
.KK 
RemoveListenerKK )
(KK) *"
OnValueChangedListenerKK* @
)KK@ A
;KKA B
StartCoroutineNN 
(NN  
recyclableScrollRectNN /
.NN/ 0
InitCoroutineNN0 =
(NN= >
(NN> ?
)NN? @
=>NNA C
onValueChangedOO? M
.OOM N
AddListenerOON Y
(OOY Z"
OnValueChangedListenerOOZ p
)OOp q
)PP> ?
)PP? @
;PP@ A
}SS 	
publicUU 
voidUU 

InitializeUU 
(UU +
IRecyclableScrollRectDataSourceUU >

dataSourceUU? I
)UUI J
{VV 	

DataSourceWW 
=WW 

dataSourceWW #
;WW# $

InitializeXX 
(XX 
)XX 
;XX 
}YY 	
public\\ 
void\\ "
OnValueChangedListener\\ *
(\\* +
Vector2\\+ 2
args\\3 7
)\\7 8
{]] 	"
m_ContentStartPosition^^ "
+=^^# % 
recyclableScrollRect^^& :
.^^: ;"
OnValueChangedListener^^; Q
(^^Q R
args^^R V
)^^V W
;^^W X
}__ 	
privatebb 
voidbb 
OnDrawGizmosbb !
(bb! "
)bb" #
{cc 	
ifdd 
(dd  
recyclableScrollRectdd $
isdd% '#
VerticalRecyclingSystemdd( ?
)dd? @
{ee 
(ff 
(ff #
VerticalRecyclingSystemff )
)ff) * 
recyclableScrollRectff* >
)ff> ?
.ff? @
OnDrawGizmosff@ L
(ffL M
)ffM N
;ffN O
}gg 
}ii 	
}ll 
}mm �	
gD:\GitHub-Projects\Recyclable-Scroll-Rect\Assets\Recyclable Scroll Rect\Main\Scripts\RecyclingSystem.cs
	namespace 	
PolyAndCode
 
. 
UI 
{ 
public 

abstract 
class 
RecyclingSystem )
{		 
	protected

 
RectTransform

 
Viewport

  (
,

( )
Content

* 1
;

1 2
	protected 
bool 
IsGrid 
; 
	protected 
RectTransform 
PrototypeCell  -
;- .
	protected 
float 
MinPoolCoverage '
=( )
$num* .
;. /
	protected 
int 
MinPoolSize !
=" #
$num$ &
;& '
public 
abstract 
IEnumerator #
InitCoroutine$ 1
(1 2
System2 8
.8 9
Action9 ?
onInitialized@ M
)M N
;N O
public 
abstract 
Vector2 "
OnValueChangedListener  6
(6 7
Vector27 >
args? C
)C D
;D E
} 
} �
cD:\GitHub-Projects\Recyclable-Scroll-Rect\Assets\Recyclable Scroll Rect\Main\Scripts\UIExtension.cs
public

 
static

 
class

 
UIExtension

 
{ 
public 

static 
float 
MaxY 
( 
this !
RectTransform" /
rectTransform0 =
)= >
{ 
Vector3 
[ 
] 
corners 
= 
new 
Vector3  '
[' (
$num( )
]) *
;* +
rectTransform 
. 
GetWorldCorners %
(% &
corners& -
)- .
;. /
return 
corners 
[ 
$num 
] 
. 
y 
; 
} 
public 

static 
float 
MinY 
( 
this !
RectTransform" /
rectTransform0 =
)= >
{ 
Vector3 
[ 
] 
corners 
= 
new 
Vector3  '
[' (
$num( )
]) *
;* +
rectTransform 
. 
GetWorldCorners %
(% &
corners& -
)- .
;. /
return 
corners 
[ 
$num 
] 
. 
y 
; 
} 
public 

static 
float 
MaxX 
( 
this !
RectTransform" /
rectTransform0 =
)= >
{ 
Vector3 
[ 
] 
corners 
= 
new 
Vector3  '
[' (
$num( )
]) *
;* +
rectTransform 
. 
GetWorldCorners %
(% &
corners& -
)- .
;. /
return 
corners 
[ 
$num 
] 
. 
x 
; 
} 
public!! 

static!! 
float!! 
MinX!! 
(!! 
this!! !
RectTransform!!" /
rectTransform!!0 =
)!!= >
{"" 
Vector3## 
[## 
]## 
corners## 
=## 
new## 
Vector3##  '
[##' (
$num##( )
]##) *
;##* +
rectTransform$$ 
.$$ 
GetWorldCorners$$ %
($$% &
corners$$& -
)$$- .
;$$. /
return%% 
corners%% 
[%% 
$num%% 
]%% 
.%% 
x%% 
;%% 
}&& 
}(( ��
oD:\GitHub-Projects\Recyclable-Scroll-Rect\Assets\Recyclable Scroll Rect\Main\Scripts\VerticalRecyclingSystem.cs
	namespace 	
PolyAndCode
 
. 
UI 
{ 
public		 
class		 #
VerticalRecyclingSystem		 %
:		& '
RecyclingSystem		( 7
{

 
private 
int 
	_coloumns 
= 
$num  !
;! "
private 
float 

_cellWidth  
,  !
_cellHeight" -
;- .
private 
int 
_topMostCellColoumn '
,' ("
_bottomMostCellColoumn) ?
,? @
_currentColoumnA P
;P Q
private 
bool !
_contentSizeIncreased *
;* +
private +
IRecyclableScrollRectDataSource /
_dataSource0 ;
;; <
public 
bool 
SelfInitialize "
=# $
true% )
;) *
private 
List 
< 
RectTransform "
>" #
	_cellPool$ -
;- .
private 
List 
< 
ICell 
> 
_cachedCells (
;( )
private 
RectTransform 
_listContainer ,
;, -
private 
Bounds !
_recyclableViewBounds ,
;, -
private 
float 
_recyclingThreshold )
=* +
$num, /
;/ 0
private 
Vector3 
[ 
] 
_corners "
=# $
new% (
Vector3) 0
[0 1
$num1 2
]2 3
;3 4
private   
bool   

_recycling   
;    
private## 
int## 
topMostCellIndex## $
,##$ %
bottomMostCellIndex##& 9
;##9 :
private$$ 
int$$ 
currentItemCount$$ $
;$$$ %
public&& #
VerticalRecyclingSystem&& &
(&&& '
RectTransform&&' 4
prototypeCell&&5 B
,&&B C
RectTransform&&D Q
viewport&&R Z
,&&Z [
RectTransform&&\ i
content&&j q
,&&q r,
IRecyclableScrollRectDataSource	&&s �

dataSource
&&� �
,
&&� �
bool
&&� �
isGrid
&&� �
,
&&� �
int
&&� �
coloumns
&&� �
)
&&� �
{'' 	
PrototypeCell(( 
=(( 
prototypeCell(( )
;(() *
Viewport)) 
=)) 
viewport)) 
;))  
Content** 
=** 
content** 
;** 
_dataSource++ 
=++ 

dataSource++ $
;++$ %
IsGrid,, 
=,, 
isGrid,, 
;,, 
	_coloumns.. 
=.. 
isGrid.. 
?..  !
coloumns.." *
:..+ ,
$num..- .
;... /
}// 	
publicVV 
overrideVV 
IEnumeratorVV #
InitCoroutineVV$ 1
(VV1 2
SystemVV2 8
.VV8 9
ActionVV9 ?
onInitializedVV@ M
)VVM N
{WW 	
SetTopAnchorbb 
(bb 
Contentbb  
)bb  !
;bb! "
Contentcc 
.cc 
anchoredPositioncc $
=cc% &
Vector3cc' .
.cc. /
zerocc/ 3
;cc3 4
yielddd 
returndd 
nulldd 
;dd 
SetRecyclingBoundsee 
(ee 
)ee  
;ee  !
CreateCellPoolhh 
(hh 
)hh 
;hh 
topMostCellIndexjj 
=jj 
$numjj  
;jj  !
bottomMostCellIndexkk 
=kk  !
	_cellPoolkk" +
.kk+ ,
Countkk, 1
-kk2 3
$numkk4 5
;kk5 6
intmm 
noOfRowsmm 
=mm 
(mm 
intmm 
)mm  
Mathfmm  %
.mm% &
Ceilmm& *
(mm* +
(mm+ ,
floatmm, 1
)mm1 2
	_cellPoolmm2 ;
.mm; <
Countmm< A
/mmB C
(mmD E
floatmmE J
)mmJ K
	_coloumnsmmK T
)mmT U
;mmU V
floatpp 
contentYSizepp 
=pp  
noOfRowspp" *
*pp+ ,
PrototypeCellpp- :
.pp: ;
	sizeDeltapp; D
.ppD E
yppE F
;ppF G
Contentqq 
.qq 
	sizeDeltaqq 
=qq 
newqq  #
Vector2qq$ +
(qq+ ,
Contentqq, 3
.qq3 4
	sizeDeltaqq4 =
.qq= >
xqq> ?
,qq? @
contentYSizeqqA M
)qqM N
;qqN O
currentItemCountrr 
=rr 
	_cellPoolrr (
.rr( )
Countrr) .
;rr. /
SetTopAnchorss 
(ss 
Contentss  
)ss  !
;ss! "
ifuu 
(uu 
onInitializeduu 
!=uu 
nulluu  $
)uu$ %
onInitializeduu& 3
(uu3 4
)uu4 5
;uu5 6
}xx 	
private}} 
void}} 
SetRecyclingBounds}} '
(}}' (
)}}( )
{~~ 	
Viewport 
. 
GetWorldCorners $
($ %
_corners% -
)- .
;. /
float
�� 

threshHold
�� 
=
�� !
_recyclingThreshold
�� 2
*
��3 4
(
��5 6
_corners
��6 >
[
��> ?
$num
��? @
]
��@ A
.
��A B
y
��B C
-
��D E
_corners
��F N
[
��N O
$num
��O P
]
��P Q
.
��Q R
y
��R S
)
��S T
;
��T U#
_recyclableViewBounds
�� !
.
��! "
min
��" %
=
��& '
new
��( +
Vector3
��, 3
(
��3 4
_corners
��4 <
[
��< =
$num
��= >
]
��> ?
.
��? @
x
��@ A
,
��A B
_corners
��C K
[
��K L
$num
��L M
]
��M N
.
��N O
y
��O P
-
��Q R

threshHold
��S ]
)
��] ^
;
��^ _#
_recyclableViewBounds
�� !
.
��! "
max
��" %
=
��& '
new
��( +
Vector3
��, 3
(
��3 4
_corners
��4 <
[
��< =
$num
��= >
]
��> ?
.
��? @
x
��@ A
,
��A B
_corners
��C K
[
��K L
$num
��L M
]
��M N
.
��N O
y
��O P
+
��Q R

threshHold
��S ]
)
��] ^
;
��^ _
}
�� 	
private
�� 
void
�� 
CreateCellPool
�� $
(
��$ %
)
��% &
{
�� 	
if
�� 
(
�� 
	_cellPool
�� 
!=
�� 
null
�� !
)
��! "
{
�� 
	_cellPool
�� 
.
�� 
ForEach
�� !
(
��! "
(
��" #
RectTransform
��# 0
item
��1 5
)
��5 6
=>
��7 9
UnityEngine
��: E
.
��E F
Object
��F L
.
��L M
Destroy
��M T
(
��T U
item
��U Y
.
��Y Z

gameObject
��Z d
)
��d e
)
��e f
;
��f g
	_cellPool
�� 
.
�� 
Clear
�� 
(
��  
)
��  !
;
��! "
_cachedCells
�� 
.
�� 
Clear
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
else
�� 
{
�� 
_cachedCells
�� 
=
�� 
new
�� "
List
��# '
<
��' (
ICell
��( -
>
��- .
(
��. /
)
��/ 0
;
��0 1
	_cellPool
�� 
=
�� 
new
�� 
List
��  $
<
��$ %
RectTransform
��% 2
>
��2 3
(
��3 4
)
��4 5
;
��5 6
}
�� 
PrototypeCell
�� 
.
�� 

gameObject
�� $
.
��$ %
	SetActive
��% .
(
��. /
true
��/ 3
)
��3 4
;
��4 5
if
�� 
(
�� 
IsGrid
�� 
)
�� 
{
�� 
SetTopLeftAnchor
��  
(
��  !
PrototypeCell
��! .
)
��. /
;
��/ 0
}
�� 
else
�� 
{
�� 
SetTopAnchor
�� 
(
�� 
PrototypeCell
�� *
)
��* +
;
��+ ,
}
�� 
float
�� !
currentPoolCoverage
�� %
=
��& '
$num
��( )
;
��) *
int
�� 
poolSize
�� 
=
�� 
$num
�� 
;
�� 
float
�� 
posX
�� 
=
�� 
$num
�� 
;
�� 
float
�� 
posY
�� 
=
�� 
$num
�� 
;
�� 

_cellWidth
�� 
=
�� 
Content
��  
.
��  !
rect
��! %
.
��% &
width
��& +
/
��, -
	_coloumns
��. 7
;
��7 8
_cellHeight
�� 
=
�� 
PrototypeCell
�� '
.
��' (
	sizeDelta
��( 1
.
��1 2
y
��2 3
/
��4 5
PrototypeCell
��6 C
.
��C D
	sizeDelta
��D M
.
��M N
x
��N O
*
��P Q

_cellWidth
��R \
;
��\ ]
PrototypeCell
�� 
.
�� 
	sizeDelta
�� #
=
��$ %
new
��& )
Vector3
��* 1
(
��1 2

_cellWidth
��2 <
,
��< =
_cellHeight
��> I
)
��I J
;
��J K
_currentColoumn
�� 
=
�� !
_topMostCellColoumn
�� 1
=
��2 3
$num
��4 5
;
��5 6
float
�� 
requriedCoverage
�� "
=
��# $
MinPoolCoverage
��% 4
*
��5 6
Viewport
��7 ?
.
��? @
rect
��@ D
.
��D E
height
��E K
;
��K L
int
�� 
minPoolSize
�� 
=
�� 
Math
�� "
.
��" #
Min
��# &
(
��& '
MinPoolSize
��' 2
,
��2 3
_dataSource
��4 ?
.
��? @
GetItemCount
��@ L
(
��L M
)
��M N
)
��N O
;
��O P
while
�� 
(
�� 
(
�� 
poolSize
�� 
<
�� 
$num
�� !
||
��" $!
currentPoolCoverage
��% 8
<
��9 :
requriedCoverage
��; K
)
��K L
&&
��M O
poolSize
��P X
<
��Y Z
_dataSource
��[ f
.
��f g
GetItemCount
��g s
(
��s t
)
��t u
)
��u v
{
�� 
RectTransform
�� 
item
�� "
=
��# $
(
��% &
UnityEngine
��& 1
.
��1 2
Object
��2 8
.
��8 9
Instantiate
��9 D
(
��D E
PrototypeCell
��E R
.
��R S

gameObject
��S ]
)
��] ^
as
��_ a

GameObject
��b l
)
��l m
.
��m n
GetComponent
��n z
<
��z {
RectTransform��{ �
>��� �
(��� �
)��� �
;��� �
item
�� 
.
�� 
name
�� 
=
�� 
$str
�� "
;
��" #
	_cellPool
�� 
.
�� 
Add
�� 
(
�� 
item
�� "
)
��" #
;
��# $
item
�� 
.
�� 
	SetParent
�� 
(
�� 
Content
�� &
,
��& '
false
��( -
)
��- .
;
��. /
if
�� 
(
�� 
IsGrid
�� 
)
�� 
{
�� 
item
�� 
.
�� 
anchoredPosition
�� )
=
��* +
new
��, /
Vector2
��0 7
(
��7 8
posX
��8 <
,
��< =
posY
��> B
)
��B C
;
��C D
_currentColoumn
�� #
++
��# %
;
��% &
posX
�� 
=
�� 
_currentColoumn
�� *
>=
��+ -
	_coloumns
��. 7
?
��8 9
$num
��: ;
:
��< =
posX
��> B
+
��C D

_cellWidth
��E O
;
��O P
posY
�� 
=
�� 
_currentColoumn
�� *
>=
��+ -
	_coloumns
��. 7
?
��8 9
posY
��: >
-
��? @
_cellHeight
��A L
:
��M N
posY
��O S
;
��S T
if
�� 
(
�� 
_currentColoumn
�� '
>=
��( *
	_coloumns
��+ 4
)
��4 5
{
�� 
_currentColoumn
�� '
=
��( )
$num
��* +
;
��+ ,!
currentPoolCoverage
�� +
+=
��, .
item
��/ 3
.
��3 4
rect
��4 8
.
��8 9
height
��9 ?
;
��? @
}
�� 
}
�� 
else
�� 
{
�� 
item
�� 
.
�� 
anchoredPosition
�� )
=
��* +
new
��, /
Vector2
��0 7
(
��7 8
$num
��8 9
,
��9 :
posY
��; ?
)
��? @
;
��@ A
posY
�� 
=
�� 
item
�� 
.
��  
anchoredPosition
��  0
.
��0 1
y
��1 2
-
��3 4
item
��5 9
.
��9 :
rect
��: >
.
��> ?
height
��? E
;
��E F!
currentPoolCoverage
�� '
+=
��( *
item
��+ /
.
��/ 0
rect
��0 4
.
��4 5
height
��5 ;
;
��; <
}
�� 
_cachedCells
�� 
.
�� 
Add
��  
(
��  !
item
��! %
.
��% &
GetComponent
��& 2
<
��2 3
ICell
��3 8
>
��8 9
(
��9 :
)
��: ;
)
��; <
;
��< =
_dataSource
�� 
.
�� 
SetCell
�� #
(
��# $
_cachedCells
��$ 0
[
��0 1
_cachedCells
��1 =
.
��= >
Count
��> C
-
��D E
$num
��F G
]
��G H
,
��H I
poolSize
��J R
)
��R S
;
��S T
poolSize
�� 
++
�� 
;
�� 
}
�� 
if
�� 
(
�� 
IsGrid
�� 
)
�� 
{
�� $
_bottomMostCellColoumn
�� &
=
��' (
(
��) *
_currentColoumn
��* 9
-
��: ;
$num
��< =
+
��> ?
	_coloumns
��@ I
)
��I J
%
��K L
	_coloumns
��M V
;
��V W
}
�� 
if
�� 
(
�� 
PrototypeCell
�� 
.
�� 

gameObject
�� (
.
��( )
scene
��) .
.
��. /
IsValid
��/ 6
(
��6 7
)
��7 8
)
��8 9
{
�� 
PrototypeCell
�� 
.
�� 

gameObject
�� (
.
��( )
	SetActive
��) 2
(
��2 3
false
��3 8
)
��8 9
;
��9 :
}
�� 
}
�� 	
Vector2
�� 

zeroVector
�� 
=
�� 
Vector2
�� $
.
��$ %
zero
��% )
;
��) *
public
�� 
override
�� 
Vector2
�� $
OnValueChangedListener
��  6
(
��6 7
Vector2
��7 >
args
��? C
)
��C D
{
�� 	
if
�� 
(
�� 

_recycling
�� 
||
�� 
	_cellPool
�� '
==
��( *
null
��+ /
||
��0 2
	_cellPool
��3 <
.
��< =
Count
��= B
==
��C E
$num
��F G
)
��G H
return
��I O

zeroVector
��P Z
;
��[ \
foreach
�� 
(
�� 
var
�� 
i
�� 
in
�� 
	_cellPool
�� '
)
��' (
{
��) *
if
�� 
(
�� 
i
�� 
==
�� 
	_cellPool
�� "
[
��" #
topMostCellIndex
��# 3
]
��3 4
)
��4 5
{
�� 
i
�� 
.
�� 
GetComponent
�� "
<
��" #
Image
��# (
>
��( )
(
��) *
)
��* +
.
��+ ,
color
��, 1
=
��2 3
Color
��4 9
.
��9 :
red
��: =
;
��= >
}
�� 
else
�� 
if
�� 
(
�� 
i
�� 
==
�� 
	_cellPool
�� '
[
��' (!
bottomMostCellIndex
��( ;
]
��; <
)
��< =
{
�� 
i
�� 
.
�� 
GetComponent
�� "
<
��" #
Image
��# (
>
��( )
(
��) *
)
��* +
.
��+ ,
color
��, 1
=
��2 3
Color
��4 9
.
��9 :
green
��: ?
;
��? @
}
�� 
else
�� 
{
�� 
i
�� 
.
�� 
GetComponent
�� "
<
��" #
Image
��# (
>
��( )
(
��) *
)
��* +
.
��+ ,
color
��, 1
=
��2 3
Color
��4 9
.
��9 :
white
��: ?
;
��? @
}
�� 
}
��  
SetRecyclingBounds
�� 
(
�� 
)
��  
;
��  !
if
�� 
(
�� 
	_cellPool
�� 
[
�� !
bottomMostCellIndex
�� -
]
��- .
.
��. /
MinY
��/ 3
(
��3 4
)
��4 5
>
��6 7#
_recyclableViewBounds
��8 M
.
��M N
min
��N Q
.
��Q R
y
��R S
)
��S T
{
�� 
return
��  
RecycleTopToBottom
�� *
(
��* +
)
��+ ,
;
��, -
}
�� 
else
�� 
if
�� 
(
�� 
	_cellPool
�� 
[
�� 
topMostCellIndex
�� /
]
��/ 0
.
��0 1
MaxY
��1 5
(
��5 6
)
��6 7
<
��8 9#
_recyclableViewBounds
��: O
.
��O P
max
��P S
.
��S T
y
��T U
)
��U V
{
�� 
Debug
�� 
.
�� 
Log
�� 
(
�� 
$str
�� )
)
��) *
;
��* +
Debug
�� 
.
�� 
Log
�� 
(
�� 
$str
�� !
+
��" #
topMostCellIndex
��$ 4
)
��4 5
;
��5 6
Debug
�� 
.
�� 
Log
�� 
(
�� 
$str
�� "
+
��# $
	_cellPool
��% .
[
��. /
topMostCellIndex
��/ ?
]
��? @
.
��@ A
MaxY
��A E
(
��E F
)
��F G
)
��G H
;
��H I
Debug
�� 
.
�� 
Log
�� 
(
�� 
$str
��  
+
��! "#
_recyclableViewBounds
��# 8
.
��8 9
max
��9 <
.
��< =
y
��= >
)
��> ?
;
��? @
return
��  
RecycleBottomToTop
�� )
(
��) *
)
��* +
;
��+ ,
}
�� 
return
�� 

zeroVector
�� 
;
�� 
}
�� 	
private
�� 
Vector2
��  
RecycleTopToBottom
�� *
(
��* +
)
��+ ,
{
�� 	

_recycling
�� 
=
�� 
true
�� 
;
�� 
int
�� 
n
�� 
=
�� 
$num
�� 
;
�� 
float
�� 
posY
�� 
=
�� 
$num
�� 
;
�� 
float
�� 
posX
�� 
=
�� 
$num
�� 
;
�� 
if
�� 
(
�� 
IsGrid
�� 
)
�� 
{
�� 
posY
�� 
=
�� 
	_cellPool
�� !
[
��! "!
bottomMostCellIndex
��" 5
]
��5 6
.
��6 7
anchoredPosition
��7 G
.
��G H
y
��H I
;
��I J
if
�� 
(
�� $
_bottomMostCellColoumn
�� *
==
��+ -
	_coloumns
��. 7
-
��8 9
$num
��: ;
)
��; <
{
�� 
posY
�� 
-=
�� 
	_cellPool
�� %
[
��% &
topMostCellIndex
��& 6
]
��6 7
.
��7 8
rect
��8 <
.
��< =
height
��= C
;
��C D
}
�� 
_currentColoumn
�� 
=
��  !$
_bottomMostCellColoumn
��" 8
;
��8 9
}
�� 
while
�� 
(
�� 
	_cellPool
�� 
[
�� 
topMostCellIndex
�� -
]
��- .
.
��. /
MinY
��/ 3
(
��3 4
)
��4 5
>
��6 7#
_recyclableViewBounds
��8 M
.
��M N
max
��N Q
.
��Q R
y
��R S
&&
��T V
currentItemCount
��W g
<
��h i
_dataSource
��j u
.
��u v
GetItemCount��v �
(��� �
)��� �
)��� �
{
�� 
if
�� 
(
�� 
IsGrid
�� 
)
�� 
{
�� 
_currentColoumn
�� #
++
��$ &
;
��& '
if
�� 
(
�� 
_currentColoumn
�� '
>=
��( *
	_coloumns
��+ 4
)
��4 5
{
�� 
n
�� 
++
�� 
;
�� 
_currentColoumn
�� '
=
��( )
$num
��* +
;
��+ ,
}
�� 
posX
�� 
=
�� 
_currentColoumn
�� *
*
��+ ,

_cellWidth
��- 7
;
��7 8
if
�� 
(
�� 
_currentColoumn
�� '
==
��( *
$num
��+ ,
)
��, -
{
�� 
posY
�� 
=
�� 
	_cellPool
�� (
[
��( )!
bottomMostCellIndex
��) <
]
��< =
.
��= >
anchoredPosition
��> N
.
��N O
y
��O P
-
��Q R
_cellHeight
��S ^
;
��^ _
}
�� 
	_cellPool
�� 
[
�� 
topMostCellIndex
�� .
]
��. /
.
��/ 0
anchoredPosition
��0 @
=
��A B
new
��C F
Vector2
��G N
(
��N O
posX
��O S
,
��S T
posY
��U Y
)
��Y Z
;
��Z [!
_topMostCellColoumn
�� '
=
��( )
(
��* +!
_topMostCellColoumn
��+ >
+
��? @
$num
��A B
)
��B C
%
��D E
	_coloumns
��F O
;
��O P
}
�� 
else
�� 
{
�� 
posY
�� 
=
�� 
	_cellPool
�� $
[
��$ %!
bottomMostCellIndex
��% 8
]
��8 9
.
��9 :
anchoredPosition
��: J
.
��J K
y
��K L
-
��M N
	_cellPool
��O X
[
��X Y!
bottomMostCellIndex
��Y l
]
��l m
.
��m n
	sizeDelta
��n w
.
��w x
y
��x y
;
��y z
	_cellPool
�� 
[
�� 
topMostCellIndex
�� .
]
��. /
.
��/ 0
anchoredPosition
��0 @
=
��A B
new
��C F
Vector2
��G N
(
��N O
	_cellPool
��O X
[
��X Y
topMostCellIndex
��Y i
]
��i j
.
��j k
anchoredPosition
��k {
.
��{ |
x
��| }
,
��} ~
posY�� �
)��� �
;��� �
}
�� 
_dataSource
�� 
.
�� 
SetCell
�� #
(
��# $
_cachedCells
��$ 0
[
��0 1
topMostCellIndex
��1 A
]
��A B
,
��B C
currentItemCount
��D T
)
��T U
;
��U V!
bottomMostCellIndex
�� #
=
��$ %
topMostCellIndex
��& 6
;
��6 7
topMostCellIndex
��  
=
��! "
(
��# $
topMostCellIndex
��$ 4
+
��5 6
$num
��7 8
)
��8 9
%
��: ;
	_cellPool
��< E
.
��E F
Count
��F K
;
��K L
currentItemCount
��  
++
��  "
;
��" #
if
�� 
(
�� 
!
�� 
IsGrid
�� 
)
�� 
n
�� 
++
��  
;
��  !
}
�� 
if
�� 
(
�� 
IsGrid
�� 
)
�� 
{
�� $
_bottomMostCellColoumn
�� &
=
��' (
_currentColoumn
��) 8
;
��8 9
if
�� 
(
�� 
!
�� #
_contentSizeIncreased
�� *
)
��* +
{
�� 
if
�� 
(
�� 
_currentColoumn
�� '
!=
��( *
	_coloumns
��+ 4
-
��5 6
$num
��7 8
)
��8 9
{
�� 
Content
�� 
.
��  
	sizeDelta
��  )
+=
��* ,
Vector2
��- 4
.
��4 5
up
��5 7
*
��8 9
	_cellPool
��: C
[
��C D
topMostCellIndex
��D T
]
��T U
.
��U V
	sizeDelta
��V _
.
��_ `
y
��` a
;
��a b
n
�� 
-=
�� 
$num
�� 
;
�� #
_contentSizeIncreased
�� -
=
��. /
true
��0 4
;
��4 5
}
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
_currentColoumn
�� '
==
��( *
	_coloumns
��+ 4
-
��5 6
$num
��7 8
)
��8 9
{
�� 
Content
�� 
.
��  
	sizeDelta
��  )
-=
��* ,
Vector2
��- 4
.
��4 5
up
��5 7
*
��8 9
	_cellPool
��: C
[
��C D
topMostCellIndex
��D T
]
��T U
.
��U V
	sizeDelta
��V _
.
��_ `
y
��` a
;
��a b#
_contentSizeIncreased
�� -
=
��. /
false
��0 5
;
��5 6
}
�� 
}
�� 
}
�� 
	_cellPool
�� 
.
�� 
ForEach
�� 
(
�� 
(
�� 
RectTransform
�� ,
cell
��- 1
)
��1 2
=>
��3 5
cell
��6 :
.
��: ;
anchoredPosition
��; K
+=
��L N
n
��O P
*
��Q R
Vector2
��S Z
.
��Z [
up
��[ ]
*
��^ _
	_cellPool
��` i
[
��i j
topMostCellIndex
��j z
]
��z {
.
��{ |
	sizeDelta��| �
.��� �
y��� �
)��� �
;��� �
Content
�� 
.
�� 
anchoredPosition
�� $
-=
��% '
n
��( )
*
��* +
Vector2
��, 3
.
��3 4
up
��4 6
*
��7 8
	_cellPool
��9 B
[
��B C
topMostCellIndex
��C S
]
��S T
.
��T U
	sizeDelta
��U ^
.
��^ _
y
��_ `
;
��` a

_recycling
�� 
=
�� 
false
�� 
;
�� 
return
�� 
-
�� 
new
�� 
Vector2
��  
(
��  !
$num
��! "
,
��" #
n
��$ %
*
��& '
	_cellPool
��( 1
[
��1 2
topMostCellIndex
��2 B
]
��B C
.
��C D
	sizeDelta
��D M
.
��M N
y
��N O
)
��O P
;
��P Q
}
�� 	
private
�� 
Vector2
��  
RecycleBottomToTop
�� *
(
��* +
)
��+ ,
{
�� 	
Debug
�� 
.
�� 
Log
�� 
(
�� 
$str
�� %
+
��& '
topMostCellIndex
��( 8
)
��8 9
;
��9 :

_recycling
�� 
=
�� 
true
�� 
;
�� 
int
�� 
n
�� 
=
�� 
$num
�� 
;
�� 
float
�� 
posY
�� 
=
�� 
$num
�� 
;
�� 
float
�� 
posX
�� 
=
�� 
$num
�� 
;
�� 
if
�� 
(
�� 
IsGrid
�� 
)
�� 
{
�� 
float
�� 
_posY
�� 
=
�� 
	_cellPool
�� '
[
��' (
topMostCellIndex
��( 8
]
��8 9
.
��9 :
anchoredPosition
��: J
.
��J K
y
��K L
;
��L M
if
�� 
(
�� !
_topMostCellColoumn
�� '
==
��( *
$num
��+ ,
)
��, -
{
�� 
posY
�� 
+=
�� 
	_cellPool
�� %
[
��% &
topMostCellIndex
��& 6
]
��6 7
.
��7 8
rect
��8 <
.
��< =
height
��= C
;
��C D
}
�� 
_currentColoumn
��  
=
��! "!
_topMostCellColoumn
��# 6
;
��6 7
}
�� 
while
�� 
(
�� 
	_cellPool
�� 
[
�� !
bottomMostCellIndex
�� 0
]
��0 1
.
��1 2
MaxY
��2 6
(
��6 7
)
��7 8
<
��9 :#
_recyclableViewBounds
��; P
.
��P Q
min
��Q T
.
��T U
y
��U V
&&
��W Y
currentItemCount
��Z j
>
��k l
	_cellPool
��m v
.
��v w
Count
��w |
)
��| }
{
�� 
if
�� 
(
�� 
IsGrid
�� 
)
�� 
{
�� 
_currentColoumn
�� #
-=
��$ &
$num
��' (
;
��( )
if
�� 
(
�� 
_currentColoumn
�� '
<
��( )
$num
��* +
)
��+ ,
{
�� 
n
�� 
++
�� 
;
�� 
_currentColoumn
�� '
=
��( )
	_coloumns
��* 3
-
��4 5
$num
��6 7
;
��7 8
}
�� 
posX
�� 
=
�� 
_currentColoumn
�� *
*
��+ ,

_cellWidth
��- 7
;
��7 8
if
�� 
(
�� 
_currentColoumn
�� '
==
��( *
	_coloumns
��+ 4
-
��5 6
$num
��7 8
)
��8 9
{
�� 
posY
�� 
=
�� 
	_cellPool
�� (
[
��( )
topMostCellIndex
��) 9
]
��9 :
.
��: ;
anchoredPosition
��; K
.
��K L
y
��L M
+
��N O
_cellHeight
��P [
;
��[ \
}
�� 
	_cellPool
�� 
[
�� !
bottomMostCellIndex
�� 1
]
��1 2
.
��2 3
anchoredPosition
��3 C
=
��D E
new
��F I
Vector2
��J Q
(
��Q R
posX
��R V
,
��V W
posY
��X \
)
��\ ]
;
��] ^$
_bottomMostCellColoumn
�� *
=
��+ ,
(
��- .$
_bottomMostCellColoumn
��. D
-
��E F
$num
��G H
+
��I J
	_coloumns
��K T
)
��T U
%
��V W
	_coloumns
��X a
;
��a b
}
�� 
else
�� 
{
�� 
posY
�� 
=
�� 
	_cellPool
��  
[
��  !
topMostCellIndex
��! 1
]
��1 2
.
��2 3
anchoredPosition
��3 C
.
��C D
y
��D E
+
��F G
	_cellPool
��H Q
[
��Q R
topMostCellIndex
��R b
]
��b c
.
��c d
	sizeDelta
��d m
.
��m n
y
��n o
;
��o p
	_cellPool
�� 
[
�� !
bottomMostCellIndex
�� -
]
��- .
.
��. /
anchoredPosition
��/ ?
=
��@ A
new
��B E
Vector2
��F M
(
��M N
	_cellPool
��N W
[
��W X!
bottomMostCellIndex
��X k
]
��k l
.
��l m
anchoredPosition
��m }
.
��} ~
x
��~ 
,�� �
posY��� �
)��� �
;��� �
n
�� 
++
�� 
;
�� 
}
�� 
currentItemCount
��  
--
��  "
;
��" #
_dataSource
�� 
.
�� 
SetCell
�� #
(
��# $
_cachedCells
��$ 0
[
��0 1!
bottomMostCellIndex
��1 D
]
��D E
,
��E F
currentItemCount
��G W
-
��X Y
	_cellPool
��Z c
.
��c d
Count
��d i
)
��i j
;
��j k
topMostCellIndex
��  
=
��! "!
bottomMostCellIndex
��# 6
;
��6 7!
bottomMostCellIndex
�� #
=
��$ %
(
��& '!
bottomMostCellIndex
��' :
-
��; <
$num
��= >
+
��? @
	_cellPool
��A J
.
��J K
Count
��K P
)
��P Q
%
��R S
	_cellPool
��T ]
.
��] ^
Count
��^ c
;
��c d
}
�� 
if
�� 
(
�� 
IsGrid
�� 
)
�� 
{
�� !
_topMostCellColoumn
�� #
=
��$ %
_currentColoumn
��& 5
;
��5 6
if
�� 
(
�� 
!
�� #
_contentSizeIncreased
�� *
)
��* +
{
�� 
if
�� 
(
�� 
_currentColoumn
�� '
!=
��( *
$num
��+ ,
)
��, -
{
�� 
Content
�� 
.
��  
	sizeDelta
��  )
+=
��* ,
Vector2
��- 4
.
��4 5
up
��5 7
*
��8 9
	_cellPool
��: C
[
��C D
topMostCellIndex
��D T
]
��T U
.
��U V
	sizeDelta
��V _
.
��_ `
y
��` a
;
��a b
n
�� 
-=
�� 
$num
�� 
;
�� #
_contentSizeIncreased
�� -
=
��. /
true
��0 4
;
��4 5
}
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
_currentColoumn
�� '
==
��( *
$num
��+ ,
)
��, -
{
�� 
Content
�� 
.
��  
	sizeDelta
��  )
-=
��* ,
Vector2
��- 4
.
��4 5
up
��5 7
*
��8 9
	_cellPool
��: C
[
��C D
topMostCellIndex
��D T
]
��T U
.
��U V
	sizeDelta
��V _
.
��_ `
y
��` a
;
��a b#
_contentSizeIncreased
�� -
=
��. /
false
��0 5
;
��5 6
}
�� 
}
�� 
}
�� 
	_cellPool
�� 
.
�� 
ForEach
�� 
(
�� 
(
�� 
RectTransform
�� ,
cell
��- 1
)
��1 2
=>
��3 5
cell
��6 :
.
��: ;
anchoredPosition
��; K
-=
��L N
n
��O P
*
��Q R
Vector2
��S Z
.
��Z [
up
��[ ]
*
��^ _
	_cellPool
��` i
[
��i j
topMostCellIndex
��j z
]
��z {
.
��{ |
	sizeDelta��| �
.��� �
y��� �
)��� �
;��� �
Content
�� 
.
�� 
anchoredPosition
�� $
+=
��% '
n
��( )
*
��* +
Vector2
��, 3
.
��3 4
up
��4 6
*
��7 8
	_cellPool
��9 B
[
��B C
topMostCellIndex
��C S
]
��S T
.
��T U
	sizeDelta
��U ^
.
��^ _
y
��_ `
;
��` a

_recycling
�� 
=
�� 
false
�� 
;
�� 
return
�� 
new
�� 
Vector2
��  
(
��  !
$num
��! "
,
��" #
n
��$ %
*
��& '
	_cellPool
��( 1
[
��1 2
topMostCellIndex
��2 B
]
��B C
.
��C D
	sizeDelta
��D M
.
��M N
y
��N O
)
��O P
;
��P Q
}
�� 	
private
�� 
void
�� 
SetTopAnchor
�� !
(
��! "
RectTransform
��" /
rectTransform
��0 =
)
��= >
{
�� 	
float
�� 
width
�� 
=
�� 
rectTransform
�� '
.
��' (
rect
��( ,
.
��, -
width
��- 2
;
��2 3
float
�� 
height
�� 
=
�� 
rectTransform
�� (
.
��( )
rect
��) -
.
��- .
height
��. 4
;
��4 5
rectTransform
�� 
.
�� 
	anchorMin
�� #
=
��$ %
new
��& )
Vector2
��* 1
(
��1 2
$num
��2 6
,
��6 7
$num
��8 9
)
��9 :
;
��: ;
rectTransform
�� 
.
�� 
	anchorMax
�� #
=
��$ %
new
��& )
Vector2
��* 1
(
��1 2
$num
��2 6
,
��6 7
$num
��8 9
)
��9 :
;
��: ;
rectTransform
�� 
.
�� 
pivot
�� 
=
��  !
new
��" %
Vector2
��& -
(
��- .
$num
��. 2
,
��2 3
$num
��4 5
)
��5 6
;
��6 7
rectTransform
�� 
.
�� 
	sizeDelta
�� #
=
��$ %
new
��& )
Vector2
��* 1
(
��1 2
width
��2 7
,
��7 8
height
��9 ?
)
��? @
;
��@ A
}
�� 	
private
�� 
void
�� 
SetTopLeftAnchor
�� %
(
��% &
RectTransform
��& 3
rectTransform
��4 A
)
��A B
{
�� 	
float
�� 
width
�� 
=
�� 
rectTransform
�� '
.
��' (
rect
��( ,
.
��, -
width
��- 2
;
��2 3
float
�� 
height
�� 
=
�� 
rectTransform
�� (
.
��( )
rect
��) -
.
��- .
height
��. 4
;
��4 5
rectTransform
�� 
.
�� 
	anchorMin
�� #
=
��$ %
new
��& )
Vector2
��* 1
(
��1 2
$num
��2 3
,
��3 4
$num
��5 6
)
��6 7
;
��7 8
rectTransform
�� 
.
�� 
	anchorMax
�� #
=
��$ %
new
��& )
Vector2
��* 1
(
��1 2
$num
��2 3
,
��3 4
$num
��5 6
)
��6 7
;
��7 8
rectTransform
�� 
.
�� 
pivot
�� 
=
��  !
new
��" %
Vector2
��& -
(
��- .
$num
��. /
,
��/ 0
$num
��1 2
)
��2 3
;
��3 4
rectTransform
�� 
.
�� 
	sizeDelta
�� #
=
��$ %
new
��& )
Vector2
��* 1
(
��1 2
width
��2 7
,
��7 8
height
��9 ?
)
��? @
;
��@ A
}
�� 	
public
�� 
void
�� 
OnDrawGizmos
��  
(
��  !
)
��! "
{
�� 	
Gizmos
�� 
.
�� 
color
�� 
=
�� 
Color
��  
.
��  !
green
��! &
;
��& '
Gizmos
�� 
.
�� 
DrawLine
�� 
(
�� #
_recyclableViewBounds
�� 1
.
��1 2
min
��2 5
-
��6 7
new
��8 ;
Vector3
��< C
(
��C D
$num
��D H
,
��H I
$num
��J K
)
��K L
,
��L M#
_recyclableViewBounds
��N c
.
��c d
min
��d g
+
��h i
new
��j m
Vector3
��n u
(
��u v
$num
��v z
,
��z {
$num
��| }
)
��} ~
)
��~ 
;�� �
Gizmos
�� 
.
�� 
color
�� 
=
�� 
Color
��  
.
��  !
red
��! $
;
��$ %
Gizmos
�� 
.
�� 
DrawLine
�� 
(
�� #
_recyclableViewBounds
�� 1
.
��1 2
max
��2 5
-
��6 7
new
��8 ;
Vector3
��< C
(
��C D
$num
��D H
,
��H I
$num
��J K
)
��K L
,
��L M#
_recyclableViewBounds
��N c
.
��c d
max
��d g
+
��h i
new
��j m
Vector3
��n u
(
��u v
$num
��v z
,
��z {
$num
��| }
)
��} ~
)
��~ 
;�� �
}
�� 	
}
�� 
}�� 