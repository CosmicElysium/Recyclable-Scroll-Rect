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
rD:\GitHub-Projects\Recyclable-Scroll-Rect\Assets\Recyclable Scroll Rect\Main\Editors\RecyclableScrollRectEditor.cs
	namespace 	
PolyAndCode
 
. 
UI 
{ 
[ 
CustomEditor 
( 
typeof 
(  
RecyclableScrollRect -
)- .
,. /
true0 4
)4 5
]5 6
[ "
CanEditMultipleObjects 
] 
public 

class &
RecyclableScrollRectEditor +
:, -
Editor. 4
{ 
SerializedProperty 
	m_Content $
;$ %
SerializedProperty 
m_MovementType )
;) *
SerializedProperty 
m_Elasticity '
;' (
SerializedProperty 
	m_Inertia $
;$ %
SerializedProperty 
m_DecelerationRate -
;- .
SerializedProperty 
m_ScrollSensitivity .
;. /
SerializedProperty 

m_Viewport %
;% &
SerializedProperty 
m_OnValueChanged +
;+ ,
SerializedProperty 
_protoTypeCell )
;) *
SerializedProperty 
_selfInitialize *
;* +
SerializedProperty 

_direction %
;% &
SerializedProperty 
_type  
;  !
SerializedProperty 
	_segments $
;$ %
AnimBool 
m_ShowElasticity !
;! "
AnimBool   "
m_ShowDecelerationRate   '
;  ' ( 
RecyclableScrollRect"" 
_script"" $
;""$ %
	protected## 
virtual## 
void## 
OnEnable## '
(##' (
)##( )
{$$ 	
_script%% 
=%% 
(%%  
RecyclableScrollRect%% +
)%%+ ,
target%%, 2
;%%2 3
	m_Content'' 
='' 
serializedObject'' (
.''( )
FindProperty'') 5
(''5 6
$str''6 A
)''A B
;''B C
m_MovementType(( 
=(( 
serializedObject(( -
.((- .
FindProperty((. :
(((: ;
$str((; K
)((K L
;((L M
m_Elasticity)) 
=)) 
serializedObject)) +
.))+ ,
FindProperty)), 8
())8 9
$str))9 G
)))G H
;))H I
	m_Inertia** 
=** 
serializedObject** (
.**( )
FindProperty**) 5
(**5 6
$str**6 A
)**A B
;**B C
m_DecelerationRate++ 
=++  
serializedObject++! 1
.++1 2
FindProperty++2 >
(++> ?
$str++? S
)++S T
;++T U
m_ScrollSensitivity,, 
=,,  !
serializedObject,," 2
.,,2 3
FindProperty,,3 ?
(,,? @
$str,,@ U
),,U V
;,,V W

m_Viewport-- 
=-- 
serializedObject-- )
.--) *
FindProperty--* 6
(--6 7
$str--7 C
)--C D
;--D E
m_OnValueChanged.. 
=.. 
serializedObject.. /
.../ 0
FindProperty..0 <
(..< =
$str..= O
)..O P
;..P Q
_protoTypeCell11 
=11 
serializedObject11 -
.11- .
FindProperty11. :
(11: ;
$str11; J
)11J K
;11K L
_selfInitialize22 
=22 
serializedObject22 .
.22. /
FindProperty22/ ;
(22; <
$str22< L
)22L M
;22M N

_direction33 
=33 
serializedObject33 )
.33) *
FindProperty33* 6
(336 7
$str337 B
)33B C
;33C D
_type44 
=44 
serializedObject44 $
.44$ %
FindProperty44% 1
(441 2
$str442 8
)448 9
;449 :
	_segments55 
=55 
serializedObject55 (
.55( )
FindProperty55) 5
(555 6
$str556 A
)55A B
;55B C
m_ShowElasticity77 
=77 
new77 "
AnimBool77# +
(77+ ,
Repaint77, 3
)773 4
;774 5"
m_ShowDecelerationRate88 "
=88# $
new88% (
AnimBool88) 1
(881 2
Repaint882 9
)889 :
;88: ;
SetAnimBools99 
(99 
true99 
)99 
;99 
}:: 	
	protected<< 
virtual<< 
void<< 
	OnDisable<< (
(<<( )
)<<) *
{== 	
m_ShowElasticity>> 
.>> 
valueChanged>> )
.>>) *
RemoveListener>>* 8
(>>8 9
Repaint>>9 @
)>>@ A
;>>A B"
m_ShowDecelerationRate?? "
.??" #
valueChanged??# /
.??/ 0
RemoveListener??0 >
(??> ?
Repaint??? F
)??F G
;??G H
}@@ 	
voidBB 
SetAnimBoolsBB 
(BB 
boolBB 
instantBB &
)BB& '
{CC 	
SetAnimBoolDD 
(DD 
m_ShowElasticityDD (
,DD( )
!DD* +
m_MovementTypeDD+ 9
.DD9 :&
hasMultipleDifferentValuesDD: T
&&DDU W
m_MovementTypeDDX f
.DDf g
enumValueIndexDDg u
==DDv x
(DDy z
intDDz }
)DD} ~

ScrollRect	DD~ �
.
DD� �
MovementType
DD� �
.
DD� �
Elastic
DD� �
,
DD� �
instant
DD� �
)
DD� �
;
DD� �
SetAnimBoolEE 
(EE "
m_ShowDecelerationRateEE .
,EE. /
!EE0 1
	m_InertiaEE1 :
.EE: ;&
hasMultipleDifferentValuesEE; U
&&EEV X
	m_InertiaEEY b
.EEb c
	boolValueEEc l
,EEl m
instantEEn u
)EEu v
;EEv w
}FF 	
voidHH 
SetAnimBoolHH 
(HH 
AnimBoolHH !
aHH" #
,HH# $
boolHH% )
valueHH* /
,HH/ 0
boolHH1 5
instantHH6 =
)HH= >
{II 	
ifJJ 
(JJ 
instantJJ 
)JJ 
aKK 
.KK 
valueKK 
=KK 
valueKK 
;KK  
elseLL 
aMM 
.MM 
targetMM 
=MM 
valueMM  
;MM  !
}NN 	
publicPP 
overridePP 
voidPP 
OnInspectorGUIPP +
(PP+ ,
)PP, -
{QQ 	
SetAnimBoolsRR 
(RR 
falseRR 
)RR 
;RR  
serializedObjectSS 
.SS 
UpdateSS #
(SS# $
)SS$ %
;SS% &
EditorGUILayoutUU 
.UU 
PropertyFieldUU )
(UU) *

_directionUU* 4
)UU4 5
;UU5 6
EditorGUILayoutVV 
.VV 
PropertyFieldVV )
(VV) *
_typeVV* /
)VV/ 0
;VV0 1
ifWW 
(WW 
_typeWW 
.WW 
	boolValueWW 
)WW  
{XX 
stringYY 
titleYY 
=YY 

_directionYY )
.YY) *
enumValueIndexYY* 8
==YY9 ;
(YY< =
intYY= @
)YY@ A 
RecyclableScrollRectYYA U
.YYU V
DirectionTypeYYV c
.YYc d
VerticalYYd l
?YYm n
$strYYo y
:YYz {
$str	YY| �
;
YY� �
_scriptZZ 
.ZZ 
SegmentsZZ 
=ZZ  !
EditorGUILayoutZZ# 2
.ZZ2 3
IntFieldZZ3 ;
(ZZ; <
titleZZ< A
,ZZA B
_scriptZZC J
.ZZJ K
SegmentsZZK S
)ZZS T
;ZZT U
}[[ 
EditorGUILayout]] 
.]] 
PropertyField]] )
(]]) *
_selfInitialize]]* 9
)]]9 :
;]]: ;
EditorGUILayout^^ 
.^^ 
PropertyField^^ )
(^^) *

m_Viewport^^* 4
)^^4 5
;^^5 6
EditorGUILayout__ 
.__ 
PropertyField__ )
(__) *
	m_Content__* 3
)__3 4
;__4 5
EditorGUILayout`` 
.`` 
PropertyField`` )
(``) *
_protoTypeCell``* 8
)``8 9
;``9 :
EditorGUILayoutaa 
.aa 
Spaceaa !
(aa! "
)aa" #
;aa# $
EditorGUILayoutcc 
.cc 
PropertyFieldcc )
(cc) *
m_MovementTypecc* 8
)cc8 9
;cc9 :
ifdd 
(dd 
EditorGUILayoutdd 
.dd  
BeginFadeGroupdd  .
(dd. /
m_ShowElasticitydd/ ?
.dd? @
fadeddd@ E
)ddE F
)ddF G
{ee 
	EditorGUIff 
.ff 
indentLevelff %
++ff% '
;ff' (
EditorGUILayoutgg 
.gg  
PropertyFieldgg  -
(gg- .
m_Elasticitygg. :
)gg: ;
;gg; <
	EditorGUIhh 
.hh 
indentLevelhh %
--hh% '
;hh' (
}ii 
EditorGUILayoutjj 
.jj 
EndFadeGroupjj (
(jj( )
)jj) *
;jj* +
EditorGUILayoutll 
.ll 
PropertyFieldll )
(ll) *
	m_Inertiall* 3
)ll3 4
;ll4 5
ifmm 
(mm 
EditorGUILayoutmm 
.mm  
BeginFadeGroupmm  .
(mm. /"
m_ShowDecelerationRatemm/ E
.mmE F
fadedmmF K
)mmK L
)mmL M
{nn 
	EditorGUIoo 
.oo 
indentLeveloo %
++oo% '
;oo' (
EditorGUILayoutpp 
.pp  
PropertyFieldpp  -
(pp- .
m_DecelerationRatepp. @
)pp@ A
;ppA B
	EditorGUIqq 
.qq 
indentLevelqq %
--qq% '
;qq' (
}rr 
EditorGUILayoutss 
.ss 
EndFadeGroupss (
(ss( )
)ss) *
;ss* +
EditorGUILayoutuu 
.uu 
PropertyFielduu )
(uu) *
m_ScrollSensitivityuu* =
)uu= >
;uu> ?
EditorGUILayoutww 
.ww 
Spaceww !
(ww! "
)ww" #
;ww# $
EditorGUILayoutyy 
.yy 
PropertyFieldyy )
(yy) *
m_OnValueChangedyy* :
)yy: ;
;yy; <
serializedObject{{ 
.{{ #
ApplyModifiedProperties{{ 4
({{4 5
){{5 6
;{{6 7
}|| 	
}}} 
}~~ �
vD:\GitHub-Projects\Recyclable-Scroll-Rect\Assets\Recyclable Scroll Rect\Main\Editors\RecyclableScrollViewEditorTool.cs
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
|| 
! 
( 
selected '
.' (
	transform( 1
is2 4
RectTransform5 B
)B C
)C D
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
= 
Object $
.$ %
Instantiate% 0
(0 1
asset1 6
)6 7
;7 8
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
}## ��
qD:\GitHub-Projects\Recyclable-Scroll-Rect\Assets\Recyclable Scroll Rect\Main\Scripts\HorizontalRecyclingSystem.cs
	namespace 	
PolyAndCode
 
. 
UI 
{ 
public 

class %
HorizontalRecyclingSystem *
:+ ,
RecyclingSystem- <
{		 
private

 
readonly

 +
IRecyclableScrollRectDataSource

 8
_dataSource

9 D
;

D E
private 
readonly 
int 
_rows "
;" #
private 
float 

_cellWidth  
,  !
_cellHeight" -
;- .
private 
int 
_leftMostCellRow $
,$ %
_RightMostCellRow& 7
;7 8
private 
List 
< 
RectTransform "
>" #
	_cellPool$ -
;- .
private 
List 
< 
ICell 
> 
_cachedCells (
;( )
private 
Bounds !
_recyclableViewBounds ,
;, -
private 
readonly 
Vector3  
[  !
]! "
_corners# +
=, -
new. 1
Vector32 9
[9 :
$num: ;
]; <
;< =
private 
bool 

_recycling 
;  
private 
int 
leftMostCellIndex %
,% &
rightMostCellIndex' 9
;9 :
private 
int 
currentItemCount $
;$ %
public   %
HorizontalRecyclingSystem   (
(  ( )
RectTransform  ) 6
prototypeCell  7 D
,  D E
RectTransform  F S
viewport  T \
,  \ ]
RectTransform  ^ k
content  l s
,  s t,
IRecyclableScrollRectDataSource	  u �

dataSource
  � �
,
  � �
bool
  � �
isGrid
  � �
,
  � �
int
  � �
rows
  � �
)
  � �
{!! 	
PrototypeCell## 
=## 
prototypeCell## )
;##) *
Viewport$$ 
=$$ 
viewport$$ 
;$$  
Content%% 
=%% 
content%% 
;%% 
_dataSource&& 
=&& 

dataSource&& $
;&&$ %
IsGrid'' 
='' 
isGrid'' 
;'' 
_rows(( 
=(( 
isGrid(( 
?(( 
rows(( !
:((" #
$num(($ %
;((% &
})) 	
public++ 
override++ 
IEnumerator++ #
InitCoroutine++$ 1
(++1 2
Action++2 8
onInitialized++9 F
)++F G
{,, 	
	SetAnchor.. 
(.. 
Content.. 
).. 
;.. 
Content// 
.// 
anchoredPosition// $
=//% &
Vector3//' .
.//. /
zero/// 3
;//3 4
yield00 
return00 
null00 
;00 
SetRecyclingBounds11 
(11 
)11  
;11  !
CreateCellPool44 
(44 
)44 
;44 
leftMostCellIndex55 
=55 
$num55  !
;55! "
rightMostCellIndex66 
=66  
	_cellPool66! *
.66* +
Count66+ 0
-661 2
$num663 4
;664 5
yield77 
return77 
null77 
;77 
int88 
coloums88 
=88 
Mathf88 
.88  
	CeilToInt88  )
(88) *
(88* +
float88+ 0
)880 1
	_cellPool881 :
.88: ;
Count88; @
/88A B
_rows88C H
)88H I
;88I J
	SetAnchor99 
(99 
Content99 
)99 
;99 
float:: 
contentXSize:: 
=::  
coloums::! (
*::) *
PrototypeCell::+ 8
.::8 9
	sizeDelta::9 B
.::B C
x::C D
;::D E
Content;; 
.;; 
	sizeDelta;; 
=;; 
new;;  #
Vector2;;$ +
(;;+ ,
contentXSize;;, 8
,;;8 9
Content;;: A
.;;A B
	sizeDelta;;B K
.;;K L
y;;L M
);;M N
;;;N O
currentItemCount<< 
=<< 
	_cellPool<< (
.<<( )
Count<<) .
;<<. /
onInitialized== 
(== 
)== 
;== 
}>> 	
privateDD 
voidDD 
SetRecyclingBoundsDD '
(DD' (
)DD( )
{EE 	
ViewportFF 
.FF 
GetWorldCornersFF $
(FF$ %
_cornersFF% -
)FF- .
;FF. /
floatGG 

threshHoldGG 
=GG 
RecyclingThresholdGG 1
*GG2 3
(GG4 5
_cornersGG5 =
[GG= >
$numGG> ?
]GG? @
.GG@ A
xGGA B
-GGC D
_cornersGGE M
[GGM N
$numGGN O
]GGO P
.GGP Q
xGGQ R
)GGR S
;GGS T!
_recyclableViewBoundsHH !
.HH! "
minHH" %
=HH& '
newHH( +
Vector3HH, 3
(HH3 4
_cornersHH4 <
[HH< =
$numHH= >
]HH> ?
.HH? @
xHH@ A
-HHB C

threshHoldHHD N
,HHN O
_cornersHHP X
[HHX Y
$numHHY Z
]HHZ [
.HH[ \
yHH\ ]
)HH] ^
;HH^ _!
_recyclableViewBoundsII !
.II! "
maxII" %
=II& '
newII( +
Vector3II, 3
(II3 4
_cornersII4 <
[II< =
$numII= >
]II> ?
.II? @
xII@ A
+IIB C

threshHoldIID N
,IIN O
_cornersIIP X
[IIX Y
$numIIY Z
]IIZ [
.II[ \
yII\ ]
)II] ^
;II^ _
}JJ 	
privateOO 
voidOO 
CreateCellPoolOO #
(OO# $
)OO$ %
{PP 	
ifRR 
(RR 
	_cellPoolRR 
!=RR 
nullRR !
)RR! "
{SS 
	_cellPoolTT 
.TT 
ForEachTT !
(TT! "
(TT" #
RectTransformTT# 0
itemTT1 5
)TT5 6
=>TT7 9
UnityEngineTT: E
.TTE F
ObjectTTF L
.TTL M
DestroyTTM T
(TTT U
itemTTU Y
.TTY Z

gameObjectTTZ d
)TTd e
)TTe f
;TTf g
	_cellPoolUU 
.UU 
ClearUU 
(UU  
)UU  !
;UU! "
_cachedCellsVV 
.VV 
ClearVV "
(VV" #
)VV# $
;VV$ %
}WW 
elseXX 
{YY 
_cachedCellsZZ 
=ZZ 
newZZ "
ListZZ# '
<ZZ' (
ICellZZ( -
>ZZ- .
(ZZ. /
)ZZ/ 0
;ZZ0 1
	_cellPool[[ 
=[[ 
new[[ 
List[[  $
<[[$ %
RectTransform[[% 2
>[[2 3
([[3 4
)[[4 5
;[[5 6
}\\ 
PrototypeCell__ 
.__ 

gameObject__ $
.__$ %
	SetActive__% .
(__. /
true__/ 3
)__3 4
;__4 5
	SetAnchor`` 
(`` 
PrototypeCell`` #
)``# $
;``$ %
_cellHeightcc 
=cc 
Contentcc !
.cc! "
rectcc" &
.cc& '
heightcc' -
/cc. /
_rowscc0 5
;cc5 6

_cellWidthdd 
=dd 
PrototypeCelldd &
.dd& '
	sizeDeltadd' 0
.dd0 1
xdd1 2
/dd3 4
PrototypeCelldd5 B
.ddB C
	sizeDeltaddC L
.ddL M
yddM N
*ddO P
_cellHeightddQ \
;dd\ ]
PrototypeCellee 
.ee 
	sizeDeltaee #
=ee$ %
newee& )
Vector3ee* 1
(ee1 2

_cellWidthee2 <
,ee< =
_cellHeightee> I
)eeI J
;eeJ K
_leftMostCellRowff 
=ff 
$numff  
;ff  !
_RightMostCellRowgg 
=gg 
$numgg  !
;gg! "
floatjj 
currentPoolCoveragejj %
=jj& '
$numjj( )
;jj) *
intkk 
poolSizekk 
=kk 
$numkk 
;kk 
floatll 
posXll 
=ll 
$numll 
;ll 
floatmm 
posYmm 
=mm 
$nummm 
;mm 
floatpp 
requriedCoveragepp "
=pp# $
MinPoolCoveragepp% 4
*pp5 6
Viewportpp7 ?
.pp? @
rectpp@ D
.ppD E
widthppE J
;ppJ K
intqq 
minPoolSizeqq 
=qq 
Mathqq "
.qq" #
Minqq# &
(qq& '
MinPoolSizeqq' 2
,qq2 3
_dataSourceqq4 ?
.qq? @
GetItemCountqq@ L
(qqL M
)qqM N
)qqN O
;qqO P
whiless 
(ss 
(ss 
poolSizess 
<ss 
minPoolSizess *
||ss+ -
currentPoolCoveragess. A
<ssB C
requriedCoveragessD T
)ssT U
&&ssV X
poolSizessY a
<ssb c
_dataSourcessd o
.sso p
GetItemCountssp |
(ss| }
)ss} ~
)ss~ 
{tt 
RectTransformvv 
itemvv "
=vv# $
(vv% &
UnityEnginevv& 1
.vv1 2
Objectvv2 8
.vv8 9
Instantiatevv9 D
(vvD E
PrototypeCellvvE R
.vvR S

gameObjectvvS ]
)vv] ^
)vv^ _
.vv_ `
GetComponentvv` l
<vvl m
RectTransformvvm z
>vvz {
(vv{ |
)vv| }
;vv} ~
itemww 
.ww 
nameww 
=ww 
$strww "
;ww" #
	_cellPoolxx 
.xx 
Addxx 
(xx 
itemxx "
)xx" #
;xx# $
itemyy 
.yy 
	SetParentyy 
(yy 
Contentyy &
,yy& '
falseyy( -
)yy- .
;yy. /
if{{ 
({{ 
IsGrid{{ 
){{ 
{|| 
posY}} 
=}} 
-}} 
_RightMostCellRow}} -
*}}. /
_cellHeight}}0 ;
;}}; <
item~~ 
.~~ 
anchoredPosition~~ )
=~~* +
new~~, /
Vector2~~0 7
(~~7 8
posX~~8 <
,~~< =
posY~~> B
)~~B C
;~~C D
if 
( 
++ 
_RightMostCellRow +
>=, .
_rows/ 4
)4 5
{
�� 
_RightMostCellRow
�� )
=
��* +
$num
��, -
;
��- .
posX
�� 
+=
�� 

_cellWidth
��  *
;
��* +!
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
�� 
_RightMostCellRow
�� !
=
��" #
(
��$ %
_RightMostCellRow
��% 6
-
��7 8
$num
��9 :
+
��; <
_rows
��= B
)
��B C
%
��D E
_rows
��F K
;
��K L
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
��7 >
	direction
��? H
)
��H I
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
	direction
�� 
.
�� 
x
�� 
<
�� 
$num
�� 
&&
��  "
	_cellPool
��# ,
[
��, - 
rightMostCellIndex
��- ?
]
��? @
.
��@ A
MinX
��A E
(
��E F
)
��F G
<
��H I#
_recyclableViewBounds
��J _
.
��_ `
max
��` c
.
��c d
x
��d e
)
��e f
{
�� 
return
��  
RecycleLeftToRight
�� )
(
��) *
)
��* +
;
��+ ,
}
�� 
else
�� 
if
�� 
(
�� 
	direction
�� 
.
�� 
x
��  
>
��! "
$num
��# $
&&
��% '
	_cellPool
��( 1
[
��1 2
leftMostCellIndex
��2 C
]
��C D
.
��D E
MaxX
��E I
(
��I J
)
��J K
>
��L M#
_recyclableViewBounds
��N c
.
��c d
min
��d g
.
��g h
x
��h i
)
��i j
{
�� 
return
��  
RecycleRightToleft
�� )
(
��) *
)
��* +
;
��+ ,
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
�� 
IsGrid
�� 
?
��  !
	_cellPool
��" +
[
��+ , 
rightMostCellIndex
��, >
]
��> ?
.
��? @
anchoredPosition
��@ P
.
��P Q
x
��Q R
:
��S T
$num
��U V
;
��V W
float
�� 
posY
�� 
=
�� 
$num
�� 
;
�� 
int
�� 
additionalColoums
�� !
=
��" #
$num
��$ %
;
��% &
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
�� 
if
�� 
(
�� 
++
�� 
_RightMostCellRow
�� +
>=
��, .
_rows
��/ 4
)
��4 5
{
�� 
n
�� 
++
�� 
;
�� 
_RightMostCellRow
�� )
=
��* +
$num
��, -
;
��- .
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
��\ ]
additionalColoums
�� )
++
��) +
;
��+ ,
}
�� 
posY
�� 
=
�� 
-
�� 
_RightMostCellRow
�� -
*
��. /
_cellHeight
��0 ;
;
��; <
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
��[ \
if
�� 
(
�� 
++
�� 
_leftMostCellRow
�� *
>=
��+ -
_rows
��. 3
)
��3 4
{
�� 
_leftMostCellRow
�� (
=
��) *
$num
��+ ,
;
��, -
additionalColoums
�� )
--
��) +
;
��+ ,
}
�� 
}
�� 
else
�� 
{
�� 
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
�� 
(
�� 
IsGrid
�� 
)
�� 
{
�� 
Debug
�� 
.
�� 
Log
�� 
(
�� 
additionalColoums
�� +
)
��+ ,
;
��, -
Content
�� 
.
�� 
	sizeDelta
�� !
+=
��" $
additionalColoums
��% 6
*
��7 8
Vector2
��9 @
.
��@ A
right
��A F
*
��G H

_cellWidth
��I S
;
��S T
n
�� 
-=
�� 
additionalColoums
�� &
;
��& '
}
�� 
	_cellPool
�� 
.
�� 
ForEach
�� 
(
�� 
(
�� 
RectTransform
�� ,
cell
��- 1
)
��1 2
=>
��3 5
cell
��6 :
.
��: ;
anchoredPosition
��; K
-=
��L N
n
��O P
*
��Q R
Vector2
��S Z
.
��Z [
right
��[ `
*
��a b
	_cellPool
��c l
[
��l m
leftMostCellIndex
��m ~
]
��~ 
.�� �
	sizeDelta��� �
.��� �
x��� �
)��� �
;��� �
Content
�� 
.
�� 
anchoredPosition
�� $
+=
��% '
n
��( )
*
��* +
Vector2
��, 3
.
��3 4
right
��4 9
*
��: ;
	_cellPool
��< E
[
��E F
leftMostCellIndex
��F W
]
��W X
.
��X Y
	sizeDelta
��Y b
.
��b c
x
��c d
;
��d e

_recycling
�� 
=
�� 
false
�� 
;
�� 
return
�� 
n
�� 
*
�� 
Vector2
�� 
.
�� 
right
�� $
*
��% &
	_cellPool
��' 0
[
��0 1
leftMostCellIndex
��1 B
]
��B C
.
��C D
	sizeDelta
��D M
.
��M N
x
��N O
;
��O P
}
�� 	
private
�� 
Vector2
��  
RecycleRightToleft
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
�� 
IsGrid
�� 
?
��  !
	_cellPool
��" +
[
��+ ,
leftMostCellIndex
��, =
]
��= >
.
��> ?
anchoredPosition
��? O
.
��O P
x
��P Q
:
��R S
$num
��T U
;
��U V
float
�� 
posY
�� 
=
�� 
$num
�� 
;
�� 
int
�� 
additionalColoums
�� !
=
��" #
$num
��$ %
;
��% &
while
�� 
(
�� 
	_cellPool
�� 
[
��  
rightMostCellIndex
�� /
]
��/ 0
.
��0 1
MinX
��1 5
(
��5 6
)
��6 7
>
��8 9#
_recyclableViewBounds
��: O
.
��O P
max
��P S
.
��S T
x
��T U
&&
��V X
currentItemCount
��Y i
>
��j k
	_cellPool
��l u
.
��u v
Count
��v {
)
��{ |
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
�� 
if
�� 
(
�� 
--
�� 
_leftMostCellRow
�� *
<
��+ ,
$num
��- .
)
��. /
{
�� 
n
�� 
++
�� 
;
�� 
_leftMostCellRow
�� (
=
��) *
_rows
��+ 0
-
��1 2
$num
��3 4
;
��4 5
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
��[ \
additionalColoums
�� )
++
��) +
;
��+ ,
}
�� 
posY
�� 
=
�� 
-
�� 
_leftMostCellRow
�� ,
*
��- .
_cellHeight
��/ :
;
��: ;
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
��\ ]
if
�� 
(
�� 
--
�� 
_RightMostCellRow
�� +
<
��, -
$num
��. /
)
��/ 0
{
�� 
_RightMostCellRow
�� )
=
��* +
_rows
��, 1
-
��2 3
$num
��4 5
;
��5 6
additionalColoums
�� )
--
��) +
;
��+ ,
}
�� 
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
�� !
=
��" # 
rightMostCellIndex
��$ 6
;
��6 7 
rightMostCellIndex
�� "
=
��# $
(
��% & 
rightMostCellIndex
��& 8
-
��9 :
$num
��; <
+
��= >
	_cellPool
��? H
.
��H I
Count
��I N
)
��N O
%
��P Q
	_cellPool
��R [
.
��[ \
Count
��\ a
;
��a b
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
�� 
Debug
�� 
.
�� 
Log
�� 
(
�� 
additionalColoums
�� +
)
��+ ,
;
��, -
Content
�� 
.
�� 
	sizeDelta
�� !
+=
��" $
additionalColoums
��% 6
*
��7 8
Vector2
��9 @
.
��@ A
right
��A F
*
��G H

_cellWidth
��I S
;
��S T
if
�� 
(
�� 
additionalColoums
�� %
>
��& '
$num
��( )
)
��) *
{
�� 
n
�� 
-=
�� 
additionalColoums
�� *
;
��* +
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
-=
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
-
�� 
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
�� 
void
�� 
	SetAnchor
�� 
(
�� 
RectTransform
�� ,
rectTransform
��- :
)
��: ;
{
�� 	
float
�� 
width
�� 
=
�� 
rectTransform
�� '
.
��' (
rect
��( ,
.
��, -
width
��- 2
;
��2 3
float
�� 
height
�� 
=
�� 
rectTransform
�� (
.
��( )
rect
��) -
.
��- .
height
��. 4
;
��4 5
Vector2
�� 
pos
�� 
=
�� 
IsGrid
��  
?
��! "
new
��# &
Vector2
��' .
(
��. /
$num
��/ 0
,
��0 1
$num
��2 3
)
��3 4
:
��5 6
new
��7 :
Vector2
��; B
(
��B C
$num
��C D
,
��D E
$num
��F J
)
��J K
;
��K L
rectTransform
�� 
.
�� 
	anchorMin
�� #
=
��$ %
pos
��& )
;
��) *
rectTransform
�� 
.
�� 
	anchorMax
�� #
=
��$ %
pos
��& )
;
��) *
rectTransform
�� 
.
�� 
pivot
�� 
=
��  !
pos
��" %
;
��% &
rectTransform
�� 
.
�� 
	sizeDelta
�� #
=
��$ %
new
��& )
Vector2
��* 1
(
��1 2
width
��2 7
,
��7 8
height
��9 ?
)
��? @
;
��@ A
}
�� 	
public
�� 
void
�� 
OnDrawGizmos
��  
(
��  !
)
��! "
{
�� 	
Gizmos
�� 
.
�� 
color
�� 
=
�� 
Color
��  
.
��  !
green
��! &
;
��& '
Gizmos
�� 
.
�� 
DrawLine
�� 
(
�� #
_recyclableViewBounds
�� 1
.
��1 2
min
��2 5
-
��6 7
new
��8 ;
Vector3
��< C
(
��C D
$num
��D E
,
��E F
$num
��G K
)
��K L
,
��L M#
_recyclableViewBounds
��N c
.
��c d
min
��d g
+
��h i
new
��j m
Vector3
��n u
(
��u v
$num
��v w
,
��w x
$num
��y }
)
��} ~
)
��~ 
;�� �
Gizmos
�� 
.
�� 
color
�� 
=
�� 
Color
��  
.
��  !
red
��! $
;
��$ %
Gizmos
�� 
.
�� 
DrawLine
�� 
(
�� #
_recyclableViewBounds
�� 1
.
��1 2
max
��2 5
-
��6 7
new
��8 ;
Vector3
��< C
(
��C D
$num
��D E
,
��E F
$num
��G K
)
��K L
,
��L M#
_recyclableViewBounds
��N c
.
��c d
max
��d g
+
��h i
new
��j m
Vector3
��n u
(
��u v
$num
��v w
,
��w x
$num
��y }
)
��} ~
)
��~ 
;�� �
}
�� 	
}
�� 
}�� �
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
} �.
lD:\GitHub-Projects\Recyclable-Scroll-Rect\Assets\Recyclable Scroll Rect\Main\Scripts\RecyclableScrollRect.cs
	namespace		 	
PolyAndCode		
 
.		 
UI		 
{

 
public 

class  
RecyclableScrollRect %
:& '

ScrollRect( 2
{ 
public 
bool 
Grid 
; 
public 
enum 
DirectionType !
{ 	
Vertical 
, 

Horizontal 
} 	
public 
DirectionType 
	Direction &
;& '
public 
int 
Segments 
{ 
set 
{ 
	_segments 
= 
Math  
.  !
Max! $
($ %
value% *
,* +
$num, -
)- .
;. /
} 
get 
{ 
return 
	_segments  
;  !
} 
}   	
["" 	
SerializeField""	 
]"" 
private## 
int## 
	_segments## 
;## 
public$$ 
RectTransform$$ 
PrototypeCell$$ *
;$$* +
public%% 
bool%% 
SelfInitialize%% "
=%%# $
true%%% )
;%%) *
['' 	
HideInInspector''	 
]'' 
public(( +
IRecyclableScrollRectDataSource(( .

DataSource((/ 9
;((9 :
private** 
RecyclingSystem**  
recyclableScrollRect**  4
;**4 5
	protected,, 
override,, 
void,, 
Start,,  %
(,,% &
),,& '
{-- 	
vertical// 
=// 
false// 
;// 

horizontal00 
=00 
true00 
;00 
if22 
(22 
!22 
Application22 
.22 
	isPlaying22 &
)22& '
return22( .
;22. /
if44 
(44 
SelfInitialize44 
)44 

Initialize44  *
(44* +
)44+ ,
;44, -
}55 	
private88 
void88 

Initialize88 
(88  
)88  !
{99 	
if:: 
(:: 
	Direction:: 
==:: 
DirectionType:: *
.::* +
Vertical::+ 3
)::3 4
{;;  
recyclableScrollRect<< $
=<<% &
new<<' *#
VerticalRecyclingSystem<<+ B
(<<B C
PrototypeCell<<C P
,<<P Q
viewport<<R Z
,<<Z [
content<<\ c
,<<c d

DataSource<<e o
,<<o p
Grid<<q u
,<<u v
Segments<<w 
)	<< �
;
<<� �
}== 
else>> 
if>> 
(>> 
	Direction>> 
==>> !
DirectionType>>" /
.>>/ 0

Horizontal>>0 :
)>>: ;
{??  
recyclableScrollRect@@ $
=@@% &
new@@' *%
HorizontalRecyclingSystem@@+ D
(@@D E
PrototypeCell@@E R
,@@R S
viewport@@T \
,@@\ ]
content@@^ e
,@@e f

DataSource@@g q
,@@q r
Grid@@s w
,@@w x
Segments	@@y �
)
@@� �
;
@@� �
}AA 
verticalCC 
=CC 
	DirectionCC  
==CC! #
DirectionTypeCC$ 1
.CC1 2
VerticalCC2 :
;CC: ;

horizontalDD 
=DD 
	DirectionDD "
==DD# %
DirectionTypeDD& 3
.DD3 4

HorizontalDD4 >
;DD> ?
onValueChangedFF 
.FF 
RemoveListenerFF )
(FF) *"
OnValueChangedListenerFF* @
)FF@ A
;FFA B
StartCoroutineHH 
(HH  
recyclableScrollRectHH /
.HH/ 0
InitCoroutineHH0 =
(HH= >
(HH> ?
)HH? @
=>HHA C
onValueChangedII? M
.IIM N
AddListenerIIN Y
(IIY Z"
OnValueChangedListenerIIZ p
)IIp q
)JJ> ?
)JJ? @
;JJ@ A
}KK 	
publicMM 
voidMM 

InitializeMM 
(MM +
IRecyclableScrollRectDataSourceMM >

dataSourceMM? I
)MMI J
{NN 	

DataSourceOO 
=OO 

dataSourceOO #
;OO# $

InitializePP 
(PP 
)PP 
;PP 
}QQ 	
publicTT 
voidTT "
OnValueChangedListenerTT *
(TT* +
Vector2TT+ 2
argsTT3 7
)TT7 8
{UU 	"
m_ContentStartPositionVV "
+=VV# % 
recyclableScrollRectVV& :
.VV: ;"
OnValueChangedListenerVV; Q
(VVQ R
velocityVVR Z
)VVZ [
;VV[ \
}WW 	
privateZZ 
voidZZ 
OnDrawGizmosZZ !
(ZZ! "
)ZZ" #
{[[ 	
if\\ 
(\\  
recyclableScrollRect\\ $
is\\% '#
VerticalRecyclingSystem\\( ?
)\\? @
{]] 
(^^ 
(^^ #
VerticalRecyclingSystem^^ )
)^^) * 
recyclableScrollRect^^* >
)^^> ?
.^^? @
OnDrawGizmos^^@ L
(^^L M
)^^M N
;^^N O
}__ 
ifaa 
(aa  
recyclableScrollRectaa $
isaa% '%
HorizontalRecyclingSystemaa( A
)aaA B
{bb 
(cc 
(cc %
HorizontalRecyclingSystemcc +
)cc+ , 
recyclableScrollRectcc, @
)cc@ A
.ccA B
OnDrawGizmosccB N
(ccN O
)ccO P
;ccP Q
}dd 
}ff 	
}ii 
}jj �

gD:\GitHub-Projects\Recyclable-Scroll-Rect\Assets\Recyclable Scroll Rect\Main\Scripts\RecyclingSystem.cs
	namespace 	
PolyAndCode
 
. 
UI 
{ 
public 

abstract 
class 
RecyclingSystem )
{ 
	protected 
RectTransform 
Viewport  (
,( )
Content* 1
;1 2
	protected 
bool 
IsGrid 
; 
	protected		 
RectTransform		 
PrototypeCell		  -
;		- .
	protected 
float 
MinPoolCoverage '
=( )
$num* .
;. /
	protected 
int 
MinPoolSize !
=" #
$num$ &
;& '
	protected 
float 
RecyclingThreshold *
=+ ,
$num- 0
;0 1
public 
abstract 
IEnumerator #
InitCoroutine$ 1
(1 2
System2 8
.8 9
Action9 ?
onInitialized@ M
)M N
;N O
public 
abstract 
Vector2 "
OnValueChangedListener  6
(6 7
Vector27 >
	direction? H
)H I
;I J
} 
} �
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
	namespace 	
PolyAndCode
 
. 
UI 
{ 
public 

class #
VerticalRecyclingSystem (
:) *
RecyclingSystem+ :
{		 
private 
readonly +
IRecyclableScrollRectDataSource 8
_dataSource9 D
;D E
private 
readonly 
int 
	_coloumns &
;& '
private 
float 

_cellWidth  
,  !
_cellHeight" -
;- .
private 
int 
_topMostCellColoumn '
,' ("
_bottomMostCellColoumn) ?
;? @
public 
bool 
SelfInitialize "
=# $
true% )
;) *
private 
List 
< 
RectTransform "
>" #
	_cellPool$ -
;- .
private 
List 
< 
ICell 
> 
_cachedCells (
;( )
private 
Bounds !
_recyclableViewBounds ,
;, -
private 
readonly 
Vector3  
[  !
]! "
_corners# +
=, -
new. 1
Vector32 9
[9 :
$num: ;
]; <
;< =
private 
bool 

_recycling 
;  
private   
int   
topMostCellIndex   $
,  $ %
bottomMostCellIndex  & 9
;  9 :
private!! 
int!! 
currentItemCount!! $
;!!$ %
private## 
Vector2## 

zeroVector## "
=### $
Vector2##% ,
.##, -
zero##- 1
;##1 2
public%% #
VerticalRecyclingSystem%% &
(%%& '
RectTransform%%' 4
prototypeCell%%5 B
,%%B C
RectTransform%%D Q
viewport%%R Z
,%%Z [
RectTransform%%\ i
content%%j q
,%%q r,
IRecyclableScrollRectDataSource	%%s �

dataSource
%%� �
,
%%� �
bool
%%� �
isGrid
%%� �
,
%%� �
int
%%� �
coloumns
%%� �
)
%%� �
{&& 	
PrototypeCell'' 
='' 
prototypeCell'' )
;'') *
Viewport(( 
=(( 
viewport(( 
;((  
Content)) 
=)) 
content)) 
;)) 
_dataSource** 
=** 

dataSource** $
;**$ %
IsGrid++ 
=++ 
isGrid++ 
;++ 
	_coloumns-- 
=-- 
isGrid-- 
?--  
coloumns--! )
:--* +
$num--, -
;--- .
}.. 	
public44 
override44 
IEnumerator44 #
InitCoroutine44$ 1
(441 2
System442 8
.448 9
Action449 ?
onInitialized44@ M
)44M N
{55 	
SetTopAnchor66 
(66 
Content66  
)66  !
;66! "
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
topMostCellIndex>> 
=>> 
$num>>  
;>>  !
bottomMostCellIndex?? 
=??  !
	_cellPool??" +
.??+ ,
Count??, 1
-??2 3
$num??4 5
;??5 6
intAA 
noOfRowsAA 
=AA 
(AA 
intAA 
)AA  
MathfAA  %
.AA% &
CeilAA& *
(AA* +
(AA+ ,
floatAA, 1
)AA1 2
	_cellPoolAA2 ;
.AA; <
CountAA< A
/AAB C
(AAD E
floatAAE J
)AAJ K
	_coloumnsAAK T
)AAT U
;AAU V
floatDD 
contentYSizeDD 
=DD  
noOfRowsDD! )
*DD* +
PrototypeCellDD, 9
.DD9 :
	sizeDeltaDD: C
.DDC D
yDDD E
;DDE F
ContentEE 
.EE 
	sizeDeltaEE 
=EE 
newEE  #
Vector2EE$ +
(EE+ ,
ContentEE, 3
.EE3 4
	sizeDeltaEE4 =
.EE= >
xEE> ?
,EE? @
contentYSizeEEA M
)EEM N
;EEN O
currentItemCountFF 
=FF 
	_cellPoolFF (
.FF( )
CountFF) .
;FF. /
SetTopAnchorGG 
(GG 
ContentGG  
)GG  !
;GG! "
ifII 
(II 
onInitializedII 
!=II  
nullII! %
)II% &
onInitializedII' 4
(II4 5
)II5 6
;II6 7
}JJ 	
privateOO 
voidOO 
SetRecyclingBoundsOO '
(OO' (
)OO( )
{PP 	
ViewportQQ 
.QQ 
GetWorldCornersQQ $
(QQ$ %
_cornersQQ% -
)QQ- .
;QQ. /
floatRR 

threshHoldRR 
=RR 
RecyclingThresholdRR 1
*RR2 3
(RR4 5
_cornersRR5 =
[RR= >
$numRR> ?
]RR? @
.RR@ A
yRRA B
-RRC D
_cornersRRE M
[RRM N
$numRRN O
]RRO P
.RRP Q
yRRQ R
)RRR S
;RRS T!
_recyclableViewBoundsSS !
.SS! "
minSS" %
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
,SSA B
_cornersSSC K
[SSK L
$numSSL M
]SSM N
.SSN O
ySSO P
-SSQ R

threshHoldSSS ]
)SS] ^
;SS^ _!
_recyclableViewBoundsTT !
.TT! "
maxTT" %
=TT& '
newTT( +
Vector3TT, 3
(TT3 4
_cornersTT4 <
[TT< =
$numTT= >
]TT> ?
.TT? @
xTT@ A
,TTA B
_cornersTTC K
[TTK L
$numTTL M
]TTM N
.TTN O
yTTO P
+TTQ R

threshHoldTTS ]
)TT] ^
;TT^ _
}UU 	
privateZZ 
voidZZ 
CreateCellPoolZZ #
(ZZ# $
)ZZ$ %
{[[ 	
if]] 
(]] 
	_cellPool]] 
!=]] 
null]] !
)]]! "
{^^ 
	_cellPool__ 
.__ 
ForEach__ !
(__! "
(__" #
RectTransform__# 0
item__1 5
)__5 6
=>__7 9
UnityEngine__: E
.__E F
Object__F L
.__L M
Destroy__M T
(__T U
item__U Y
.__Y Z

gameObject__Z d
)__d e
)__e f
;__f g
	_cellPool`` 
.`` 
Clear`` 
(``  
)``  !
;``! "
_cachedCellsaa 
.aa 
Clearaa "
(aa" #
)aa# $
;aa$ %
}bb 
elsecc 
{dd 
_cachedCellsee 
=ee 
newee "
Listee# '
<ee' (
ICellee( -
>ee- .
(ee. /
)ee/ 0
;ee0 1
	_cellPoolff 
=ff 
newff 
Listff  $
<ff$ %
RectTransformff% 2
>ff2 3
(ff3 4
)ff4 5
;ff5 6
}gg 
PrototypeCelljj 
.jj 

gameObjectjj $
.jj$ %
	SetActivejj% .
(jj. /
truejj/ 3
)jj3 4
;jj4 5
ifkk 
(kk 
IsGridkk 
)kk 
{ll 
SetTopLeftAnchormm  
(mm  !
PrototypeCellmm! .
)mm. /
;mm/ 0
}nn 
elseoo 
{pp 
SetTopAnchorqq 
(qq 
PrototypeCellqq *
)qq* +
;qq+ ,
}rr 
floatuu 
currentPoolCoverageuu %
=uu& '
$numuu( )
;uu) *
intvv 
poolSizevv 
=vv 
$numvv 
;vv 
floatxx 
posXxx 
=xx 
$numxx 
;xx 
floatyy 
posYyy 
=yy 
$numyy 
;yy 

_cellWidth{{ 
={{ 
Content{{  
.{{  !
rect{{! %
.{{% &
width{{& +
/{{, -
	_coloumns{{. 7
;{{7 8
_cellHeight|| 
=|| 
PrototypeCell|| '
.||' (
	sizeDelta||( 1
.||1 2
y||2 3
/||4 5
PrototypeCell||6 C
.||C D
	sizeDelta||D M
.||M N
x||N O
*||P Q

_cellWidth||R \
;||\ ]
PrototypeCell}} 
.}} 
	sizeDelta}} #
=}}$ %
new}}& )
Vector3}}* 1
(}}1 2

_cellWidth}}2 <
,}}< =
_cellHeight}}> I
)}}I J
;}}J K
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
�� 
minPoolSize
�� *
||
��+ -!
currentPoolCoverage
��. A
<
��B C
requriedCoverage
��D T
)
��T U
&&
��V X
poolSize
��Y a
<
��b c
_dataSource
��d o
.
��o p
GetItemCount
��p |
(
��| }
)
��} ~
)
��~ 
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
��] ^
)
��^ _
.
��_ `
GetComponent
��` l
<
��l m
RectTransform
��m z
>
��z {
(
��{ |
)
��| }
;
��} ~
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
posX
�� 
=
�� $
_bottomMostCellColoumn
�� 1
*
��2 3

_cellWidth
��4 >
;
��> ?
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
��C D
if
�� 
(
�� 
++
�� $
_bottomMostCellColoumn
�� 0
>=
��1 3
	_coloumns
��4 =
)
��= >
{
�� $
_bottomMostCellColoumn
�� .
=
��/ 0
$num
��1 2
;
��2 3
posY
�� 
-=
�� 
_cellHeight
��  +
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
��) *$
_bottomMostCellColoumn
��* @
-
��A B
$num
��C D
+
��E F
	_coloumns
��G P
)
��P Q
%
��R S
	_coloumns
��T ]
;
��] ^
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
�� 	
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
��7 >
	direction
��? H
)
��H I
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
	direction
�� 
.
�� 
y
�� 
>
�� 
$num
�� 
&&
��  "
	_cellPool
��# ,
[
��, -!
bottomMostCellIndex
��- @
]
��@ A
.
��A B
MaxY
��B F
(
��F G
)
��G H
>
��I J#
_recyclableViewBounds
��K `
.
��` a
min
��a d
.
��d e
y
��e f
)
��f g
{
�� 
return
��  
RecycleTopToBottom
�� )
(
��) *
)
��* +
;
��+ ,
}
�� 
else
�� 
if
�� 
(
�� 
	direction
�� 
.
�� 
y
��  
<
��! "
$num
��# $
&&
��% '
	_cellPool
��( 1
[
��1 2
topMostCellIndex
��2 B
]
��B C
.
��C D
MinY
��D H
(
��H I
)
��I J
<
��K L#
_recyclableViewBounds
��M b
.
��b c
max
��c f
.
��f g
y
��g h
)
��h i
{
�� 
return
��  
RecycleBottomToTop
�� )
(
��) *
)
��* +
;
��+ ,
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
RecycleTopToBottom
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
posY
�� 
=
�� 
IsGrid
�� 
?
��  !
	_cellPool
��" +
[
��+ ,!
bottomMostCellIndex
��, ?
]
��? @
.
��@ A
anchoredPosition
��A Q
.
��Q R
y
��R S
:
��T U
$num
��V W
;
��W X
float
�� 
posX
�� 
=
�� 
$num
�� 
;
�� 
var
�� 
additionalRows
�� 
=
��  
$num
��! "
;
��" #
while
�� 
(
�� 
	_cellPool
�� 
[
�� 
topMostCellIndex
�� -
]
��- .
.
��. /
MinY
��/ 3
(
��3 4
)
��4 5
>
��6 7#
_recyclableViewBounds
��8 M
.
��M N
max
��N Q
.
��Q R
y
��R S
&&
��T V
currentItemCount
��W g
<
��h i
_dataSource
��j u
.
��u v
GetItemCount��v �
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
�� 
if
�� 
(
�� 
++
�� $
_bottomMostCellColoumn
�� 0
>=
��1 3
	_coloumns
��4 =
)
��= >
{
�� 
n
�� 
++
�� 
;
�� $
_bottomMostCellColoumn
�� .
=
��/ 0
$num
��1 2
;
��2 3
posY
�� 
=
�� 
	_cellPool
�� (
[
��( )!
bottomMostCellIndex
��) <
]
��< =
.
��= >
anchoredPosition
��> N
.
��N O
y
��O P
-
��Q R
_cellHeight
��S ^
;
��^ _
additionalRows
�� &
++
��& (
;
��( )
}
�� 
posX
�� 
=
�� $
_bottomMostCellColoumn
�� 1
*
��2 3

_cellWidth
��4 >
;
��> ?
	_cellPool
�� 
[
�� 
topMostCellIndex
�� .
]
��. /
.
��/ 0
anchoredPosition
��0 @
=
��A B
new
��C F
Vector2
��G N
(
��N O
posX
��O S
,
��S T
posY
��U Y
)
��Y Z
;
��Z [
if
�� 
(
�� 
++
�� !
_topMostCellColoumn
�� -
>=
��. 0
	_coloumns
��1 :
)
��: ;
{
�� !
_topMostCellColoumn
�� +
=
��, -
$num
��. /
;
��/ 0
additionalRows
�� &
--
��& (
;
��( )
}
�� 
}
�� 
else
�� 
{
�� 
posY
�� 
=
�� 
	_cellPool
�� $
[
��$ %!
bottomMostCellIndex
��% 8
]
��8 9
.
��9 :
anchoredPosition
��: J
.
��J K
y
��K L
-
��M N
	_cellPool
��O X
[
��X Y!
bottomMostCellIndex
��Y l
]
��l m
.
��m n
	sizeDelta
��n w
.
��w x
y
��x y
;
��y z
	_cellPool
�� 
[
�� 
topMostCellIndex
�� .
]
��. /
.
��/ 0
anchoredPosition
��0 @
=
��A B
new
��C F
Vector2
��G N
(
��N O
	_cellPool
��O X
[
��X Y
topMostCellIndex
��Y i
]
��i j
.
��j k
anchoredPosition
��k {
.
��{ |
x
��| }
,
��} ~
posY�� �
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
topMostCellIndex
��1 A
]
��A B
,
��B C
currentItemCount
��D T
)
��T U
;
��U V!
bottomMostCellIndex
�� #
=
��$ %
topMostCellIndex
��& 6
;
��6 7
topMostCellIndex
��  
=
��! "
(
��# $
topMostCellIndex
��$ 4
+
��5 6
$num
��7 8
)
��8 9
%
��: ;
	_cellPool
��< E
.
��E F
Count
��F K
;
��K L
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
�� 
Content
�� 
.
�� 
	sizeDelta
�� !
+=
��" $
additionalRows
��% 3
*
��4 5
Vector2
��6 =
.
��= >
up
��> @
*
��A B
_cellHeight
��C N
;
��N O
n
�� 
-=
�� 
additionalRows
�� #
;
��# $
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
�� 
.
�� 
anchoredPosition
�� $
-=
��% '
n
��( )
*
��* +
Vector2
��, 3
.
��3 4
up
��4 6
*
��7 8
	_cellPool
��9 B
[
��B C
topMostCellIndex
��C S
]
��S T
.
��T U
	sizeDelta
��U ^
.
��^ _
y
��_ `
;
��` a

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
-
�� 
new
�� 
Vector2
�� 
(
��  
$num
��  !
,
��! "
n
��# $
*
��% &
	_cellPool
��' 0
[
��0 1
topMostCellIndex
��1 A
]
��A B
.
��B C
	sizeDelta
��C L
.
��L M
y
��M N
)
��N O
;
��O P
}
�� 	
private
�� 
Vector2
��  
RecycleBottomToTop
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
�� 
IsGrid
�� 
?
��  !
	_cellPool
��" +
[
��+ ,
topMostCellIndex
��, <
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
:
��Q R
$num
��S T
;
��T U
float
�� 
posX
�� 
=
�� 
$num
�� 
;
�� 
var
�� 
additionalRows
�� 
=
��  
$num
��! "
;
��" #
while
�� 
(
�� 
	_cellPool
�� 
[
�� !
bottomMostCellIndex
�� 0
]
��0 1
.
��1 2
MaxY
��2 6
(
��6 7
)
��7 8
<
��9 :#
_recyclableViewBounds
��; P
.
��P Q
min
��Q T
.
��T U
y
��U V
&&
��W Y
currentItemCount
��Z j
>
��k l
	_cellPool
��m v
.
��v w
Count
��w |
)
��| }
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
�� 
if
�� 
(
�� 
--
�� !
_topMostCellColoumn
�� -
<
��. /
$num
��0 1
)
��1 2
{
�� 
n
�� 
++
�� 
;
�� !
_topMostCellColoumn
�� +
=
��, -
	_coloumns
��. 7
-
��8 9
$num
��: ;
;
��; <
posY
�� 
=
�� 
	_cellPool
�� (
[
��( )
topMostCellIndex
��) 9
]
��9 :
.
��: ;
anchoredPosition
��; K
.
��K L
y
��L M
+
��N O
_cellHeight
��P [
;
��[ \
additionalRows
�� &
++
��& (
;
��( )
}
�� 
posX
�� 
=
�� !
_topMostCellColoumn
�� .
*
��/ 0

_cellWidth
��1 ;
;
��; <
	_cellPool
�� 
[
�� !
bottomMostCellIndex
�� 1
]
��1 2
.
��2 3
anchoredPosition
��3 C
=
��D E
new
��F I
Vector2
��J Q
(
��Q R
posX
��R V
,
��V W
posY
��X \
)
��\ ]
;
��] ^
if
�� 
(
�� 
--
�� $
_bottomMostCellColoumn
�� 0
<
��1 2
$num
��3 4
)
��4 5
{
�� $
_bottomMostCellColoumn
�� .
=
��/ 0
	_coloumns
��1 :
-
��; <
$num
��= >
;
��> ?
additionalRows
�� &
--
��& (
;
��( )
}
�� 
}
�� 
else
�� 
{
�� 
posY
�� 
=
�� 
	_cellPool
�� $
[
��$ %
topMostCellIndex
��% 5
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
+
��J K
	_cellPool
��L U
[
��U V
topMostCellIndex
��V f
]
��f g
.
��g h
	sizeDelta
��h q
.
��q r
y
��r s
;
��s t
	_cellPool
�� 
[
�� !
bottomMostCellIndex
�� 1
]
��1 2
.
��2 3
anchoredPosition
��3 C
=
��D E
new
��F I
Vector2
��J Q
(
��Q R
	_cellPool
��R [
[
��[ \!
bottomMostCellIndex
��\ o
]
��o p
.
��p q
anchoredPosition��q �
.��� �
x��� �
,��� �
posY��� �
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
��0 1!
bottomMostCellIndex
��1 D
]
��D E
,
��E F
currentItemCount
��G W
-
��X Y
	_cellPool
��Z c
.
��c d
Count
��d i
)
��i j
;
��j k
topMostCellIndex
��  
=
��! "!
bottomMostCellIndex
��# 6
;
��6 7!
bottomMostCellIndex
�� #
=
��$ %
(
��& '!
bottomMostCellIndex
��' :
-
��; <
$num
��= >
+
��? @
	_cellPool
��A J
.
��J K
Count
��K P
)
��P Q
%
��R S
	_cellPool
��T ]
.
��] ^
Count
��^ c
;
��c d
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
�� 
Content
�� 
.
�� 
	sizeDelta
�� !
+=
��" $
additionalRows
��% 3
*
��4 5
Vector2
��6 =
.
��= >
up
��> @
*
��A B
_cellHeight
��C N
;
��N O
if
�� 
(
�� 
additionalRows
�� "
>
��# $
$num
��% &
)
��& '
{
�� 
n
�� 
-=
�� 
additionalRows
�� '
;
��' (
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
��3 4
up
��4 6
*
��7 8
	_cellPool
��9 B
[
��B C
topMostCellIndex
��C S
]
��S T
.
��T U
	sizeDelta
��U ^
.
��^ _
y
��_ `
;
��` a

_recycling
�� 
=
�� 
false
�� 
;
�� 
return
�� 
new
�� 
Vector2
�� 
(
�� 
$num
��  
,
��  !
n
��" #
*
��$ %
	_cellPool
��& /
[
��/ 0
topMostCellIndex
��0 @
]
��@ A
.
��A B
	sizeDelta
��B K
.
��K L
y
��L M
)
��M N
;
��N O
}
�� 	
private
�� 
void
�� 
SetTopAnchor
�� !
(
��! "
RectTransform
��" /
rectTransform
��0 =
)
��= >
{
�� 	
float
�� 
width
�� 
=
�� 
rectTransform
�� '
.
��' (
rect
��( ,
.
��, -
width
��- 2
;
��2 3
float
�� 
height
�� 
=
�� 
rectTransform
�� (
.
��( )
rect
��) -
.
��- .
height
��. 4
;
��4 5
rectTransform
�� 
.
�� 
	anchorMin
�� #
=
��$ %
new
��& )
Vector2
��* 1
(
��1 2
$num
��2 6
,
��6 7
$num
��8 9
)
��9 :
;
��: ;
rectTransform
�� 
.
�� 
	anchorMax
�� #
=
��$ %
new
��& )
Vector2
��* 1
(
��1 2
$num
��2 6
,
��6 7
$num
��8 9
)
��9 :
;
��: ;
rectTransform
�� 
.
�� 
pivot
�� 
=
��  !
new
��" %
Vector2
��& -
(
��- .
$num
��. 2
,
��2 3
$num
��4 5
)
��5 6
;
��6 7
rectTransform
�� 
.
�� 
	sizeDelta
�� #
=
��$ %
new
��& )
Vector2
��* 1
(
��1 2
width
��2 7
,
��7 8
height
��9 ?
)
��? @
;
��@ A
}
�� 	
private
�� 
void
�� 
SetTopLeftAnchor
�� %
(
��% &
RectTransform
��& 3
rectTransform
��4 A
)
��A B
{
�� 	
float
�� 
width
�� 
=
�� 
rectTransform
�� '
.
��' (
rect
��( ,
.
��, -
width
��- 2
;
��2 3
float
�� 
height
�� 
=
�� 
rectTransform
�� (
.
��( )
rect
��) -
.
��- .
height
��. 4
;
��4 5
rectTransform
�� 
.
�� 
	anchorMin
�� #
=
��$ %
new
��& )
Vector2
��* 1
(
��1 2
$num
��2 3
,
��3 4
$num
��5 6
)
��6 7
;
��7 8
rectTransform
�� 
.
�� 
	anchorMax
�� #
=
��$ %
new
��& )
Vector2
��* 1
(
��1 2
$num
��2 3
,
��3 4
$num
��5 6
)
��6 7
;
��7 8
rectTransform
�� 
.
�� 
pivot
�� 
=
��  !
new
��" %
Vector2
��& -
(
��- .
$num
��. /
,
��/ 0
$num
��1 2
)
��2 3
;
��3 4
rectTransform
�� 
.
�� 
	sizeDelta
�� #
=
��$ %
new
��& )
Vector2
��* 1
(
��1 2
width
��2 7
,
��7 8
height
��9 ?
)
��? @
;
��@ A
}
�� 	
public
�� 
void
�� 
OnDrawGizmos
��  
(
��  !
)
��! "
{
�� 	
Gizmos
�� 
.
�� 
color
�� 
=
�� 
Color
��  
.
��  !
green
��! &
;
��& '
Gizmos
�� 
.
�� 
DrawLine
�� 
(
�� #
_recyclableViewBounds
�� 1
.
��1 2
min
��2 5
-
��6 7
new
��8 ;
Vector3
��< C
(
��C D
$num
��D H
,
��H I
$num
��J K
)
��K L
,
��L M#
_recyclableViewBounds
��N c
.
��c d
min
��d g
+
��h i
new
��j m
Vector3
��n u
(
��u v
$num
��v z
,
��z {
$num
��| }
)
��} ~
)
��~ 
;�� �
Gizmos
�� 
.
�� 
color
�� 
=
�� 
Color
��  
.
��  !
red
��! $
;
��$ %
Gizmos
�� 
.
�� 
DrawLine
�� 
(
�� #
_recyclableViewBounds
�� 1
.
��1 2
max
��2 5
-
��6 7
new
��8 ;
Vector3
��< C
(
��C D
$num
��D H
,
��H I
$num
��J K
)
��K L
,
��L M#
_recyclableViewBounds
��N c
.
��c d
max
��d g
+
��h i
new
��j m
Vector3
��n u
(
��u v
$num
��v z
,
��z {
$num
��| }
)
��} ~
)
��~ 
;�� �
}
�� 	
}
�� 
}�� 