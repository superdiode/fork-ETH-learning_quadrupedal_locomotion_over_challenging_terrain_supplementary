
�.�.
.
Abs
x"T
y"T"
Ttype:

2	
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	��
A
AddV2
x"T
y"T
z"T"
Ttype:
2	��
�
	ApplyAdam
var"T�	
m"T�	
v"T�
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T�" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
s
	AssignAdd
ref"T�

value"T

output_ref"T�" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
A
BroadcastArgs
s0"T
s1"T
r0"T"
Ttype0:
2	
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
>
DiagPart

input"T
diagonal"T"
Ttype:

2	
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
2
L2Loss
t"T
output"T"
Ttype:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Q
Qr

input"T
q"T
r"T"
full_matricesbool( "
Ttype:	
2
�
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
/
Sign
x"T
y"T"
Ttype:

2	
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
�
SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
1
Square
x"T
y"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
�
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
E
Where

input"T	
index	"%
Ttype0
:
2	
*1.15.02v1.15.0-rc3-22-g590d6ee��
;
updateBNparamsPlaceholder*
dtype0*
shape:
6
Reshape/shapeConst*
valueB *
dtype0
H
ReshapeReshapeupdateBNparamsReshape/shape*
T0*
Tshape0
=
CastCastReshape*

SrcT0*
Truncate( *

DstT0

2
zerosConst*
valueB
 *    *
dtype0
5
Cast_1/xConst*
valueB
 *o�:*
dtype0
5
Cast_2/xConst*
valueB
 *�7�5*
dtype0
E
historyPlaceholder*
dtype0* 
shape:���������<
0
statePlaceholder*
shape:*
dtype0
D
Reshape_1/shapeConst*
dtype0*
valueB"�����   
C
	Reshape_1ReshapestateReshape_1/shape*
T0*
Tshape0
9
extended_statePlaceholder*
shape:*
dtype0
D
Reshape_2/shapeConst*
valueB"�����   *
dtype0
L
	Reshape_2Reshapeextended_stateReshape_2/shape*
T0*
Tshape0
8
history_lengthConst*
dtype0*
value	B :
/
ConstConst*
dtype0*
value	B :
2
ShapeShape	Reshape_2*
T0*
out_type0
A
strided_slice/stackConst*
valueB: *
dtype0
C
strided_slice/stack_1Const*
dtype0*
valueB:
C
strided_slice/stack_2Const*
valueB:*
dtype0
�
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
V
!extra_encoder/strided_slice/stackConst*
dtype0*
valueB"    �   
X
#extra_encoder/strided_slice/stack_1Const*
valueB"        *
dtype0
X
#extra_encoder/strided_slice/stack_2Const*
valueB"      *
dtype0
�
extra_encoder/strided_sliceStridedSlice	Reshape_2!extra_encoder/strided_slice/stack#extra_encoder/strided_slice/stack_1#extra_encoder/strided_slice/stack_2*
end_mask*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask 
9
extra_encoder/extra_encoder/NegNegCast_1/x*
T0
�
Fextra_encoder/fully_connected/weights/Initializer/random_uniform/shapeConst*8
_class.
,*loc:@extra_encoder/fully_connected/weights*
valueB"O   @   *
dtype0
�
Nextra_encoder/fully_connected/weights/Initializer/random_uniform/RandomUniformRandomUniformFextra_encoder/fully_connected/weights/Initializer/random_uniform/shape*
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights*
dtype0*
seed2 *

seed 
�
Dextra_encoder/fully_connected/weights/Initializer/random_uniform/subSubCast_1/xextra_encoder/extra_encoder/Neg*
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights
�
Dextra_encoder/fully_connected/weights/Initializer/random_uniform/mulMulNextra_encoder/fully_connected/weights/Initializer/random_uniform/RandomUniformDextra_encoder/fully_connected/weights/Initializer/random_uniform/sub*
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights
�
@extra_encoder/fully_connected/weights/Initializer/random_uniformAddDextra_encoder/fully_connected/weights/Initializer/random_uniform/mulextra_encoder/extra_encoder/Neg*
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights
�
%extra_encoder/fully_connected/weights
VariableV2*
dtype0*
	container *
shape
:O@*
shared_name *8
_class.
,*loc:@extra_encoder/fully_connected/weights
�
,extra_encoder/fully_connected/weights/AssignAssign%extra_encoder/fully_connected/weights@extra_encoder/fully_connected/weights/Initializer/random_uniform*
validate_shape(*
use_locking(*
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights
�
*extra_encoder/fully_connected/weights/readIdentity%extra_encoder/fully_connected/weights*
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights
�
6extra_encoder/fully_connected/biases/Initializer/ConstConst*
dtype0*7
_class-
+)loc:@extra_encoder/fully_connected/biases*
valueB@*    
�
$extra_encoder/fully_connected/biases
VariableV2*
shared_name *7
_class-
+)loc:@extra_encoder/fully_connected/biases*
dtype0*
	container *
shape:@
�
+extra_encoder/fully_connected/biases/AssignAssign$extra_encoder/fully_connected/biases6extra_encoder/fully_connected/biases/Initializer/Const*
validate_shape(*
use_locking(*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�
)extra_encoder/fully_connected/biases/readIdentity$extra_encoder/fully_connected/biases*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�
2extra_encoder/extra_encoder/fully_connected/MatMulMatMulextra_encoder/strided_slice*extra_encoder/fully_connected/weights/read*
transpose_b( *
T0*
transpose_a( 
�
3extra_encoder/extra_encoder/fully_connected/BiasAddBiasAdd2extra_encoder/extra_encoder/fully_connected/MatMul)extra_encoder/fully_connected/biases/read*
T0*
data_formatNHWC
b
extra_encoder/featureMapIdentity3extra_encoder/extra_encoder/fully_connected/BiasAdd*
T0
H
extra_encoder/featureDim/inputConst*
value	B :@*
dtype0
M
extra_encoder/featureDimIdentityextra_encoder/featureDim/input*
T0
O
policy/strided_slice/stackConst*
valueB"        *
dtype0
Q
policy/strided_slice/stack_1Const*
valueB"    �   *
dtype0
Q
policy/strided_slice/stack_2Const*
valueB"      *
dtype0
�
policy/strided_sliceStridedSlice	Reshape_2policy/strided_slice/stackpolicy/strided_slice/stack_1policy/strided_slice/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0*
shrink_axis_mask 
E
policy/concat/axisConst*
valueB :
���������*
dtype0
{
policy/concatConcatV2policy/strided_sliceextra_encoder/featureMappolicy/concat/axis*

Tidx0*
T0*
N
�
>policy/fully_connected/weights/Initializer/random_normal/shapeConst*1
_class'
%#loc:@policy/fully_connected/weights*
valueB"   �   *
dtype0
�
=policy/fully_connected/weights/Initializer/random_normal/meanConst*1
_class'
%#loc:@policy/fully_connected/weights*
valueB
 *    *
dtype0
�
?policy/fully_connected/weights/Initializer/random_normal/stddevConst*1
_class'
%#loc:@policy/fully_connected/weights*
valueB
 *  �?*
dtype0
�
Mpolicy/fully_connected/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal>policy/fully_connected/weights/Initializer/random_normal/shape*
T0*1
_class'
%#loc:@policy/fully_connected/weights*
dtype0*
seed2 *

seed 
�
<policy/fully_connected/weights/Initializer/random_normal/mulMulMpolicy/fully_connected/weights/Initializer/random_normal/RandomStandardNormal?policy/fully_connected/weights/Initializer/random_normal/stddev*
T0*1
_class'
%#loc:@policy/fully_connected/weights
�
8policy/fully_connected/weights/Initializer/random_normalAdd<policy/fully_connected/weights/Initializer/random_normal/mul=policy/fully_connected/weights/Initializer/random_normal/mean*
T0*1
_class'
%#loc:@policy/fully_connected/weights
�
-policy/fully_connected/weights/Initializer/QrQr8policy/fully_connected/weights/Initializer/random_normal*
full_matrices( *
T0*1
_class'
%#loc:@policy/fully_connected/weights
�
3policy/fully_connected/weights/Initializer/DiagPartDiagPart/policy/fully_connected/weights/Initializer/Qr:1*
T0*1
_class'
%#loc:@policy/fully_connected/weights
�
/policy/fully_connected/weights/Initializer/SignSign3policy/fully_connected/weights/Initializer/DiagPart*
T0*1
_class'
%#loc:@policy/fully_connected/weights
�
.policy/fully_connected/weights/Initializer/mulMul-policy/fully_connected/weights/Initializer/Qr/policy/fully_connected/weights/Initializer/Sign*
T0*1
_class'
%#loc:@policy/fully_connected/weights
�
Jpolicy/fully_connected/weights/Initializer/matrix_transpose/transpose/permConst*1
_class'
%#loc:@policy/fully_connected/weights*
valueB"       *
dtype0
�
Epolicy/fully_connected/weights/Initializer/matrix_transpose/transpose	Transpose.policy/fully_connected/weights/Initializer/mulJpolicy/fully_connected/weights/Initializer/matrix_transpose/transpose/perm*
T0*1
_class'
%#loc:@policy/fully_connected/weights*
Tperm0
�
8policy/fully_connected/weights/Initializer/Reshape/shapeConst*1
_class'
%#loc:@policy/fully_connected/weights*
valueB"�      *
dtype0
�
2policy/fully_connected/weights/Initializer/ReshapeReshapeEpolicy/fully_connected/weights/Initializer/matrix_transpose/transpose8policy/fully_connected/weights/Initializer/Reshape/shape*
T0*1
_class'
%#loc:@policy/fully_connected/weights*
Tshape0
�
2policy/fully_connected/weights/Initializer/mul_1/xConst*1
_class'
%#loc:@policy/fully_connected/weights*
valueB
 *  �?*
dtype0
�
0policy/fully_connected/weights/Initializer/mul_1Mul2policy/fully_connected/weights/Initializer/mul_1/x2policy/fully_connected/weights/Initializer/Reshape*
T0*1
_class'
%#loc:@policy/fully_connected/weights
�
policy/fully_connected/weights
VariableV2*
shape:
��*
shared_name *1
_class'
%#loc:@policy/fully_connected/weights*
dtype0*
	container 
�
%policy/fully_connected/weights/AssignAssignpolicy/fully_connected/weights0policy/fully_connected/weights/Initializer/mul_1*
use_locking(*
T0*1
_class'
%#loc:@policy/fully_connected/weights*
validate_shape(
�
#policy/fully_connected/weights/readIdentitypolicy/fully_connected/weights*
T0*1
_class'
%#loc:@policy/fully_connected/weights
�
Tpolicy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2LossL2Loss#policy/fully_connected/weights/read*
T0
�
Mpolicy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizerMulCast_2/xTpolicy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0
�
/policy/fully_connected/biases/Initializer/zerosConst*0
_class&
$"loc:@policy/fully_connected/biases*
valueB�*    *
dtype0
�
policy/fully_connected/biases
VariableV2*
shared_name *0
_class&
$"loc:@policy/fully_connected/biases*
dtype0*
	container *
shape:�
�
$policy/fully_connected/biases/AssignAssignpolicy/fully_connected/biases/policy/fully_connected/biases/Initializer/zeros*
T0*0
_class&
$"loc:@policy/fully_connected/biases*
validate_shape(*
use_locking(
�
"policy/fully_connected/biases/readIdentitypolicy/fully_connected/biases*
T0*0
_class&
$"loc:@policy/fully_connected/biases
�
2policy/policy/hidden_layer0/fully_connected/MatMulMatMulpolicy/concat#policy/fully_connected/weights/read*
T0*
transpose_a( *
transpose_b( 
�
3policy/policy/hidden_layer0/fully_connected/BiasAddBiasAdd2policy/policy/hidden_layer0/fully_connected/MatMul"policy/fully_connected/biases/read*
T0*
data_formatNHWC
v
0policy/policy/hidden_layer0/fully_connected/TanhTanh3policy/policy/hidden_layer0/fully_connected/BiasAdd*
T0
�
@policy/fully_connected_1/weights/Initializer/random_normal/shapeConst*3
_class)
'%loc:@policy/fully_connected_1/weights*
valueB"   �   *
dtype0
�
?policy/fully_connected_1/weights/Initializer/random_normal/meanConst*3
_class)
'%loc:@policy/fully_connected_1/weights*
valueB
 *    *
dtype0
�
Apolicy/fully_connected_1/weights/Initializer/random_normal/stddevConst*3
_class)
'%loc:@policy/fully_connected_1/weights*
valueB
 *  �?*
dtype0
�
Opolicy/fully_connected_1/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal@policy/fully_connected_1/weights/Initializer/random_normal/shape*
dtype0*
seed2 *

seed *
T0*3
_class)
'%loc:@policy/fully_connected_1/weights
�
>policy/fully_connected_1/weights/Initializer/random_normal/mulMulOpolicy/fully_connected_1/weights/Initializer/random_normal/RandomStandardNormalApolicy/fully_connected_1/weights/Initializer/random_normal/stddev*
T0*3
_class)
'%loc:@policy/fully_connected_1/weights
�
:policy/fully_connected_1/weights/Initializer/random_normalAdd>policy/fully_connected_1/weights/Initializer/random_normal/mul?policy/fully_connected_1/weights/Initializer/random_normal/mean*
T0*3
_class)
'%loc:@policy/fully_connected_1/weights
�
/policy/fully_connected_1/weights/Initializer/QrQr:policy/fully_connected_1/weights/Initializer/random_normal*
T0*3
_class)
'%loc:@policy/fully_connected_1/weights*
full_matrices( 
�
5policy/fully_connected_1/weights/Initializer/DiagPartDiagPart1policy/fully_connected_1/weights/Initializer/Qr:1*
T0*3
_class)
'%loc:@policy/fully_connected_1/weights
�
1policy/fully_connected_1/weights/Initializer/SignSign5policy/fully_connected_1/weights/Initializer/DiagPart*
T0*3
_class)
'%loc:@policy/fully_connected_1/weights
�
0policy/fully_connected_1/weights/Initializer/mulMul/policy/fully_connected_1/weights/Initializer/Qr1policy/fully_connected_1/weights/Initializer/Sign*
T0*3
_class)
'%loc:@policy/fully_connected_1/weights
�
:policy/fully_connected_1/weights/Initializer/Reshape/shapeConst*3
_class)
'%loc:@policy/fully_connected_1/weights*
valueB"   �   *
dtype0
�
4policy/fully_connected_1/weights/Initializer/ReshapeReshape0policy/fully_connected_1/weights/Initializer/mul:policy/fully_connected_1/weights/Initializer/Reshape/shape*
T0*3
_class)
'%loc:@policy/fully_connected_1/weights*
Tshape0
�
4policy/fully_connected_1/weights/Initializer/mul_1/xConst*3
_class)
'%loc:@policy/fully_connected_1/weights*
valueB
 *  �?*
dtype0
�
2policy/fully_connected_1/weights/Initializer/mul_1Mul4policy/fully_connected_1/weights/Initializer/mul_1/x4policy/fully_connected_1/weights/Initializer/Reshape*
T0*3
_class)
'%loc:@policy/fully_connected_1/weights
�
 policy/fully_connected_1/weights
VariableV2*
shared_name *3
_class)
'%loc:@policy/fully_connected_1/weights*
dtype0*
	container *
shape:
��
�
'policy/fully_connected_1/weights/AssignAssign policy/fully_connected_1/weights2policy/fully_connected_1/weights/Initializer/mul_1*
T0*3
_class)
'%loc:@policy/fully_connected_1/weights*
validate_shape(*
use_locking(
�
%policy/fully_connected_1/weights/readIdentity policy/fully_connected_1/weights*
T0*3
_class)
'%loc:@policy/fully_connected_1/weights
�
Tpolicy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2LossL2Loss%policy/fully_connected_1/weights/read*
T0
�
Mpolicy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizerMulCast_2/xTpolicy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0
�
1policy/fully_connected_1/biases/Initializer/zerosConst*2
_class(
&$loc:@policy/fully_connected_1/biases*
valueB�*    *
dtype0
�
policy/fully_connected_1/biases
VariableV2*2
_class(
&$loc:@policy/fully_connected_1/biases*
dtype0*
	container *
shape:�*
shared_name 
�
&policy/fully_connected_1/biases/AssignAssignpolicy/fully_connected_1/biases1policy/fully_connected_1/biases/Initializer/zeros*
T0*2
_class(
&$loc:@policy/fully_connected_1/biases*
validate_shape(*
use_locking(
�
$policy/fully_connected_1/biases/readIdentitypolicy/fully_connected_1/biases*
T0*2
_class(
&$loc:@policy/fully_connected_1/biases
�
2policy/policy/hidden_layer1/fully_connected/MatMulMatMul0policy/policy/hidden_layer0/fully_connected/Tanh%policy/fully_connected_1/weights/read*
T0*
transpose_a( *
transpose_b( 
�
3policy/policy/hidden_layer1/fully_connected/BiasAddBiasAdd2policy/policy/hidden_layer1/fully_connected/MatMul$policy/fully_connected_1/biases/read*
T0*
data_formatNHWC
v
0policy/policy/hidden_layer1/fully_connected/TanhTanh3policy/policy/hidden_layer1/fully_connected/BiasAdd*
T0
�
@policy/fully_connected_2/weights/Initializer/random_normal/shapeConst*3
_class)
'%loc:@policy/fully_connected_2/weights*
valueB"�   @   *
dtype0
�
?policy/fully_connected_2/weights/Initializer/random_normal/meanConst*3
_class)
'%loc:@policy/fully_connected_2/weights*
valueB
 *    *
dtype0
�
Apolicy/fully_connected_2/weights/Initializer/random_normal/stddevConst*3
_class)
'%loc:@policy/fully_connected_2/weights*
valueB
 *  �?*
dtype0
�
Opolicy/fully_connected_2/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal@policy/fully_connected_2/weights/Initializer/random_normal/shape*
T0*3
_class)
'%loc:@policy/fully_connected_2/weights*
dtype0*
seed2 *

seed 
�
>policy/fully_connected_2/weights/Initializer/random_normal/mulMulOpolicy/fully_connected_2/weights/Initializer/random_normal/RandomStandardNormalApolicy/fully_connected_2/weights/Initializer/random_normal/stddev*
T0*3
_class)
'%loc:@policy/fully_connected_2/weights
�
:policy/fully_connected_2/weights/Initializer/random_normalAdd>policy/fully_connected_2/weights/Initializer/random_normal/mul?policy/fully_connected_2/weights/Initializer/random_normal/mean*
T0*3
_class)
'%loc:@policy/fully_connected_2/weights
�
/policy/fully_connected_2/weights/Initializer/QrQr:policy/fully_connected_2/weights/Initializer/random_normal*
full_matrices( *
T0*3
_class)
'%loc:@policy/fully_connected_2/weights
�
5policy/fully_connected_2/weights/Initializer/DiagPartDiagPart1policy/fully_connected_2/weights/Initializer/Qr:1*
T0*3
_class)
'%loc:@policy/fully_connected_2/weights
�
1policy/fully_connected_2/weights/Initializer/SignSign5policy/fully_connected_2/weights/Initializer/DiagPart*
T0*3
_class)
'%loc:@policy/fully_connected_2/weights
�
0policy/fully_connected_2/weights/Initializer/mulMul/policy/fully_connected_2/weights/Initializer/Qr1policy/fully_connected_2/weights/Initializer/Sign*
T0*3
_class)
'%loc:@policy/fully_connected_2/weights
�
:policy/fully_connected_2/weights/Initializer/Reshape/shapeConst*3
_class)
'%loc:@policy/fully_connected_2/weights*
valueB"�   @   *
dtype0
�
4policy/fully_connected_2/weights/Initializer/ReshapeReshape0policy/fully_connected_2/weights/Initializer/mul:policy/fully_connected_2/weights/Initializer/Reshape/shape*
T0*3
_class)
'%loc:@policy/fully_connected_2/weights*
Tshape0
�
4policy/fully_connected_2/weights/Initializer/mul_1/xConst*
dtype0*3
_class)
'%loc:@policy/fully_connected_2/weights*
valueB
 *  �?
�
2policy/fully_connected_2/weights/Initializer/mul_1Mul4policy/fully_connected_2/weights/Initializer/mul_1/x4policy/fully_connected_2/weights/Initializer/Reshape*
T0*3
_class)
'%loc:@policy/fully_connected_2/weights
�
 policy/fully_connected_2/weights
VariableV2*
dtype0*
	container *
shape:	�@*
shared_name *3
_class)
'%loc:@policy/fully_connected_2/weights
�
'policy/fully_connected_2/weights/AssignAssign policy/fully_connected_2/weights2policy/fully_connected_2/weights/Initializer/mul_1*
validate_shape(*
use_locking(*
T0*3
_class)
'%loc:@policy/fully_connected_2/weights
�
%policy/fully_connected_2/weights/readIdentity policy/fully_connected_2/weights*
T0*3
_class)
'%loc:@policy/fully_connected_2/weights
�
Tpolicy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2LossL2Loss%policy/fully_connected_2/weights/read*
T0
�
Mpolicy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizerMulCast_2/xTpolicy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0
�
1policy/fully_connected_2/biases/Initializer/zerosConst*2
_class(
&$loc:@policy/fully_connected_2/biases*
valueB@*    *
dtype0
�
policy/fully_connected_2/biases
VariableV2*
shape:@*
shared_name *2
_class(
&$loc:@policy/fully_connected_2/biases*
dtype0*
	container 
�
&policy/fully_connected_2/biases/AssignAssignpolicy/fully_connected_2/biases1policy/fully_connected_2/biases/Initializer/zeros*
T0*2
_class(
&$loc:@policy/fully_connected_2/biases*
validate_shape(*
use_locking(
�
$policy/fully_connected_2/biases/readIdentitypolicy/fully_connected_2/biases*
T0*2
_class(
&$loc:@policy/fully_connected_2/biases
�
2policy/policy/hidden_layer2/fully_connected/MatMulMatMul0policy/policy/hidden_layer1/fully_connected/Tanh%policy/fully_connected_2/weights/read*
transpose_b( *
T0*
transpose_a( 
�
3policy/policy/hidden_layer2/fully_connected/BiasAddBiasAdd2policy/policy/hidden_layer2/fully_connected/MatMul$policy/fully_connected_2/biases/read*
T0*
data_formatNHWC
v
0policy/policy/hidden_layer2/fully_connected/TanhTanh3policy/policy/hidden_layer2/fully_connected/BiasAdd*
T0
+
policy/policy/NegNegCast_1/x*
T0
�
Apolicy/fully_connected_3/weights/Initializer/random_uniform/shapeConst*3
_class)
'%loc:@policy/fully_connected_3/weights*
valueB"@      *
dtype0
�
Ipolicy/fully_connected_3/weights/Initializer/random_uniform/RandomUniformRandomUniformApolicy/fully_connected_3/weights/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*3
_class)
'%loc:@policy/fully_connected_3/weights
�
?policy/fully_connected_3/weights/Initializer/random_uniform/subSubCast_1/xpolicy/policy/Neg*
T0*3
_class)
'%loc:@policy/fully_connected_3/weights
�
?policy/fully_connected_3/weights/Initializer/random_uniform/mulMulIpolicy/fully_connected_3/weights/Initializer/random_uniform/RandomUniform?policy/fully_connected_3/weights/Initializer/random_uniform/sub*
T0*3
_class)
'%loc:@policy/fully_connected_3/weights
�
;policy/fully_connected_3/weights/Initializer/random_uniformAdd?policy/fully_connected_3/weights/Initializer/random_uniform/mulpolicy/policy/Neg*
T0*3
_class)
'%loc:@policy/fully_connected_3/weights
�
 policy/fully_connected_3/weights
VariableV2*3
_class)
'%loc:@policy/fully_connected_3/weights*
dtype0*
	container *
shape
:@*
shared_name 
�
'policy/fully_connected_3/weights/AssignAssign policy/fully_connected_3/weights;policy/fully_connected_3/weights/Initializer/random_uniform*
validate_shape(*
use_locking(*
T0*3
_class)
'%loc:@policy/fully_connected_3/weights
�
%policy/fully_connected_3/weights/readIdentity policy/fully_connected_3/weights*
T0*3
_class)
'%loc:@policy/fully_connected_3/weights
�
1policy/fully_connected_3/biases/Initializer/ConstConst*2
_class(
&$loc:@policy/fully_connected_3/biases*
valueB*    *
dtype0
�
policy/fully_connected_3/biases
VariableV2*
shape:*
shared_name *2
_class(
&$loc:@policy/fully_connected_3/biases*
dtype0*
	container 
�
&policy/fully_connected_3/biases/AssignAssignpolicy/fully_connected_3/biases1policy/fully_connected_3/biases/Initializer/Const*
validate_shape(*
use_locking(*
T0*2
_class(
&$loc:@policy/fully_connected_3/biases
�
$policy/fully_connected_3/biases/readIdentitypolicy/fully_connected_3/biases*
T0*2
_class(
&$loc:@policy/fully_connected_3/biases
�
$policy/policy/fully_connected/MatMulMatMul0policy/policy/hidden_layer2/fully_connected/Tanh%policy/fully_connected_3/weights/read*
transpose_b( *
T0*
transpose_a( 
�
%policy/policy/fully_connected/BiasAddBiasAdd$policy/policy/fully_connected/MatMul$policy/fully_connected_3/biases/read*
T0*
data_formatNHWC
S
policy/stdevconcatOutput/zerosConst*
dtype0*
valueB*    
n
policy/stdevconcatOutput/W
VariableV2*
dtype0*
	container *
shape
:*
shared_name 
�
!policy/stdevconcatOutput/W/AssignAssignpolicy/stdevconcatOutput/Wpolicy/stdevconcatOutput/zeros*
use_locking(*
T0*-
_class#
!loc:@policy/stdevconcatOutput/W*
validate_shape(

policy/stdevconcatOutput/W/readIdentitypolicy/stdevconcatOutput/W*
T0*-
_class#
!loc:@policy/stdevconcatOutput/W
M
policy/stdevconcatOutput/ExpExppolicy/stdevconcatOutput/W/read*
T0
Q
policy/stdevconcatOutput/stdevIdentitypolicy/stdevconcatOutput/Exp*
T0
C
policy/Stdev_placeholderPlaceholder*
dtype0*
shape:
I
policy/Reshape/shapeConst*
dtype0*
valueB"      
`
policy/ReshapeReshapepolicy/Stdev_placeholderpolicy/Reshape/shape*
T0*
Tshape0
*

policy/LogLogpolicy/Reshape*
T0
�
policy/assignStdevAssignpolicy/stdevconcatOutput/W
policy/Log*
use_locking(*
T0*-
_class#
!loc:@policy/stdevconcatOutput/W*
validate_shape(
8
policy/stack/1Const*
dtype0*
value	B :
Q
policy/stackPackstrided_slicepolicy/stack/1*
T0*

axis *
N
\
policy/TileTilepolicy/stdevconcatOutput/stdevpolicy/stack*

Tmultiples0*
T0
�
gpolicy/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/range_dimension_tensor/ConstConst*
value	B :*
dtype0
�
ipolicy/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/batch_shapeConst*
dtype0*
valueB:
�
=policy/MultivariateNormalDiag/shapes_from_loc_and_scale/ShapeShape%policy/policy/fully_connected/BiasAdd*
T0*
out_type0
y
Kpolicy/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stackConst*
valueB: *
dtype0
�
Mpolicy/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1Const*
dtype0*
valueB:
���������
{
Mpolicy/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2Const*
valueB:*
dtype0
�
Epolicy/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_sliceStridedSlice=policy/MultivariateNormalDiag/shapes_from_loc_and_scale/ShapeKpolicy/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stackMpolicy/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_1Mpolicy/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice/stack_2*
end_mask *
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask 
�
cpolicy/MultivariateNormalDiag/shapes_from_loc_and_scale/prefer_static_broadcast_shape/BroadcastArgsBroadcastArgsipolicy/MultivariateNormalDiag/shapes_from_loc_and_scale/LinearOperatorDiag/batch_shape_tensor/batch_shapeEpolicy/MultivariateNormalDiag/shapes_from_loc_and_scale/strided_slice*
T0
9
policy/zerosConst*
dtype0*
valueB
 *    
8
policy/onesConst*
valueB
 *  �?*
dtype0
4
policy/Normal/locIdentitypolicy/zeros*
T0
5
policy/Normal/scaleIdentitypolicy/ones*
T0
o
Epolicy/affine_linear_operator/init/DistributionShape/init/batch_ndimsConst*
value	B :*
dtype0
o
Epolicy/affine_linear_operator/init/DistributionShape/init/event_ndimsConst*
value	B :*
dtype0
L
"policy/MultivariateNormalDiag/zeroConst*
dtype0*
value	B : 
L
#policy/MultivariateNormalDiag/emptyConst*
valueB *
dtype0
W
-policy/Normal/is_scalar_batch/is_scalar_batchConst*
value	B
 Z*
dtype0

M
#policy/MultivariateNormalDiag/ConstConst*
value	B :*
dtype0
O
%policy/MultivariateNormalDiag/Const_1Const*
value	B : *
dtype0
O
%policy/MultivariateNormalDiag/Const_2Const*
value	B
 Z *
dtype0

O
%policy/MultivariateNormalDiag/Const_3Const*
value	B
 Z *
dtype0

O
%policy/MultivariateNormalDiag/Const_4Const*
value	B
 Z*
dtype0

O
%policy/MultivariateNormalDiag/Const_5Const*
value	B
 Z *
dtype0

O
%policy/MultivariateNormalDiag/Const_6Const*
value	B :*
dtype0
O
%policy/MultivariateNormalDiag/Const_7Const*
value	B
 Z *
dtype0

O
%policy/MultivariateNormalDiag/Const_8Const*
dtype0
*
value	B
 Z
W
-policy/Normal/is_scalar_event/is_scalar_eventConst*
value	B
 Z*
dtype0

W
)policy/MultivariateNormalDiag/event_shapeConst*
valueB:*
dtype0
O
%policy/MultivariateNormalDiag/Const_9Const*
dtype0*
value	B :
P
&policy/MultivariateNormalDiag/Const_10Const*
value	B : *
dtype0
P
&policy/MultivariateNormalDiag/Const_11Const*
value	B
 Z *
dtype0

P
&policy/MultivariateNormalDiag/Const_12Const*
dtype0
*
value	B
 Z 
P
&policy/MultivariateNormalDiag/Const_13Const*
value	B
 Z*
dtype0

P
&policy/MultivariateNormalDiag/Const_14Const*
value	B
 Z *
dtype0

P
&policy/MultivariateNormalDiag/Const_15Const*
dtype0*
value	B :
P
&policy/MultivariateNormalDiag/Const_16Const*
value	B
 Z *
dtype0

P
&policy/MultivariateNormalDiag/Const_17Const*
value	B
 Z*
dtype0

P
&policy/MultivariateNormalDiag/Const_18Const*
dtype0
*
value	B
 Z 
Y
/policy/Normal/is_scalar_batch_1/is_scalar_batchConst*
value	B
 Z*
dtype0

P
&policy/MultivariateNormalDiag/Const_19Const*
value	B
 Z *
dtype0

P
&policy/MultivariateNormalDiag/Const_20Const*
value	B
 Z *
dtype0

P
&policy/MultivariateNormalDiag/Const_21Const*
value	B :*
dtype0
M
#policy/MultivariateNormalDiag/sub/xConst*
value	B : *
dtype0
~
!policy/MultivariateNormalDiag/subSub#policy/MultivariateNormalDiag/sub/x&policy/MultivariateNormalDiag/Const_21*
T0
S
)policy/MultivariateNormalDiag/range/limitConst*
value	B : *
dtype0
S
)policy/MultivariateNormalDiag/range/deltaConst*
value	B :*
dtype0
�
#policy/MultivariateNormalDiag/rangeRange!policy/MultivariateNormalDiag/sub)policy/MultivariateNormalDiag/range/limit)policy/MultivariateNormalDiag/range/delta*

Tidx0
X
(policy/MultivariateNormalDiag/stddev/AbsAbspolicy/stdevconcatOutput/stdev*
T0
N
policy/getStdevIdentity(policy/MultivariateNormalDiag/stddev/Abs*
T0
I
policy/actionDist/axisConst*
valueB :
���������*
dtype0
�
policy/actionDistConcatV2%policy/policy/fully_connected/BiasAddpolicy/Tilepolicy/actionDist/axis*

Tidx0*
T0*
N
Z
1policy/MultivariateNormalDiag/sample/sample_shapeConst*
valueB *
dtype0
X
*policy/MultivariateNormalDiag/sample/ConstConst*
dtype0*
valueB:
b
4policy/MultivariateNormalDiag/sample/concat/values_0Const*
valueB:*
dtype0
Z
0policy/MultivariateNormalDiag/sample/concat/axisConst*
value	B : *
dtype0
�
+policy/MultivariateNormalDiag/sample/concatConcatV24policy/MultivariateNormalDiag/sample/concat/values_0cpolicy/MultivariateNormalDiag/shapes_from_loc_and_scale/prefer_static_broadcast_shape/BroadcastArgs)policy/MultivariateNormalDiag/event_shape#policy/MultivariateNormalDiag/empty0policy/MultivariateNormalDiag/sample/concat/axis*

Tidx0*
T0*
N
H
policy/Normal/sample/ConstConst*
dtype0*
valueB: 
�
policy/Normal/sample/ProdProd+policy/MultivariateNormalDiag/sample/concatpolicy/Normal/sample/Const*

Tidx0*
	keep_dims( *
T0
U
,policy/Normal/batch_shape_tensor/batch_shapeConst*
valueB *
dtype0
e
$policy/Normal/sample/concat/values_0Packpolicy/Normal/sample/Prod*
N*
T0*

axis 
J
 policy/Normal/sample/concat/axisConst*
dtype0*
value	B : 
�
policy/Normal/sample/concatConcatV2$policy/Normal/sample/concat/values_0,policy/Normal/batch_shape_tensor/batch_shape policy/Normal/sample/concat/axis*

Tidx0*
T0*
N
T
'policy/Normal/sample/random_normal/meanConst*
valueB
 *    *
dtype0
V
)policy/Normal/sample/random_normal/stddevConst*
valueB
 *  �?*
dtype0
�
7policy/Normal/sample/random_normal/RandomStandardNormalRandomStandardNormalpolicy/Normal/sample/concat*

seed *
T0*
dtype0*
seed2 
�
&policy/Normal/sample/random_normal/mulMul7policy/Normal/sample/random_normal/RandomStandardNormal)policy/Normal/sample/random_normal/stddev*
T0
�
"policy/Normal/sample/random_normalAdd&policy/Normal/sample/random_normal/mul'policy/Normal/sample/random_normal/mean*
T0
a
policy/Normal/sample/mulMul"policy/Normal/sample/random_normalpolicy/Normal/scale*
T0
W
policy/Normal/sample/addAddV2policy/Normal/sample/mulpolicy/Normal/loc*
T0
V
policy/Normal/sample/ShapeShapepolicy/Normal/sample/add*
T0*
out_type0
V
(policy/Normal/sample/strided_slice/stackConst*
valueB:*
dtype0
X
*policy/Normal/sample/strided_slice/stack_1Const*
valueB: *
dtype0
X
*policy/Normal/sample/strided_slice/stack_2Const*
valueB:*
dtype0
�
"policy/Normal/sample/strided_sliceStridedSlicepolicy/Normal/sample/Shape(policy/Normal/sample/strided_slice/stack*policy/Normal/sample/strided_slice/stack_1*policy/Normal/sample/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask
L
"policy/Normal/sample/concat_1/axisConst*
value	B : *
dtype0
�
policy/Normal/sample/concat_1ConcatV2+policy/MultivariateNormalDiag/sample/concat"policy/Normal/sample/strided_slice"policy/Normal/sample/concat_1/axis*
T0*
N*

Tidx0
w
policy/Normal/sample/ReshapeReshapepolicy/Normal/sample/addpolicy/Normal/sample/concat_1*
T0*
Tshape0
j
*policy/MultivariateNormalDiag/sample/ShapeShapepolicy/Normal/sample/Reshape*
T0*
out_type0
f
8policy/MultivariateNormalDiag/sample/strided_slice/stackConst*
valueB:*
dtype0
h
:policy/MultivariateNormalDiag/sample/strided_slice/stack_1Const*
valueB: *
dtype0
h
:policy/MultivariateNormalDiag/sample/strided_slice/stack_2Const*
dtype0*
valueB:
�
2policy/MultivariateNormalDiag/sample/strided_sliceStridedSlice*policy/MultivariateNormalDiag/sample/Shape8policy/MultivariateNormalDiag/sample/strided_slice/stack:policy/MultivariateNormalDiag/sample/strided_slice/stack_1:policy/MultivariateNormalDiag/sample/strided_slice/stack_2*
end_mask*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask 
\
2policy/MultivariateNormalDiag/sample/concat_1/axisConst*
dtype0*
value	B : 
�
-policy/MultivariateNormalDiag/sample/concat_1ConcatV21policy/MultivariateNormalDiag/sample/sample_shape2policy/MultivariateNormalDiag/sample/strided_slice2policy/MultivariateNormalDiag/sample/concat_1/axis*

Tidx0*
T0*
N
�
,policy/MultivariateNormalDiag/sample/ReshapeReshapepolicy/Normal/sample/Reshape-policy/MultivariateNormalDiag/sample/concat_1*
T0*
Tshape0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/DistributionShape/get_shape/DistributionShape/get_shape/DistributionShape/get_shape/ndimsConst*
value	B :*
dtype0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/DistributionShape/get_shape/DistributionShape/get_shape/sample_ndimsConst*
dtype0*
value	B : 
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/DistributionShape/get_shape/zeroConst*
value	B : *
dtype0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/DistributionShape/get_shape/sample_shapeConst*
valueB *
dtype0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/DistributionShape/get_shape/ShapeShape,policy/MultivariateNormalDiag/sample/Reshape*
T0*
out_type0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/DistributionShape/get_shape/add/xConst*
value	B : *
dtype0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/DistributionShape/get_shape/addAddV2�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/DistributionShape/get_shape/add/x�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/DistributionShape/get_shape/DistributionShape/get_shape/sample_ndims*
T0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/DistributionShape/get_shape/Slice/beginPack�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/DistributionShape/get_shape/add*
T0*

axis *
N
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/DistributionShape/get_shape/Slice/sizePackEpolicy/affine_linear_operator/init/DistributionShape/init/batch_ndims*
N*
T0*

axis 
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/DistributionShape/get_shape/SliceSlice�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/DistributionShape/get_shape/Shape�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/DistributionShape/get_shape/Slice/begin�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/DistributionShape/get_shape/Slice/size*
T0*
Index0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/DistributionShape/get_shape/event_shapeConst*
valueB:*
dtype0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/pick_vector/condConst*
value	B
 Z *
dtype0

�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/concat/values_0Const*
valueB:
���������*
dtype0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/concat/axisConst*
dtype0*
value	B : 
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/concatConcatV2�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/concat/values_0�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/DistributionShape/get_shape/Slice�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/DistributionShape/get_shape/event_shape�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/concat/axis*
T0*
N*

Tidx0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/ReshapeReshape,policy/MultivariateNormalDiag/sample/Reshape�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/concat*
T0*
Tshape0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/rotate_transpose/shiftConst*
valueB :
���������*
dtype0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/rotate_transpose/assert_integer/statically_determined_was_integerNoOp
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/rotate_transpose/transpose/permConst*!
valueB"          *
dtype0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/rotate_transpose/transpose	Transpose�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/Reshape�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/rotate_transpose/transpose/perm*
T0*
Tperm0
�
lpolicy/MultivariateNormalDiag/sample/affine_linear_operator/forward/LinearOperatorDiag/matmul/ExpandDims/dimConst*
valueB :
���������*
dtype0
�
hpolicy/MultivariateNormalDiag/sample/affine_linear_operator/forward/LinearOperatorDiag/matmul/ExpandDims
ExpandDimspolicy/stdevconcatOutput/stdevlpolicy/MultivariateNormalDiag/sample/affine_linear_operator/forward/LinearOperatorDiag/matmul/ExpandDims/dim*

Tdim0*
T0
�
apolicy/MultivariateNormalDiag/sample/affine_linear_operator/forward/LinearOperatorDiag/matmul/mulMulhpolicy/MultivariateNormalDiag/sample/affine_linear_operator/forward/LinearOperatorDiag/matmul/ExpandDims�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/rotate_transpose/transpose*
T0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/rotate_transpose/shiftConst*
value	B :*
dtype0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/rotate_transpose/assert_integer/statically_determined_was_integerNoOp
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/rotate_transpose/transpose/permConst*
dtype0*!
valueB"          
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/rotate_transpose/transpose	Transposeapolicy/MultivariateNormalDiag/sample/affine_linear_operator/forward/LinearOperatorDiag/matmul/mul�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/rotate_transpose/transpose/perm*
T0*
Tperm0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/DistributionShape/get_shape/DistributionShape/get_shape/ndimsConst*
value	B :*
dtype0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/DistributionShape/get_shape/sample_ndimsConst*
value	B :*
dtype0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/zeroConst*
dtype0*
value	B : 
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/ShapeShape�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/rotate_transpose/transpose*
T0*
out_type0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/add/xConst*
value	B : *
dtype0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/addAddV2�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/add/x�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/zero*
T0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/Slice/beginPack�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/add*
T0*

axis *
N
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/Slice/sizePack�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/DistributionShape/get_shape/sample_ndims*
T0*

axis *
N
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/SliceSlice�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/Shape�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/Slice/begin�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/Slice/size*
T0*
Index0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/Shape_1Shape�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/rotate_transpose/transpose*
T0*
out_type0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/add_1/xConst*
value	B : *
dtype0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/add_1AddV2�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/add_1/x�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/DistributionShape/get_shape/sample_ndims*
T0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/Slice_1/beginPack�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/add_1*
N*
T0*

axis 
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/Slice_1/sizePackEpolicy/affine_linear_operator/init/DistributionShape/init/batch_ndims*
T0*

axis *
N
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/Slice_1Slice�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/Shape_1�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/Slice_1/begin�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/Slice_1/size*
T0*
Index0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/event_shapeConst*
valueB:*
dtype0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/concat/axisConst*
value	B : *
dtype0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/concatConcatV2�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape/make_batch_of_event_sample_matrices/DistributionShape/get_shape/sample_shape�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/Slice_1�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/DistributionShape/get_shape/event_shape�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/concat/axis*
T0*
N*

Tidx0
�
�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/ReshapeReshape�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/rotate_transpose/transpose�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/concat*
T0*
Tshape0
�
Gpolicy/MultivariateNormalDiag/sample/affine_linear_operator/forward/addAddV2�policy/MultivariateNormalDiag/sample/affine_linear_operator/forward/DistributionShape_1/undo_make_batch_of_event_sample_matrices/Reshape%policy/policy/fully_connected/BiasAdd*
T0
r
policy/actionSampledIdentityGpolicy/MultivariateNormalDiag/sample/affine_linear_operator/forward/add*
T0
M
policy/actionMeanIdentity%policy/policy/fully_connected/BiasAdd*
T0
<
policy/ConstConst*
valueB:��*
dtype0
6
policy/sizeOfParamsIdentitypolicy/Const*
T0
M
policy/Reshape_1/shapeConst*
valueB:
���������*
dtype0
v
policy/Reshape_1Reshape*extra_encoder/fully_connected/weights/readpolicy/Reshape_1/shape*
T0*
Tshape0
M
policy/Reshape_2/shapeConst*
valueB:
���������*
dtype0
u
policy/Reshape_2Reshape)extra_encoder/fully_connected/biases/readpolicy/Reshape_2/shape*
T0*
Tshape0
M
policy/Reshape_3/shapeConst*
valueB:
���������*
dtype0
o
policy/Reshape_3Reshape#policy/fully_connected/weights/readpolicy/Reshape_3/shape*
T0*
Tshape0
M
policy/Reshape_4/shapeConst*
dtype0*
valueB:
���������
n
policy/Reshape_4Reshape"policy/fully_connected/biases/readpolicy/Reshape_4/shape*
T0*
Tshape0
M
policy/Reshape_5/shapeConst*
valueB:
���������*
dtype0
q
policy/Reshape_5Reshape%policy/fully_connected_1/weights/readpolicy/Reshape_5/shape*
T0*
Tshape0
M
policy/Reshape_6/shapeConst*
dtype0*
valueB:
���������
p
policy/Reshape_6Reshape$policy/fully_connected_1/biases/readpolicy/Reshape_6/shape*
T0*
Tshape0
M
policy/Reshape_7/shapeConst*
valueB:
���������*
dtype0
q
policy/Reshape_7Reshape%policy/fully_connected_2/weights/readpolicy/Reshape_7/shape*
T0*
Tshape0
M
policy/Reshape_8/shapeConst*
dtype0*
valueB:
���������
p
policy/Reshape_8Reshape$policy/fully_connected_2/biases/readpolicy/Reshape_8/shape*
T0*
Tshape0
M
policy/Reshape_9/shapeConst*
valueB:
���������*
dtype0
q
policy/Reshape_9Reshape%policy/fully_connected_3/weights/readpolicy/Reshape_9/shape*
T0*
Tshape0
N
policy/Reshape_10/shapeConst*
dtype0*
valueB:
���������
r
policy/Reshape_10Reshape$policy/fully_connected_3/biases/readpolicy/Reshape_10/shape*
T0*
Tshape0
N
policy/Reshape_11/shapeConst*
valueB:
���������*
dtype0
m
policy/Reshape_11Reshapepolicy/stdevconcatOutput/W/readpolicy/Reshape_11/shape*
T0*
Tshape0
N
policy/params/values_0Packpolicy/Reshape_1*
T0*

axis *
N
N
policy/params/values_1Packpolicy/Reshape_2*
T0*

axis *
N
N
policy/params/values_2Packpolicy/Reshape_3*
T0*

axis *
N
N
policy/params/values_3Packpolicy/Reshape_4*
T0*

axis *
N
N
policy/params/values_4Packpolicy/Reshape_5*
T0*

axis *
N
N
policy/params/values_5Packpolicy/Reshape_6*
T0*

axis *
N
N
policy/params/values_6Packpolicy/Reshape_7*
T0*

axis *
N
N
policy/params/values_7Packpolicy/Reshape_8*
T0*

axis *
N
N
policy/params/values_8Packpolicy/Reshape_9*
T0*

axis *
N
O
policy/params/values_9Packpolicy/Reshape_10*
T0*

axis *
N
P
policy/params/values_10Packpolicy/Reshape_11*
T0*

axis *
N
<
policy/params/axisConst*
value	B :*
dtype0
�
policy/paramsConcatV2policy/params/values_0policy/params/values_1policy/params/values_2policy/params/values_3policy/params/values_4policy/params/values_5policy/params/values_6policy/params/values_7policy/params/values_8policy/params/values_9policy/params/values_10policy/params/axis*
T0*
N*

Tidx0
L
policy/Reshape_12/shapeConst*
dtype0*
valueB"����   
[
policy/Reshape_12Reshapepolicy/paramspolicy/Reshape_12/shape*
T0*
Tshape0
K
 policy/params_assign_placeholderPlaceholder*
dtype0*
shape:
g
policy/Const_1Const*A
value8B6",�  @    �      �  �       @            *
dtype0
@
policy/split/split_dimConst*
value	B :*
dtype0
�
policy/splitSplitV policy/params_assign_placeholderpolicy/Const_1policy/split/split_dim*
T0*

Tlen0*
	num_split
A
policy/ShapeConst*
valueB"O   @   *
dtype0
O
policy/Reshape_13Reshapepolicy/splitpolicy/Shape*
T0*
Tshape0
�
policy/AssignAssign%extra_encoder/fully_connected/weightspolicy/Reshape_13*
use_locking( *
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights*
validate_shape(
<
policy/Shape_1Const*
valueB:@*
dtype0
S
policy/Reshape_14Reshapepolicy/split:1policy/Shape_1*
T0*
Tshape0
�
policy/Assign_1Assign$extra_encoder/fully_connected/biasespolicy/Reshape_14*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases*
validate_shape(*
use_locking( 
C
policy/Shape_2Const*
valueB"�      *
dtype0
S
policy/Reshape_15Reshapepolicy/split:2policy/Shape_2*
T0*
Tshape0
�
policy/Assign_2Assignpolicy/fully_connected/weightspolicy/Reshape_15*
use_locking( *
T0*1
_class'
%#loc:@policy/fully_connected/weights*
validate_shape(
=
policy/Shape_3Const*
valueB:�*
dtype0
S
policy/Reshape_16Reshapepolicy/split:3policy/Shape_3*
T0*
Tshape0
�
policy/Assign_3Assignpolicy/fully_connected/biasespolicy/Reshape_16*
use_locking( *
T0*0
_class&
$"loc:@policy/fully_connected/biases*
validate_shape(
C
policy/Shape_4Const*
valueB"   �   *
dtype0
S
policy/Reshape_17Reshapepolicy/split:4policy/Shape_4*
T0*
Tshape0
�
policy/Assign_4Assign policy/fully_connected_1/weightspolicy/Reshape_17*
T0*3
_class)
'%loc:@policy/fully_connected_1/weights*
validate_shape(*
use_locking( 
=
policy/Shape_5Const*
dtype0*
valueB:�
S
policy/Reshape_18Reshapepolicy/split:5policy/Shape_5*
T0*
Tshape0
�
policy/Assign_5Assignpolicy/fully_connected_1/biasespolicy/Reshape_18*
validate_shape(*
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_1/biases
C
policy/Shape_6Const*
valueB"�   @   *
dtype0
S
policy/Reshape_19Reshapepolicy/split:6policy/Shape_6*
T0*
Tshape0
�
policy/Assign_6Assign policy/fully_connected_2/weightspolicy/Reshape_19*
T0*3
_class)
'%loc:@policy/fully_connected_2/weights*
validate_shape(*
use_locking( 
<
policy/Shape_7Const*
dtype0*
valueB:@
S
policy/Reshape_20Reshapepolicy/split:7policy/Shape_7*
T0*
Tshape0
�
policy/Assign_7Assignpolicy/fully_connected_2/biasespolicy/Reshape_20*
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_2/biases*
validate_shape(
C
policy/Shape_8Const*
valueB"@      *
dtype0
S
policy/Reshape_21Reshapepolicy/split:8policy/Shape_8*
T0*
Tshape0
�
policy/Assign_8Assign policy/fully_connected_3/weightspolicy/Reshape_21*
T0*3
_class)
'%loc:@policy/fully_connected_3/weights*
validate_shape(*
use_locking( 
<
policy/Shape_9Const*
valueB:*
dtype0
S
policy/Reshape_22Reshapepolicy/split:9policy/Shape_9*
T0*
Tshape0
�
policy/Assign_9Assignpolicy/fully_connected_3/biasespolicy/Reshape_22*
validate_shape(*
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_3/biases
D
policy/Shape_10Const*
valueB"      *
dtype0
U
policy/Reshape_23Reshapepolicy/split:10policy/Shape_10*
T0*
Tshape0
�
policy/Assign_10Assignpolicy/stdevconcatOutput/Wpolicy/Reshape_23*
T0*-
_class#
!loc:@policy/stdevconcatOutput/W*
validate_shape(*
use_locking( 
�
policy/params_assign_opNoOp^policy/Assign^policy/Assign_1^policy/Assign_10^policy/Assign_2^policy/Assign_3^policy/Assign_4^policy/Assign_5^policy/Assign_6^policy/Assign_7^policy/Assign_8^policy/Assign_9
�
@valueNet/fully_connected/weights/Initializer/random_normal/shapeConst*3
_class)
'%loc:@valueNet/fully_connected/weights*
valueB"   �   *
dtype0
�
?valueNet/fully_connected/weights/Initializer/random_normal/meanConst*3
_class)
'%loc:@valueNet/fully_connected/weights*
valueB
 *    *
dtype0
�
AvalueNet/fully_connected/weights/Initializer/random_normal/stddevConst*
dtype0*3
_class)
'%loc:@valueNet/fully_connected/weights*
valueB
 *  �?
�
OvalueNet/fully_connected/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal@valueNet/fully_connected/weights/Initializer/random_normal/shape*
dtype0*
seed2 *

seed *
T0*3
_class)
'%loc:@valueNet/fully_connected/weights
�
>valueNet/fully_connected/weights/Initializer/random_normal/mulMulOvalueNet/fully_connected/weights/Initializer/random_normal/RandomStandardNormalAvalueNet/fully_connected/weights/Initializer/random_normal/stddev*
T0*3
_class)
'%loc:@valueNet/fully_connected/weights
�
:valueNet/fully_connected/weights/Initializer/random_normalAdd>valueNet/fully_connected/weights/Initializer/random_normal/mul?valueNet/fully_connected/weights/Initializer/random_normal/mean*
T0*3
_class)
'%loc:@valueNet/fully_connected/weights
�
/valueNet/fully_connected/weights/Initializer/QrQr:valueNet/fully_connected/weights/Initializer/random_normal*
T0*3
_class)
'%loc:@valueNet/fully_connected/weights*
full_matrices( 
�
5valueNet/fully_connected/weights/Initializer/DiagPartDiagPart1valueNet/fully_connected/weights/Initializer/Qr:1*
T0*3
_class)
'%loc:@valueNet/fully_connected/weights
�
1valueNet/fully_connected/weights/Initializer/SignSign5valueNet/fully_connected/weights/Initializer/DiagPart*
T0*3
_class)
'%loc:@valueNet/fully_connected/weights
�
0valueNet/fully_connected/weights/Initializer/mulMul/valueNet/fully_connected/weights/Initializer/Qr1valueNet/fully_connected/weights/Initializer/Sign*
T0*3
_class)
'%loc:@valueNet/fully_connected/weights
�
LvalueNet/fully_connected/weights/Initializer/matrix_transpose/transpose/permConst*3
_class)
'%loc:@valueNet/fully_connected/weights*
valueB"       *
dtype0
�
GvalueNet/fully_connected/weights/Initializer/matrix_transpose/transpose	Transpose0valueNet/fully_connected/weights/Initializer/mulLvalueNet/fully_connected/weights/Initializer/matrix_transpose/transpose/perm*
T0*3
_class)
'%loc:@valueNet/fully_connected/weights*
Tperm0
�
:valueNet/fully_connected/weights/Initializer/Reshape/shapeConst*
dtype0*3
_class)
'%loc:@valueNet/fully_connected/weights*
valueB"�      
�
4valueNet/fully_connected/weights/Initializer/ReshapeReshapeGvalueNet/fully_connected/weights/Initializer/matrix_transpose/transpose:valueNet/fully_connected/weights/Initializer/Reshape/shape*
T0*3
_class)
'%loc:@valueNet/fully_connected/weights*
Tshape0
�
4valueNet/fully_connected/weights/Initializer/mul_1/xConst*3
_class)
'%loc:@valueNet/fully_connected/weights*
valueB
 *  �?*
dtype0
�
2valueNet/fully_connected/weights/Initializer/mul_1Mul4valueNet/fully_connected/weights/Initializer/mul_1/x4valueNet/fully_connected/weights/Initializer/Reshape*
T0*3
_class)
'%loc:@valueNet/fully_connected/weights
�
 valueNet/fully_connected/weights
VariableV2*
shared_name *3
_class)
'%loc:@valueNet/fully_connected/weights*
dtype0*
	container *
shape:
��
�
'valueNet/fully_connected/weights/AssignAssign valueNet/fully_connected/weights2valueNet/fully_connected/weights/Initializer/mul_1*
validate_shape(*
use_locking(*
T0*3
_class)
'%loc:@valueNet/fully_connected/weights
�
%valueNet/fully_connected/weights/readIdentity valueNet/fully_connected/weights*
T0*3
_class)
'%loc:@valueNet/fully_connected/weights
�
Vpolicy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2LossL2Loss%valueNet/fully_connected/weights/read*
T0
�
Opolicy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizerMulCast_2/xVpolicy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0
�
1valueNet/fully_connected/biases/Initializer/zerosConst*2
_class(
&$loc:@valueNet/fully_connected/biases*
valueB�*    *
dtype0
�
valueNet/fully_connected/biases
VariableV2*
shared_name *2
_class(
&$loc:@valueNet/fully_connected/biases*
dtype0*
	container *
shape:�
�
&valueNet/fully_connected/biases/AssignAssignvalueNet/fully_connected/biases1valueNet/fully_connected/biases/Initializer/zeros*
validate_shape(*
use_locking(*
T0*2
_class(
&$loc:@valueNet/fully_connected/biases
�
$valueNet/fully_connected/biases/readIdentityvalueNet/fully_connected/biases*
T0*2
_class(
&$loc:@valueNet/fully_connected/biases
�
4policy/valueNet/hidden_layer0/fully_connected/MatMulMatMul	Reshape_2%valueNet/fully_connected/weights/read*
transpose_b( *
T0*
transpose_a( 
�
5policy/valueNet/hidden_layer0/fully_connected/BiasAddBiasAdd4policy/valueNet/hidden_layer0/fully_connected/MatMul$valueNet/fully_connected/biases/read*
data_formatNHWC*
T0
z
2policy/valueNet/hidden_layer0/fully_connected/TanhTanh5policy/valueNet/hidden_layer0/fully_connected/BiasAdd*
T0
�
BvalueNet/fully_connected_1/weights/Initializer/random_normal/shapeConst*5
_class+
)'loc:@valueNet/fully_connected_1/weights*
valueB"   �   *
dtype0
�
AvalueNet/fully_connected_1/weights/Initializer/random_normal/meanConst*5
_class+
)'loc:@valueNet/fully_connected_1/weights*
valueB
 *    *
dtype0
�
CvalueNet/fully_connected_1/weights/Initializer/random_normal/stddevConst*5
_class+
)'loc:@valueNet/fully_connected_1/weights*
valueB
 *  �?*
dtype0
�
QvalueNet/fully_connected_1/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormalBvalueNet/fully_connected_1/weights/Initializer/random_normal/shape*

seed *
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights*
dtype0*
seed2 
�
@valueNet/fully_connected_1/weights/Initializer/random_normal/mulMulQvalueNet/fully_connected_1/weights/Initializer/random_normal/RandomStandardNormalCvalueNet/fully_connected_1/weights/Initializer/random_normal/stddev*
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights
�
<valueNet/fully_connected_1/weights/Initializer/random_normalAdd@valueNet/fully_connected_1/weights/Initializer/random_normal/mulAvalueNet/fully_connected_1/weights/Initializer/random_normal/mean*
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights
�
1valueNet/fully_connected_1/weights/Initializer/QrQr<valueNet/fully_connected_1/weights/Initializer/random_normal*
full_matrices( *
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights
�
7valueNet/fully_connected_1/weights/Initializer/DiagPartDiagPart3valueNet/fully_connected_1/weights/Initializer/Qr:1*
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights
�
3valueNet/fully_connected_1/weights/Initializer/SignSign7valueNet/fully_connected_1/weights/Initializer/DiagPart*
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights
�
2valueNet/fully_connected_1/weights/Initializer/mulMul1valueNet/fully_connected_1/weights/Initializer/Qr3valueNet/fully_connected_1/weights/Initializer/Sign*
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights
�
<valueNet/fully_connected_1/weights/Initializer/Reshape/shapeConst*
dtype0*5
_class+
)'loc:@valueNet/fully_connected_1/weights*
valueB"   �   
�
6valueNet/fully_connected_1/weights/Initializer/ReshapeReshape2valueNet/fully_connected_1/weights/Initializer/mul<valueNet/fully_connected_1/weights/Initializer/Reshape/shape*
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights*
Tshape0
�
6valueNet/fully_connected_1/weights/Initializer/mul_1/xConst*5
_class+
)'loc:@valueNet/fully_connected_1/weights*
valueB
 *  �?*
dtype0
�
4valueNet/fully_connected_1/weights/Initializer/mul_1Mul6valueNet/fully_connected_1/weights/Initializer/mul_1/x6valueNet/fully_connected_1/weights/Initializer/Reshape*
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights
�
"valueNet/fully_connected_1/weights
VariableV2*
shared_name *5
_class+
)'loc:@valueNet/fully_connected_1/weights*
dtype0*
	container *
shape:
��
�
)valueNet/fully_connected_1/weights/AssignAssign"valueNet/fully_connected_1/weights4valueNet/fully_connected_1/weights/Initializer/mul_1*
use_locking(*
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights*
validate_shape(
�
'valueNet/fully_connected_1/weights/readIdentity"valueNet/fully_connected_1/weights*
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights
�
Vpolicy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2LossL2Loss'valueNet/fully_connected_1/weights/read*
T0
�
Opolicy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizerMulCast_2/xVpolicy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0
�
3valueNet/fully_connected_1/biases/Initializer/zerosConst*4
_class*
(&loc:@valueNet/fully_connected_1/biases*
valueB�*    *
dtype0
�
!valueNet/fully_connected_1/biases
VariableV2*4
_class*
(&loc:@valueNet/fully_connected_1/biases*
dtype0*
	container *
shape:�*
shared_name 
�
(valueNet/fully_connected_1/biases/AssignAssign!valueNet/fully_connected_1/biases3valueNet/fully_connected_1/biases/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@valueNet/fully_connected_1/biases*
validate_shape(
�
&valueNet/fully_connected_1/biases/readIdentity!valueNet/fully_connected_1/biases*
T0*4
_class*
(&loc:@valueNet/fully_connected_1/biases
�
4policy/valueNet/hidden_layer1/fully_connected/MatMulMatMul2policy/valueNet/hidden_layer0/fully_connected/Tanh'valueNet/fully_connected_1/weights/read*
transpose_b( *
T0*
transpose_a( 
�
5policy/valueNet/hidden_layer1/fully_connected/BiasAddBiasAdd4policy/valueNet/hidden_layer1/fully_connected/MatMul&valueNet/fully_connected_1/biases/read*
T0*
data_formatNHWC
z
2policy/valueNet/hidden_layer1/fully_connected/TanhTanh5policy/valueNet/hidden_layer1/fully_connected/BiasAdd*
T0
�
BvalueNet/fully_connected_2/weights/Initializer/random_normal/shapeConst*5
_class+
)'loc:@valueNet/fully_connected_2/weights*
valueB"�   @   *
dtype0
�
AvalueNet/fully_connected_2/weights/Initializer/random_normal/meanConst*5
_class+
)'loc:@valueNet/fully_connected_2/weights*
valueB
 *    *
dtype0
�
CvalueNet/fully_connected_2/weights/Initializer/random_normal/stddevConst*5
_class+
)'loc:@valueNet/fully_connected_2/weights*
valueB
 *  �?*
dtype0
�
QvalueNet/fully_connected_2/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormalBvalueNet/fully_connected_2/weights/Initializer/random_normal/shape*
dtype0*
seed2 *

seed *
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights
�
@valueNet/fully_connected_2/weights/Initializer/random_normal/mulMulQvalueNet/fully_connected_2/weights/Initializer/random_normal/RandomStandardNormalCvalueNet/fully_connected_2/weights/Initializer/random_normal/stddev*
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights
�
<valueNet/fully_connected_2/weights/Initializer/random_normalAdd@valueNet/fully_connected_2/weights/Initializer/random_normal/mulAvalueNet/fully_connected_2/weights/Initializer/random_normal/mean*
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights
�
1valueNet/fully_connected_2/weights/Initializer/QrQr<valueNet/fully_connected_2/weights/Initializer/random_normal*
full_matrices( *
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights
�
7valueNet/fully_connected_2/weights/Initializer/DiagPartDiagPart3valueNet/fully_connected_2/weights/Initializer/Qr:1*
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights
�
3valueNet/fully_connected_2/weights/Initializer/SignSign7valueNet/fully_connected_2/weights/Initializer/DiagPart*
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights
�
2valueNet/fully_connected_2/weights/Initializer/mulMul1valueNet/fully_connected_2/weights/Initializer/Qr3valueNet/fully_connected_2/weights/Initializer/Sign*
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights
�
<valueNet/fully_connected_2/weights/Initializer/Reshape/shapeConst*
dtype0*5
_class+
)'loc:@valueNet/fully_connected_2/weights*
valueB"�   @   
�
6valueNet/fully_connected_2/weights/Initializer/ReshapeReshape2valueNet/fully_connected_2/weights/Initializer/mul<valueNet/fully_connected_2/weights/Initializer/Reshape/shape*
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights*
Tshape0
�
6valueNet/fully_connected_2/weights/Initializer/mul_1/xConst*
dtype0*5
_class+
)'loc:@valueNet/fully_connected_2/weights*
valueB
 *  �?
�
4valueNet/fully_connected_2/weights/Initializer/mul_1Mul6valueNet/fully_connected_2/weights/Initializer/mul_1/x6valueNet/fully_connected_2/weights/Initializer/Reshape*
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights
�
"valueNet/fully_connected_2/weights
VariableV2*
shared_name *5
_class+
)'loc:@valueNet/fully_connected_2/weights*
dtype0*
	container *
shape:	�@
�
)valueNet/fully_connected_2/weights/AssignAssign"valueNet/fully_connected_2/weights4valueNet/fully_connected_2/weights/Initializer/mul_1*
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights*
validate_shape(*
use_locking(
�
'valueNet/fully_connected_2/weights/readIdentity"valueNet/fully_connected_2/weights*
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights
�
Vpolicy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2LossL2Loss'valueNet/fully_connected_2/weights/read*
T0
�
Opolicy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizerMulCast_2/xVpolicy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0
�
3valueNet/fully_connected_2/biases/Initializer/zerosConst*4
_class*
(&loc:@valueNet/fully_connected_2/biases*
valueB@*    *
dtype0
�
!valueNet/fully_connected_2/biases
VariableV2*
dtype0*
	container *
shape:@*
shared_name *4
_class*
(&loc:@valueNet/fully_connected_2/biases
�
(valueNet/fully_connected_2/biases/AssignAssign!valueNet/fully_connected_2/biases3valueNet/fully_connected_2/biases/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@valueNet/fully_connected_2/biases*
validate_shape(
�
&valueNet/fully_connected_2/biases/readIdentity!valueNet/fully_connected_2/biases*
T0*4
_class*
(&loc:@valueNet/fully_connected_2/biases
�
4policy/valueNet/hidden_layer2/fully_connected/MatMulMatMul2policy/valueNet/hidden_layer1/fully_connected/Tanh'valueNet/fully_connected_2/weights/read*
T0*
transpose_a( *
transpose_b( 
�
5policy/valueNet/hidden_layer2/fully_connected/BiasAddBiasAdd4policy/valueNet/hidden_layer2/fully_connected/MatMul&valueNet/fully_connected_2/biases/read*
T0*
data_formatNHWC
z
2policy/valueNet/hidden_layer2/fully_connected/TanhTanh5policy/valueNet/hidden_layer2/fully_connected/BiasAdd*
T0
-
policy/valueNet/NegNegCast_1/x*
T0
�
CvalueNet/fully_connected_3/weights/Initializer/random_uniform/shapeConst*
dtype0*5
_class+
)'loc:@valueNet/fully_connected_3/weights*
valueB"@      
�
KvalueNet/fully_connected_3/weights/Initializer/random_uniform/RandomUniformRandomUniformCvalueNet/fully_connected_3/weights/Initializer/random_uniform/shape*

seed *
T0*5
_class+
)'loc:@valueNet/fully_connected_3/weights*
dtype0*
seed2 
�
AvalueNet/fully_connected_3/weights/Initializer/random_uniform/subSubCast_1/xpolicy/valueNet/Neg*
T0*5
_class+
)'loc:@valueNet/fully_connected_3/weights
�
AvalueNet/fully_connected_3/weights/Initializer/random_uniform/mulMulKvalueNet/fully_connected_3/weights/Initializer/random_uniform/RandomUniformAvalueNet/fully_connected_3/weights/Initializer/random_uniform/sub*
T0*5
_class+
)'loc:@valueNet/fully_connected_3/weights
�
=valueNet/fully_connected_3/weights/Initializer/random_uniformAddAvalueNet/fully_connected_3/weights/Initializer/random_uniform/mulpolicy/valueNet/Neg*
T0*5
_class+
)'loc:@valueNet/fully_connected_3/weights
�
"valueNet/fully_connected_3/weights
VariableV2*
shared_name *5
_class+
)'loc:@valueNet/fully_connected_3/weights*
dtype0*
	container *
shape
:@
�
)valueNet/fully_connected_3/weights/AssignAssign"valueNet/fully_connected_3/weights=valueNet/fully_connected_3/weights/Initializer/random_uniform*
validate_shape(*
use_locking(*
T0*5
_class+
)'loc:@valueNet/fully_connected_3/weights
�
'valueNet/fully_connected_3/weights/readIdentity"valueNet/fully_connected_3/weights*
T0*5
_class+
)'loc:@valueNet/fully_connected_3/weights
�
3valueNet/fully_connected_3/biases/Initializer/ConstConst*4
_class*
(&loc:@valueNet/fully_connected_3/biases*
valueB*    *
dtype0
�
!valueNet/fully_connected_3/biases
VariableV2*
shared_name *4
_class*
(&loc:@valueNet/fully_connected_3/biases*
dtype0*
	container *
shape:
�
(valueNet/fully_connected_3/biases/AssignAssign!valueNet/fully_connected_3/biases3valueNet/fully_connected_3/biases/Initializer/Const*
use_locking(*
T0*4
_class*
(&loc:@valueNet/fully_connected_3/biases*
validate_shape(
�
&valueNet/fully_connected_3/biases/readIdentity!valueNet/fully_connected_3/biases*
T0*4
_class*
(&loc:@valueNet/fully_connected_3/biases
�
&policy/valueNet/fully_connected/MatMulMatMul2policy/valueNet/hidden_layer2/fully_connected/Tanh'valueNet/fully_connected_3/weights/read*
T0*
transpose_a( *
transpose_b( 
�
'policy/valueNet/fully_connected/BiasAddBiasAdd&policy/valueNet/fully_connected/MatMul&valueNet/fully_connected_3/biases/read*
T0*
data_formatNHWC
J
policy/valueIdentity'policy/valueNet/fully_connected/BiasAdd*
T0
E
policy_transfer/ConstConst*
dtype0*
valueB:��
H
policy_transfer/sizeOfParamsIdentitypolicy_transfer/Const*
T0
T
policy_transfer/Reshape/shapeConst*
valueB:
���������*
dtype0
}
policy_transfer/ReshapeReshape#policy/fully_connected/weights/readpolicy_transfer/Reshape/shape*
T0*
Tshape0
V
policy_transfer/Reshape_1/shapeConst*
dtype0*
valueB:
���������
�
policy_transfer/Reshape_1Reshape"policy/fully_connected/biases/readpolicy_transfer/Reshape_1/shape*
T0*
Tshape0
V
policy_transfer/Reshape_2/shapeConst*
valueB:
���������*
dtype0
�
policy_transfer/Reshape_2Reshape%policy/fully_connected_1/weights/readpolicy_transfer/Reshape_2/shape*
T0*
Tshape0
V
policy_transfer/Reshape_3/shapeConst*
valueB:
���������*
dtype0
�
policy_transfer/Reshape_3Reshape$policy/fully_connected_1/biases/readpolicy_transfer/Reshape_3/shape*
T0*
Tshape0
V
policy_transfer/Reshape_4/shapeConst*
valueB:
���������*
dtype0
�
policy_transfer/Reshape_4Reshape%policy/fully_connected_2/weights/readpolicy_transfer/Reshape_4/shape*
T0*
Tshape0
V
policy_transfer/Reshape_5/shapeConst*
valueB:
���������*
dtype0
�
policy_transfer/Reshape_5Reshape$policy/fully_connected_2/biases/readpolicy_transfer/Reshape_5/shape*
T0*
Tshape0
V
policy_transfer/Reshape_6/shapeConst*
dtype0*
valueB:
���������
�
policy_transfer/Reshape_6Reshape%policy/fully_connected_3/weights/readpolicy_transfer/Reshape_6/shape*
T0*
Tshape0
V
policy_transfer/Reshape_7/shapeConst*
dtype0*
valueB:
���������
�
policy_transfer/Reshape_7Reshape$policy/fully_connected_3/biases/readpolicy_transfer/Reshape_7/shape*
T0*
Tshape0
V
policy_transfer/Reshape_8/shapeConst*
dtype0*
valueB:
���������
}
policy_transfer/Reshape_8Reshapepolicy/stdevconcatOutput/W/readpolicy_transfer/Reshape_8/shape*
T0*
Tshape0
^
policy_transfer/params/values_0Packpolicy_transfer/Reshape*
N*
T0*

axis 
`
policy_transfer/params/values_1Packpolicy_transfer/Reshape_1*
N*
T0*

axis 
`
policy_transfer/params/values_2Packpolicy_transfer/Reshape_2*
T0*

axis *
N
`
policy_transfer/params/values_3Packpolicy_transfer/Reshape_3*
T0*

axis *
N
`
policy_transfer/params/values_4Packpolicy_transfer/Reshape_4*
T0*

axis *
N
`
policy_transfer/params/values_5Packpolicy_transfer/Reshape_5*
T0*

axis *
N
`
policy_transfer/params/values_6Packpolicy_transfer/Reshape_6*
T0*

axis *
N
`
policy_transfer/params/values_7Packpolicy_transfer/Reshape_7*
N*
T0*

axis 
`
policy_transfer/params/values_8Packpolicy_transfer/Reshape_8*
N*
T0*

axis 
E
policy_transfer/params/axisConst*
value	B :*
dtype0
�
policy_transfer/paramsConcatV2policy_transfer/params/values_0policy_transfer/params/values_1policy_transfer/params/values_2policy_transfer/params/values_3policy_transfer/params/values_4policy_transfer/params/values_5policy_transfer/params/values_6policy_transfer/params/values_7policy_transfer/params/values_8policy_transfer/params/axis*
T0*
N	*

Tidx0
T
policy_transfer/Reshape_9/shapeConst*
valueB"����   *
dtype0
t
policy_transfer/Reshape_9Reshapepolicy_transfer/paramspolicy_transfer/Reshape_9/shape*
T0*
Tshape0
T
)policy_transfer/params_assign_placeholderPlaceholder*
dtype0*
shape:
h
policy_transfer/Const_1Const*9
value0B.	"$ �      �  �       @            *
dtype0
I
policy_transfer/split/split_dimConst*
dtype0*
value	B :
�
policy_transfer/splitSplitV)policy_transfer/params_assign_placeholderpolicy_transfer/Const_1policy_transfer/split/split_dim*
T0*

Tlen0*
	num_split	
J
policy_transfer/ShapeConst*
valueB"�      *
dtype0
j
policy_transfer/Reshape_10Reshapepolicy_transfer/splitpolicy_transfer/Shape*
T0*
Tshape0
�
policy_transfer/AssignAssignpolicy/fully_connected/weightspolicy_transfer/Reshape_10*
T0*1
_class'
%#loc:@policy/fully_connected/weights*
validate_shape(*
use_locking( 
F
policy_transfer/Shape_1Const*
dtype0*
valueB:�
n
policy_transfer/Reshape_11Reshapepolicy_transfer/split:1policy_transfer/Shape_1*
T0*
Tshape0
�
policy_transfer/Assign_1Assignpolicy/fully_connected/biasespolicy_transfer/Reshape_11*
use_locking( *
T0*0
_class&
$"loc:@policy/fully_connected/biases*
validate_shape(
L
policy_transfer/Shape_2Const*
dtype0*
valueB"   �   
n
policy_transfer/Reshape_12Reshapepolicy_transfer/split:2policy_transfer/Shape_2*
T0*
Tshape0
�
policy_transfer/Assign_2Assign policy/fully_connected_1/weightspolicy_transfer/Reshape_12*
validate_shape(*
use_locking( *
T0*3
_class)
'%loc:@policy/fully_connected_1/weights
F
policy_transfer/Shape_3Const*
valueB:�*
dtype0
n
policy_transfer/Reshape_13Reshapepolicy_transfer/split:3policy_transfer/Shape_3*
T0*
Tshape0
�
policy_transfer/Assign_3Assignpolicy/fully_connected_1/biasespolicy_transfer/Reshape_13*
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_1/biases*
validate_shape(
L
policy_transfer/Shape_4Const*
valueB"�   @   *
dtype0
n
policy_transfer/Reshape_14Reshapepolicy_transfer/split:4policy_transfer/Shape_4*
T0*
Tshape0
�
policy_transfer/Assign_4Assign policy/fully_connected_2/weightspolicy_transfer/Reshape_14*
validate_shape(*
use_locking( *
T0*3
_class)
'%loc:@policy/fully_connected_2/weights
E
policy_transfer/Shape_5Const*
valueB:@*
dtype0
n
policy_transfer/Reshape_15Reshapepolicy_transfer/split:5policy_transfer/Shape_5*
T0*
Tshape0
�
policy_transfer/Assign_5Assignpolicy/fully_connected_2/biasespolicy_transfer/Reshape_15*
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_2/biases*
validate_shape(
L
policy_transfer/Shape_6Const*
valueB"@      *
dtype0
n
policy_transfer/Reshape_16Reshapepolicy_transfer/split:6policy_transfer/Shape_6*
T0*
Tshape0
�
policy_transfer/Assign_6Assign policy/fully_connected_3/weightspolicy_transfer/Reshape_16*
validate_shape(*
use_locking( *
T0*3
_class)
'%loc:@policy/fully_connected_3/weights
E
policy_transfer/Shape_7Const*
valueB:*
dtype0
n
policy_transfer/Reshape_17Reshapepolicy_transfer/split:7policy_transfer/Shape_7*
T0*
Tshape0
�
policy_transfer/Assign_7Assignpolicy/fully_connected_3/biasespolicy_transfer/Reshape_17*
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_3/biases*
validate_shape(
L
policy_transfer/Shape_8Const*
valueB"      *
dtype0
n
policy_transfer/Reshape_18Reshapepolicy_transfer/split:8policy_transfer/Shape_8*
T0*
Tshape0
�
policy_transfer/Assign_8Assignpolicy/stdevconcatOutput/Wpolicy_transfer/Reshape_18*
validate_shape(*
use_locking( *
T0*-
_class#
!loc:@policy/stdevconcatOutput/W
�
 policy_transfer/params_assign_opNoOp^policy_transfer/Assign^policy_transfer/Assign_1^policy_transfer/Assign_2^policy_transfer/Assign_3^policy_transfer/Assign_4^policy_transfer/Assign_5^policy_transfer/Assign_6^policy_transfer/Assign_7^policy_transfer/Assign_8
�
Identity/inputPackMpolicy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizerMpolicy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizerMpolicy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizerOpolicy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizerOpolicy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizerOpolicy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer*
T0*

axis *
N
-
IdentityIdentityIdentity/input*
T0
F
Reshape_3/shapeConst*
valueB:
���������*
dtype0
h
	Reshape_3Reshape*extra_encoder/fully_connected/weights/readReshape_3/shape*
T0*
Tshape0
F
Reshape_4/shapeConst*
valueB:
���������*
dtype0
g
	Reshape_4Reshape)extra_encoder/fully_connected/biases/readReshape_4/shape*
T0*
Tshape0
F
Reshape_5/shapeConst*
dtype0*
valueB:
���������
a
	Reshape_5Reshape#policy/fully_connected/weights/readReshape_5/shape*
T0*
Tshape0
F
Reshape_6/shapeConst*
dtype0*
valueB:
���������
`
	Reshape_6Reshape"policy/fully_connected/biases/readReshape_6/shape*
T0*
Tshape0
F
Reshape_7/shapeConst*
valueB:
���������*
dtype0
c
	Reshape_7Reshape%policy/fully_connected_1/weights/readReshape_7/shape*
T0*
Tshape0
F
Reshape_8/shapeConst*
valueB:
���������*
dtype0
b
	Reshape_8Reshape$policy/fully_connected_1/biases/readReshape_8/shape*
T0*
Tshape0
F
Reshape_9/shapeConst*
dtype0*
valueB:
���������
c
	Reshape_9Reshape%policy/fully_connected_2/weights/readReshape_9/shape*
T0*
Tshape0
G
Reshape_10/shapeConst*
valueB:
���������*
dtype0
d

Reshape_10Reshape$policy/fully_connected_2/biases/readReshape_10/shape*
T0*
Tshape0
G
Reshape_11/shapeConst*
valueB:
���������*
dtype0
e

Reshape_11Reshape%policy/fully_connected_3/weights/readReshape_11/shape*
T0*
Tshape0
G
Reshape_12/shapeConst*
valueB:
���������*
dtype0
d

Reshape_12Reshape$policy/fully_connected_3/biases/readReshape_12/shape*
T0*
Tshape0
G
Reshape_13/shapeConst*
dtype0*
valueB:
���������
_

Reshape_13Reshapepolicy/stdevconcatOutput/W/readReshape_13/shape*
T0*
Tshape0
G
Reshape_14/shapeConst*
valueB:
���������*
dtype0
e

Reshape_14Reshape%valueNet/fully_connected/weights/readReshape_14/shape*
T0*
Tshape0
G
Reshape_15/shapeConst*
valueB:
���������*
dtype0
d

Reshape_15Reshape$valueNet/fully_connected/biases/readReshape_15/shape*
T0*
Tshape0
G
Reshape_16/shapeConst*
valueB:
���������*
dtype0
g

Reshape_16Reshape'valueNet/fully_connected_1/weights/readReshape_16/shape*
T0*
Tshape0
G
Reshape_17/shapeConst*
valueB:
���������*
dtype0
f

Reshape_17Reshape&valueNet/fully_connected_1/biases/readReshape_17/shape*
T0*
Tshape0
G
Reshape_18/shapeConst*
dtype0*
valueB:
���������
g

Reshape_18Reshape'valueNet/fully_connected_2/weights/readReshape_18/shape*
T0*
Tshape0
G
Reshape_19/shapeConst*
valueB:
���������*
dtype0
f

Reshape_19Reshape&valueNet/fully_connected_2/biases/readReshape_19/shape*
T0*
Tshape0
G
Reshape_20/shapeConst*
dtype0*
valueB:
���������
g

Reshape_20Reshape'valueNet/fully_connected_3/weights/readReshape_20/shape*
T0*
Tshape0
G
Reshape_21/shapeConst*
valueB:
���������*
dtype0
f

Reshape_21Reshape&valueNet/fully_connected_3/biases/readReshape_21/shape*
T0*
Tshape0
<
AP/values_0Pack	Reshape_3*
T0*

axis *
N
<
AP/values_1Pack	Reshape_4*
T0*

axis *
N
<
AP/values_2Pack	Reshape_5*
T0*

axis *
N
<
AP/values_3Pack	Reshape_6*
T0*

axis *
N
<
AP/values_4Pack	Reshape_7*
N*
T0*

axis 
<
AP/values_5Pack	Reshape_8*
N*
T0*

axis 
<
AP/values_6Pack	Reshape_9*
N*
T0*

axis 
=
AP/values_7Pack
Reshape_10*
T0*

axis *
N
=
AP/values_8Pack
Reshape_11*
T0*

axis *
N
=
AP/values_9Pack
Reshape_12*
T0*

axis *
N
>
AP/values_10Pack
Reshape_13*
N*
T0*

axis 
>
AP/values_11Pack
Reshape_14*
N*
T0*

axis 
>
AP/values_12Pack
Reshape_15*
N*
T0*

axis 
>
AP/values_13Pack
Reshape_16*
T0*

axis *
N
>
AP/values_14Pack
Reshape_17*
T0*

axis *
N
>
AP/values_15Pack
Reshape_18*
T0*

axis *
N
>
AP/values_16Pack
Reshape_19*
N*
T0*

axis 
>
AP/values_17Pack
Reshape_20*
T0*

axis *
N
>
AP/values_18Pack
Reshape_21*
N*
T0*

axis 
1
AP/axisConst*
value	B :*
dtype0
�
APConcatV2AP/values_0AP/values_1AP/values_2AP/values_3AP/values_4AP/values_5AP/values_6AP/values_7AP/values_8AP/values_9AP/values_10AP/values_11AP/values_12AP/values_13AP/values_14AP/values_15AP/values_16AP/values_17AP/values_18AP/axis*
N*

Tidx0*
T0
E
Reshape_22/shapeConst*
dtype0*
valueB"����   
B

Reshape_22ReshapeAPReshape_22/shape*
T0*
Tshape0
G
Reshape_23/shapeConst*
dtype0*
valueB:
���������
j

Reshape_23Reshape*extra_encoder/fully_connected/weights/readReshape_23/shape*
T0*
Tshape0
G
Reshape_24/shapeConst*
dtype0*
valueB:
���������
i

Reshape_24Reshape)extra_encoder/fully_connected/biases/readReshape_24/shape*
T0*
Tshape0
G
Reshape_25/shapeConst*
valueB:
���������*
dtype0
c

Reshape_25Reshape#policy/fully_connected/weights/readReshape_25/shape*
T0*
Tshape0
G
Reshape_26/shapeConst*
valueB:
���������*
dtype0
b

Reshape_26Reshape"policy/fully_connected/biases/readReshape_26/shape*
T0*
Tshape0
G
Reshape_27/shapeConst*
valueB:
���������*
dtype0
e

Reshape_27Reshape%policy/fully_connected_1/weights/readReshape_27/shape*
T0*
Tshape0
G
Reshape_28/shapeConst*
valueB:
���������*
dtype0
d

Reshape_28Reshape$policy/fully_connected_1/biases/readReshape_28/shape*
T0*
Tshape0
G
Reshape_29/shapeConst*
valueB:
���������*
dtype0
e

Reshape_29Reshape%policy/fully_connected_2/weights/readReshape_29/shape*
T0*
Tshape0
G
Reshape_30/shapeConst*
dtype0*
valueB:
���������
d

Reshape_30Reshape$policy/fully_connected_2/biases/readReshape_30/shape*
T0*
Tshape0
G
Reshape_31/shapeConst*
valueB:
���������*
dtype0
e

Reshape_31Reshape%policy/fully_connected_3/weights/readReshape_31/shape*
T0*
Tshape0
G
Reshape_32/shapeConst*
valueB:
���������*
dtype0
d

Reshape_32Reshape$policy/fully_connected_3/biases/readReshape_32/shape*
T0*
Tshape0
G
Reshape_33/shapeConst*
valueB:
���������*
dtype0
_

Reshape_33Reshapepolicy/stdevconcatOutput/W/readReshape_33/shape*
T0*
Tshape0
G
Reshape_34/shapeConst*
valueB:
���������*
dtype0
e

Reshape_34Reshape%valueNet/fully_connected/weights/readReshape_34/shape*
T0*
Tshape0
G
Reshape_35/shapeConst*
valueB:
���������*
dtype0
d

Reshape_35Reshape$valueNet/fully_connected/biases/readReshape_35/shape*
T0*
Tshape0
G
Reshape_36/shapeConst*
valueB:
���������*
dtype0
g

Reshape_36Reshape'valueNet/fully_connected_1/weights/readReshape_36/shape*
T0*
Tshape0
G
Reshape_37/shapeConst*
dtype0*
valueB:
���������
f

Reshape_37Reshape&valueNet/fully_connected_1/biases/readReshape_37/shape*
T0*
Tshape0
G
Reshape_38/shapeConst*
valueB:
���������*
dtype0
g

Reshape_38Reshape'valueNet/fully_connected_2/weights/readReshape_38/shape*
T0*
Tshape0
G
Reshape_39/shapeConst*
dtype0*
valueB:
���������
f

Reshape_39Reshape&valueNet/fully_connected_2/biases/readReshape_39/shape*
T0*
Tshape0
G
Reshape_40/shapeConst*
valueB:
���������*
dtype0
g

Reshape_40Reshape'valueNet/fully_connected_3/weights/readReshape_40/shape*
T0*
Tshape0
G
Reshape_41/shapeConst*
valueB:
���������*
dtype0
f

Reshape_41Reshape&valueNet/fully_connected_3/biases/readReshape_41/shape*
T0*
Tshape0
=
LP/values_0Pack
Reshape_23*
T0*

axis *
N
=
LP/values_1Pack
Reshape_24*
T0*

axis *
N
=
LP/values_2Pack
Reshape_25*
T0*

axis *
N
=
LP/values_3Pack
Reshape_26*
T0*

axis *
N
=
LP/values_4Pack
Reshape_27*
T0*

axis *
N
=
LP/values_5Pack
Reshape_28*
T0*

axis *
N
=
LP/values_6Pack
Reshape_29*
T0*

axis *
N
=
LP/values_7Pack
Reshape_30*
T0*

axis *
N
=
LP/values_8Pack
Reshape_31*
T0*

axis *
N
=
LP/values_9Pack
Reshape_32*
N*
T0*

axis 
>
LP/values_10Pack
Reshape_33*
T0*

axis *
N
>
LP/values_11Pack
Reshape_34*
T0*

axis *
N
>
LP/values_12Pack
Reshape_35*
N*
T0*

axis 
>
LP/values_13Pack
Reshape_36*
T0*

axis *
N
>
LP/values_14Pack
Reshape_37*
T0*

axis *
N
>
LP/values_15Pack
Reshape_38*
N*
T0*

axis 
>
LP/values_16Pack
Reshape_39*
T0*

axis *
N
>
LP/values_17Pack
Reshape_40*
T0*

axis *
N
>
LP/values_18Pack
Reshape_41*
N*
T0*

axis 
1
LP/axisConst*
value	B :*
dtype0
�
LPConcatV2LP/values_0LP/values_1LP/values_2LP/values_3LP/values_4LP/values_5LP/values_6LP/values_7LP/values_8LP/values_9LP/values_10LP/values_11LP/values_12LP/values_13LP/values_14LP/values_15LP/values_16LP/values_17LP/values_18LP/axis*
T0*
N*

Tidx0
E
Reshape_42/shapeConst*
valueB"����   *
dtype0
B

Reshape_42ReshapeLPReshape_42/shape*
T0*
Tshape0
7
Const_1Const*
dtype0*
valueB:��
(

numberOfAPIdentityConst_1*
T0
7
Const_2Const*
valueB:��*
dtype0
(

numberOfLPIdentityConst_2*
T0
9
AP_placeholderPlaceholder*
dtype0*
shape:
9
LP_placeholderPlaceholder*
shape:*
dtype0
.
tauPlaceholder*
dtype0*
shape:
�
Const_3Const*a
valueXBV"L�  @    �      �  �       @             �      �  �       @   @      *
dtype0
9
split/split_dimConst*
value	B :*
dtype0
_
splitSplitVAP_placeholderConst_3split/split_dim*

Tlen0*
	num_split*
T0
�
Const_4Const*
dtype0*a
valueXBV"L�  @    �      �  �       @             �      �  �       @   @      
;
split_1/split_dimConst*
value	B :*
dtype0
c
split_1SplitVLP_placeholderConst_4split_1/split_dim*
T0*

Tlen0*
	num_split
<
Shape_1Const*
valueB"O   @   *
dtype0
<

Reshape_43ReshapesplitShape_1*
T0*
Tshape0
�
AssignAssign%extra_encoder/fully_connected/weights
Reshape_43*
validate_shape(*
use_locking( *
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights
$
mulMul
Reshape_43tau*
T0
2
sub/xConst*
valueB
 *  �?*
dtype0

subSubsub/xtau*
T0
F
mul_1Mul*extra_encoder/fully_connected/weights/readsub*
T0
!
addAddV2mulmul_1*
T0
�
Assign_1Assign%extra_encoder/fully_connected/weightsadd*
validate_shape(*
use_locking( *
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights
5
Shape_2Const*
valueB:@*
dtype0
>

Reshape_44Reshapesplit:1Shape_2*
T0*
Tshape0
�
Assign_2Assign$extra_encoder/fully_connected/biases
Reshape_44*
validate_shape(*
use_locking( *
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
&
mul_2Mul
Reshape_44tau*
T0
4
sub_1/xConst*
valueB
 *  �?*
dtype0
#
sub_1Subsub_1/xtau*
T0
G
mul_3Mul)extra_encoder/fully_connected/biases/readsub_1*
T0
%
add_1AddV2mul_2mul_3*
T0
�
Assign_3Assign$extra_encoder/fully_connected/biasesadd_1*
use_locking( *
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases*
validate_shape(
<
Shape_3Const*
valueB"�      *
dtype0
>

Reshape_45Reshapesplit:2Shape_3*
T0*
Tshape0
�
Assign_4Assignpolicy/fully_connected/weights
Reshape_45*
use_locking( *
T0*1
_class'
%#loc:@policy/fully_connected/weights*
validate_shape(
&
mul_4Mul
Reshape_45tau*
T0
4
sub_2/xConst*
dtype0*
valueB
 *  �?
#
sub_2Subsub_2/xtau*
T0
A
mul_5Mul#policy/fully_connected/weights/readsub_2*
T0
%
add_2AddV2mul_4mul_5*
T0
�
Assign_5Assignpolicy/fully_connected/weightsadd_2*
use_locking( *
T0*1
_class'
%#loc:@policy/fully_connected/weights*
validate_shape(
6
Shape_4Const*
dtype0*
valueB:�
>

Reshape_46Reshapesplit:3Shape_4*
T0*
Tshape0
�
Assign_6Assignpolicy/fully_connected/biases
Reshape_46*
use_locking( *
T0*0
_class&
$"loc:@policy/fully_connected/biases*
validate_shape(
&
mul_6Mul
Reshape_46tau*
T0
4
sub_3/xConst*
valueB
 *  �?*
dtype0
#
sub_3Subsub_3/xtau*
T0
@
mul_7Mul"policy/fully_connected/biases/readsub_3*
T0
%
add_3AddV2mul_6mul_7*
T0
�
Assign_7Assignpolicy/fully_connected/biasesadd_3*
use_locking( *
T0*0
_class&
$"loc:@policy/fully_connected/biases*
validate_shape(
<
Shape_5Const*
valueB"   �   *
dtype0
>

Reshape_47Reshapesplit:4Shape_5*
T0*
Tshape0
�
Assign_8Assign policy/fully_connected_1/weights
Reshape_47*
validate_shape(*
use_locking( *
T0*3
_class)
'%loc:@policy/fully_connected_1/weights
&
mul_8Mul
Reshape_47tau*
T0
4
sub_4/xConst*
valueB
 *  �?*
dtype0
#
sub_4Subsub_4/xtau*
T0
C
mul_9Mul%policy/fully_connected_1/weights/readsub_4*
T0
%
add_4AddV2mul_8mul_9*
T0
�
Assign_9Assign policy/fully_connected_1/weightsadd_4*
T0*3
_class)
'%loc:@policy/fully_connected_1/weights*
validate_shape(*
use_locking( 
6
Shape_6Const*
valueB:�*
dtype0
>

Reshape_48Reshapesplit:5Shape_6*
T0*
Tshape0
�
	Assign_10Assignpolicy/fully_connected_1/biases
Reshape_48*
validate_shape(*
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_1/biases
'
mul_10Mul
Reshape_48tau*
T0
4
sub_5/xConst*
dtype0*
valueB
 *  �?
#
sub_5Subsub_5/xtau*
T0
C
mul_11Mul$policy/fully_connected_1/biases/readsub_5*
T0
'
add_5AddV2mul_10mul_11*
T0
�
	Assign_11Assignpolicy/fully_connected_1/biasesadd_5*
T0*2
_class(
&$loc:@policy/fully_connected_1/biases*
validate_shape(*
use_locking( 
<
Shape_7Const*
valueB"�   @   *
dtype0
>

Reshape_49Reshapesplit:6Shape_7*
T0*
Tshape0
�
	Assign_12Assign policy/fully_connected_2/weights
Reshape_49*
use_locking( *
T0*3
_class)
'%loc:@policy/fully_connected_2/weights*
validate_shape(
'
mul_12Mul
Reshape_49tau*
T0
4
sub_6/xConst*
valueB
 *  �?*
dtype0
#
sub_6Subsub_6/xtau*
T0
D
mul_13Mul%policy/fully_connected_2/weights/readsub_6*
T0
'
add_6AddV2mul_12mul_13*
T0
�
	Assign_13Assign policy/fully_connected_2/weightsadd_6*
use_locking( *
T0*3
_class)
'%loc:@policy/fully_connected_2/weights*
validate_shape(
5
Shape_8Const*
valueB:@*
dtype0
>

Reshape_50Reshapesplit:7Shape_8*
T0*
Tshape0
�
	Assign_14Assignpolicy/fully_connected_2/biases
Reshape_50*
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_2/biases*
validate_shape(
'
mul_14Mul
Reshape_50tau*
T0
4
sub_7/xConst*
dtype0*
valueB
 *  �?
#
sub_7Subsub_7/xtau*
T0
C
mul_15Mul$policy/fully_connected_2/biases/readsub_7*
T0
'
add_7AddV2mul_14mul_15*
T0
�
	Assign_15Assignpolicy/fully_connected_2/biasesadd_7*
T0*2
_class(
&$loc:@policy/fully_connected_2/biases*
validate_shape(*
use_locking( 
<
Shape_9Const*
dtype0*
valueB"@      
>

Reshape_51Reshapesplit:8Shape_9*
T0*
Tshape0
�
	Assign_16Assign policy/fully_connected_3/weights
Reshape_51*
T0*3
_class)
'%loc:@policy/fully_connected_3/weights*
validate_shape(*
use_locking( 
'
mul_16Mul
Reshape_51tau*
T0
4
sub_8/xConst*
dtype0*
valueB
 *  �?
#
sub_8Subsub_8/xtau*
T0
D
mul_17Mul%policy/fully_connected_3/weights/readsub_8*
T0
'
add_8AddV2mul_16mul_17*
T0
�
	Assign_17Assign policy/fully_connected_3/weightsadd_8*
use_locking( *
T0*3
_class)
'%loc:@policy/fully_connected_3/weights*
validate_shape(
6
Shape_10Const*
valueB:*
dtype0
?

Reshape_52Reshapesplit:9Shape_10*
T0*
Tshape0
�
	Assign_18Assignpolicy/fully_connected_3/biases
Reshape_52*
T0*2
_class(
&$loc:@policy/fully_connected_3/biases*
validate_shape(*
use_locking( 
'
mul_18Mul
Reshape_52tau*
T0
4
sub_9/xConst*
valueB
 *  �?*
dtype0
#
sub_9Subsub_9/xtau*
T0
C
mul_19Mul$policy/fully_connected_3/biases/readsub_9*
T0
'
add_9AddV2mul_18mul_19*
T0
�
	Assign_19Assignpolicy/fully_connected_3/biasesadd_9*
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_3/biases*
validate_shape(
=
Shape_11Const*
valueB"      *
dtype0
@

Reshape_53Reshapesplit:10Shape_11*
T0*
Tshape0
�
	Assign_20Assignpolicy/stdevconcatOutput/W
Reshape_53*
T0*-
_class#
!loc:@policy/stdevconcatOutput/W*
validate_shape(*
use_locking( 
'
mul_20Mul
Reshape_53tau*
T0
5
sub_10/xConst*
valueB
 *  �?*
dtype0
%
sub_10Subsub_10/xtau*
T0
?
mul_21Mulpolicy/stdevconcatOutput/W/readsub_10*
T0
(
add_10AddV2mul_20mul_21*
T0
�
	Assign_21Assignpolicy/stdevconcatOutput/Wadd_10*
use_locking( *
T0*-
_class#
!loc:@policy/stdevconcatOutput/W*
validate_shape(
=
Shape_12Const*
valueB"�      *
dtype0
@

Reshape_54Reshapesplit:11Shape_12*
T0*
Tshape0
�
	Assign_22Assign valueNet/fully_connected/weights
Reshape_54*
use_locking( *
T0*3
_class)
'%loc:@valueNet/fully_connected/weights*
validate_shape(
'
mul_22Mul
Reshape_54tau*
T0
5
sub_11/xConst*
dtype0*
valueB
 *  �?
%
sub_11Subsub_11/xtau*
T0
E
mul_23Mul%valueNet/fully_connected/weights/readsub_11*
T0
(
add_11AddV2mul_22mul_23*
T0
�
	Assign_23Assign valueNet/fully_connected/weightsadd_11*
use_locking( *
T0*3
_class)
'%loc:@valueNet/fully_connected/weights*
validate_shape(
7
Shape_13Const*
valueB:�*
dtype0
@

Reshape_55Reshapesplit:12Shape_13*
T0*
Tshape0
�
	Assign_24AssignvalueNet/fully_connected/biases
Reshape_55*
use_locking( *
T0*2
_class(
&$loc:@valueNet/fully_connected/biases*
validate_shape(
'
mul_24Mul
Reshape_55tau*
T0
5
sub_12/xConst*
dtype0*
valueB
 *  �?
%
sub_12Subsub_12/xtau*
T0
D
mul_25Mul$valueNet/fully_connected/biases/readsub_12*
T0
(
add_12AddV2mul_24mul_25*
T0
�
	Assign_25AssignvalueNet/fully_connected/biasesadd_12*
T0*2
_class(
&$loc:@valueNet/fully_connected/biases*
validate_shape(*
use_locking( 
=
Shape_14Const*
valueB"   �   *
dtype0
@

Reshape_56Reshapesplit:13Shape_14*
T0*
Tshape0
�
	Assign_26Assign"valueNet/fully_connected_1/weights
Reshape_56*
use_locking( *
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights*
validate_shape(
'
mul_26Mul
Reshape_56tau*
T0
5
sub_13/xConst*
valueB
 *  �?*
dtype0
%
sub_13Subsub_13/xtau*
T0
G
mul_27Mul'valueNet/fully_connected_1/weights/readsub_13*
T0
(
add_13AddV2mul_26mul_27*
T0
�
	Assign_27Assign"valueNet/fully_connected_1/weightsadd_13*
use_locking( *
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights*
validate_shape(
7
Shape_15Const*
dtype0*
valueB:�
@

Reshape_57Reshapesplit:14Shape_15*
T0*
Tshape0
�
	Assign_28Assign!valueNet/fully_connected_1/biases
Reshape_57*
use_locking( *
T0*4
_class*
(&loc:@valueNet/fully_connected_1/biases*
validate_shape(
'
mul_28Mul
Reshape_57tau*
T0
5
sub_14/xConst*
dtype0*
valueB
 *  �?
%
sub_14Subsub_14/xtau*
T0
F
mul_29Mul&valueNet/fully_connected_1/biases/readsub_14*
T0
(
add_14AddV2mul_28mul_29*
T0
�
	Assign_29Assign!valueNet/fully_connected_1/biasesadd_14*
T0*4
_class*
(&loc:@valueNet/fully_connected_1/biases*
validate_shape(*
use_locking( 
=
Shape_16Const*
valueB"�   @   *
dtype0
@

Reshape_58Reshapesplit:15Shape_16*
T0*
Tshape0
�
	Assign_30Assign"valueNet/fully_connected_2/weights
Reshape_58*
use_locking( *
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights*
validate_shape(
'
mul_30Mul
Reshape_58tau*
T0
5
sub_15/xConst*
dtype0*
valueB
 *  �?
%
sub_15Subsub_15/xtau*
T0
G
mul_31Mul'valueNet/fully_connected_2/weights/readsub_15*
T0
(
add_15AddV2mul_30mul_31*
T0
�
	Assign_31Assign"valueNet/fully_connected_2/weightsadd_15*
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights*
validate_shape(*
use_locking( 
6
Shape_17Const*
valueB:@*
dtype0
@

Reshape_59Reshapesplit:16Shape_17*
T0*
Tshape0
�
	Assign_32Assign!valueNet/fully_connected_2/biases
Reshape_59*
use_locking( *
T0*4
_class*
(&loc:@valueNet/fully_connected_2/biases*
validate_shape(
'
mul_32Mul
Reshape_59tau*
T0
5
sub_16/xConst*
valueB
 *  �?*
dtype0
%
sub_16Subsub_16/xtau*
T0
F
mul_33Mul&valueNet/fully_connected_2/biases/readsub_16*
T0
(
add_16AddV2mul_32mul_33*
T0
�
	Assign_33Assign!valueNet/fully_connected_2/biasesadd_16*
use_locking( *
T0*4
_class*
(&loc:@valueNet/fully_connected_2/biases*
validate_shape(
=
Shape_18Const*
valueB"@      *
dtype0
@

Reshape_60Reshapesplit:17Shape_18*
T0*
Tshape0
�
	Assign_34Assign"valueNet/fully_connected_3/weights
Reshape_60*
use_locking( *
T0*5
_class+
)'loc:@valueNet/fully_connected_3/weights*
validate_shape(
'
mul_34Mul
Reshape_60tau*
T0
5
sub_17/xConst*
dtype0*
valueB
 *  �?
%
sub_17Subsub_17/xtau*
T0
G
mul_35Mul'valueNet/fully_connected_3/weights/readsub_17*
T0
(
add_17AddV2mul_34mul_35*
T0
�
	Assign_35Assign"valueNet/fully_connected_3/weightsadd_17*
use_locking( *
T0*5
_class+
)'loc:@valueNet/fully_connected_3/weights*
validate_shape(
6
Shape_19Const*
valueB:*
dtype0
@

Reshape_61Reshapesplit:18Shape_19*
T0*
Tshape0
�
	Assign_36Assign!valueNet/fully_connected_3/biases
Reshape_61*
use_locking( *
T0*4
_class*
(&loc:@valueNet/fully_connected_3/biases*
validate_shape(
'
mul_36Mul
Reshape_61tau*
T0
5
sub_18/xConst*
valueB
 *  �?*
dtype0
%
sub_18Subsub_18/xtau*
T0
F
mul_37Mul&valueNet/fully_connected_3/biases/readsub_18*
T0
(
add_18AddV2mul_36mul_37*
T0
�
	Assign_37Assign!valueNet/fully_connected_3/biasesadd_18*
T0*4
_class*
(&loc:@valueNet/fully_connected_3/biases*
validate_shape(*
use_locking( 
=
Shape_20Const*
valueB"O   @   *
dtype0
?

Reshape_62Reshapesplit_1Shape_20*
T0*
Tshape0
�
	Assign_38Assign%extra_encoder/fully_connected/weights
Reshape_62*
validate_shape(*
use_locking( *
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights
'
mul_38Mul
Reshape_62tau*
T0
5
sub_19/xConst*
valueB
 *  �?*
dtype0
%
sub_19Subsub_19/xtau*
T0
J
mul_39Mul*extra_encoder/fully_connected/weights/readsub_19*
T0
(
add_19AddV2mul_38mul_39*
T0
�
	Assign_39Assign%extra_encoder/fully_connected/weightsadd_19*
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights*
validate_shape(*
use_locking( 
6
Shape_21Const*
valueB:@*
dtype0
A

Reshape_63Reshape	split_1:1Shape_21*
T0*
Tshape0
�
	Assign_40Assign$extra_encoder/fully_connected/biases
Reshape_63*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases*
validate_shape(*
use_locking( 
'
mul_40Mul
Reshape_63tau*
T0
5
sub_20/xConst*
valueB
 *  �?*
dtype0
%
sub_20Subsub_20/xtau*
T0
I
mul_41Mul)extra_encoder/fully_connected/biases/readsub_20*
T0
(
add_20AddV2mul_40mul_41*
T0
�
	Assign_41Assign$extra_encoder/fully_connected/biasesadd_20*
use_locking( *
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases*
validate_shape(
=
Shape_22Const*
valueB"�      *
dtype0
A

Reshape_64Reshape	split_1:2Shape_22*
T0*
Tshape0
�
	Assign_42Assignpolicy/fully_connected/weights
Reshape_64*
use_locking( *
T0*1
_class'
%#loc:@policy/fully_connected/weights*
validate_shape(
'
mul_42Mul
Reshape_64tau*
T0
5
sub_21/xConst*
valueB
 *  �?*
dtype0
%
sub_21Subsub_21/xtau*
T0
C
mul_43Mul#policy/fully_connected/weights/readsub_21*
T0
(
add_21AddV2mul_42mul_43*
T0
�
	Assign_43Assignpolicy/fully_connected/weightsadd_21*
use_locking( *
T0*1
_class'
%#loc:@policy/fully_connected/weights*
validate_shape(
7
Shape_23Const*
valueB:�*
dtype0
A

Reshape_65Reshape	split_1:3Shape_23*
T0*
Tshape0
�
	Assign_44Assignpolicy/fully_connected/biases
Reshape_65*
use_locking( *
T0*0
_class&
$"loc:@policy/fully_connected/biases*
validate_shape(
'
mul_44Mul
Reshape_65tau*
T0
5
sub_22/xConst*
valueB
 *  �?*
dtype0
%
sub_22Subsub_22/xtau*
T0
B
mul_45Mul"policy/fully_connected/biases/readsub_22*
T0
(
add_22AddV2mul_44mul_45*
T0
�
	Assign_45Assignpolicy/fully_connected/biasesadd_22*
T0*0
_class&
$"loc:@policy/fully_connected/biases*
validate_shape(*
use_locking( 
=
Shape_24Const*
dtype0*
valueB"   �   
A

Reshape_66Reshape	split_1:4Shape_24*
T0*
Tshape0
�
	Assign_46Assign policy/fully_connected_1/weights
Reshape_66*
use_locking( *
T0*3
_class)
'%loc:@policy/fully_connected_1/weights*
validate_shape(
'
mul_46Mul
Reshape_66tau*
T0
5
sub_23/xConst*
valueB
 *  �?*
dtype0
%
sub_23Subsub_23/xtau*
T0
E
mul_47Mul%policy/fully_connected_1/weights/readsub_23*
T0
(
add_23AddV2mul_46mul_47*
T0
�
	Assign_47Assign policy/fully_connected_1/weightsadd_23*
use_locking( *
T0*3
_class)
'%loc:@policy/fully_connected_1/weights*
validate_shape(
7
Shape_25Const*
valueB:�*
dtype0
A

Reshape_67Reshape	split_1:5Shape_25*
T0*
Tshape0
�
	Assign_48Assignpolicy/fully_connected_1/biases
Reshape_67*
validate_shape(*
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_1/biases
'
mul_48Mul
Reshape_67tau*
T0
5
sub_24/xConst*
valueB
 *  �?*
dtype0
%
sub_24Subsub_24/xtau*
T0
D
mul_49Mul$policy/fully_connected_1/biases/readsub_24*
T0
(
add_24AddV2mul_48mul_49*
T0
�
	Assign_49Assignpolicy/fully_connected_1/biasesadd_24*
validate_shape(*
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_1/biases
=
Shape_26Const*
valueB"�   @   *
dtype0
A

Reshape_68Reshape	split_1:6Shape_26*
T0*
Tshape0
�
	Assign_50Assign policy/fully_connected_2/weights
Reshape_68*
T0*3
_class)
'%loc:@policy/fully_connected_2/weights*
validate_shape(*
use_locking( 
'
mul_50Mul
Reshape_68tau*
T0
5
sub_25/xConst*
valueB
 *  �?*
dtype0
%
sub_25Subsub_25/xtau*
T0
E
mul_51Mul%policy/fully_connected_2/weights/readsub_25*
T0
(
add_25AddV2mul_50mul_51*
T0
�
	Assign_51Assign policy/fully_connected_2/weightsadd_25*
use_locking( *
T0*3
_class)
'%loc:@policy/fully_connected_2/weights*
validate_shape(
6
Shape_27Const*
valueB:@*
dtype0
A

Reshape_69Reshape	split_1:7Shape_27*
T0*
Tshape0
�
	Assign_52Assignpolicy/fully_connected_2/biases
Reshape_69*
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_2/biases*
validate_shape(
'
mul_52Mul
Reshape_69tau*
T0
5
sub_26/xConst*
dtype0*
valueB
 *  �?
%
sub_26Subsub_26/xtau*
T0
D
mul_53Mul$policy/fully_connected_2/biases/readsub_26*
T0
(
add_26AddV2mul_52mul_53*
T0
�
	Assign_53Assignpolicy/fully_connected_2/biasesadd_26*
T0*2
_class(
&$loc:@policy/fully_connected_2/biases*
validate_shape(*
use_locking( 
=
Shape_28Const*
valueB"@      *
dtype0
A

Reshape_70Reshape	split_1:8Shape_28*
T0*
Tshape0
�
	Assign_54Assign policy/fully_connected_3/weights
Reshape_70*
T0*3
_class)
'%loc:@policy/fully_connected_3/weights*
validate_shape(*
use_locking( 
'
mul_54Mul
Reshape_70tau*
T0
5
sub_27/xConst*
dtype0*
valueB
 *  �?
%
sub_27Subsub_27/xtau*
T0
E
mul_55Mul%policy/fully_connected_3/weights/readsub_27*
T0
(
add_27AddV2mul_54mul_55*
T0
�
	Assign_55Assign policy/fully_connected_3/weightsadd_27*
T0*3
_class)
'%loc:@policy/fully_connected_3/weights*
validate_shape(*
use_locking( 
6
Shape_29Const*
valueB:*
dtype0
A

Reshape_71Reshape	split_1:9Shape_29*
T0*
Tshape0
�
	Assign_56Assignpolicy/fully_connected_3/biases
Reshape_71*
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_3/biases*
validate_shape(
'
mul_56Mul
Reshape_71tau*
T0
5
sub_28/xConst*
valueB
 *  �?*
dtype0
%
sub_28Subsub_28/xtau*
T0
D
mul_57Mul$policy/fully_connected_3/biases/readsub_28*
T0
(
add_28AddV2mul_56mul_57*
T0
�
	Assign_57Assignpolicy/fully_connected_3/biasesadd_28*
T0*2
_class(
&$loc:@policy/fully_connected_3/biases*
validate_shape(*
use_locking( 
=
Shape_30Const*
valueB"      *
dtype0
B

Reshape_72Reshape
split_1:10Shape_30*
T0*
Tshape0
�
	Assign_58Assignpolicy/stdevconcatOutput/W
Reshape_72*
use_locking( *
T0*-
_class#
!loc:@policy/stdevconcatOutput/W*
validate_shape(
'
mul_58Mul
Reshape_72tau*
T0
5
sub_29/xConst*
dtype0*
valueB
 *  �?
%
sub_29Subsub_29/xtau*
T0
?
mul_59Mulpolicy/stdevconcatOutput/W/readsub_29*
T0
(
add_29AddV2mul_58mul_59*
T0
�
	Assign_59Assignpolicy/stdevconcatOutput/Wadd_29*
use_locking( *
T0*-
_class#
!loc:@policy/stdevconcatOutput/W*
validate_shape(
=
Shape_31Const*
valueB"�      *
dtype0
B

Reshape_73Reshape
split_1:11Shape_31*
T0*
Tshape0
�
	Assign_60Assign valueNet/fully_connected/weights
Reshape_73*
use_locking( *
T0*3
_class)
'%loc:@valueNet/fully_connected/weights*
validate_shape(
'
mul_60Mul
Reshape_73tau*
T0
5
sub_30/xConst*
valueB
 *  �?*
dtype0
%
sub_30Subsub_30/xtau*
T0
E
mul_61Mul%valueNet/fully_connected/weights/readsub_30*
T0
(
add_30AddV2mul_60mul_61*
T0
�
	Assign_61Assign valueNet/fully_connected/weightsadd_30*
T0*3
_class)
'%loc:@valueNet/fully_connected/weights*
validate_shape(*
use_locking( 
7
Shape_32Const*
valueB:�*
dtype0
B

Reshape_74Reshape
split_1:12Shape_32*
T0*
Tshape0
�
	Assign_62AssignvalueNet/fully_connected/biases
Reshape_74*
use_locking( *
T0*2
_class(
&$loc:@valueNet/fully_connected/biases*
validate_shape(
'
mul_62Mul
Reshape_74tau*
T0
5
sub_31/xConst*
valueB
 *  �?*
dtype0
%
sub_31Subsub_31/xtau*
T0
D
mul_63Mul$valueNet/fully_connected/biases/readsub_31*
T0
(
add_31AddV2mul_62mul_63*
T0
�
	Assign_63AssignvalueNet/fully_connected/biasesadd_31*
T0*2
_class(
&$loc:@valueNet/fully_connected/biases*
validate_shape(*
use_locking( 
=
Shape_33Const*
valueB"   �   *
dtype0
B

Reshape_75Reshape
split_1:13Shape_33*
T0*
Tshape0
�
	Assign_64Assign"valueNet/fully_connected_1/weights
Reshape_75*
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights*
validate_shape(*
use_locking( 
'
mul_64Mul
Reshape_75tau*
T0
5
sub_32/xConst*
dtype0*
valueB
 *  �?
%
sub_32Subsub_32/xtau*
T0
G
mul_65Mul'valueNet/fully_connected_1/weights/readsub_32*
T0
(
add_32AddV2mul_64mul_65*
T0
�
	Assign_65Assign"valueNet/fully_connected_1/weightsadd_32*
validate_shape(*
use_locking( *
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights
7
Shape_34Const*
valueB:�*
dtype0
B

Reshape_76Reshape
split_1:14Shape_34*
T0*
Tshape0
�
	Assign_66Assign!valueNet/fully_connected_1/biases
Reshape_76*
validate_shape(*
use_locking( *
T0*4
_class*
(&loc:@valueNet/fully_connected_1/biases
'
mul_66Mul
Reshape_76tau*
T0
5
sub_33/xConst*
valueB
 *  �?*
dtype0
%
sub_33Subsub_33/xtau*
T0
F
mul_67Mul&valueNet/fully_connected_1/biases/readsub_33*
T0
(
add_33AddV2mul_66mul_67*
T0
�
	Assign_67Assign!valueNet/fully_connected_1/biasesadd_33*
use_locking( *
T0*4
_class*
(&loc:@valueNet/fully_connected_1/biases*
validate_shape(
=
Shape_35Const*
valueB"�   @   *
dtype0
B

Reshape_77Reshape
split_1:15Shape_35*
T0*
Tshape0
�
	Assign_68Assign"valueNet/fully_connected_2/weights
Reshape_77*
validate_shape(*
use_locking( *
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights
'
mul_68Mul
Reshape_77tau*
T0
5
sub_34/xConst*
valueB
 *  �?*
dtype0
%
sub_34Subsub_34/xtau*
T0
G
mul_69Mul'valueNet/fully_connected_2/weights/readsub_34*
T0
(
add_34AddV2mul_68mul_69*
T0
�
	Assign_69Assign"valueNet/fully_connected_2/weightsadd_34*
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights*
validate_shape(*
use_locking( 
6
Shape_36Const*
valueB:@*
dtype0
B

Reshape_78Reshape
split_1:16Shape_36*
T0*
Tshape0
�
	Assign_70Assign!valueNet/fully_connected_2/biases
Reshape_78*
use_locking( *
T0*4
_class*
(&loc:@valueNet/fully_connected_2/biases*
validate_shape(
'
mul_70Mul
Reshape_78tau*
T0
5
sub_35/xConst*
dtype0*
valueB
 *  �?
%
sub_35Subsub_35/xtau*
T0
F
mul_71Mul&valueNet/fully_connected_2/biases/readsub_35*
T0
(
add_35AddV2mul_70mul_71*
T0
�
	Assign_71Assign!valueNet/fully_connected_2/biasesadd_35*
use_locking( *
T0*4
_class*
(&loc:@valueNet/fully_connected_2/biases*
validate_shape(
=
Shape_37Const*
valueB"@      *
dtype0
B

Reshape_79Reshape
split_1:17Shape_37*
T0*
Tshape0
�
	Assign_72Assign"valueNet/fully_connected_3/weights
Reshape_79*
T0*5
_class+
)'loc:@valueNet/fully_connected_3/weights*
validate_shape(*
use_locking( 
'
mul_72Mul
Reshape_79tau*
T0
5
sub_36/xConst*
dtype0*
valueB
 *  �?
%
sub_36Subsub_36/xtau*
T0
G
mul_73Mul'valueNet/fully_connected_3/weights/readsub_36*
T0
(
add_36AddV2mul_72mul_73*
T0
�
	Assign_73Assign"valueNet/fully_connected_3/weightsadd_36*
T0*5
_class+
)'loc:@valueNet/fully_connected_3/weights*
validate_shape(*
use_locking( 
6
Shape_38Const*
valueB:*
dtype0
B

Reshape_80Reshape
split_1:18Shape_38*
T0*
Tshape0
�
	Assign_74Assign!valueNet/fully_connected_3/biases
Reshape_80*
use_locking( *
T0*4
_class*
(&loc:@valueNet/fully_connected_3/biases*
validate_shape(
'
mul_74Mul
Reshape_80tau*
T0
5
sub_37/xConst*
valueB
 *  �?*
dtype0
%
sub_37Subsub_37/xtau*
T0
F
mul_75Mul&valueNet/fully_connected_3/biases/readsub_37*
T0
(
add_37AddV2mul_74mul_75*
T0
�
	Assign_75Assign!valueNet/fully_connected_3/biasesadd_37*
validate_shape(*
use_locking( *
T0*4
_class*
(&loc:@valueNet/fully_connected_3/biases
�
assignAPNoOp^Assign
^Assign_10
^Assign_12
^Assign_14
^Assign_16
^Assign_18	^Assign_2
^Assign_20
^Assign_22
^Assign_24
^Assign_26
^Assign_28
^Assign_30
^Assign_32
^Assign_34
^Assign_36	^Assign_4	^Assign_6	^Assign_8
�
assignLPNoOp
^Assign_38
^Assign_40
^Assign_42
^Assign_44
^Assign_46
^Assign_48
^Assign_50
^Assign_52
^Assign_54
^Assign_56
^Assign_58
^Assign_60
^Assign_62
^Assign_64
^Assign_66
^Assign_68
^Assign_70
^Assign_72
^Assign_74
�
interpolateAPNoOp	^Assign_1
^Assign_11
^Assign_13
^Assign_15
^Assign_17
^Assign_19
^Assign_21
^Assign_23
^Assign_25
^Assign_27
^Assign_29	^Assign_3
^Assign_31
^Assign_33
^Assign_35
^Assign_37	^Assign_5	^Assign_7	^Assign_9
�
interpolateLPNoOp
^Assign_39
^Assign_41
^Assign_43
^Assign_45
^Assign_47
^Assign_49
^Assign_51
^Assign_53
^Assign_55
^Assign_57
^Assign_59
^Assign_61
^Assign_63
^Assign_65
^Assign_67
^Assign_69
^Assign_71
^Assign_73
^Assign_75
C
global_step/initial_valueConst*
value	B : *
dtype0
W
global_step
VariableV2*
dtype0*
	container *
shape: *
shared_name 
�
global_step/AssignAssignglobal_stepglobal_step/initial_value*
T0*
_class
loc:@global_step*
validate_shape(*
use_locking(
R
global_step/readIdentityglobal_step*
T0*
_class
loc:@global_step
B
trainingOptions/ConstConst*
valueB
 *  �B*
dtype0
i
trainingOptions/max_grad_norm
VariableV2*
dtype0*
	container *
shape: *
shared_name 
�
$trainingOptions/max_grad_norm/AssignAssigntrainingOptions/max_grad_normtrainingOptions/Const*
validate_shape(*
use_locking(*
T0*0
_class&
$"loc:@trainingOptions/max_grad_norm
�
"trainingOptions/max_grad_norm/readIdentitytrainingOptions/max_grad_norm*
T0*0
_class&
$"loc:@trainingOptions/max_grad_norm
D
trainingOptions/Const_1Const*
valueB
 *o�:*
dtype0
b
trainingOptions/InitLR
VariableV2*
shared_name *
dtype0*
	container *
shape: 
�
trainingOptions/InitLR/AssignAssigntrainingOptions/InitLRtrainingOptions/Const_1*
T0*)
_class
loc:@trainingOptions/InitLR*
validate_shape(*
use_locking(
s
trainingOptions/InitLR/readIdentitytrainingOptions/InitLR*
T0*)
_class
loc:@trainingOptions/InitLR
D
trainingOptions/Const_2Const*
valueB
 *�<*
dtype0
a
trainingOptions/MinLR
VariableV2*
shape: *
shared_name *
dtype0*
	container 
�
trainingOptions/MinLR/AssignAssigntrainingOptions/MinLRtrainingOptions/Const_2*
validate_shape(*
use_locking(*
T0*(
_class
loc:@trainingOptions/MinLR
p
trainingOptions/MinLR/readIdentitytrainingOptions/MinLR*
T0*(
_class
loc:@trainingOptions/MinLR
D
trainingOptions/Const_3Const*
valueB
 *  �?*
dtype0
g
trainingOptions/DecayRateLR
VariableV2*
dtype0*
	container *
shape: *
shared_name 
�
"trainingOptions/DecayRateLR/AssignAssigntrainingOptions/DecayRateLRtrainingOptions/Const_3*
use_locking(*
T0*.
_class$
" loc:@trainingOptions/DecayRateLR*
validate_shape(
�
 trainingOptions/DecayRateLR/readIdentitytrainingOptions/DecayRateLR*
T0*.
_class$
" loc:@trainingOptions/DecayRateLR
A
trainingOptions/Const_4Const*
value	B :*
dtype0
g
trainingOptions/DecayStepLR
VariableV2*
shape: *
shared_name *
dtype0*
	container 
�
"trainingOptions/DecayStepLR/AssignAssigntrainingOptions/DecayStepLRtrainingOptions/Const_4*
T0*.
_class$
" loc:@trainingOptions/DecayStepLR*
validate_shape(*
use_locking(
�
 trainingOptions/DecayStepLR/readIdentitytrainingOptions/DecayStepLR*
T0*.
_class$
" loc:@trainingOptions/DecayStepLR
w
%trainingOptions/ExponentialDecay/CastCast trainingOptions/DecayStepLR/read*
Truncate( *

DstT0*

SrcT0
d
'trainingOptions/ExponentialDecay/Cast_2Castglobal_step*
Truncate( *

DstT0*

SrcT0
�
(trainingOptions/ExponentialDecay/truedivRealDiv'trainingOptions/ExponentialDecay/Cast_2%trainingOptions/ExponentialDecay/Cast*
T0
�
$trainingOptions/ExponentialDecay/PowPow trainingOptions/DecayRateLR/read(trainingOptions/ExponentialDecay/truediv*
T0
s
 trainingOptions/ExponentialDecayMultrainingOptions/InitLR/read$trainingOptions/ExponentialDecay/Pow*
T0
d
trainingOptions/LRMaximum trainingOptions/ExponentialDecaytrainingOptions/MinLR/read*
T0
C
trainingOptions/trainingPlaceholder*
dtype0
*
shape:
F
trainingOptions/Reshape/shapeConst*
valueB *
dtype0
r
trainingOptions/ReshapeReshapetrainingOptions/trainingtrainingOptions/Reshape/shape*
T0
*
Tshape0
D
trainingOptions/Const_5Const*
valueB
 *��L>*
dtype0
h
trainingOptions/dropout_rate
VariableV2*
shared_name *
dtype0*
	container *
shape: 
�
#trainingOptions/dropout_rate/AssignAssigntrainingOptions/dropout_ratetrainingOptions/Const_5*
use_locking(*
T0*/
_class%
#!loc:@trainingOptions/dropout_rate*
validate_shape(
�
!trainingOptions/dropout_rate/readIdentitytrainingOptions/dropout_rate*
T0*/
_class%
#!loc:@trainingOptions/dropout_rate
Y
(trainingOptions/param_assign_placeholderPlaceholder*
shape
:*
dtype0
]
,trainingOptions/param_assign_placeholder_intPlaceholder*
shape
:*
dtype0
9
Reshape_81/shapeConst*
valueB *
dtype0
h

Reshape_81Reshape(trainingOptions/param_assign_placeholderReshape_81/shape*
T0*
Tshape0
�
InitLR_assignAssigntrainingOptions/InitLR
Reshape_81*
validate_shape(*
use_locking(*
T0*)
_class
loc:@trainingOptions/InitLR
9
Reshape_82/shapeConst*
valueB *
dtype0
h

Reshape_82Reshape(trainingOptions/param_assign_placeholderReshape_82/shape*
T0*
Tshape0
�
MinLR_assignAssigntrainingOptions/MinLR
Reshape_82*
use_locking(*
T0*(
_class
loc:@trainingOptions/MinLR*
validate_shape(
9
Reshape_83/shapeConst*
valueB *
dtype0
h

Reshape_83Reshape(trainingOptions/param_assign_placeholderReshape_83/shape*
T0*
Tshape0
�
DecayRateLR_assignAssigntrainingOptions/DecayRateLR
Reshape_83*
use_locking(*
T0*.
_class$
" loc:@trainingOptions/DecayRateLR*
validate_shape(
9
Reshape_84/shapeConst*
valueB *
dtype0
l

Reshape_84Reshape,trainingOptions/param_assign_placeholder_intReshape_84/shape*
T0*
Tshape0
�
DecayStepLR_assignAssigntrainingOptions/DecayStepLR
Reshape_84*
T0*.
_class$
" loc:@trainingOptions/DecayStepLR*
validate_shape(*
use_locking(
9
Reshape_85/shapeConst*
valueB *
dtype0
h

Reshape_85Reshape(trainingOptions/param_assign_placeholderReshape_85/shape*
T0*
Tshape0
�
max_norm_assignAssigntrainingOptions/max_grad_norm
Reshape_85*
use_locking(*
T0*0
_class&
$"loc:@trainingOptions/max_grad_norm*
validate_shape(
9
Reshape_86/shapeConst*
valueB *
dtype0
h

Reshape_86Reshape(trainingOptions/param_assign_placeholderReshape_86/shape*
T0*
Tshape0
�
dropout_rate_assignAssigntrainingOptions/dropout_rate
Reshape_86*
validate_shape(*
use_locking(*
T0*/
_class%
#!loc:@trainingOptions/dropout_rate
A
reset_global_step/valueConst*
value	B : *
dtype0
�
reset_global_stepAssignglobal_stepreset_global_step/value*
validate_shape(*
use_locking(*
T0*
_class
loc:@global_step
2
add_38/yConst*
value	B :*
dtype0
4
add_38AddV2global_step/readadd_38/y*
T0
�
increment_global_stepAssignglobal_stepadd_38*
T0*
_class
loc:@global_step*
validate_shape(*
use_locking(
2
tangentPlaceholder*
dtype0*
shape:
I
param_assign_placeholderPlaceholder*
dtype0*
shape
:
M
param_assign_placeholder_intPlaceholder*
dtype0*
shape
:
4
Const_5Const*
valueB
 *��L>*
dtype0
T
ClipRate
VariableV2*
dtype0*
	container *
shape: *
shared_name 
{
ClipRate/AssignAssignClipRateConst_5*
use_locking(*
T0*
_class
loc:@ClipRate*
validate_shape(
I
ClipRate/readIdentityClipRate*
T0*
_class
loc:@ClipRate
9
Reshape_87/shapeConst*
valueB *
dtype0
X

Reshape_87Reshapeparam_assign_placeholderReshape_87/shape*
T0*
Tshape0
~
ClipRate_assignAssignClipRate
Reshape_87*
T0*
_class
loc:@ClipRate*
validate_shape(*
use_locking(
4
Const_6Const*
dtype0*
valueB
 *��L>
Y
ValueClipRate
VariableV2*
shape: *
shared_name *
dtype0*
	container 
�
ValueClipRate/AssignAssignValueClipRateConst_6*
use_locking(*
T0* 
_class
loc:@ValueClipRate*
validate_shape(
X
ValueClipRate/readIdentityValueClipRate*
T0* 
_class
loc:@ValueClipRate
9
Reshape_88/shapeConst*
valueB *
dtype0
X

Reshape_88Reshapeparam_assign_placeholderReshape_88/shape*
T0*
Tshape0
�
ValueClipRate_assignAssignValueClipRate
Reshape_88*
use_locking(*
T0* 
_class
loc:@ValueClipRate*
validate_shape(
4
Const_7Const*
valueB
 *o�:*
dtype0
X
EntropyParam
VariableV2*
shape: *
shared_name *
dtype0*
	container 
�
EntropyParam/AssignAssignEntropyParamConst_7*
use_locking(*
T0*
_class
loc:@EntropyParam*
validate_shape(
U
EntropyParam/readIdentityEntropyParam*
T0*
_class
loc:@EntropyParam
9
Reshape_89/shapeConst*
valueB *
dtype0
X

Reshape_89Reshapeparam_assign_placeholderReshape_89/shape*
T0*
Tshape0
�
EntropyParam_assignAssignEntropyParam
Reshape_89*
use_locking(*
T0*
_class
loc:@EntropyParam*
validate_shape(
9
dagger/ShapeShape	Reshape_1*
T0*
out_type0
H
dagger/strided_slice/stackConst*
valueB:*
dtype0
J
dagger/strided_slice/stack_1Const*
valueB:*
dtype0
J
dagger/strided_slice/stack_2Const*
valueB:*
dtype0
�
dagger/strided_sliceStridedSlicedagger/Shapedagger/strided_slice/stackdagger/strided_slice/stack_1dagger/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
T0*
Index0*
shrink_axis_mask
;
dagger/mask/ConstConst*
value	B : *
dtype0
=
dagger/mask/Const_1Const*
value	B :*
dtype0
d
dagger/mask/RangeRangedagger/mask/Constdagger/strided_slicedagger/mask/Const_1*

Tidx0
M
dagger/mask/ExpandDims/dimConst*
valueB :
���������*
dtype0
\
dagger/mask/ExpandDims
ExpandDimsConstdagger/mask/ExpandDims/dim*

Tdim0*
T0
X
dagger/mask/CastCastdagger/mask/ExpandDims*

SrcT0*
Truncate( *

DstT0
F
dagger/mask/LessLessdagger/mask/Rangedagger/mask/Cast*
T0
P
dagger/param_assign_placeholderPlaceholder*
dtype0*
shape
:
T
#dagger/param_assign_placeholder_intPlaceholder*
dtype0*
shape
:
9
dagger/ConstConst*
valueB
 *o�:*
dtype0
_
dagger/learningRate
VariableV2*
shared_name *
dtype0*
	container *
shape: 
�
dagger/learningRate/AssignAssigndagger/learningRatedagger/Const*
validate_shape(*
use_locking(*
T0*&
_class
loc:@dagger/learningRate
j
dagger/learningRate/readIdentitydagger/learningRate*
T0*&
_class
loc:@dagger/learningRate
;
dagger/Const_1Const*
valueB
 *  �?*
dtype0
^
dagger/DecayRateLR
VariableV2*
shape: *
shared_name *
dtype0*
	container 
�
dagger/DecayRateLR/AssignAssigndagger/DecayRateLRdagger/Const_1*
use_locking(*
T0*%
_class
loc:@dagger/DecayRateLR*
validate_shape(
g
dagger/DecayRateLR/readIdentitydagger/DecayRateLR*
T0*%
_class
loc:@dagger/DecayRateLR
8
dagger/Const_2Const*
value	B :*
dtype0
^
dagger/DecayStepLR
VariableV2*
shape: *
shared_name *
dtype0*
	container 
�
dagger/DecayStepLR/AssignAssigndagger/DecayStepLRdagger/Const_2*
use_locking(*
T0*%
_class
loc:@dagger/DecayStepLR*
validate_shape(
g
dagger/DecayStepLR/readIdentitydagger/DecayStepLR*
T0*%
_class
loc:@dagger/DecayStepLR
J
 dagger/global_step/initial_valueConst*
value	B : *
dtype0
^
dagger/global_step
VariableV2*
shared_name *
dtype0*
	container *
shape: 
�
dagger/global_step/AssignAssigndagger/global_step dagger/global_step/initial_value*
use_locking(*
T0*%
_class
loc:@dagger/global_step*
validate_shape(
g
dagger/global_step/readIdentitydagger/global_step*
T0*%
_class
loc:@dagger/global_step
W
dagger/LR/CastCastdagger/DecayStepLR/read*

SrcT0*
Truncate( *

DstT0
Y
dagger/LR/Cast_2Castdagger/global_step/read*

SrcT0*
Truncate( *

DstT0
G
dagger/LR/truedivRealDivdagger/LR/Cast_2dagger/LR/Cast*
T0
I
dagger/LR/PowPowdagger/DecayRateLR/readdagger/LR/truediv*
T0
B
	dagger/LRMuldagger/learningRate/readdagger/LR/Pow*
T0
=
dagger/Reshape/shapeConst*
valueB *
dtype0
g
dagger/ReshapeReshapedagger/param_assign_placeholderdagger/Reshape/shape*
T0*
Tshape0
�
dagger/DecayRateLR_assignAssigndagger/DecayRateLRdagger/Reshape*
T0*%
_class
loc:@dagger/DecayRateLR*
validate_shape(*
use_locking(
?
dagger/Reshape_1/shapeConst*
valueB *
dtype0
o
dagger/Reshape_1Reshape#dagger/param_assign_placeholder_intdagger/Reshape_1/shape*
T0*
Tshape0
�
dagger/DecayStepLR_assignAssigndagger/DecayStepLRdagger/Reshape_1*
use_locking(*
T0*%
_class
loc:@dagger/DecayStepLR*
validate_shape(
?
dagger/Reshape_2/shapeConst*
valueB *
dtype0
k
dagger/Reshape_2Reshapedagger/param_assign_placeholderdagger/Reshape_2/shape*
T0*
Tshape0
�
dagger/learningRate_assignAssigndagger/learningRatedagger/Reshape_2*
use_locking(*
T0*&
_class
loc:@dagger/learningRate*
validate_shape(
;
dagger/Const_3Const*
valueB
 *  �?*
dtype0
_
dagger/dagger_coeff
VariableV2*
shared_name *
dtype0*
	container *
shape: 
�
dagger/dagger_coeff/AssignAssigndagger/dagger_coeffdagger/Const_3*
use_locking(*
T0*&
_class
loc:@dagger/dagger_coeff*
validate_shape(
j
dagger/dagger_coeff/readIdentitydagger/dagger_coeff*
T0*&
_class
loc:@dagger/dagger_coeff
?
dagger/Reshape_3/shapeConst*
valueB *
dtype0
k
dagger/Reshape_3Reshapedagger/param_assign_placeholderdagger/Reshape_3/shape*
T0*
Tshape0
�
dagger/dagger_coeff_assignAssigndagger/dagger_coeffdagger/Reshape_3*
T0*&
_class
loc:@dagger/dagger_coeff*
validate_shape(*
use_locking(
>
dagger/targetActionPlaceholder*
dtype0*
shape:
K
dagger/Reshape_4/shapeConst*
valueB"����   *
dtype0
_
dagger/Reshape_4Reshapedagger/targetActiondagger/Reshape_4/shape*
T0*
Tshape0
S

dagger/subSubdagger/Reshape_4%policy/policy/fully_connected/BiasAdd*
T0
,
dagger/SquareSquare
dagger/sub*
T0
P
dagger/Mean/reduction_indicesConst*
valueB :
���������*
dtype0
g
dagger/MeanMeandagger/Squaredagger/Mean/reduction_indices*
T0*

Tidx0*
	keep_dims( 
<
dagger/Const_4Const*
valueB: *
dtype0
Q

dagger/SumSumIdentitydagger/Const_4*
T0*

Tidx0*
	keep_dims( 
.
dagger/l2lossIdentity
dagger/Sum*
T0
;
dagger/Shape_1Shape	Reshape_1*
T0*
out_type0
J
dagger/strided_slice_1/stackConst*
dtype0*
valueB:
L
dagger/strided_slice_1/stack_1Const*
dtype0*
valueB:
L
dagger/strided_slice_1/stack_2Const*
valueB:*
dtype0
�
dagger/strided_slice_1StridedSlicedagger/Shape_1dagger/strided_slice_1/stackdagger/strided_slice_1/stack_1dagger/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
K
dagger/Reshape_5/shape/0Const*
dtype0*
valueB :
���������
n
dagger/Reshape_5/shapePackdagger/Reshape_5/shape/0dagger/strided_slice_1*
T0*

axis *
N
W
dagger/Reshape_5Reshapedagger/Meandagger/Reshape_5/shape*
T0*
Tshape0
M
dagger/boolean_mask/ShapeShapedagger/Reshape_5*
T0*
out_type0
U
'dagger/boolean_mask/strided_slice/stackConst*
valueB: *
dtype0
W
)dagger/boolean_mask/strided_slice/stack_1Const*
valueB:*
dtype0
W
)dagger/boolean_mask/strided_slice/stack_2Const*
valueB:*
dtype0
�
!dagger/boolean_mask/strided_sliceStridedSlicedagger/boolean_mask/Shape'dagger/boolean_mask/strided_slice/stack)dagger/boolean_mask/strided_slice/stack_1)dagger/boolean_mask/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
Index0*
T0
X
*dagger/boolean_mask/Prod/reduction_indicesConst*
valueB: *
dtype0
�
dagger/boolean_mask/ProdProd!dagger/boolean_mask/strided_slice*dagger/boolean_mask/Prod/reduction_indices*

Tidx0*
	keep_dims( *
T0
O
dagger/boolean_mask/Shape_1Shapedagger/Reshape_5*
T0*
out_type0
W
)dagger/boolean_mask/strided_slice_1/stackConst*
dtype0*
valueB: 
Y
+dagger/boolean_mask/strided_slice_1/stack_1Const*
dtype0*
valueB: 
Y
+dagger/boolean_mask/strided_slice_1/stack_2Const*
valueB:*
dtype0
�
#dagger/boolean_mask/strided_slice_1StridedSlicedagger/boolean_mask/Shape_1)dagger/boolean_mask/strided_slice_1/stack+dagger/boolean_mask/strided_slice_1/stack_1+dagger/boolean_mask/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask 
O
dagger/boolean_mask/Shape_2Shapedagger/Reshape_5*
T0*
out_type0
W
)dagger/boolean_mask/strided_slice_2/stackConst*
dtype0*
valueB:
Y
+dagger/boolean_mask/strided_slice_2/stack_1Const*
valueB: *
dtype0
Y
+dagger/boolean_mask/strided_slice_2/stack_2Const*
valueB:*
dtype0
�
#dagger/boolean_mask/strided_slice_2StridedSlicedagger/boolean_mask/Shape_2)dagger/boolean_mask/strided_slice_2/stack+dagger/boolean_mask/strided_slice_2/stack_1+dagger/boolean_mask/strided_slice_2/stack_2*
end_mask*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask 
c
#dagger/boolean_mask/concat/values_1Packdagger/boolean_mask/Prod*
T0*

axis *
N
I
dagger/boolean_mask/concat/axisConst*
value	B : *
dtype0
�
dagger/boolean_mask/concatConcatV2#dagger/boolean_mask/strided_slice_1#dagger/boolean_mask/concat/values_1#dagger/boolean_mask/strided_slice_2dagger/boolean_mask/concat/axis*
N*

Tidx0*
T0
k
dagger/boolean_mask/ReshapeReshapedagger/Reshape_5dagger/boolean_mask/concat*
T0*
Tshape0
Z
#dagger/boolean_mask/Reshape_1/shapeConst*
valueB:
���������*
dtype0
v
dagger/boolean_mask/Reshape_1Reshapedagger/mask/Less#dagger/boolean_mask/Reshape_1/shape*
T0
*
Tshape0
J
dagger/boolean_mask/WhereWheredagger/boolean_mask/Reshape_1*
T0

a
dagger/boolean_mask/SqueezeSqueezedagger/boolean_mask/Where*
squeeze_dims
*
T0	
K
!dagger/boolean_mask/GatherV2/axisConst*
value	B : *
dtype0
�
dagger/boolean_mask/GatherV2GatherV2dagger/boolean_mask/Reshapedagger/boolean_mask/Squeeze!dagger/boolean_mask/GatherV2/axis*
Taxis0*

batch_dims *
Tindices0	*
Tparams0
M
dagger/CastCastdagger/mask/Less*

SrcT0
*
Truncate( *

DstT0
-
dagger/testIdentitydagger/Cast*
T0
<
dagger/Const_5Const*
valueB: *
dtype0
V
dagger/lossMeandagger/Meandagger/Const_5*
T0*

Tidx0*
	keep_dims( 
A

dagger/mulMuldagger/dagger_coeff/readdagger/loss*
T0
C
dagger/Const_6Const*
dtype0*
valueB"       
n
dagger/loss_maskedMeandagger/boolean_mask/GatherV2dagger/Const_6*
T0*

Tidx0*
	keep_dims( 
J
dagger/mul_1Muldagger/dagger_coeff/readdagger/loss_masked*
T0
7

dagger/addAddV2
dagger/muldagger/l2loss*
T0
^
dagger/gradients/ShapeConst*
_class
loc:@dagger/add*
valueB *
dtype0
f
dagger/gradients/grad_ys_0Const*
_class
loc:@dagger/add*
valueB
 *  �?*
dtype0
�
dagger/gradients/FillFilldagger/gradients/Shapedagger/gradients/grad_ys_0*
T0*
_class
loc:@dagger/add*

index_type0
Q
1dagger/gradients/dagger/add_grad/tuple/group_depsNoOp^dagger/gradients/Fill
�
9dagger/gradients/dagger/add_grad/tuple/control_dependencyIdentitydagger/gradients/Fill2^dagger/gradients/dagger/add_grad/tuple/group_deps*
T0*
_class
loc:@dagger/add
�
;dagger/gradients/dagger/add_grad/tuple/control_dependency_1Identitydagger/gradients/Fill2^dagger/gradients/dagger/add_grad/tuple/group_deps*
T0*
_class
loc:@dagger/add
�
$dagger/gradients/dagger/mul_grad/MulMul9dagger/gradients/dagger/add_grad/tuple/control_dependencydagger/loss*
T0*
_class
loc:@dagger/mul
�
&dagger/gradients/dagger/mul_grad/Mul_1Mul9dagger/gradients/dagger/add_grad/tuple/control_dependencydagger/dagger_coeff/read*
T0*
_class
loc:@dagger/mul
�
1dagger/gradients/dagger/mul_grad/tuple/group_depsNoOp%^dagger/gradients/dagger/mul_grad/Mul'^dagger/gradients/dagger/mul_grad/Mul_1
�
9dagger/gradients/dagger/mul_grad/tuple/control_dependencyIdentity$dagger/gradients/dagger/mul_grad/Mul2^dagger/gradients/dagger/mul_grad/tuple/group_deps*
T0*
_class
loc:@dagger/mul
�
;dagger/gradients/dagger/mul_grad/tuple/control_dependency_1Identity&dagger/gradients/dagger/mul_grad/Mul_12^dagger/gradients/dagger/mul_grad/tuple/group_deps*
T0*
_class
loc:@dagger/mul
}
/dagger/gradients/dagger/loss_grad/Reshape/shapeConst*
dtype0*
_class
loc:@dagger/loss*
valueB:
�
)dagger/gradients/dagger/loss_grad/ReshapeReshape;dagger/gradients/dagger/mul_grad/tuple/control_dependency_1/dagger/gradients/dagger/loss_grad/Reshape/shape*
T0*
_class
loc:@dagger/loss*
Tshape0
v
'dagger/gradients/dagger/loss_grad/ShapeShapedagger/Mean*
T0*
_class
loc:@dagger/loss*
out_type0
�
&dagger/gradients/dagger/loss_grad/TileTile)dagger/gradients/dagger/loss_grad/Reshape'dagger/gradients/dagger/loss_grad/Shape*

Tmultiples0*
T0*
_class
loc:@dagger/loss
x
)dagger/gradients/dagger/loss_grad/Shape_1Shapedagger/Mean*
T0*
_class
loc:@dagger/loss*
out_type0
r
)dagger/gradients/dagger/loss_grad/Shape_2Const*
_class
loc:@dagger/loss*
valueB *
dtype0
u
'dagger/gradients/dagger/loss_grad/ConstConst*
_class
loc:@dagger/loss*
valueB: *
dtype0
�
&dagger/gradients/dagger/loss_grad/ProdProd)dagger/gradients/dagger/loss_grad/Shape_1'dagger/gradients/dagger/loss_grad/Const*
T0*
_class
loc:@dagger/loss*
	keep_dims( *

Tidx0
w
)dagger/gradients/dagger/loss_grad/Const_1Const*
_class
loc:@dagger/loss*
valueB: *
dtype0
�
(dagger/gradients/dagger/loss_grad/Prod_1Prod)dagger/gradients/dagger/loss_grad/Shape_2)dagger/gradients/dagger/loss_grad/Const_1*
T0*
_class
loc:@dagger/loss*
	keep_dims( *

Tidx0
u
+dagger/gradients/dagger/loss_grad/Maximum/yConst*
_class
loc:@dagger/loss*
value	B :*
dtype0
�
)dagger/gradients/dagger/loss_grad/MaximumMaximum(dagger/gradients/dagger/loss_grad/Prod_1+dagger/gradients/dagger/loss_grad/Maximum/y*
T0*
_class
loc:@dagger/loss
�
*dagger/gradients/dagger/loss_grad/floordivFloorDiv&dagger/gradients/dagger/loss_grad/Prod)dagger/gradients/dagger/loss_grad/Maximum*
T0*
_class
loc:@dagger/loss
�
&dagger/gradients/dagger/loss_grad/CastCast*dagger/gradients/dagger/loss_grad/floordiv*

SrcT0*
_class
loc:@dagger/loss*
Truncate( *

DstT0
�
)dagger/gradients/dagger/loss_grad/truedivRealDiv&dagger/gradients/dagger/loss_grad/Tile&dagger/gradients/dagger/loss_grad/Cast*
T0*
_class
loc:@dagger/loss
{
.dagger/gradients/dagger/Sum_grad/Reshape/shapeConst*
_class
loc:@dagger/Sum*
valueB:*
dtype0
�
(dagger/gradients/dagger/Sum_grad/ReshapeReshape;dagger/gradients/dagger/add_grad/tuple/control_dependency_1.dagger/gradients/dagger/Sum_grad/Reshape/shape*
T0*
_class
loc:@dagger/Sum*
Tshape0
s
&dagger/gradients/dagger/Sum_grad/ConstConst*
_class
loc:@dagger/Sum*
valueB:*
dtype0
�
%dagger/gradients/dagger/Sum_grad/TileTile(dagger/gradients/dagger/Sum_grad/Reshape&dagger/gradients/dagger/Sum_grad/Const*

Tmultiples0*
T0*
_class
loc:@dagger/Sum
x
'dagger/gradients/dagger/Mean_grad/ShapeShapedagger/Square*
T0*
_class
loc:@dagger/Mean*
out_type0
p
&dagger/gradients/dagger/Mean_grad/SizeConst*
_class
loc:@dagger/Mean*
value	B :*
dtype0
�
%dagger/gradients/dagger/Mean_grad/addAddV2dagger/Mean/reduction_indices&dagger/gradients/dagger/Mean_grad/Size*
T0*
_class
loc:@dagger/Mean
�
%dagger/gradients/dagger/Mean_grad/modFloorMod%dagger/gradients/dagger/Mean_grad/add&dagger/gradients/dagger/Mean_grad/Size*
T0*
_class
loc:@dagger/Mean
r
)dagger/gradients/dagger/Mean_grad/Shape_1Const*
_class
loc:@dagger/Mean*
valueB *
dtype0
w
-dagger/gradients/dagger/Mean_grad/range/startConst*
_class
loc:@dagger/Mean*
value	B : *
dtype0
w
-dagger/gradients/dagger/Mean_grad/range/deltaConst*
_class
loc:@dagger/Mean*
value	B :*
dtype0
�
'dagger/gradients/dagger/Mean_grad/rangeRange-dagger/gradients/dagger/Mean_grad/range/start&dagger/gradients/dagger/Mean_grad/Size-dagger/gradients/dagger/Mean_grad/range/delta*

Tidx0*
_class
loc:@dagger/Mean
v
,dagger/gradients/dagger/Mean_grad/Fill/valueConst*
_class
loc:@dagger/Mean*
value	B :*
dtype0
�
&dagger/gradients/dagger/Mean_grad/FillFill)dagger/gradients/dagger/Mean_grad/Shape_1,dagger/gradients/dagger/Mean_grad/Fill/value*
T0*
_class
loc:@dagger/Mean*

index_type0
�
/dagger/gradients/dagger/Mean_grad/DynamicStitchDynamicStitch'dagger/gradients/dagger/Mean_grad/range%dagger/gradients/dagger/Mean_grad/mod'dagger/gradients/dagger/Mean_grad/Shape&dagger/gradients/dagger/Mean_grad/Fill*
T0*
_class
loc:@dagger/Mean*
N
u
+dagger/gradients/dagger/Mean_grad/Maximum/yConst*
dtype0*
_class
loc:@dagger/Mean*
value	B :
�
)dagger/gradients/dagger/Mean_grad/MaximumMaximum/dagger/gradients/dagger/Mean_grad/DynamicStitch+dagger/gradients/dagger/Mean_grad/Maximum/y*
T0*
_class
loc:@dagger/Mean
�
*dagger/gradients/dagger/Mean_grad/floordivFloorDiv'dagger/gradients/dagger/Mean_grad/Shape)dagger/gradients/dagger/Mean_grad/Maximum*
T0*
_class
loc:@dagger/Mean
�
)dagger/gradients/dagger/Mean_grad/ReshapeReshape)dagger/gradients/dagger/loss_grad/truediv/dagger/gradients/dagger/Mean_grad/DynamicStitch*
T0*
_class
loc:@dagger/Mean*
Tshape0
�
&dagger/gradients/dagger/Mean_grad/TileTile)dagger/gradients/dagger/Mean_grad/Reshape*dagger/gradients/dagger/Mean_grad/floordiv*
T0*
_class
loc:@dagger/Mean*

Tmultiples0
z
)dagger/gradients/dagger/Mean_grad/Shape_2Shapedagger/Square*
T0*
_class
loc:@dagger/Mean*
out_type0
x
)dagger/gradients/dagger/Mean_grad/Shape_3Shapedagger/Mean*
T0*
_class
loc:@dagger/Mean*
out_type0
u
'dagger/gradients/dagger/Mean_grad/ConstConst*
_class
loc:@dagger/Mean*
valueB: *
dtype0
�
&dagger/gradients/dagger/Mean_grad/ProdProd)dagger/gradients/dagger/Mean_grad/Shape_2'dagger/gradients/dagger/Mean_grad/Const*
T0*
_class
loc:@dagger/Mean*
	keep_dims( *

Tidx0
w
)dagger/gradients/dagger/Mean_grad/Const_1Const*
_class
loc:@dagger/Mean*
valueB: *
dtype0
�
(dagger/gradients/dagger/Mean_grad/Prod_1Prod)dagger/gradients/dagger/Mean_grad/Shape_3)dagger/gradients/dagger/Mean_grad/Const_1*
T0*
_class
loc:@dagger/Mean*
	keep_dims( *

Tidx0
w
-dagger/gradients/dagger/Mean_grad/Maximum_1/yConst*
_class
loc:@dagger/Mean*
value	B :*
dtype0
�
+dagger/gradients/dagger/Mean_grad/Maximum_1Maximum(dagger/gradients/dagger/Mean_grad/Prod_1-dagger/gradients/dagger/Mean_grad/Maximum_1/y*
T0*
_class
loc:@dagger/Mean
�
,dagger/gradients/dagger/Mean_grad/floordiv_1FloorDiv&dagger/gradients/dagger/Mean_grad/Prod+dagger/gradients/dagger/Mean_grad/Maximum_1*
T0*
_class
loc:@dagger/Mean
�
&dagger/gradients/dagger/Mean_grad/CastCast,dagger/gradients/dagger/Mean_grad/floordiv_1*
Truncate( *

DstT0*

SrcT0*
_class
loc:@dagger/Mean
�
)dagger/gradients/dagger/Mean_grad/truedivRealDiv&dagger/gradients/dagger/Mean_grad/Tile&dagger/gradients/dagger/Mean_grad/Cast*
T0*
_class
loc:@dagger/Mean
�
)dagger/gradients/dagger/Square_grad/ConstConst*^dagger/gradients/dagger/Mean_grad/truediv* 
_class
loc:@dagger/Square*
valueB
 *   @*
dtype0
�
'dagger/gradients/dagger/Square_grad/MulMul
dagger/sub)dagger/gradients/dagger/Square_grad/Const*
T0* 
_class
loc:@dagger/Square
�
)dagger/gradients/dagger/Square_grad/Mul_1Mul)dagger/gradients/dagger/Mean_grad/truediv'dagger/gradients/dagger/Square_grad/Mul*
T0* 
_class
loc:@dagger/Square
�
,dagger/gradients/Identity/input_grad/unstackUnpack%dagger/gradients/dagger/Sum_grad/Tile*	
num*
T0*!
_class
loc:@Identity/input*

axis 
l
5dagger/gradients/Identity/input_grad/tuple/group_depsNoOp-^dagger/gradients/Identity/input_grad/unstack
�
=dagger/gradients/Identity/input_grad/tuple/control_dependencyIdentity,dagger/gradients/Identity/input_grad/unstack6^dagger/gradients/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
?dagger/gradients/Identity/input_grad/tuple/control_dependency_1Identity.dagger/gradients/Identity/input_grad/unstack:16^dagger/gradients/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
?dagger/gradients/Identity/input_grad/tuple/control_dependency_2Identity.dagger/gradients/Identity/input_grad/unstack:26^dagger/gradients/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
?dagger/gradients/Identity/input_grad/tuple/control_dependency_3Identity.dagger/gradients/Identity/input_grad/unstack:36^dagger/gradients/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
?dagger/gradients/Identity/input_grad/tuple/control_dependency_4Identity.dagger/gradients/Identity/input_grad/unstack:46^dagger/gradients/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
?dagger/gradients/Identity/input_grad/tuple/control_dependency_5Identity.dagger/gradients/Identity/input_grad/unstack:56^dagger/gradients/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
y
&dagger/gradients/dagger/sub_grad/ShapeShapedagger/Reshape_4*
T0*
_class
loc:@dagger/sub*
out_type0
�
(dagger/gradients/dagger/sub_grad/Shape_1Shape%policy/policy/fully_connected/BiasAdd*
T0*
_class
loc:@dagger/sub*
out_type0
�
6dagger/gradients/dagger/sub_grad/BroadcastGradientArgsBroadcastGradientArgs&dagger/gradients/dagger/sub_grad/Shape(dagger/gradients/dagger/sub_grad/Shape_1*
T0*
_class
loc:@dagger/sub
�
$dagger/gradients/dagger/sub_grad/SumSum)dagger/gradients/dagger/Square_grad/Mul_16dagger/gradients/dagger/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_class
loc:@dagger/sub
�
(dagger/gradients/dagger/sub_grad/ReshapeReshape$dagger/gradients/dagger/sub_grad/Sum&dagger/gradients/dagger/sub_grad/Shape*
T0*
_class
loc:@dagger/sub*
Tshape0
~
$dagger/gradients/dagger/sub_grad/NegNeg)dagger/gradients/dagger/Square_grad/Mul_1*
T0*
_class
loc:@dagger/sub
�
&dagger/gradients/dagger/sub_grad/Sum_1Sum$dagger/gradients/dagger/sub_grad/Neg8dagger/gradients/dagger/sub_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@dagger/sub*
	keep_dims( *

Tidx0
�
*dagger/gradients/dagger/sub_grad/Reshape_1Reshape&dagger/gradients/dagger/sub_grad/Sum_1(dagger/gradients/dagger/sub_grad/Shape_1*
T0*
_class
loc:@dagger/sub*
Tshape0
�
1dagger/gradients/dagger/sub_grad/tuple/group_depsNoOp)^dagger/gradients/dagger/sub_grad/Reshape+^dagger/gradients/dagger/sub_grad/Reshape_1
�
9dagger/gradients/dagger/sub_grad/tuple/control_dependencyIdentity(dagger/gradients/dagger/sub_grad/Reshape2^dagger/gradients/dagger/sub_grad/tuple/group_deps*
T0*
_class
loc:@dagger/sub
�
;dagger/gradients/dagger/sub_grad/tuple/control_dependency_1Identity*dagger/gradients/dagger/sub_grad/Reshape_12^dagger/gradients/dagger/sub_grad/tuple/group_deps*
T0*
_class
loc:@dagger/sub
�
gdagger/gradients/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMul=dagger/gradients/Identity/input_grad/tuple/control_dependencyTpolicy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*`
_classV
TRloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
idagger/gradients/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1Mul=dagger/gradients/Identity/input_grad/tuple/control_dependencyCast_2/x*
T0*`
_classV
TRloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
tdagger/gradients/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOph^dagger/gradients/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mulj^dagger/gradients/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
|dagger/gradients/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentitygdagger/gradients/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mulu^dagger/gradients/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
~dagger/gradients/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identityidagger/gradients/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1u^dagger/gradients/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
gdagger/gradients/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMul?dagger/gradients/Identity/input_grad/tuple/control_dependency_1Tpolicy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*`
_classV
TRloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
idagger/gradients/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1Mul?dagger/gradients/Identity/input_grad/tuple/control_dependency_1Cast_2/x*
T0*`
_classV
TRloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
tdagger/gradients/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOph^dagger/gradients/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mulj^dagger/gradients/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
|dagger/gradients/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentitygdagger/gradients/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mulu^dagger/gradients/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
~dagger/gradients/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identityidagger/gradients/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1u^dagger/gradients/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
gdagger/gradients/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMul?dagger/gradients/Identity/input_grad/tuple/control_dependency_2Tpolicy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*`
_classV
TRloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
idagger/gradients/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1Mul?dagger/gradients/Identity/input_grad/tuple/control_dependency_2Cast_2/x*
T0*`
_classV
TRloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
tdagger/gradients/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOph^dagger/gradients/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mulj^dagger/gradients/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
|dagger/gradients/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentitygdagger/gradients/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mulu^dagger/gradients/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
~dagger/gradients/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identityidagger/gradients/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1u^dagger/gradients/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
idagger/gradients/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMul?dagger/gradients/Identity/input_grad/tuple/control_dependency_3Vpolicy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1Mul?dagger/gradients/Identity/input_grad/tuple/control_dependency_3Cast_2/x*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
vdagger/gradients/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpj^dagger/gradients/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mull^dagger/gradients/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
~dagger/gradients/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentityidagger/gradients/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mulw^dagger/gradients/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitykdagger/gradients/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1w^dagger/gradients/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
idagger/gradients/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMul?dagger/gradients/Identity/input_grad/tuple/control_dependency_4Vpolicy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1Mul?dagger/gradients/Identity/input_grad/tuple/control_dependency_4Cast_2/x*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
vdagger/gradients/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpj^dagger/gradients/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mull^dagger/gradients/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
~dagger/gradients/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentityidagger/gradients/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mulw^dagger/gradients/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitykdagger/gradients/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1w^dagger/gradients/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
idagger/gradients/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMul?dagger/gradients/Identity/input_grad/tuple/control_dependency_5Vpolicy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1Mul?dagger/gradients/Identity/input_grad/tuple/control_dependency_5Cast_2/x*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
vdagger/gradients/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpj^dagger/gradients/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mull^dagger/gradients/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
~dagger/gradients/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentityidagger/gradients/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mulw^dagger/gradients/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitykdagger/gradients/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1w^dagger/gradients/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
Gdagger/gradients/policy/policy/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGrad;dagger/gradients/dagger/sub_grad/tuple/control_dependency_1*
data_formatNHWC*
T0*8
_class.
,*loc:@policy/policy/fully_connected/BiasAdd
�
Ldagger/gradients/policy/policy/fully_connected/BiasAdd_grad/tuple/group_depsNoOp<^dagger/gradients/dagger/sub_grad/tuple/control_dependency_1H^dagger/gradients/policy/policy/fully_connected/BiasAdd_grad/BiasAddGrad
�
Tdagger/gradients/policy/policy/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentity;dagger/gradients/dagger/sub_grad/tuple/control_dependency_1M^dagger/gradients/policy/policy/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*
_class
loc:@dagger/sub
�
Vdagger/gradients/policy/policy/fully_connected/BiasAdd_grad/tuple/control_dependency_1IdentityGdagger/gradients/policy/policy/fully_connected/BiasAdd_grad/BiasAddGradM^dagger/gradients/policy/policy/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@policy/policy/fully_connected/BiasAdd
�
ndagger/gradients/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul#policy/fully_connected/weights/read~dagger/gradients/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
ndagger/gradients/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul%policy/fully_connected_1/weights/read~dagger/gradients/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
ndagger/gradients/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul%policy/fully_connected_2/weights/read~dagger/gradients/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
pdagger/gradients/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul%valueNet/fully_connected/weights/read�dagger/gradients/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*i
_class_
][loc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
pdagger/gradients/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul'valueNet/fully_connected_1/weights/read�dagger/gradients/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*i
_class_
][loc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
pdagger/gradients/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul'valueNet/fully_connected_2/weights/read�dagger/gradients/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*i
_class_
][loc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
Adagger/gradients/policy/policy/fully_connected/MatMul_grad/MatMulMatMulTdagger/gradients/policy/policy/fully_connected/BiasAdd_grad/tuple/control_dependency%policy/fully_connected_3/weights/read*
T0*7
_class-
+)loc:@policy/policy/fully_connected/MatMul*
transpose_a( *
transpose_b(
�
Cdagger/gradients/policy/policy/fully_connected/MatMul_grad/MatMul_1MatMul0policy/policy/hidden_layer2/fully_connected/TanhTdagger/gradients/policy/policy/fully_connected/BiasAdd_grad/tuple/control_dependency*
T0*7
_class-
+)loc:@policy/policy/fully_connected/MatMul*
transpose_a(*
transpose_b( 
�
Kdagger/gradients/policy/policy/fully_connected/MatMul_grad/tuple/group_depsNoOpB^dagger/gradients/policy/policy/fully_connected/MatMul_grad/MatMulD^dagger/gradients/policy/policy/fully_connected/MatMul_grad/MatMul_1
�
Sdagger/gradients/policy/policy/fully_connected/MatMul_grad/tuple/control_dependencyIdentityAdagger/gradients/policy/policy/fully_connected/MatMul_grad/MatMulL^dagger/gradients/policy/policy/fully_connected/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@policy/policy/fully_connected/MatMul
�
Udagger/gradients/policy/policy/fully_connected/MatMul_grad/tuple/control_dependency_1IdentityCdagger/gradients/policy/policy/fully_connected/MatMul_grad/MatMul_1L^dagger/gradients/policy/policy/fully_connected/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@policy/policy/fully_connected/MatMul
�
Odagger/gradients/policy/policy/hidden_layer2/fully_connected/Tanh_grad/TanhGradTanhGrad0policy/policy/hidden_layer2/fully_connected/TanhSdagger/gradients/policy/policy/fully_connected/MatMul_grad/tuple/control_dependency*
T0*C
_class9
75loc:@policy/policy/hidden_layer2/fully_connected/Tanh
�
Udagger/gradients/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGradOdagger/gradients/policy/policy/hidden_layer2/fully_connected/Tanh_grad/TanhGrad*
T0*F
_class<
:8loc:@policy/policy/hidden_layer2/fully_connected/BiasAdd*
data_formatNHWC
�
Zdagger/gradients/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/group_depsNoOpV^dagger/gradients/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/BiasAddGradP^dagger/gradients/policy/policy/hidden_layer2/fully_connected/Tanh_grad/TanhGrad
�
bdagger/gradients/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentityOdagger/gradients/policy/policy/hidden_layer2/fully_connected/Tanh_grad/TanhGrad[^dagger/gradients/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@policy/policy/hidden_layer2/fully_connected/Tanh
�
ddagger/gradients/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/control_dependency_1IdentityUdagger/gradients/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/BiasAddGrad[^dagger/gradients/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@policy/policy/hidden_layer2/fully_connected/BiasAdd
�
Odagger/gradients/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMulMatMulbdagger/gradients/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/control_dependency%policy/fully_connected_2/weights/read*
transpose_a( *
transpose_b(*
T0*E
_class;
97loc:@policy/policy/hidden_layer2/fully_connected/MatMul
�
Qdagger/gradients/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMul_1MatMul0policy/policy/hidden_layer1/fully_connected/Tanhbdagger/gradients/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/control_dependency*
T0*E
_class;
97loc:@policy/policy/hidden_layer2/fully_connected/MatMul*
transpose_a(*
transpose_b( 
�
Ydagger/gradients/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/group_depsNoOpP^dagger/gradients/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMulR^dagger/gradients/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMul_1
�
adagger/gradients/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/control_dependencyIdentityOdagger/gradients/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMulZ^dagger/gradients/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer2/fully_connected/MatMul
�
cdagger/gradients/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/control_dependency_1IdentityQdagger/gradients/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMul_1Z^dagger/gradients/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer2/fully_connected/MatMul
�
Odagger/gradients/policy/policy/hidden_layer1/fully_connected/Tanh_grad/TanhGradTanhGrad0policy/policy/hidden_layer1/fully_connected/Tanhadagger/gradients/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/control_dependency*
T0*C
_class9
75loc:@policy/policy/hidden_layer1/fully_connected/Tanh
�
dagger/gradients/AddNAddNndagger/gradients/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulcdagger/gradients/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
N
�
Udagger/gradients/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGradOdagger/gradients/policy/policy/hidden_layer1/fully_connected/Tanh_grad/TanhGrad*
T0*F
_class<
:8loc:@policy/policy/hidden_layer1/fully_connected/BiasAdd*
data_formatNHWC
�
Zdagger/gradients/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/group_depsNoOpV^dagger/gradients/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/BiasAddGradP^dagger/gradients/policy/policy/hidden_layer1/fully_connected/Tanh_grad/TanhGrad
�
bdagger/gradients/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentityOdagger/gradients/policy/policy/hidden_layer1/fully_connected/Tanh_grad/TanhGrad[^dagger/gradients/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@policy/policy/hidden_layer1/fully_connected/Tanh
�
ddagger/gradients/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/control_dependency_1IdentityUdagger/gradients/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/BiasAddGrad[^dagger/gradients/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@policy/policy/hidden_layer1/fully_connected/BiasAdd
�
Odagger/gradients/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMulMatMulbdagger/gradients/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/control_dependency%policy/fully_connected_1/weights/read*
T0*E
_class;
97loc:@policy/policy/hidden_layer1/fully_connected/MatMul*
transpose_a( *
transpose_b(
�
Qdagger/gradients/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMul_1MatMul0policy/policy/hidden_layer0/fully_connected/Tanhbdagger/gradients/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/control_dependency*
T0*E
_class;
97loc:@policy/policy/hidden_layer1/fully_connected/MatMul*
transpose_a(*
transpose_b( 
�
Ydagger/gradients/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/group_depsNoOpP^dagger/gradients/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMulR^dagger/gradients/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMul_1
�
adagger/gradients/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/control_dependencyIdentityOdagger/gradients/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMulZ^dagger/gradients/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer1/fully_connected/MatMul
�
cdagger/gradients/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/control_dependency_1IdentityQdagger/gradients/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMul_1Z^dagger/gradients/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer1/fully_connected/MatMul
�
Odagger/gradients/policy/policy/hidden_layer0/fully_connected/Tanh_grad/TanhGradTanhGrad0policy/policy/hidden_layer0/fully_connected/Tanhadagger/gradients/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/control_dependency*
T0*C
_class9
75loc:@policy/policy/hidden_layer0/fully_connected/Tanh
�
dagger/gradients/AddN_1AddNndagger/gradients/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulcdagger/gradients/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
N
�
Udagger/gradients/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGradOdagger/gradients/policy/policy/hidden_layer0/fully_connected/Tanh_grad/TanhGrad*
T0*F
_class<
:8loc:@policy/policy/hidden_layer0/fully_connected/BiasAdd*
data_formatNHWC
�
Zdagger/gradients/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/group_depsNoOpV^dagger/gradients/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/BiasAddGradP^dagger/gradients/policy/policy/hidden_layer0/fully_connected/Tanh_grad/TanhGrad
�
bdagger/gradients/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentityOdagger/gradients/policy/policy/hidden_layer0/fully_connected/Tanh_grad/TanhGrad[^dagger/gradients/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@policy/policy/hidden_layer0/fully_connected/Tanh
�
ddagger/gradients/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/control_dependency_1IdentityUdagger/gradients/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/BiasAddGrad[^dagger/gradients/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@policy/policy/hidden_layer0/fully_connected/BiasAdd
�
Odagger/gradients/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMulMatMulbdagger/gradients/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/control_dependency#policy/fully_connected/weights/read*
transpose_a( *
transpose_b(*
T0*E
_class;
97loc:@policy/policy/hidden_layer0/fully_connected/MatMul
�
Qdagger/gradients/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMul_1MatMulpolicy/concatbdagger/gradients/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/control_dependency*
T0*E
_class;
97loc:@policy/policy/hidden_layer0/fully_connected/MatMul*
transpose_a(*
transpose_b( 
�
Ydagger/gradients/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/group_depsNoOpP^dagger/gradients/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMulR^dagger/gradients/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMul_1
�
adagger/gradients/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/control_dependencyIdentityOdagger/gradients/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMulZ^dagger/gradients/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer0/fully_connected/MatMul
�
cdagger/gradients/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/control_dependency_1IdentityQdagger/gradients/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMul_1Z^dagger/gradients/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer0/fully_connected/MatMul
t
(dagger/gradients/policy/concat_grad/RankConst* 
_class
loc:@policy/concat*
value	B :*
dtype0
�
'dagger/gradients/policy/concat_grad/modFloorModpolicy/concat/axis(dagger/gradients/policy/concat_grad/Rank*
T0* 
_class
loc:@policy/concat
�
)dagger/gradients/policy/concat_grad/ShapeShapepolicy/strided_slice*
T0* 
_class
loc:@policy/concat*
out_type0
�
*dagger/gradients/policy/concat_grad/ShapeNShapeNpolicy/strided_sliceextra_encoder/featureMap*
T0* 
_class
loc:@policy/concat*
out_type0*
N
�
0dagger/gradients/policy/concat_grad/ConcatOffsetConcatOffset'dagger/gradients/policy/concat_grad/mod*dagger/gradients/policy/concat_grad/ShapeN,dagger/gradients/policy/concat_grad/ShapeN:1* 
_class
loc:@policy/concat*
N
�
)dagger/gradients/policy/concat_grad/SliceSliceadagger/gradients/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/control_dependency0dagger/gradients/policy/concat_grad/ConcatOffset*dagger/gradients/policy/concat_grad/ShapeN*
Index0*
T0* 
_class
loc:@policy/concat
�
+dagger/gradients/policy/concat_grad/Slice_1Sliceadagger/gradients/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/control_dependency2dagger/gradients/policy/concat_grad/ConcatOffset:1,dagger/gradients/policy/concat_grad/ShapeN:1*
Index0*
T0* 
_class
loc:@policy/concat
�
4dagger/gradients/policy/concat_grad/tuple/group_depsNoOp*^dagger/gradients/policy/concat_grad/Slice,^dagger/gradients/policy/concat_grad/Slice_1
�
<dagger/gradients/policy/concat_grad/tuple/control_dependencyIdentity)dagger/gradients/policy/concat_grad/Slice5^dagger/gradients/policy/concat_grad/tuple/group_deps*
T0* 
_class
loc:@policy/concat
�
>dagger/gradients/policy/concat_grad/tuple/control_dependency_1Identity+dagger/gradients/policy/concat_grad/Slice_15^dagger/gradients/policy/concat_grad/tuple/group_deps*
T0* 
_class
loc:@policy/concat
�
dagger/gradients/AddN_2AddNndagger/gradients/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulcdagger/gradients/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/control_dependency_1*
N*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
Udagger/gradients/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGrad>dagger/gradients/policy/concat_grad/tuple/control_dependency_1*
data_formatNHWC*
T0*F
_class<
:8loc:@extra_encoder/extra_encoder/fully_connected/BiasAdd
�
Zdagger/gradients/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/group_depsNoOpV^dagger/gradients/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/BiasAddGrad?^dagger/gradients/policy/concat_grad/tuple/control_dependency_1
�
bdagger/gradients/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentity>dagger/gradients/policy/concat_grad/tuple/control_dependency_1[^dagger/gradients/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/group_deps*
T0* 
_class
loc:@policy/concat
�
ddagger/gradients/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependency_1IdentityUdagger/gradients/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/BiasAddGrad[^dagger/gradients/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@extra_encoder/extra_encoder/fully_connected/BiasAdd
�
Odagger/gradients/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMulMatMulbdagger/gradients/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependency*extra_encoder/fully_connected/weights/read*
transpose_b(*
T0*E
_class;
97loc:@extra_encoder/extra_encoder/fully_connected/MatMul*
transpose_a( 
�
Qdagger/gradients/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMul_1MatMulextra_encoder/strided_slicebdagger/gradients/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*E
_class;
97loc:@extra_encoder/extra_encoder/fully_connected/MatMul
�
Ydagger/gradients/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/group_depsNoOpP^dagger/gradients/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMulR^dagger/gradients/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMul_1
�
adagger/gradients/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/control_dependencyIdentityOdagger/gradients/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMulZ^dagger/gradients/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@extra_encoder/extra_encoder/fully_connected/MatMul
�
cdagger/gradients/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/control_dependency_1IdentityQdagger/gradients/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMul_1Z^dagger/gradients/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@extra_encoder/extra_encoder/fully_connected/MatMul
�
 dagger/beta1_power/initial_valueConst*7
_class-
+)loc:@extra_encoder/fully_connected/biases*
valueB
 *fff?*
dtype0
�
dagger/beta1_power
VariableV2*
shared_name *7
_class-
+)loc:@extra_encoder/fully_connected/biases*
dtype0*
	container *
shape: 
�
dagger/beta1_power/AssignAssigndagger/beta1_power dagger/beta1_power/initial_value*
validate_shape(*
use_locking(*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
y
dagger/beta1_power/readIdentitydagger/beta1_power*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�
 dagger/beta2_power/initial_valueConst*7
_class-
+)loc:@extra_encoder/fully_connected/biases*
valueB
 *w�?*
dtype0
�
dagger/beta2_power
VariableV2*7
_class-
+)loc:@extra_encoder/fully_connected/biases*
dtype0*
	container *
shape: *
shared_name 
�
dagger/beta2_power/AssignAssigndagger/beta2_power dagger/beta2_power/initial_value*
use_locking(*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases*
validate_shape(
y
dagger/beta2_power/readIdentitydagger/beta2_power*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�
Lextra_encoder/fully_connected/weights/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"O   @   *8
_class.
,*loc:@extra_encoder/fully_connected/weights*
dtype0
�
Bextra_encoder/fully_connected/weights/Adam/Initializer/zeros/ConstConst*
valueB
 *    *8
_class.
,*loc:@extra_encoder/fully_connected/weights*
dtype0
�
<extra_encoder/fully_connected/weights/Adam/Initializer/zerosFillLextra_encoder/fully_connected/weights/Adam/Initializer/zeros/shape_as_tensorBextra_encoder/fully_connected/weights/Adam/Initializer/zeros/Const*
T0*

index_type0*8
_class.
,*loc:@extra_encoder/fully_connected/weights
�
*extra_encoder/fully_connected/weights/Adam
VariableV2*
shape
:O@*
shared_name *8
_class.
,*loc:@extra_encoder/fully_connected/weights*
dtype0*
	container 
�
1extra_encoder/fully_connected/weights/Adam/AssignAssign*extra_encoder/fully_connected/weights/Adam<extra_encoder/fully_connected/weights/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights
�
/extra_encoder/fully_connected/weights/Adam/readIdentity*extra_encoder/fully_connected/weights/Adam*
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights
�
Nextra_encoder/fully_connected/weights/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"O   @   *8
_class.
,*loc:@extra_encoder/fully_connected/weights*
dtype0
�
Dextra_encoder/fully_connected/weights/Adam_1/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *8
_class.
,*loc:@extra_encoder/fully_connected/weights
�
>extra_encoder/fully_connected/weights/Adam_1/Initializer/zerosFillNextra_encoder/fully_connected/weights/Adam_1/Initializer/zeros/shape_as_tensorDextra_encoder/fully_connected/weights/Adam_1/Initializer/zeros/Const*
T0*

index_type0*8
_class.
,*loc:@extra_encoder/fully_connected/weights
�
,extra_encoder/fully_connected/weights/Adam_1
VariableV2*
shared_name *8
_class.
,*loc:@extra_encoder/fully_connected/weights*
dtype0*
	container *
shape
:O@
�
3extra_encoder/fully_connected/weights/Adam_1/AssignAssign,extra_encoder/fully_connected/weights/Adam_1>extra_encoder/fully_connected/weights/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights
�
1extra_encoder/fully_connected/weights/Adam_1/readIdentity,extra_encoder/fully_connected/weights/Adam_1*
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights
�
;extra_encoder/fully_connected/biases/Adam/Initializer/zerosConst*
valueB@*    *7
_class-
+)loc:@extra_encoder/fully_connected/biases*
dtype0
�
)extra_encoder/fully_connected/biases/Adam
VariableV2*
shape:@*
shared_name *7
_class-
+)loc:@extra_encoder/fully_connected/biases*
dtype0*
	container 
�
0extra_encoder/fully_connected/biases/Adam/AssignAssign)extra_encoder/fully_connected/biases/Adam;extra_encoder/fully_connected/biases/Adam/Initializer/zeros*
use_locking(*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases*
validate_shape(
�
.extra_encoder/fully_connected/biases/Adam/readIdentity)extra_encoder/fully_connected/biases/Adam*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�
=extra_encoder/fully_connected/biases/Adam_1/Initializer/zerosConst*
valueB@*    *7
_class-
+)loc:@extra_encoder/fully_connected/biases*
dtype0
�
+extra_encoder/fully_connected/biases/Adam_1
VariableV2*
shape:@*
shared_name *7
_class-
+)loc:@extra_encoder/fully_connected/biases*
dtype0*
	container 
�
2extra_encoder/fully_connected/biases/Adam_1/AssignAssign+extra_encoder/fully_connected/biases/Adam_1=extra_encoder/fully_connected/biases/Adam_1/Initializer/zeros*
use_locking(*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases*
validate_shape(
�
0extra_encoder/fully_connected/biases/Adam_1/readIdentity+extra_encoder/fully_connected/biases/Adam_1*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�
Epolicy/fully_connected/weights/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"�      *1
_class'
%#loc:@policy/fully_connected/weights*
dtype0
�
;policy/fully_connected/weights/Adam/Initializer/zeros/ConstConst*
valueB
 *    *1
_class'
%#loc:@policy/fully_connected/weights*
dtype0
�
5policy/fully_connected/weights/Adam/Initializer/zerosFillEpolicy/fully_connected/weights/Adam/Initializer/zeros/shape_as_tensor;policy/fully_connected/weights/Adam/Initializer/zeros/Const*
T0*

index_type0*1
_class'
%#loc:@policy/fully_connected/weights
�
#policy/fully_connected/weights/Adam
VariableV2*
shared_name *1
_class'
%#loc:@policy/fully_connected/weights*
dtype0*
	container *
shape:
��
�
*policy/fully_connected/weights/Adam/AssignAssign#policy/fully_connected/weights/Adam5policy/fully_connected/weights/Adam/Initializer/zeros*
T0*1
_class'
%#loc:@policy/fully_connected/weights*
validate_shape(*
use_locking(
�
(policy/fully_connected/weights/Adam/readIdentity#policy/fully_connected/weights/Adam*
T0*1
_class'
%#loc:@policy/fully_connected/weights
�
Gpolicy/fully_connected/weights/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"�      *1
_class'
%#loc:@policy/fully_connected/weights*
dtype0
�
=policy/fully_connected/weights/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *1
_class'
%#loc:@policy/fully_connected/weights*
dtype0
�
7policy/fully_connected/weights/Adam_1/Initializer/zerosFillGpolicy/fully_connected/weights/Adam_1/Initializer/zeros/shape_as_tensor=policy/fully_connected/weights/Adam_1/Initializer/zeros/Const*
T0*

index_type0*1
_class'
%#loc:@policy/fully_connected/weights
�
%policy/fully_connected/weights/Adam_1
VariableV2*
dtype0*
	container *
shape:
��*
shared_name *1
_class'
%#loc:@policy/fully_connected/weights
�
,policy/fully_connected/weights/Adam_1/AssignAssign%policy/fully_connected/weights/Adam_17policy/fully_connected/weights/Adam_1/Initializer/zeros*
use_locking(*
T0*1
_class'
%#loc:@policy/fully_connected/weights*
validate_shape(
�
*policy/fully_connected/weights/Adam_1/readIdentity%policy/fully_connected/weights/Adam_1*
T0*1
_class'
%#loc:@policy/fully_connected/weights
�
4policy/fully_connected/biases/Adam/Initializer/zerosConst*
dtype0*
valueB�*    *0
_class&
$"loc:@policy/fully_connected/biases
�
"policy/fully_connected/biases/Adam
VariableV2*
shape:�*
shared_name *0
_class&
$"loc:@policy/fully_connected/biases*
dtype0*
	container 
�
)policy/fully_connected/biases/Adam/AssignAssign"policy/fully_connected/biases/Adam4policy/fully_connected/biases/Adam/Initializer/zeros*
T0*0
_class&
$"loc:@policy/fully_connected/biases*
validate_shape(*
use_locking(
�
'policy/fully_connected/biases/Adam/readIdentity"policy/fully_connected/biases/Adam*
T0*0
_class&
$"loc:@policy/fully_connected/biases
�
6policy/fully_connected/biases/Adam_1/Initializer/zerosConst*
valueB�*    *0
_class&
$"loc:@policy/fully_connected/biases*
dtype0
�
$policy/fully_connected/biases/Adam_1
VariableV2*
shared_name *0
_class&
$"loc:@policy/fully_connected/biases*
dtype0*
	container *
shape:�
�
+policy/fully_connected/biases/Adam_1/AssignAssign$policy/fully_connected/biases/Adam_16policy/fully_connected/biases/Adam_1/Initializer/zeros*
T0*0
_class&
$"loc:@policy/fully_connected/biases*
validate_shape(*
use_locking(
�
)policy/fully_connected/biases/Adam_1/readIdentity$policy/fully_connected/biases/Adam_1*
T0*0
_class&
$"loc:@policy/fully_connected/biases
�
Gpolicy/fully_connected_1/weights/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB"   �   *3
_class)
'%loc:@policy/fully_connected_1/weights
�
=policy/fully_connected_1/weights/Adam/Initializer/zeros/ConstConst*
valueB
 *    *3
_class)
'%loc:@policy/fully_connected_1/weights*
dtype0
�
7policy/fully_connected_1/weights/Adam/Initializer/zerosFillGpolicy/fully_connected_1/weights/Adam/Initializer/zeros/shape_as_tensor=policy/fully_connected_1/weights/Adam/Initializer/zeros/Const*
T0*

index_type0*3
_class)
'%loc:@policy/fully_connected_1/weights
�
%policy/fully_connected_1/weights/Adam
VariableV2*
shape:
��*
shared_name *3
_class)
'%loc:@policy/fully_connected_1/weights*
dtype0*
	container 
�
,policy/fully_connected_1/weights/Adam/AssignAssign%policy/fully_connected_1/weights/Adam7policy/fully_connected_1/weights/Adam/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@policy/fully_connected_1/weights*
validate_shape(
�
*policy/fully_connected_1/weights/Adam/readIdentity%policy/fully_connected_1/weights/Adam*
T0*3
_class)
'%loc:@policy/fully_connected_1/weights
�
Ipolicy/fully_connected_1/weights/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"   �   *3
_class)
'%loc:@policy/fully_connected_1/weights*
dtype0
�
?policy/fully_connected_1/weights/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *3
_class)
'%loc:@policy/fully_connected_1/weights*
dtype0
�
9policy/fully_connected_1/weights/Adam_1/Initializer/zerosFillIpolicy/fully_connected_1/weights/Adam_1/Initializer/zeros/shape_as_tensor?policy/fully_connected_1/weights/Adam_1/Initializer/zeros/Const*
T0*

index_type0*3
_class)
'%loc:@policy/fully_connected_1/weights
�
'policy/fully_connected_1/weights/Adam_1
VariableV2*
shape:
��*
shared_name *3
_class)
'%loc:@policy/fully_connected_1/weights*
dtype0*
	container 
�
.policy/fully_connected_1/weights/Adam_1/AssignAssign'policy/fully_connected_1/weights/Adam_19policy/fully_connected_1/weights/Adam_1/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@policy/fully_connected_1/weights*
validate_shape(
�
,policy/fully_connected_1/weights/Adam_1/readIdentity'policy/fully_connected_1/weights/Adam_1*
T0*3
_class)
'%loc:@policy/fully_connected_1/weights
�
6policy/fully_connected_1/biases/Adam/Initializer/zerosConst*
dtype0*
valueB�*    *2
_class(
&$loc:@policy/fully_connected_1/biases
�
$policy/fully_connected_1/biases/Adam
VariableV2*
shape:�*
shared_name *2
_class(
&$loc:@policy/fully_connected_1/biases*
dtype0*
	container 
�
+policy/fully_connected_1/biases/Adam/AssignAssign$policy/fully_connected_1/biases/Adam6policy/fully_connected_1/biases/Adam/Initializer/zeros*
use_locking(*
T0*2
_class(
&$loc:@policy/fully_connected_1/biases*
validate_shape(
�
)policy/fully_connected_1/biases/Adam/readIdentity$policy/fully_connected_1/biases/Adam*
T0*2
_class(
&$loc:@policy/fully_connected_1/biases
�
8policy/fully_connected_1/biases/Adam_1/Initializer/zerosConst*
valueB�*    *2
_class(
&$loc:@policy/fully_connected_1/biases*
dtype0
�
&policy/fully_connected_1/biases/Adam_1
VariableV2*
shape:�*
shared_name *2
_class(
&$loc:@policy/fully_connected_1/biases*
dtype0*
	container 
�
-policy/fully_connected_1/biases/Adam_1/AssignAssign&policy/fully_connected_1/biases/Adam_18policy/fully_connected_1/biases/Adam_1/Initializer/zeros*
use_locking(*
T0*2
_class(
&$loc:@policy/fully_connected_1/biases*
validate_shape(
�
+policy/fully_connected_1/biases/Adam_1/readIdentity&policy/fully_connected_1/biases/Adam_1*
T0*2
_class(
&$loc:@policy/fully_connected_1/biases
�
Gpolicy/fully_connected_2/weights/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB"�   @   *3
_class)
'%loc:@policy/fully_connected_2/weights
�
=policy/fully_connected_2/weights/Adam/Initializer/zeros/ConstConst*
valueB
 *    *3
_class)
'%loc:@policy/fully_connected_2/weights*
dtype0
�
7policy/fully_connected_2/weights/Adam/Initializer/zerosFillGpolicy/fully_connected_2/weights/Adam/Initializer/zeros/shape_as_tensor=policy/fully_connected_2/weights/Adam/Initializer/zeros/Const*
T0*

index_type0*3
_class)
'%loc:@policy/fully_connected_2/weights
�
%policy/fully_connected_2/weights/Adam
VariableV2*
shared_name *3
_class)
'%loc:@policy/fully_connected_2/weights*
dtype0*
	container *
shape:	�@
�
,policy/fully_connected_2/weights/Adam/AssignAssign%policy/fully_connected_2/weights/Adam7policy/fully_connected_2/weights/Adam/Initializer/zeros*
T0*3
_class)
'%loc:@policy/fully_connected_2/weights*
validate_shape(*
use_locking(
�
*policy/fully_connected_2/weights/Adam/readIdentity%policy/fully_connected_2/weights/Adam*
T0*3
_class)
'%loc:@policy/fully_connected_2/weights
�
Ipolicy/fully_connected_2/weights/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"�   @   *3
_class)
'%loc:@policy/fully_connected_2/weights*
dtype0
�
?policy/fully_connected_2/weights/Adam_1/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *3
_class)
'%loc:@policy/fully_connected_2/weights
�
9policy/fully_connected_2/weights/Adam_1/Initializer/zerosFillIpolicy/fully_connected_2/weights/Adam_1/Initializer/zeros/shape_as_tensor?policy/fully_connected_2/weights/Adam_1/Initializer/zeros/Const*
T0*

index_type0*3
_class)
'%loc:@policy/fully_connected_2/weights
�
'policy/fully_connected_2/weights/Adam_1
VariableV2*
shared_name *3
_class)
'%loc:@policy/fully_connected_2/weights*
dtype0*
	container *
shape:	�@
�
.policy/fully_connected_2/weights/Adam_1/AssignAssign'policy/fully_connected_2/weights/Adam_19policy/fully_connected_2/weights/Adam_1/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@policy/fully_connected_2/weights*
validate_shape(
�
,policy/fully_connected_2/weights/Adam_1/readIdentity'policy/fully_connected_2/weights/Adam_1*
T0*3
_class)
'%loc:@policy/fully_connected_2/weights
�
6policy/fully_connected_2/biases/Adam/Initializer/zerosConst*
valueB@*    *2
_class(
&$loc:@policy/fully_connected_2/biases*
dtype0
�
$policy/fully_connected_2/biases/Adam
VariableV2*
shape:@*
shared_name *2
_class(
&$loc:@policy/fully_connected_2/biases*
dtype0*
	container 
�
+policy/fully_connected_2/biases/Adam/AssignAssign$policy/fully_connected_2/biases/Adam6policy/fully_connected_2/biases/Adam/Initializer/zeros*
use_locking(*
T0*2
_class(
&$loc:@policy/fully_connected_2/biases*
validate_shape(
�
)policy/fully_connected_2/biases/Adam/readIdentity$policy/fully_connected_2/biases/Adam*
T0*2
_class(
&$loc:@policy/fully_connected_2/biases
�
8policy/fully_connected_2/biases/Adam_1/Initializer/zerosConst*
valueB@*    *2
_class(
&$loc:@policy/fully_connected_2/biases*
dtype0
�
&policy/fully_connected_2/biases/Adam_1
VariableV2*
shape:@*
shared_name *2
_class(
&$loc:@policy/fully_connected_2/biases*
dtype0*
	container 
�
-policy/fully_connected_2/biases/Adam_1/AssignAssign&policy/fully_connected_2/biases/Adam_18policy/fully_connected_2/biases/Adam_1/Initializer/zeros*
use_locking(*
T0*2
_class(
&$loc:@policy/fully_connected_2/biases*
validate_shape(
�
+policy/fully_connected_2/biases/Adam_1/readIdentity&policy/fully_connected_2/biases/Adam_1*
T0*2
_class(
&$loc:@policy/fully_connected_2/biases
�
Gpolicy/fully_connected_3/weights/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"@      *3
_class)
'%loc:@policy/fully_connected_3/weights*
dtype0
�
=policy/fully_connected_3/weights/Adam/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *3
_class)
'%loc:@policy/fully_connected_3/weights
�
7policy/fully_connected_3/weights/Adam/Initializer/zerosFillGpolicy/fully_connected_3/weights/Adam/Initializer/zeros/shape_as_tensor=policy/fully_connected_3/weights/Adam/Initializer/zeros/Const*
T0*

index_type0*3
_class)
'%loc:@policy/fully_connected_3/weights
�
%policy/fully_connected_3/weights/Adam
VariableV2*
dtype0*
	container *
shape
:@*
shared_name *3
_class)
'%loc:@policy/fully_connected_3/weights
�
,policy/fully_connected_3/weights/Adam/AssignAssign%policy/fully_connected_3/weights/Adam7policy/fully_connected_3/weights/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*3
_class)
'%loc:@policy/fully_connected_3/weights
�
*policy/fully_connected_3/weights/Adam/readIdentity%policy/fully_connected_3/weights/Adam*
T0*3
_class)
'%loc:@policy/fully_connected_3/weights
�
Ipolicy/fully_connected_3/weights/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"@      *3
_class)
'%loc:@policy/fully_connected_3/weights*
dtype0
�
?policy/fully_connected_3/weights/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *3
_class)
'%loc:@policy/fully_connected_3/weights*
dtype0
�
9policy/fully_connected_3/weights/Adam_1/Initializer/zerosFillIpolicy/fully_connected_3/weights/Adam_1/Initializer/zeros/shape_as_tensor?policy/fully_connected_3/weights/Adam_1/Initializer/zeros/Const*
T0*

index_type0*3
_class)
'%loc:@policy/fully_connected_3/weights
�
'policy/fully_connected_3/weights/Adam_1
VariableV2*
dtype0*
	container *
shape
:@*
shared_name *3
_class)
'%loc:@policy/fully_connected_3/weights
�
.policy/fully_connected_3/weights/Adam_1/AssignAssign'policy/fully_connected_3/weights/Adam_19policy/fully_connected_3/weights/Adam_1/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@policy/fully_connected_3/weights*
validate_shape(
�
,policy/fully_connected_3/weights/Adam_1/readIdentity'policy/fully_connected_3/weights/Adam_1*
T0*3
_class)
'%loc:@policy/fully_connected_3/weights
�
6policy/fully_connected_3/biases/Adam/Initializer/zerosConst*
valueB*    *2
_class(
&$loc:@policy/fully_connected_3/biases*
dtype0
�
$policy/fully_connected_3/biases/Adam
VariableV2*
shared_name *2
_class(
&$loc:@policy/fully_connected_3/biases*
dtype0*
	container *
shape:
�
+policy/fully_connected_3/biases/Adam/AssignAssign$policy/fully_connected_3/biases/Adam6policy/fully_connected_3/biases/Adam/Initializer/zeros*
T0*2
_class(
&$loc:@policy/fully_connected_3/biases*
validate_shape(*
use_locking(
�
)policy/fully_connected_3/biases/Adam/readIdentity$policy/fully_connected_3/biases/Adam*
T0*2
_class(
&$loc:@policy/fully_connected_3/biases
�
8policy/fully_connected_3/biases/Adam_1/Initializer/zerosConst*
valueB*    *2
_class(
&$loc:@policy/fully_connected_3/biases*
dtype0
�
&policy/fully_connected_3/biases/Adam_1
VariableV2*
dtype0*
	container *
shape:*
shared_name *2
_class(
&$loc:@policy/fully_connected_3/biases
�
-policy/fully_connected_3/biases/Adam_1/AssignAssign&policy/fully_connected_3/biases/Adam_18policy/fully_connected_3/biases/Adam_1/Initializer/zeros*
use_locking(*
T0*2
_class(
&$loc:@policy/fully_connected_3/biases*
validate_shape(
�
+policy/fully_connected_3/biases/Adam_1/readIdentity&policy/fully_connected_3/biases/Adam_1*
T0*2
_class(
&$loc:@policy/fully_connected_3/biases
�
GvalueNet/fully_connected/weights/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"�      *3
_class)
'%loc:@valueNet/fully_connected/weights*
dtype0
�
=valueNet/fully_connected/weights/Adam/Initializer/zeros/ConstConst*
valueB
 *    *3
_class)
'%loc:@valueNet/fully_connected/weights*
dtype0
�
7valueNet/fully_connected/weights/Adam/Initializer/zerosFillGvalueNet/fully_connected/weights/Adam/Initializer/zeros/shape_as_tensor=valueNet/fully_connected/weights/Adam/Initializer/zeros/Const*
T0*

index_type0*3
_class)
'%loc:@valueNet/fully_connected/weights
�
%valueNet/fully_connected/weights/Adam
VariableV2*3
_class)
'%loc:@valueNet/fully_connected/weights*
dtype0*
	container *
shape:
��*
shared_name 
�
,valueNet/fully_connected/weights/Adam/AssignAssign%valueNet/fully_connected/weights/Adam7valueNet/fully_connected/weights/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*3
_class)
'%loc:@valueNet/fully_connected/weights
�
*valueNet/fully_connected/weights/Adam/readIdentity%valueNet/fully_connected/weights/Adam*
T0*3
_class)
'%loc:@valueNet/fully_connected/weights
�
IvalueNet/fully_connected/weights/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"�      *3
_class)
'%loc:@valueNet/fully_connected/weights*
dtype0
�
?valueNet/fully_connected/weights/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *3
_class)
'%loc:@valueNet/fully_connected/weights*
dtype0
�
9valueNet/fully_connected/weights/Adam_1/Initializer/zerosFillIvalueNet/fully_connected/weights/Adam_1/Initializer/zeros/shape_as_tensor?valueNet/fully_connected/weights/Adam_1/Initializer/zeros/Const*
T0*

index_type0*3
_class)
'%loc:@valueNet/fully_connected/weights
�
'valueNet/fully_connected/weights/Adam_1
VariableV2*3
_class)
'%loc:@valueNet/fully_connected/weights*
dtype0*
	container *
shape:
��*
shared_name 
�
.valueNet/fully_connected/weights/Adam_1/AssignAssign'valueNet/fully_connected/weights/Adam_19valueNet/fully_connected/weights/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*3
_class)
'%loc:@valueNet/fully_connected/weights
�
,valueNet/fully_connected/weights/Adam_1/readIdentity'valueNet/fully_connected/weights/Adam_1*
T0*3
_class)
'%loc:@valueNet/fully_connected/weights
�
IvalueNet/fully_connected_1/weights/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"   �   *5
_class+
)'loc:@valueNet/fully_connected_1/weights*
dtype0
�
?valueNet/fully_connected_1/weights/Adam/Initializer/zeros/ConstConst*
valueB
 *    *5
_class+
)'loc:@valueNet/fully_connected_1/weights*
dtype0
�
9valueNet/fully_connected_1/weights/Adam/Initializer/zerosFillIvalueNet/fully_connected_1/weights/Adam/Initializer/zeros/shape_as_tensor?valueNet/fully_connected_1/weights/Adam/Initializer/zeros/Const*
T0*

index_type0*5
_class+
)'loc:@valueNet/fully_connected_1/weights
�
'valueNet/fully_connected_1/weights/Adam
VariableV2*
shared_name *5
_class+
)'loc:@valueNet/fully_connected_1/weights*
dtype0*
	container *
shape:
��
�
.valueNet/fully_connected_1/weights/Adam/AssignAssign'valueNet/fully_connected_1/weights/Adam9valueNet/fully_connected_1/weights/Adam/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights*
validate_shape(
�
,valueNet/fully_connected_1/weights/Adam/readIdentity'valueNet/fully_connected_1/weights/Adam*
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights
�
KvalueNet/fully_connected_1/weights/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"   �   *5
_class+
)'loc:@valueNet/fully_connected_1/weights*
dtype0
�
AvalueNet/fully_connected_1/weights/Adam_1/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *5
_class+
)'loc:@valueNet/fully_connected_1/weights
�
;valueNet/fully_connected_1/weights/Adam_1/Initializer/zerosFillKvalueNet/fully_connected_1/weights/Adam_1/Initializer/zeros/shape_as_tensorAvalueNet/fully_connected_1/weights/Adam_1/Initializer/zeros/Const*
T0*

index_type0*5
_class+
)'loc:@valueNet/fully_connected_1/weights
�
)valueNet/fully_connected_1/weights/Adam_1
VariableV2*
shared_name *5
_class+
)'loc:@valueNet/fully_connected_1/weights*
dtype0*
	container *
shape:
��
�
0valueNet/fully_connected_1/weights/Adam_1/AssignAssign)valueNet/fully_connected_1/weights/Adam_1;valueNet/fully_connected_1/weights/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights
�
.valueNet/fully_connected_1/weights/Adam_1/readIdentity)valueNet/fully_connected_1/weights/Adam_1*
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights
�
IvalueNet/fully_connected_2/weights/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"�   @   *5
_class+
)'loc:@valueNet/fully_connected_2/weights*
dtype0
�
?valueNet/fully_connected_2/weights/Adam/Initializer/zeros/ConstConst*
valueB
 *    *5
_class+
)'loc:@valueNet/fully_connected_2/weights*
dtype0
�
9valueNet/fully_connected_2/weights/Adam/Initializer/zerosFillIvalueNet/fully_connected_2/weights/Adam/Initializer/zeros/shape_as_tensor?valueNet/fully_connected_2/weights/Adam/Initializer/zeros/Const*
T0*

index_type0*5
_class+
)'loc:@valueNet/fully_connected_2/weights
�
'valueNet/fully_connected_2/weights/Adam
VariableV2*
dtype0*
	container *
shape:	�@*
shared_name *5
_class+
)'loc:@valueNet/fully_connected_2/weights
�
.valueNet/fully_connected_2/weights/Adam/AssignAssign'valueNet/fully_connected_2/weights/Adam9valueNet/fully_connected_2/weights/Adam/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights*
validate_shape(
�
,valueNet/fully_connected_2/weights/Adam/readIdentity'valueNet/fully_connected_2/weights/Adam*
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights
�
KvalueNet/fully_connected_2/weights/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"�   @   *5
_class+
)'loc:@valueNet/fully_connected_2/weights*
dtype0
�
AvalueNet/fully_connected_2/weights/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *5
_class+
)'loc:@valueNet/fully_connected_2/weights*
dtype0
�
;valueNet/fully_connected_2/weights/Adam_1/Initializer/zerosFillKvalueNet/fully_connected_2/weights/Adam_1/Initializer/zeros/shape_as_tensorAvalueNet/fully_connected_2/weights/Adam_1/Initializer/zeros/Const*
T0*

index_type0*5
_class+
)'loc:@valueNet/fully_connected_2/weights
�
)valueNet/fully_connected_2/weights/Adam_1
VariableV2*
shape:	�@*
shared_name *5
_class+
)'loc:@valueNet/fully_connected_2/weights*
dtype0*
	container 
�
0valueNet/fully_connected_2/weights/Adam_1/AssignAssign)valueNet/fully_connected_2/weights/Adam_1;valueNet/fully_connected_2/weights/Adam_1/Initializer/zeros*
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights*
validate_shape(*
use_locking(
�
.valueNet/fully_connected_2/weights/Adam_1/readIdentity)valueNet/fully_connected_2/weights/Adam_1*
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights
@
dagger/solver/beta1Const*
valueB
 *fff?*
dtype0
@
dagger/solver/beta2Const*
valueB
 *w�?*
dtype0
B
dagger/solver/epsilonConst*
valueB
 *w�+2*
dtype0
�
Ddagger/solver/update_extra_encoder/fully_connected/weights/ApplyAdam	ApplyAdam%extra_encoder/fully_connected/weights*extra_encoder/fully_connected/weights/Adam,extra_encoder/fully_connected/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver/beta1dagger/solver/beta2dagger/solver/epsiloncdagger/gradients/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights*
use_nesterov( 
�
Cdagger/solver/update_extra_encoder/fully_connected/biases/ApplyAdam	ApplyAdam$extra_encoder/fully_connected/biases)extra_encoder/fully_connected/biases/Adam+extra_encoder/fully_connected/biases/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver/beta1dagger/solver/beta2dagger/solver/epsilonddagger/gradients/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases*
use_nesterov( 
�
=dagger/solver/update_policy/fully_connected/weights/ApplyAdam	ApplyAdampolicy/fully_connected/weights#policy/fully_connected/weights/Adam%policy/fully_connected/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver/beta1dagger/solver/beta2dagger/solver/epsilondagger/gradients/AddN_2*
T0*1
_class'
%#loc:@policy/fully_connected/weights*
use_nesterov( *
use_locking( 
�
<dagger/solver/update_policy/fully_connected/biases/ApplyAdam	ApplyAdampolicy/fully_connected/biases"policy/fully_connected/biases/Adam$policy/fully_connected/biases/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver/beta1dagger/solver/beta2dagger/solver/epsilonddagger/gradients/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*0
_class&
$"loc:@policy/fully_connected/biases
�
?dagger/solver/update_policy/fully_connected_1/weights/ApplyAdam	ApplyAdam policy/fully_connected_1/weights%policy/fully_connected_1/weights/Adam'policy/fully_connected_1/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver/beta1dagger/solver/beta2dagger/solver/epsilondagger/gradients/AddN_1*
use_locking( *
T0*3
_class)
'%loc:@policy/fully_connected_1/weights*
use_nesterov( 
�
>dagger/solver/update_policy/fully_connected_1/biases/ApplyAdam	ApplyAdampolicy/fully_connected_1/biases$policy/fully_connected_1/biases/Adam&policy/fully_connected_1/biases/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver/beta1dagger/solver/beta2dagger/solver/epsilonddagger/gradients/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_1/biases*
use_nesterov( 
�
?dagger/solver/update_policy/fully_connected_2/weights/ApplyAdam	ApplyAdam policy/fully_connected_2/weights%policy/fully_connected_2/weights/Adam'policy/fully_connected_2/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver/beta1dagger/solver/beta2dagger/solver/epsilondagger/gradients/AddN*
use_locking( *
T0*3
_class)
'%loc:@policy/fully_connected_2/weights*
use_nesterov( 
�
>dagger/solver/update_policy/fully_connected_2/biases/ApplyAdam	ApplyAdampolicy/fully_connected_2/biases$policy/fully_connected_2/biases/Adam&policy/fully_connected_2/biases/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver/beta1dagger/solver/beta2dagger/solver/epsilonddagger/gradients/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_2/biases*
use_nesterov( 
�
?dagger/solver/update_policy/fully_connected_3/weights/ApplyAdam	ApplyAdam policy/fully_connected_3/weights%policy/fully_connected_3/weights/Adam'policy/fully_connected_3/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver/beta1dagger/solver/beta2dagger/solver/epsilonUdagger/gradients/policy/policy/fully_connected/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*3
_class)
'%loc:@policy/fully_connected_3/weights*
use_nesterov( 
�
>dagger/solver/update_policy/fully_connected_3/biases/ApplyAdam	ApplyAdampolicy/fully_connected_3/biases$policy/fully_connected_3/biases/Adam&policy/fully_connected_3/biases/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver/beta1dagger/solver/beta2dagger/solver/epsilonVdagger/gradients/policy/policy/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
T0*2
_class(
&$loc:@policy/fully_connected_3/biases*
use_nesterov( *
use_locking( 
�
?dagger/solver/update_valueNet/fully_connected/weights/ApplyAdam	ApplyAdam valueNet/fully_connected/weights%valueNet/fully_connected/weights/Adam'valueNet/fully_connected/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver/beta1dagger/solver/beta2dagger/solver/epsilonpdagger/gradients/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul*
use_locking( *
T0*3
_class)
'%loc:@valueNet/fully_connected/weights*
use_nesterov( 
�
Adagger/solver/update_valueNet/fully_connected_1/weights/ApplyAdam	ApplyAdam"valueNet/fully_connected_1/weights'valueNet/fully_connected_1/weights/Adam)valueNet/fully_connected_1/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver/beta1dagger/solver/beta2dagger/solver/epsilonpdagger/gradients/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul*
use_locking( *
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights*
use_nesterov( 
�
Adagger/solver/update_valueNet/fully_connected_2/weights/ApplyAdam	ApplyAdam"valueNet/fully_connected_2/weights'valueNet/fully_connected_2/weights/Adam)valueNet/fully_connected_2/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver/beta1dagger/solver/beta2dagger/solver/epsilonpdagger/gradients/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul*
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights*
use_nesterov( *
use_locking( 
�
dagger/solver/mulMuldagger/beta1_power/readdagger/solver/beta1D^dagger/solver/update_extra_encoder/fully_connected/biases/ApplyAdamE^dagger/solver/update_extra_encoder/fully_connected/weights/ApplyAdam=^dagger/solver/update_policy/fully_connected/biases/ApplyAdam>^dagger/solver/update_policy/fully_connected/weights/ApplyAdam?^dagger/solver/update_policy/fully_connected_1/biases/ApplyAdam@^dagger/solver/update_policy/fully_connected_1/weights/ApplyAdam?^dagger/solver/update_policy/fully_connected_2/biases/ApplyAdam@^dagger/solver/update_policy/fully_connected_2/weights/ApplyAdam?^dagger/solver/update_policy/fully_connected_3/biases/ApplyAdam@^dagger/solver/update_policy/fully_connected_3/weights/ApplyAdam@^dagger/solver/update_valueNet/fully_connected/weights/ApplyAdamB^dagger/solver/update_valueNet/fully_connected_1/weights/ApplyAdamB^dagger/solver/update_valueNet/fully_connected_2/weights/ApplyAdam*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�
dagger/solver/AssignAssigndagger/beta1_powerdagger/solver/mul*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases*
validate_shape(*
use_locking( 
�
dagger/solver/mul_1Muldagger/beta2_power/readdagger/solver/beta2D^dagger/solver/update_extra_encoder/fully_connected/biases/ApplyAdamE^dagger/solver/update_extra_encoder/fully_connected/weights/ApplyAdam=^dagger/solver/update_policy/fully_connected/biases/ApplyAdam>^dagger/solver/update_policy/fully_connected/weights/ApplyAdam?^dagger/solver/update_policy/fully_connected_1/biases/ApplyAdam@^dagger/solver/update_policy/fully_connected_1/weights/ApplyAdam?^dagger/solver/update_policy/fully_connected_2/biases/ApplyAdam@^dagger/solver/update_policy/fully_connected_2/weights/ApplyAdam?^dagger/solver/update_policy/fully_connected_3/biases/ApplyAdam@^dagger/solver/update_policy/fully_connected_3/weights/ApplyAdam@^dagger/solver/update_valueNet/fully_connected/weights/ApplyAdamB^dagger/solver/update_valueNet/fully_connected_1/weights/ApplyAdamB^dagger/solver/update_valueNet/fully_connected_2/weights/ApplyAdam*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�
dagger/solver/Assign_1Assigndagger/beta2_powerdagger/solver/mul_1*
validate_shape(*
use_locking( *
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�
dagger/solver/updateNoOp^dagger/solver/Assign^dagger/solver/Assign_1D^dagger/solver/update_extra_encoder/fully_connected/biases/ApplyAdamE^dagger/solver/update_extra_encoder/fully_connected/weights/ApplyAdam=^dagger/solver/update_policy/fully_connected/biases/ApplyAdam>^dagger/solver/update_policy/fully_connected/weights/ApplyAdam?^dagger/solver/update_policy/fully_connected_1/biases/ApplyAdam@^dagger/solver/update_policy/fully_connected_1/weights/ApplyAdam?^dagger/solver/update_policy/fully_connected_2/biases/ApplyAdam@^dagger/solver/update_policy/fully_connected_2/weights/ApplyAdam?^dagger/solver/update_policy/fully_connected_3/biases/ApplyAdam@^dagger/solver/update_policy/fully_connected_3/weights/ApplyAdam@^dagger/solver/update_valueNet/fully_connected/weights/ApplyAdamB^dagger/solver/update_valueNet/fully_connected_1/weights/ApplyAdamB^dagger/solver/update_valueNet/fully_connected_2/weights/ApplyAdam
{
dagger/solver/valueConst^dagger/solver/update*
dtype0*%
_class
loc:@dagger/global_step*
value	B :
�
dagger/solver	AssignAdddagger/global_stepdagger/solver/value*
T0*%
_class
loc:@dagger/global_step*
use_locking( 
;
dagger/add_1AddV2dagger/mul_1dagger/l2loss*
T0
b
dagger/gradients_1/ShapeConst*
dtype0*
_class
loc:@dagger/add_1*
valueB 
j
dagger/gradients_1/grad_ys_0Const*
dtype0*
_class
loc:@dagger/add_1*
valueB
 *  �?
�
dagger/gradients_1/FillFilldagger/gradients_1/Shapedagger/gradients_1/grad_ys_0*
T0*
_class
loc:@dagger/add_1*

index_type0
W
5dagger/gradients_1/dagger/add_1_grad/tuple/group_depsNoOp^dagger/gradients_1/Fill
�
=dagger/gradients_1/dagger/add_1_grad/tuple/control_dependencyIdentitydagger/gradients_1/Fill6^dagger/gradients_1/dagger/add_1_grad/tuple/group_deps*
T0*
_class
loc:@dagger/add_1
�
?dagger/gradients_1/dagger/add_1_grad/tuple/control_dependency_1Identitydagger/gradients_1/Fill6^dagger/gradients_1/dagger/add_1_grad/tuple/group_deps*
T0*
_class
loc:@dagger/add_1
�
(dagger/gradients_1/dagger/mul_1_grad/MulMul=dagger/gradients_1/dagger/add_1_grad/tuple/control_dependencydagger/loss_masked*
T0*
_class
loc:@dagger/mul_1
�
*dagger/gradients_1/dagger/mul_1_grad/Mul_1Mul=dagger/gradients_1/dagger/add_1_grad/tuple/control_dependencydagger/dagger_coeff/read*
T0*
_class
loc:@dagger/mul_1
�
5dagger/gradients_1/dagger/mul_1_grad/tuple/group_depsNoOp)^dagger/gradients_1/dagger/mul_1_grad/Mul+^dagger/gradients_1/dagger/mul_1_grad/Mul_1
�
=dagger/gradients_1/dagger/mul_1_grad/tuple/control_dependencyIdentity(dagger/gradients_1/dagger/mul_1_grad/Mul6^dagger/gradients_1/dagger/mul_1_grad/tuple/group_deps*
T0*
_class
loc:@dagger/mul_1
�
?dagger/gradients_1/dagger/mul_1_grad/tuple/control_dependency_1Identity*dagger/gradients_1/dagger/mul_1_grad/Mul_16^dagger/gradients_1/dagger/mul_1_grad/tuple/group_deps*
T0*
_class
loc:@dagger/mul_1
�
8dagger/gradients_1/dagger/loss_masked_grad/Reshape/shapeConst*%
_class
loc:@dagger/loss_masked*
valueB"      *
dtype0
�
2dagger/gradients_1/dagger/loss_masked_grad/ReshapeReshape?dagger/gradients_1/dagger/mul_1_grad/tuple/control_dependency_18dagger/gradients_1/dagger/loss_masked_grad/Reshape/shape*
T0*%
_class
loc:@dagger/loss_masked*
Tshape0
�
0dagger/gradients_1/dagger/loss_masked_grad/ShapeShapedagger/boolean_mask/GatherV2*
T0*%
_class
loc:@dagger/loss_masked*
out_type0
�
/dagger/gradients_1/dagger/loss_masked_grad/TileTile2dagger/gradients_1/dagger/loss_masked_grad/Reshape0dagger/gradients_1/dagger/loss_masked_grad/Shape*
T0*%
_class
loc:@dagger/loss_masked*

Tmultiples0
�
2dagger/gradients_1/dagger/loss_masked_grad/Shape_1Shapedagger/boolean_mask/GatherV2*
T0*%
_class
loc:@dagger/loss_masked*
out_type0
�
2dagger/gradients_1/dagger/loss_masked_grad/Shape_2Const*%
_class
loc:@dagger/loss_masked*
valueB *
dtype0
�
0dagger/gradients_1/dagger/loss_masked_grad/ConstConst*%
_class
loc:@dagger/loss_masked*
valueB: *
dtype0
�
/dagger/gradients_1/dagger/loss_masked_grad/ProdProd2dagger/gradients_1/dagger/loss_masked_grad/Shape_10dagger/gradients_1/dagger/loss_masked_grad/Const*
	keep_dims( *

Tidx0*
T0*%
_class
loc:@dagger/loss_masked
�
2dagger/gradients_1/dagger/loss_masked_grad/Const_1Const*%
_class
loc:@dagger/loss_masked*
valueB: *
dtype0
�
1dagger/gradients_1/dagger/loss_masked_grad/Prod_1Prod2dagger/gradients_1/dagger/loss_masked_grad/Shape_22dagger/gradients_1/dagger/loss_masked_grad/Const_1*
	keep_dims( *

Tidx0*
T0*%
_class
loc:@dagger/loss_masked
�
4dagger/gradients_1/dagger/loss_masked_grad/Maximum/yConst*%
_class
loc:@dagger/loss_masked*
value	B :*
dtype0
�
2dagger/gradients_1/dagger/loss_masked_grad/MaximumMaximum1dagger/gradients_1/dagger/loss_masked_grad/Prod_14dagger/gradients_1/dagger/loss_masked_grad/Maximum/y*
T0*%
_class
loc:@dagger/loss_masked
�
3dagger/gradients_1/dagger/loss_masked_grad/floordivFloorDiv/dagger/gradients_1/dagger/loss_masked_grad/Prod2dagger/gradients_1/dagger/loss_masked_grad/Maximum*
T0*%
_class
loc:@dagger/loss_masked
�
/dagger/gradients_1/dagger/loss_masked_grad/CastCast3dagger/gradients_1/dagger/loss_masked_grad/floordiv*

SrcT0*%
_class
loc:@dagger/loss_masked*
Truncate( *

DstT0
�
2dagger/gradients_1/dagger/loss_masked_grad/truedivRealDiv/dagger/gradients_1/dagger/loss_masked_grad/Tile/dagger/gradients_1/dagger/loss_masked_grad/Cast*
T0*%
_class
loc:@dagger/loss_masked
}
0dagger/gradients_1/dagger/Sum_grad/Reshape/shapeConst*
_class
loc:@dagger/Sum*
valueB:*
dtype0
�
*dagger/gradients_1/dagger/Sum_grad/ReshapeReshape?dagger/gradients_1/dagger/add_1_grad/tuple/control_dependency_10dagger/gradients_1/dagger/Sum_grad/Reshape/shape*
T0*
_class
loc:@dagger/Sum*
Tshape0
u
(dagger/gradients_1/dagger/Sum_grad/ConstConst*
_class
loc:@dagger/Sum*
valueB:*
dtype0
�
'dagger/gradients_1/dagger/Sum_grad/TileTile*dagger/gradients_1/dagger/Sum_grad/Reshape(dagger/gradients_1/dagger/Sum_grad/Const*

Tmultiples0*
T0*
_class
loc:@dagger/Sum
�
:dagger/gradients_1/dagger/boolean_mask/GatherV2_grad/ShapeShapedagger/boolean_mask/Reshape*
T0*Q
_classG
E!loc:@dagger/boolean_mask/GatherV2 loc:@dagger/boolean_mask/Reshape*
out_type0	
�
9dagger/gradients_1/dagger/boolean_mask/GatherV2_grad/CastCast:dagger/gradients_1/dagger/boolean_mask/GatherV2_grad/Shape*

SrcT0	*Q
_classG
E!loc:@dagger/boolean_mask/GatherV2 loc:@dagger/boolean_mask/Reshape*
Truncate( *

DstT0
�
9dagger/gradients_1/dagger/boolean_mask/GatherV2_grad/SizeSizedagger/boolean_mask/Squeeze*
T0	*/
_class%
#!loc:@dagger/boolean_mask/GatherV2*
out_type0
�
Cdagger/gradients_1/dagger/boolean_mask/GatherV2_grad/ExpandDims/dimConst*/
_class%
#!loc:@dagger/boolean_mask/GatherV2*
value	B : *
dtype0
�
?dagger/gradients_1/dagger/boolean_mask/GatherV2_grad/ExpandDims
ExpandDims9dagger/gradients_1/dagger/boolean_mask/GatherV2_grad/SizeCdagger/gradients_1/dagger/boolean_mask/GatherV2_grad/ExpandDims/dim*

Tdim0*
T0*/
_class%
#!loc:@dagger/boolean_mask/GatherV2
�
Hdagger/gradients_1/dagger/boolean_mask/GatherV2_grad/strided_slice/stackConst*/
_class%
#!loc:@dagger/boolean_mask/GatherV2*
valueB:*
dtype0
�
Jdagger/gradients_1/dagger/boolean_mask/GatherV2_grad/strided_slice/stack_1Const*
dtype0*/
_class%
#!loc:@dagger/boolean_mask/GatherV2*
valueB: 
�
Jdagger/gradients_1/dagger/boolean_mask/GatherV2_grad/strided_slice/stack_2Const*/
_class%
#!loc:@dagger/boolean_mask/GatherV2*
valueB:*
dtype0
�
Bdagger/gradients_1/dagger/boolean_mask/GatherV2_grad/strided_sliceStridedSlice9dagger/gradients_1/dagger/boolean_mask/GatherV2_grad/CastHdagger/gradients_1/dagger/boolean_mask/GatherV2_grad/strided_slice/stackJdagger/gradients_1/dagger/boolean_mask/GatherV2_grad/strided_slice/stack_1Jdagger/gradients_1/dagger/boolean_mask/GatherV2_grad/strided_slice/stack_2*
Index0*
T0*/
_class%
#!loc:@dagger/boolean_mask/GatherV2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask
�
@dagger/gradients_1/dagger/boolean_mask/GatherV2_grad/concat/axisConst*/
_class%
#!loc:@dagger/boolean_mask/GatherV2*
value	B : *
dtype0
�
;dagger/gradients_1/dagger/boolean_mask/GatherV2_grad/concatConcatV2?dagger/gradients_1/dagger/boolean_mask/GatherV2_grad/ExpandDimsBdagger/gradients_1/dagger/boolean_mask/GatherV2_grad/strided_slice@dagger/gradients_1/dagger/boolean_mask/GatherV2_grad/concat/axis*
T0*/
_class%
#!loc:@dagger/boolean_mask/GatherV2*
N*

Tidx0
�
<dagger/gradients_1/dagger/boolean_mask/GatherV2_grad/ReshapeReshape2dagger/gradients_1/dagger/loss_masked_grad/truediv;dagger/gradients_1/dagger/boolean_mask/GatherV2_grad/concat*
T0*/
_class%
#!loc:@dagger/boolean_mask/GatherV2*
Tshape0
�
>dagger/gradients_1/dagger/boolean_mask/GatherV2_grad/Reshape_1Reshapedagger/boolean_mask/Squeeze?dagger/gradients_1/dagger/boolean_mask/GatherV2_grad/ExpandDims*
T0	*/
_class%
#!loc:@dagger/boolean_mask/GatherV2*
Tshape0
�
9dagger/gradients_1/dagger/boolean_mask/Reshape_grad/ShapeShapedagger/Reshape_5*
T0*.
_class$
" loc:@dagger/boolean_mask/Reshape*
out_type0
�
Odagger/gradients_1/dagger/boolean_mask/Reshape_grad/Reshape/strided_slice/stackConst*.
_class$
" loc:@dagger/boolean_mask/Reshape*
valueB: *
dtype0
�
Qdagger/gradients_1/dagger/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_1Const*.
_class$
" loc:@dagger/boolean_mask/Reshape*
valueB:*
dtype0
�
Qdagger/gradients_1/dagger/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_2Const*.
_class$
" loc:@dagger/boolean_mask/Reshape*
valueB:*
dtype0
�
Idagger/gradients_1/dagger/boolean_mask/Reshape_grad/Reshape/strided_sliceStridedSlice9dagger/gradients_1/dagger/boolean_mask/GatherV2_grad/CastOdagger/gradients_1/dagger/boolean_mask/Reshape_grad/Reshape/strided_slice/stackQdagger/gradients_1/dagger/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_1Qdagger/gradients_1/dagger/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_2*
T0*
Index0*.
_class$
" loc:@dagger/boolean_mask/Reshape*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
�
Bdagger/gradients_1/dagger/boolean_mask/Reshape_grad/Reshape/tensorUnsortedSegmentSum<dagger/gradients_1/dagger/boolean_mask/GatherV2_grad/Reshape>dagger/gradients_1/dagger/boolean_mask/GatherV2_grad/Reshape_1Idagger/gradients_1/dagger/boolean_mask/Reshape_grad/Reshape/strided_slice*
Tnumsegments0*
Tindices0	*
T0*.
_class$
" loc:@dagger/boolean_mask/Reshape
�
;dagger/gradients_1/dagger/boolean_mask/Reshape_grad/ReshapeReshapeBdagger/gradients_1/dagger/boolean_mask/Reshape_grad/Reshape/tensor9dagger/gradients_1/dagger/boolean_mask/Reshape_grad/Shape*
T0*.
_class$
" loc:@dagger/boolean_mask/Reshape*
Tshape0
�
.dagger/gradients_1/Identity/input_grad/unstackUnpack'dagger/gradients_1/dagger/Sum_grad/Tile*	
num*
T0*!
_class
loc:@Identity/input*

axis 
p
7dagger/gradients_1/Identity/input_grad/tuple/group_depsNoOp/^dagger/gradients_1/Identity/input_grad/unstack
�
?dagger/gradients_1/Identity/input_grad/tuple/control_dependencyIdentity.dagger/gradients_1/Identity/input_grad/unstack8^dagger/gradients_1/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
Adagger/gradients_1/Identity/input_grad/tuple/control_dependency_1Identity0dagger/gradients_1/Identity/input_grad/unstack:18^dagger/gradients_1/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
Adagger/gradients_1/Identity/input_grad/tuple/control_dependency_2Identity0dagger/gradients_1/Identity/input_grad/unstack:28^dagger/gradients_1/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
Adagger/gradients_1/Identity/input_grad/tuple/control_dependency_3Identity0dagger/gradients_1/Identity/input_grad/unstack:38^dagger/gradients_1/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
Adagger/gradients_1/Identity/input_grad/tuple/control_dependency_4Identity0dagger/gradients_1/Identity/input_grad/unstack:48^dagger/gradients_1/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
Adagger/gradients_1/Identity/input_grad/tuple/control_dependency_5Identity0dagger/gradients_1/Identity/input_grad/unstack:58^dagger/gradients_1/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
.dagger/gradients_1/dagger/Reshape_5_grad/ShapeShapedagger/Mean*
T0*#
_class
loc:@dagger/Reshape_5*
out_type0
�
0dagger/gradients_1/dagger/Reshape_5_grad/ReshapeReshape;dagger/gradients_1/dagger/boolean_mask/Reshape_grad/Reshape.dagger/gradients_1/dagger/Reshape_5_grad/Shape*
T0*#
_class
loc:@dagger/Reshape_5*
Tshape0
�
idagger/gradients_1/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMul?dagger/gradients_1/Identity/input_grad/tuple/control_dependencyTpolicy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*`
_classV
TRloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_1/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1Mul?dagger/gradients_1/Identity/input_grad/tuple/control_dependencyCast_2/x*
T0*`
_classV
TRloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
vdagger/gradients_1/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpj^dagger/gradients_1/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mull^dagger/gradients_1/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
~dagger/gradients_1/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentityidagger/gradients_1/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mulw^dagger/gradients_1/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_1/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitykdagger/gradients_1/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1w^dagger/gradients_1/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
idagger/gradients_1/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMulAdagger/gradients_1/Identity/input_grad/tuple/control_dependency_1Tpolicy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*`
_classV
TRloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_1/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1MulAdagger/gradients_1/Identity/input_grad/tuple/control_dependency_1Cast_2/x*
T0*`
_classV
TRloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
vdagger/gradients_1/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpj^dagger/gradients_1/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mull^dagger/gradients_1/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
~dagger/gradients_1/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentityidagger/gradients_1/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mulw^dagger/gradients_1/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_1/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitykdagger/gradients_1/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1w^dagger/gradients_1/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
idagger/gradients_1/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMulAdagger/gradients_1/Identity/input_grad/tuple/control_dependency_2Tpolicy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*`
_classV
TRloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_1/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1MulAdagger/gradients_1/Identity/input_grad/tuple/control_dependency_2Cast_2/x*
T0*`
_classV
TRloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
vdagger/gradients_1/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpj^dagger/gradients_1/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mull^dagger/gradients_1/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
~dagger/gradients_1/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentityidagger/gradients_1/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mulw^dagger/gradients_1/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_1/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitykdagger/gradients_1/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1w^dagger/gradients_1/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_1/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMulAdagger/gradients_1/Identity/input_grad/tuple/control_dependency_3Vpolicy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
mdagger/gradients_1/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1MulAdagger/gradients_1/Identity/input_grad/tuple/control_dependency_3Cast_2/x*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
xdagger/gradients_1/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpl^dagger/gradients_1/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muln^dagger/gradients_1/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
�dagger/gradients_1/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentitykdagger/gradients_1/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muly^dagger/gradients_1/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_1/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitymdagger/gradients_1/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1y^dagger/gradients_1/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_1/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMulAdagger/gradients_1/Identity/input_grad/tuple/control_dependency_4Vpolicy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
mdagger/gradients_1/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1MulAdagger/gradients_1/Identity/input_grad/tuple/control_dependency_4Cast_2/x*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
xdagger/gradients_1/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpl^dagger/gradients_1/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muln^dagger/gradients_1/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
�dagger/gradients_1/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentitykdagger/gradients_1/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muly^dagger/gradients_1/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_1/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitymdagger/gradients_1/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1y^dagger/gradients_1/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_1/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMulAdagger/gradients_1/Identity/input_grad/tuple/control_dependency_5Vpolicy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
mdagger/gradients_1/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1MulAdagger/gradients_1/Identity/input_grad/tuple/control_dependency_5Cast_2/x*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
xdagger/gradients_1/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpl^dagger/gradients_1/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muln^dagger/gradients_1/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
�dagger/gradients_1/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentitykdagger/gradients_1/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muly^dagger/gradients_1/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_1/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitymdagger/gradients_1/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1y^dagger/gradients_1/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
z
)dagger/gradients_1/dagger/Mean_grad/ShapeShapedagger/Square*
T0*
_class
loc:@dagger/Mean*
out_type0
r
(dagger/gradients_1/dagger/Mean_grad/SizeConst*
_class
loc:@dagger/Mean*
value	B :*
dtype0
�
'dagger/gradients_1/dagger/Mean_grad/addAddV2dagger/Mean/reduction_indices(dagger/gradients_1/dagger/Mean_grad/Size*
T0*
_class
loc:@dagger/Mean
�
'dagger/gradients_1/dagger/Mean_grad/modFloorMod'dagger/gradients_1/dagger/Mean_grad/add(dagger/gradients_1/dagger/Mean_grad/Size*
T0*
_class
loc:@dagger/Mean
t
+dagger/gradients_1/dagger/Mean_grad/Shape_1Const*
_class
loc:@dagger/Mean*
valueB *
dtype0
y
/dagger/gradients_1/dagger/Mean_grad/range/startConst*
dtype0*
_class
loc:@dagger/Mean*
value	B : 
y
/dagger/gradients_1/dagger/Mean_grad/range/deltaConst*
_class
loc:@dagger/Mean*
value	B :*
dtype0
�
)dagger/gradients_1/dagger/Mean_grad/rangeRange/dagger/gradients_1/dagger/Mean_grad/range/start(dagger/gradients_1/dagger/Mean_grad/Size/dagger/gradients_1/dagger/Mean_grad/range/delta*

Tidx0*
_class
loc:@dagger/Mean
x
.dagger/gradients_1/dagger/Mean_grad/Fill/valueConst*
_class
loc:@dagger/Mean*
value	B :*
dtype0
�
(dagger/gradients_1/dagger/Mean_grad/FillFill+dagger/gradients_1/dagger/Mean_grad/Shape_1.dagger/gradients_1/dagger/Mean_grad/Fill/value*
T0*
_class
loc:@dagger/Mean*

index_type0
�
1dagger/gradients_1/dagger/Mean_grad/DynamicStitchDynamicStitch)dagger/gradients_1/dagger/Mean_grad/range'dagger/gradients_1/dagger/Mean_grad/mod)dagger/gradients_1/dagger/Mean_grad/Shape(dagger/gradients_1/dagger/Mean_grad/Fill*
T0*
_class
loc:@dagger/Mean*
N
w
-dagger/gradients_1/dagger/Mean_grad/Maximum/yConst*
dtype0*
_class
loc:@dagger/Mean*
value	B :
�
+dagger/gradients_1/dagger/Mean_grad/MaximumMaximum1dagger/gradients_1/dagger/Mean_grad/DynamicStitch-dagger/gradients_1/dagger/Mean_grad/Maximum/y*
T0*
_class
loc:@dagger/Mean
�
,dagger/gradients_1/dagger/Mean_grad/floordivFloorDiv)dagger/gradients_1/dagger/Mean_grad/Shape+dagger/gradients_1/dagger/Mean_grad/Maximum*
T0*
_class
loc:@dagger/Mean
�
+dagger/gradients_1/dagger/Mean_grad/ReshapeReshape0dagger/gradients_1/dagger/Reshape_5_grad/Reshape1dagger/gradients_1/dagger/Mean_grad/DynamicStitch*
T0*
_class
loc:@dagger/Mean*
Tshape0
�
(dagger/gradients_1/dagger/Mean_grad/TileTile+dagger/gradients_1/dagger/Mean_grad/Reshape,dagger/gradients_1/dagger/Mean_grad/floordiv*

Tmultiples0*
T0*
_class
loc:@dagger/Mean
|
+dagger/gradients_1/dagger/Mean_grad/Shape_2Shapedagger/Square*
T0*
_class
loc:@dagger/Mean*
out_type0
z
+dagger/gradients_1/dagger/Mean_grad/Shape_3Shapedagger/Mean*
T0*
_class
loc:@dagger/Mean*
out_type0
w
)dagger/gradients_1/dagger/Mean_grad/ConstConst*
_class
loc:@dagger/Mean*
valueB: *
dtype0
�
(dagger/gradients_1/dagger/Mean_grad/ProdProd+dagger/gradients_1/dagger/Mean_grad/Shape_2)dagger/gradients_1/dagger/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0*
_class
loc:@dagger/Mean
y
+dagger/gradients_1/dagger/Mean_grad/Const_1Const*
dtype0*
_class
loc:@dagger/Mean*
valueB: 
�
*dagger/gradients_1/dagger/Mean_grad/Prod_1Prod+dagger/gradients_1/dagger/Mean_grad/Shape_3+dagger/gradients_1/dagger/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_class
loc:@dagger/Mean
y
/dagger/gradients_1/dagger/Mean_grad/Maximum_1/yConst*
dtype0*
_class
loc:@dagger/Mean*
value	B :
�
-dagger/gradients_1/dagger/Mean_grad/Maximum_1Maximum*dagger/gradients_1/dagger/Mean_grad/Prod_1/dagger/gradients_1/dagger/Mean_grad/Maximum_1/y*
T0*
_class
loc:@dagger/Mean
�
.dagger/gradients_1/dagger/Mean_grad/floordiv_1FloorDiv(dagger/gradients_1/dagger/Mean_grad/Prod-dagger/gradients_1/dagger/Mean_grad/Maximum_1*
T0*
_class
loc:@dagger/Mean
�
(dagger/gradients_1/dagger/Mean_grad/CastCast.dagger/gradients_1/dagger/Mean_grad/floordiv_1*
Truncate( *

DstT0*

SrcT0*
_class
loc:@dagger/Mean
�
+dagger/gradients_1/dagger/Mean_grad/truedivRealDiv(dagger/gradients_1/dagger/Mean_grad/Tile(dagger/gradients_1/dagger/Mean_grad/Cast*
T0*
_class
loc:@dagger/Mean
�
pdagger/gradients_1/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul#policy/fully_connected/weights/read�dagger/gradients_1/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
pdagger/gradients_1/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul%policy/fully_connected_1/weights/read�dagger/gradients_1/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
pdagger/gradients_1/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul%policy/fully_connected_2/weights/read�dagger/gradients_1/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
rdagger/gradients_1/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul%valueNet/fully_connected/weights/read�dagger/gradients_1/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*i
_class_
][loc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
rdagger/gradients_1/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul'valueNet/fully_connected_1/weights/read�dagger/gradients_1/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*i
_class_
][loc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
rdagger/gradients_1/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul'valueNet/fully_connected_2/weights/read�dagger/gradients_1/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*i
_class_
][loc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
+dagger/gradients_1/dagger/Square_grad/ConstConst,^dagger/gradients_1/dagger/Mean_grad/truediv* 
_class
loc:@dagger/Square*
valueB
 *   @*
dtype0
�
)dagger/gradients_1/dagger/Square_grad/MulMul
dagger/sub+dagger/gradients_1/dagger/Square_grad/Const*
T0* 
_class
loc:@dagger/Square
�
+dagger/gradients_1/dagger/Square_grad/Mul_1Mul+dagger/gradients_1/dagger/Mean_grad/truediv)dagger/gradients_1/dagger/Square_grad/Mul*
T0* 
_class
loc:@dagger/Square
{
(dagger/gradients_1/dagger/sub_grad/ShapeShapedagger/Reshape_4*
T0*
_class
loc:@dagger/sub*
out_type0
�
*dagger/gradients_1/dagger/sub_grad/Shape_1Shape%policy/policy/fully_connected/BiasAdd*
T0*
_class
loc:@dagger/sub*
out_type0
�
8dagger/gradients_1/dagger/sub_grad/BroadcastGradientArgsBroadcastGradientArgs(dagger/gradients_1/dagger/sub_grad/Shape*dagger/gradients_1/dagger/sub_grad/Shape_1*
T0*
_class
loc:@dagger/sub
�
&dagger/gradients_1/dagger/sub_grad/SumSum+dagger/gradients_1/dagger/Square_grad/Mul_18dagger/gradients_1/dagger/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_class
loc:@dagger/sub
�
*dagger/gradients_1/dagger/sub_grad/ReshapeReshape&dagger/gradients_1/dagger/sub_grad/Sum(dagger/gradients_1/dagger/sub_grad/Shape*
T0*
_class
loc:@dagger/sub*
Tshape0
�
&dagger/gradients_1/dagger/sub_grad/NegNeg+dagger/gradients_1/dagger/Square_grad/Mul_1*
T0*
_class
loc:@dagger/sub
�
(dagger/gradients_1/dagger/sub_grad/Sum_1Sum&dagger/gradients_1/dagger/sub_grad/Neg:dagger/gradients_1/dagger/sub_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@dagger/sub*
	keep_dims( *

Tidx0
�
,dagger/gradients_1/dagger/sub_grad/Reshape_1Reshape(dagger/gradients_1/dagger/sub_grad/Sum_1*dagger/gradients_1/dagger/sub_grad/Shape_1*
T0*
_class
loc:@dagger/sub*
Tshape0
�
3dagger/gradients_1/dagger/sub_grad/tuple/group_depsNoOp+^dagger/gradients_1/dagger/sub_grad/Reshape-^dagger/gradients_1/dagger/sub_grad/Reshape_1
�
;dagger/gradients_1/dagger/sub_grad/tuple/control_dependencyIdentity*dagger/gradients_1/dagger/sub_grad/Reshape4^dagger/gradients_1/dagger/sub_grad/tuple/group_deps*
T0*
_class
loc:@dagger/sub
�
=dagger/gradients_1/dagger/sub_grad/tuple/control_dependency_1Identity,dagger/gradients_1/dagger/sub_grad/Reshape_14^dagger/gradients_1/dagger/sub_grad/tuple/group_deps*
T0*
_class
loc:@dagger/sub
�
Idagger/gradients_1/policy/policy/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGrad=dagger/gradients_1/dagger/sub_grad/tuple/control_dependency_1*
data_formatNHWC*
T0*8
_class.
,*loc:@policy/policy/fully_connected/BiasAdd
�
Ndagger/gradients_1/policy/policy/fully_connected/BiasAdd_grad/tuple/group_depsNoOp>^dagger/gradients_1/dagger/sub_grad/tuple/control_dependency_1J^dagger/gradients_1/policy/policy/fully_connected/BiasAdd_grad/BiasAddGrad
�
Vdagger/gradients_1/policy/policy/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentity=dagger/gradients_1/dagger/sub_grad/tuple/control_dependency_1O^dagger/gradients_1/policy/policy/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*
_class
loc:@dagger/sub
�
Xdagger/gradients_1/policy/policy/fully_connected/BiasAdd_grad/tuple/control_dependency_1IdentityIdagger/gradients_1/policy/policy/fully_connected/BiasAdd_grad/BiasAddGradO^dagger/gradients_1/policy/policy/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@policy/policy/fully_connected/BiasAdd
�
Cdagger/gradients_1/policy/policy/fully_connected/MatMul_grad/MatMulMatMulVdagger/gradients_1/policy/policy/fully_connected/BiasAdd_grad/tuple/control_dependency%policy/fully_connected_3/weights/read*
T0*7
_class-
+)loc:@policy/policy/fully_connected/MatMul*
transpose_a( *
transpose_b(
�
Edagger/gradients_1/policy/policy/fully_connected/MatMul_grad/MatMul_1MatMul0policy/policy/hidden_layer2/fully_connected/TanhVdagger/gradients_1/policy/policy/fully_connected/BiasAdd_grad/tuple/control_dependency*
T0*7
_class-
+)loc:@policy/policy/fully_connected/MatMul*
transpose_a(*
transpose_b( 
�
Mdagger/gradients_1/policy/policy/fully_connected/MatMul_grad/tuple/group_depsNoOpD^dagger/gradients_1/policy/policy/fully_connected/MatMul_grad/MatMulF^dagger/gradients_1/policy/policy/fully_connected/MatMul_grad/MatMul_1
�
Udagger/gradients_1/policy/policy/fully_connected/MatMul_grad/tuple/control_dependencyIdentityCdagger/gradients_1/policy/policy/fully_connected/MatMul_grad/MatMulN^dagger/gradients_1/policy/policy/fully_connected/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@policy/policy/fully_connected/MatMul
�
Wdagger/gradients_1/policy/policy/fully_connected/MatMul_grad/tuple/control_dependency_1IdentityEdagger/gradients_1/policy/policy/fully_connected/MatMul_grad/MatMul_1N^dagger/gradients_1/policy/policy/fully_connected/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@policy/policy/fully_connected/MatMul
�
Qdagger/gradients_1/policy/policy/hidden_layer2/fully_connected/Tanh_grad/TanhGradTanhGrad0policy/policy/hidden_layer2/fully_connected/TanhUdagger/gradients_1/policy/policy/fully_connected/MatMul_grad/tuple/control_dependency*
T0*C
_class9
75loc:@policy/policy/hidden_layer2/fully_connected/Tanh
�
Wdagger/gradients_1/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGradQdagger/gradients_1/policy/policy/hidden_layer2/fully_connected/Tanh_grad/TanhGrad*
T0*F
_class<
:8loc:@policy/policy/hidden_layer2/fully_connected/BiasAdd*
data_formatNHWC
�
\dagger/gradients_1/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/group_depsNoOpX^dagger/gradients_1/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/BiasAddGradR^dagger/gradients_1/policy/policy/hidden_layer2/fully_connected/Tanh_grad/TanhGrad
�
ddagger/gradients_1/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentityQdagger/gradients_1/policy/policy/hidden_layer2/fully_connected/Tanh_grad/TanhGrad]^dagger/gradients_1/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@policy/policy/hidden_layer2/fully_connected/Tanh
�
fdagger/gradients_1/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/control_dependency_1IdentityWdagger/gradients_1/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/BiasAddGrad]^dagger/gradients_1/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@policy/policy/hidden_layer2/fully_connected/BiasAdd
�
Qdagger/gradients_1/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMulMatMulddagger/gradients_1/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/control_dependency%policy/fully_connected_2/weights/read*
T0*E
_class;
97loc:@policy/policy/hidden_layer2/fully_connected/MatMul*
transpose_a( *
transpose_b(
�
Sdagger/gradients_1/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMul_1MatMul0policy/policy/hidden_layer1/fully_connected/Tanhddagger/gradients_1/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/control_dependency*
T0*E
_class;
97loc:@policy/policy/hidden_layer2/fully_connected/MatMul*
transpose_a(*
transpose_b( 
�
[dagger/gradients_1/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/group_depsNoOpR^dagger/gradients_1/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMulT^dagger/gradients_1/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMul_1
�
cdagger/gradients_1/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/control_dependencyIdentityQdagger/gradients_1/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMul\^dagger/gradients_1/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer2/fully_connected/MatMul
�
edagger/gradients_1/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/control_dependency_1IdentitySdagger/gradients_1/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMul_1\^dagger/gradients_1/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer2/fully_connected/MatMul
�
Qdagger/gradients_1/policy/policy/hidden_layer1/fully_connected/Tanh_grad/TanhGradTanhGrad0policy/policy/hidden_layer1/fully_connected/Tanhcdagger/gradients_1/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/control_dependency*
T0*C
_class9
75loc:@policy/policy/hidden_layer1/fully_connected/Tanh
�
dagger/gradients_1/AddNAddNpdagger/gradients_1/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/muledagger/gradients_1/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
N
�
Wdagger/gradients_1/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGradQdagger/gradients_1/policy/policy/hidden_layer1/fully_connected/Tanh_grad/TanhGrad*
data_formatNHWC*
T0*F
_class<
:8loc:@policy/policy/hidden_layer1/fully_connected/BiasAdd
�
\dagger/gradients_1/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/group_depsNoOpX^dagger/gradients_1/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/BiasAddGradR^dagger/gradients_1/policy/policy/hidden_layer1/fully_connected/Tanh_grad/TanhGrad
�
ddagger/gradients_1/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentityQdagger/gradients_1/policy/policy/hidden_layer1/fully_connected/Tanh_grad/TanhGrad]^dagger/gradients_1/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@policy/policy/hidden_layer1/fully_connected/Tanh
�
fdagger/gradients_1/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/control_dependency_1IdentityWdagger/gradients_1/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/BiasAddGrad]^dagger/gradients_1/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@policy/policy/hidden_layer1/fully_connected/BiasAdd
�
Qdagger/gradients_1/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMulMatMulddagger/gradients_1/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/control_dependency%policy/fully_connected_1/weights/read*
T0*E
_class;
97loc:@policy/policy/hidden_layer1/fully_connected/MatMul*
transpose_a( *
transpose_b(
�
Sdagger/gradients_1/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMul_1MatMul0policy/policy/hidden_layer0/fully_connected/Tanhddagger/gradients_1/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*E
_class;
97loc:@policy/policy/hidden_layer1/fully_connected/MatMul*
transpose_a(
�
[dagger/gradients_1/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/group_depsNoOpR^dagger/gradients_1/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMulT^dagger/gradients_1/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMul_1
�
cdagger/gradients_1/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/control_dependencyIdentityQdagger/gradients_1/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMul\^dagger/gradients_1/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer1/fully_connected/MatMul
�
edagger/gradients_1/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/control_dependency_1IdentitySdagger/gradients_1/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMul_1\^dagger/gradients_1/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer1/fully_connected/MatMul
�
Qdagger/gradients_1/policy/policy/hidden_layer0/fully_connected/Tanh_grad/TanhGradTanhGrad0policy/policy/hidden_layer0/fully_connected/Tanhcdagger/gradients_1/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/control_dependency*
T0*C
_class9
75loc:@policy/policy/hidden_layer0/fully_connected/Tanh
�
dagger/gradients_1/AddN_1AddNpdagger/gradients_1/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/muledagger/gradients_1/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
N
�
Wdagger/gradients_1/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGradQdagger/gradients_1/policy/policy/hidden_layer0/fully_connected/Tanh_grad/TanhGrad*
T0*F
_class<
:8loc:@policy/policy/hidden_layer0/fully_connected/BiasAdd*
data_formatNHWC
�
\dagger/gradients_1/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/group_depsNoOpX^dagger/gradients_1/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/BiasAddGradR^dagger/gradients_1/policy/policy/hidden_layer0/fully_connected/Tanh_grad/TanhGrad
�
ddagger/gradients_1/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentityQdagger/gradients_1/policy/policy/hidden_layer0/fully_connected/Tanh_grad/TanhGrad]^dagger/gradients_1/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@policy/policy/hidden_layer0/fully_connected/Tanh
�
fdagger/gradients_1/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/control_dependency_1IdentityWdagger/gradients_1/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/BiasAddGrad]^dagger/gradients_1/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@policy/policy/hidden_layer0/fully_connected/BiasAdd
�
Qdagger/gradients_1/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMulMatMulddagger/gradients_1/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/control_dependency#policy/fully_connected/weights/read*
T0*E
_class;
97loc:@policy/policy/hidden_layer0/fully_connected/MatMul*
transpose_a( *
transpose_b(
�
Sdagger/gradients_1/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMul_1MatMulpolicy/concatddagger/gradients_1/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*E
_class;
97loc:@policy/policy/hidden_layer0/fully_connected/MatMul*
transpose_a(
�
[dagger/gradients_1/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/group_depsNoOpR^dagger/gradients_1/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMulT^dagger/gradients_1/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMul_1
�
cdagger/gradients_1/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/control_dependencyIdentityQdagger/gradients_1/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMul\^dagger/gradients_1/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer0/fully_connected/MatMul
�
edagger/gradients_1/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/control_dependency_1IdentitySdagger/gradients_1/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMul_1\^dagger/gradients_1/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer0/fully_connected/MatMul
v
*dagger/gradients_1/policy/concat_grad/RankConst* 
_class
loc:@policy/concat*
value	B :*
dtype0
�
)dagger/gradients_1/policy/concat_grad/modFloorModpolicy/concat/axis*dagger/gradients_1/policy/concat_grad/Rank*
T0* 
_class
loc:@policy/concat
�
+dagger/gradients_1/policy/concat_grad/ShapeShapepolicy/strided_slice*
T0* 
_class
loc:@policy/concat*
out_type0
�
,dagger/gradients_1/policy/concat_grad/ShapeNShapeNpolicy/strided_sliceextra_encoder/featureMap*
N*
T0* 
_class
loc:@policy/concat*
out_type0
�
2dagger/gradients_1/policy/concat_grad/ConcatOffsetConcatOffset)dagger/gradients_1/policy/concat_grad/mod,dagger/gradients_1/policy/concat_grad/ShapeN.dagger/gradients_1/policy/concat_grad/ShapeN:1* 
_class
loc:@policy/concat*
N
�
+dagger/gradients_1/policy/concat_grad/SliceSlicecdagger/gradients_1/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/control_dependency2dagger/gradients_1/policy/concat_grad/ConcatOffset,dagger/gradients_1/policy/concat_grad/ShapeN*
Index0*
T0* 
_class
loc:@policy/concat
�
-dagger/gradients_1/policy/concat_grad/Slice_1Slicecdagger/gradients_1/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/control_dependency4dagger/gradients_1/policy/concat_grad/ConcatOffset:1.dagger/gradients_1/policy/concat_grad/ShapeN:1*
Index0*
T0* 
_class
loc:@policy/concat
�
6dagger/gradients_1/policy/concat_grad/tuple/group_depsNoOp,^dagger/gradients_1/policy/concat_grad/Slice.^dagger/gradients_1/policy/concat_grad/Slice_1
�
>dagger/gradients_1/policy/concat_grad/tuple/control_dependencyIdentity+dagger/gradients_1/policy/concat_grad/Slice7^dagger/gradients_1/policy/concat_grad/tuple/group_deps*
T0* 
_class
loc:@policy/concat
�
@dagger/gradients_1/policy/concat_grad/tuple/control_dependency_1Identity-dagger/gradients_1/policy/concat_grad/Slice_17^dagger/gradients_1/policy/concat_grad/tuple/group_deps*
T0* 
_class
loc:@policy/concat
�
dagger/gradients_1/AddN_2AddNpdagger/gradients_1/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/muledagger/gradients_1/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/control_dependency_1*
N*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
Wdagger/gradients_1/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGrad@dagger/gradients_1/policy/concat_grad/tuple/control_dependency_1*
T0*F
_class<
:8loc:@extra_encoder/extra_encoder/fully_connected/BiasAdd*
data_formatNHWC
�
\dagger/gradients_1/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/group_depsNoOpX^dagger/gradients_1/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/BiasAddGradA^dagger/gradients_1/policy/concat_grad/tuple/control_dependency_1
�
ddagger/gradients_1/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentity@dagger/gradients_1/policy/concat_grad/tuple/control_dependency_1]^dagger/gradients_1/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/group_deps*
T0* 
_class
loc:@policy/concat
�
fdagger/gradients_1/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependency_1IdentityWdagger/gradients_1/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/BiasAddGrad]^dagger/gradients_1/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@extra_encoder/extra_encoder/fully_connected/BiasAdd
�
Qdagger/gradients_1/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMulMatMulddagger/gradients_1/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependency*extra_encoder/fully_connected/weights/read*
T0*E
_class;
97loc:@extra_encoder/extra_encoder/fully_connected/MatMul*
transpose_a( *
transpose_b(
�
Sdagger/gradients_1/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMul_1MatMulextra_encoder/strided_sliceddagger/gradients_1/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*E
_class;
97loc:@extra_encoder/extra_encoder/fully_connected/MatMul*
transpose_a(
�
[dagger/gradients_1/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/group_depsNoOpR^dagger/gradients_1/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMulT^dagger/gradients_1/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMul_1
�
cdagger/gradients_1/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/control_dependencyIdentityQdagger/gradients_1/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMul\^dagger/gradients_1/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@extra_encoder/extra_encoder/fully_connected/MatMul
�
edagger/gradients_1/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/control_dependency_1IdentitySdagger/gradients_1/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMul_1\^dagger/gradients_1/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@extra_encoder/extra_encoder/fully_connected/MatMul
G
dagger/solver_masked/beta1Const*
valueB
 *fff?*
dtype0
G
dagger/solver_masked/beta2Const*
valueB
 *w�?*
dtype0
I
dagger/solver_masked/epsilonConst*
valueB
 *w�+2*
dtype0
�
Kdagger/solver_masked/update_extra_encoder/fully_connected/weights/ApplyAdam	ApplyAdam%extra_encoder/fully_connected/weights*extra_encoder/fully_connected/weights/Adam,extra_encoder/fully_connected/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver_masked/beta1dagger/solver_masked/beta2dagger/solver_masked/epsilonedagger/gradients_1/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights
�
Jdagger/solver_masked/update_extra_encoder/fully_connected/biases/ApplyAdam	ApplyAdam$extra_encoder/fully_connected/biases)extra_encoder/fully_connected/biases/Adam+extra_encoder/fully_connected/biases/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver_masked/beta1dagger/solver_masked/beta2dagger/solver_masked/epsilonfdagger/gradients_1/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases*
use_nesterov( 
�
Ddagger/solver_masked/update_policy/fully_connected/weights/ApplyAdam	ApplyAdampolicy/fully_connected/weights#policy/fully_connected/weights/Adam%policy/fully_connected/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver_masked/beta1dagger/solver_masked/beta2dagger/solver_masked/epsilondagger/gradients_1/AddN_2*
T0*1
_class'
%#loc:@policy/fully_connected/weights*
use_nesterov( *
use_locking( 
�
Cdagger/solver_masked/update_policy/fully_connected/biases/ApplyAdam	ApplyAdampolicy/fully_connected/biases"policy/fully_connected/biases/Adam$policy/fully_connected/biases/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver_masked/beta1dagger/solver_masked/beta2dagger/solver_masked/epsilonfdagger/gradients_1/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
T0*0
_class&
$"loc:@policy/fully_connected/biases*
use_nesterov( *
use_locking( 
�
Fdagger/solver_masked/update_policy/fully_connected_1/weights/ApplyAdam	ApplyAdam policy/fully_connected_1/weights%policy/fully_connected_1/weights/Adam'policy/fully_connected_1/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver_masked/beta1dagger/solver_masked/beta2dagger/solver_masked/epsilondagger/gradients_1/AddN_1*
use_locking( *
T0*3
_class)
'%loc:@policy/fully_connected_1/weights*
use_nesterov( 
�
Edagger/solver_masked/update_policy/fully_connected_1/biases/ApplyAdam	ApplyAdampolicy/fully_connected_1/biases$policy/fully_connected_1/biases/Adam&policy/fully_connected_1/biases/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver_masked/beta1dagger/solver_masked/beta2dagger/solver_masked/epsilonfdagger/gradients_1/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_1/biases
�
Fdagger/solver_masked/update_policy/fully_connected_2/weights/ApplyAdam	ApplyAdam policy/fully_connected_2/weights%policy/fully_connected_2/weights/Adam'policy/fully_connected_2/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver_masked/beta1dagger/solver_masked/beta2dagger/solver_masked/epsilondagger/gradients_1/AddN*
use_locking( *
T0*3
_class)
'%loc:@policy/fully_connected_2/weights*
use_nesterov( 
�
Edagger/solver_masked/update_policy/fully_connected_2/biases/ApplyAdam	ApplyAdampolicy/fully_connected_2/biases$policy/fully_connected_2/biases/Adam&policy/fully_connected_2/biases/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver_masked/beta1dagger/solver_masked/beta2dagger/solver_masked/epsilonfdagger/gradients_1/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_2/biases*
use_nesterov( 
�
Fdagger/solver_masked/update_policy/fully_connected_3/weights/ApplyAdam	ApplyAdam policy/fully_connected_3/weights%policy/fully_connected_3/weights/Adam'policy/fully_connected_3/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver_masked/beta1dagger/solver_masked/beta2dagger/solver_masked/epsilonWdagger/gradients_1/policy/policy/fully_connected/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*3
_class)
'%loc:@policy/fully_connected_3/weights*
use_nesterov( 
�
Edagger/solver_masked/update_policy/fully_connected_3/biases/ApplyAdam	ApplyAdampolicy/fully_connected_3/biases$policy/fully_connected_3/biases/Adam&policy/fully_connected_3/biases/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver_masked/beta1dagger/solver_masked/beta2dagger/solver_masked/epsilonXdagger/gradients_1/policy/policy/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_3/biases*
use_nesterov( 
�
Fdagger/solver_masked/update_valueNet/fully_connected/weights/ApplyAdam	ApplyAdam valueNet/fully_connected/weights%valueNet/fully_connected/weights/Adam'valueNet/fully_connected/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver_masked/beta1dagger/solver_masked/beta2dagger/solver_masked/epsilonrdagger/gradients_1/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul*
use_nesterov( *
use_locking( *
T0*3
_class)
'%loc:@valueNet/fully_connected/weights
�
Hdagger/solver_masked/update_valueNet/fully_connected_1/weights/ApplyAdam	ApplyAdam"valueNet/fully_connected_1/weights'valueNet/fully_connected_1/weights/Adam)valueNet/fully_connected_1/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver_masked/beta1dagger/solver_masked/beta2dagger/solver_masked/epsilonrdagger/gradients_1/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul*
use_locking( *
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights*
use_nesterov( 
�
Hdagger/solver_masked/update_valueNet/fully_connected_2/weights/ApplyAdam	ApplyAdam"valueNet/fully_connected_2/weights'valueNet/fully_connected_2/weights/Adam)valueNet/fully_connected_2/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/solver_masked/beta1dagger/solver_masked/beta2dagger/solver_masked/epsilonrdagger/gradients_1/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul*
use_nesterov( *
use_locking( *
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights
�
dagger/solver_masked/mulMuldagger/beta1_power/readdagger/solver_masked/beta1K^dagger/solver_masked/update_extra_encoder/fully_connected/biases/ApplyAdamL^dagger/solver_masked/update_extra_encoder/fully_connected/weights/ApplyAdamD^dagger/solver_masked/update_policy/fully_connected/biases/ApplyAdamE^dagger/solver_masked/update_policy/fully_connected/weights/ApplyAdamF^dagger/solver_masked/update_policy/fully_connected_1/biases/ApplyAdamG^dagger/solver_masked/update_policy/fully_connected_1/weights/ApplyAdamF^dagger/solver_masked/update_policy/fully_connected_2/biases/ApplyAdamG^dagger/solver_masked/update_policy/fully_connected_2/weights/ApplyAdamF^dagger/solver_masked/update_policy/fully_connected_3/biases/ApplyAdamG^dagger/solver_masked/update_policy/fully_connected_3/weights/ApplyAdamG^dagger/solver_masked/update_valueNet/fully_connected/weights/ApplyAdamI^dagger/solver_masked/update_valueNet/fully_connected_1/weights/ApplyAdamI^dagger/solver_masked/update_valueNet/fully_connected_2/weights/ApplyAdam*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�
dagger/solver_masked/AssignAssigndagger/beta1_powerdagger/solver_masked/mul*
validate_shape(*
use_locking( *
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�
dagger/solver_masked/mul_1Muldagger/beta2_power/readdagger/solver_masked/beta2K^dagger/solver_masked/update_extra_encoder/fully_connected/biases/ApplyAdamL^dagger/solver_masked/update_extra_encoder/fully_connected/weights/ApplyAdamD^dagger/solver_masked/update_policy/fully_connected/biases/ApplyAdamE^dagger/solver_masked/update_policy/fully_connected/weights/ApplyAdamF^dagger/solver_masked/update_policy/fully_connected_1/biases/ApplyAdamG^dagger/solver_masked/update_policy/fully_connected_1/weights/ApplyAdamF^dagger/solver_masked/update_policy/fully_connected_2/biases/ApplyAdamG^dagger/solver_masked/update_policy/fully_connected_2/weights/ApplyAdamF^dagger/solver_masked/update_policy/fully_connected_3/biases/ApplyAdamG^dagger/solver_masked/update_policy/fully_connected_3/weights/ApplyAdamG^dagger/solver_masked/update_valueNet/fully_connected/weights/ApplyAdamI^dagger/solver_masked/update_valueNet/fully_connected_1/weights/ApplyAdamI^dagger/solver_masked/update_valueNet/fully_connected_2/weights/ApplyAdam*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�
dagger/solver_masked/Assign_1Assigndagger/beta2_powerdagger/solver_masked/mul_1*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases*
validate_shape(*
use_locking( 
�
dagger/solver_masked/updateNoOp^dagger/solver_masked/Assign^dagger/solver_masked/Assign_1K^dagger/solver_masked/update_extra_encoder/fully_connected/biases/ApplyAdamL^dagger/solver_masked/update_extra_encoder/fully_connected/weights/ApplyAdamD^dagger/solver_masked/update_policy/fully_connected/biases/ApplyAdamE^dagger/solver_masked/update_policy/fully_connected/weights/ApplyAdamF^dagger/solver_masked/update_policy/fully_connected_1/biases/ApplyAdamG^dagger/solver_masked/update_policy/fully_connected_1/weights/ApplyAdamF^dagger/solver_masked/update_policy/fully_connected_2/biases/ApplyAdamG^dagger/solver_masked/update_policy/fully_connected_2/weights/ApplyAdamF^dagger/solver_masked/update_policy/fully_connected_3/biases/ApplyAdamG^dagger/solver_masked/update_policy/fully_connected_3/weights/ApplyAdamG^dagger/solver_masked/update_valueNet/fully_connected/weights/ApplyAdamI^dagger/solver_masked/update_valueNet/fully_connected_1/weights/ApplyAdamI^dagger/solver_masked/update_valueNet/fully_connected_2/weights/ApplyAdam
�
dagger/solver_masked/valueConst^dagger/solver_masked/update*%
_class
loc:@dagger/global_step*
value	B :*
dtype0
�
dagger/solver_masked	AssignAdddagger/global_stepdagger/solver_masked/value*
use_locking( *
T0*%
_class
loc:@dagger/global_step
?
dagger/targetFeaturePlaceholder*
dtype0*
shape:
K
dagger/Reshape_6/shapeConst*
valueB"����@   *
dtype0
`
dagger/Reshape_6Reshapedagger/targetFeaturedagger/Reshape_6/shape*
T0*
Tshape0
H
dagger/sub_1Subdagger/Reshape_6extra_encoder/featureMap*
T0
0
dagger/Square_1Squaredagger/sub_1*
T0
R
dagger/Mean_1/reduction_indicesConst*
valueB :
���������*
dtype0
m
dagger/Mean_1Meandagger/Square_1dagger/Mean_1/reduction_indices*
T0*

Tidx0*
	keep_dims( 
;
dagger/Shape_2Shape	Reshape_1*
T0*
out_type0
J
dagger/strided_slice_2/stackConst*
dtype0*
valueB:
L
dagger/strided_slice_2/stack_1Const*
valueB:*
dtype0
L
dagger/strided_slice_2/stack_2Const*
valueB:*
dtype0
�
dagger/strided_slice_2StridedSlicedagger/Shape_2dagger/strided_slice_2/stackdagger/strided_slice_2/stack_1dagger/strided_slice_2/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
K
dagger/Reshape_7/shape/0Const*
dtype0*
valueB :
���������
n
dagger/Reshape_7/shapePackdagger/Reshape_7/shape/0dagger/strided_slice_2*
N*
T0*

axis 
Y
dagger/Reshape_7Reshapedagger/Mean_1dagger/Reshape_7/shape*
T0*
Tshape0
O
dagger/boolean_mask_1/ShapeShapedagger/Reshape_7*
T0*
out_type0
W
)dagger/boolean_mask_1/strided_slice/stackConst*
valueB: *
dtype0
Y
+dagger/boolean_mask_1/strided_slice/stack_1Const*
valueB:*
dtype0
Y
+dagger/boolean_mask_1/strided_slice/stack_2Const*
valueB:*
dtype0
�
#dagger/boolean_mask_1/strided_sliceStridedSlicedagger/boolean_mask_1/Shape)dagger/boolean_mask_1/strided_slice/stack+dagger/boolean_mask_1/strided_slice/stack_1+dagger/boolean_mask_1/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
Index0*
T0*
shrink_axis_mask 
Z
,dagger/boolean_mask_1/Prod/reduction_indicesConst*
dtype0*
valueB: 
�
dagger/boolean_mask_1/ProdProd#dagger/boolean_mask_1/strided_slice,dagger/boolean_mask_1/Prod/reduction_indices*

Tidx0*
	keep_dims( *
T0
Q
dagger/boolean_mask_1/Shape_1Shapedagger/Reshape_7*
T0*
out_type0
Y
+dagger/boolean_mask_1/strided_slice_1/stackConst*
valueB: *
dtype0
[
-dagger/boolean_mask_1/strided_slice_1/stack_1Const*
valueB: *
dtype0
[
-dagger/boolean_mask_1/strided_slice_1/stack_2Const*
valueB:*
dtype0
�
%dagger/boolean_mask_1/strided_slice_1StridedSlicedagger/boolean_mask_1/Shape_1+dagger/boolean_mask_1/strided_slice_1/stack-dagger/boolean_mask_1/strided_slice_1/stack_1-dagger/boolean_mask_1/strided_slice_1/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
Index0*
T0
Q
dagger/boolean_mask_1/Shape_2Shapedagger/Reshape_7*
T0*
out_type0
Y
+dagger/boolean_mask_1/strided_slice_2/stackConst*
valueB:*
dtype0
[
-dagger/boolean_mask_1/strided_slice_2/stack_1Const*
valueB: *
dtype0
[
-dagger/boolean_mask_1/strided_slice_2/stack_2Const*
dtype0*
valueB:
�
%dagger/boolean_mask_1/strided_slice_2StridedSlicedagger/boolean_mask_1/Shape_2+dagger/boolean_mask_1/strided_slice_2/stack-dagger/boolean_mask_1/strided_slice_2/stack_1-dagger/boolean_mask_1/strided_slice_2/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
Index0*
T0
g
%dagger/boolean_mask_1/concat/values_1Packdagger/boolean_mask_1/Prod*
T0*

axis *
N
K
!dagger/boolean_mask_1/concat/axisConst*
value	B : *
dtype0
�
dagger/boolean_mask_1/concatConcatV2%dagger/boolean_mask_1/strided_slice_1%dagger/boolean_mask_1/concat/values_1%dagger/boolean_mask_1/strided_slice_2!dagger/boolean_mask_1/concat/axis*
T0*
N*

Tidx0
o
dagger/boolean_mask_1/ReshapeReshapedagger/Reshape_7dagger/boolean_mask_1/concat*
T0*
Tshape0
\
%dagger/boolean_mask_1/Reshape_1/shapeConst*
valueB:
���������*
dtype0
z
dagger/boolean_mask_1/Reshape_1Reshapedagger/mask/Less%dagger/boolean_mask_1/Reshape_1/shape*
T0
*
Tshape0
N
dagger/boolean_mask_1/WhereWheredagger/boolean_mask_1/Reshape_1*
T0

e
dagger/boolean_mask_1/SqueezeSqueezedagger/boolean_mask_1/Where*
squeeze_dims
*
T0	
M
#dagger/boolean_mask_1/GatherV2/axisConst*
dtype0*
value	B : 
�
dagger/boolean_mask_1/GatherV2GatherV2dagger/boolean_mask_1/Reshapedagger/boolean_mask_1/Squeeze#dagger/boolean_mask_1/GatherV2/axis*
Taxis0*

batch_dims *
Tindices0	*
Tparams0
<
dagger/Const_7Const*
valueB: *
dtype0
`
dagger/feature_lossMeandagger/Mean_1dagger/Const_7*
T0*

Tidx0*
	keep_dims( 
C
dagger/Const_8Const*
valueB"       *
dtype0
x
dagger/feature_loss_maskedMeandagger/boolean_mask_1/GatherV2dagger/Const_8*
T0*

Tidx0*
	keep_dims( 
?
dagger/add_2AddV2
dagger/muldagger/feature_loss*
T0
5
dagger/summed_lossIdentitydagger/add_2*
T0
H
dagger/add_3AddV2dagger/mul_1dagger/feature_loss_masked*
T0
<
dagger/summed_loss_maskedIdentitydagger/add_3*
T0
A
dagger/add_4AddV2dagger/summed_lossdagger/l2loss*
T0
b
dagger/gradients_2/ShapeConst*
_class
loc:@dagger/add_4*
valueB *
dtype0
j
dagger/gradients_2/grad_ys_0Const*
dtype0*
_class
loc:@dagger/add_4*
valueB
 *  �?
�
dagger/gradients_2/FillFilldagger/gradients_2/Shapedagger/gradients_2/grad_ys_0*
T0*
_class
loc:@dagger/add_4*

index_type0
W
5dagger/gradients_2/dagger/add_4_grad/tuple/group_depsNoOp^dagger/gradients_2/Fill
�
=dagger/gradients_2/dagger/add_4_grad/tuple/control_dependencyIdentitydagger/gradients_2/Fill6^dagger/gradients_2/dagger/add_4_grad/tuple/group_deps*
T0*
_class
loc:@dagger/add_4
�
?dagger/gradients_2/dagger/add_4_grad/tuple/control_dependency_1Identitydagger/gradients_2/Fill6^dagger/gradients_2/dagger/add_4_grad/tuple/group_deps*
T0*
_class
loc:@dagger/add_4
}
5dagger/gradients_2/dagger/add_2_grad/tuple/group_depsNoOp>^dagger/gradients_2/dagger/add_4_grad/tuple/control_dependency
�
=dagger/gradients_2/dagger/add_2_grad/tuple/control_dependencyIdentity=dagger/gradients_2/dagger/add_4_grad/tuple/control_dependency6^dagger/gradients_2/dagger/add_2_grad/tuple/group_deps*
T0*
_class
loc:@dagger/add_4
�
?dagger/gradients_2/dagger/add_2_grad/tuple/control_dependency_1Identity=dagger/gradients_2/dagger/add_4_grad/tuple/control_dependency6^dagger/gradients_2/dagger/add_2_grad/tuple/group_deps*
T0*
_class
loc:@dagger/add_4
}
0dagger/gradients_2/dagger/Sum_grad/Reshape/shapeConst*
_class
loc:@dagger/Sum*
valueB:*
dtype0
�
*dagger/gradients_2/dagger/Sum_grad/ReshapeReshape?dagger/gradients_2/dagger/add_4_grad/tuple/control_dependency_10dagger/gradients_2/dagger/Sum_grad/Reshape/shape*
T0*
_class
loc:@dagger/Sum*
Tshape0
u
(dagger/gradients_2/dagger/Sum_grad/ConstConst*
dtype0*
_class
loc:@dagger/Sum*
valueB:
�
'dagger/gradients_2/dagger/Sum_grad/TileTile*dagger/gradients_2/dagger/Sum_grad/Reshape(dagger/gradients_2/dagger/Sum_grad/Const*
T0*
_class
loc:@dagger/Sum*

Tmultiples0
�
&dagger/gradients_2/dagger/mul_grad/MulMul=dagger/gradients_2/dagger/add_2_grad/tuple/control_dependencydagger/loss*
T0*
_class
loc:@dagger/mul
�
(dagger/gradients_2/dagger/mul_grad/Mul_1Mul=dagger/gradients_2/dagger/add_2_grad/tuple/control_dependencydagger/dagger_coeff/read*
T0*
_class
loc:@dagger/mul
�
3dagger/gradients_2/dagger/mul_grad/tuple/group_depsNoOp'^dagger/gradients_2/dagger/mul_grad/Mul)^dagger/gradients_2/dagger/mul_grad/Mul_1
�
;dagger/gradients_2/dagger/mul_grad/tuple/control_dependencyIdentity&dagger/gradients_2/dagger/mul_grad/Mul4^dagger/gradients_2/dagger/mul_grad/tuple/group_deps*
T0*
_class
loc:@dagger/mul
�
=dagger/gradients_2/dagger/mul_grad/tuple/control_dependency_1Identity(dagger/gradients_2/dagger/mul_grad/Mul_14^dagger/gradients_2/dagger/mul_grad/tuple/group_deps*
T0*
_class
loc:@dagger/mul
�
9dagger/gradients_2/dagger/feature_loss_grad/Reshape/shapeConst*
dtype0*&
_class
loc:@dagger/feature_loss*
valueB:
�
3dagger/gradients_2/dagger/feature_loss_grad/ReshapeReshape?dagger/gradients_2/dagger/add_2_grad/tuple/control_dependency_19dagger/gradients_2/dagger/feature_loss_grad/Reshape/shape*
T0*&
_class
loc:@dagger/feature_loss*
Tshape0
�
1dagger/gradients_2/dagger/feature_loss_grad/ShapeShapedagger/Mean_1*
T0*&
_class
loc:@dagger/feature_loss*
out_type0
�
0dagger/gradients_2/dagger/feature_loss_grad/TileTile3dagger/gradients_2/dagger/feature_loss_grad/Reshape1dagger/gradients_2/dagger/feature_loss_grad/Shape*

Tmultiples0*
T0*&
_class
loc:@dagger/feature_loss
�
3dagger/gradients_2/dagger/feature_loss_grad/Shape_1Shapedagger/Mean_1*
T0*&
_class
loc:@dagger/feature_loss*
out_type0
�
3dagger/gradients_2/dagger/feature_loss_grad/Shape_2Const*
dtype0*&
_class
loc:@dagger/feature_loss*
valueB 
�
1dagger/gradients_2/dagger/feature_loss_grad/ConstConst*&
_class
loc:@dagger/feature_loss*
valueB: *
dtype0
�
0dagger/gradients_2/dagger/feature_loss_grad/ProdProd3dagger/gradients_2/dagger/feature_loss_grad/Shape_11dagger/gradients_2/dagger/feature_loss_grad/Const*
	keep_dims( *

Tidx0*
T0*&
_class
loc:@dagger/feature_loss
�
3dagger/gradients_2/dagger/feature_loss_grad/Const_1Const*
dtype0*&
_class
loc:@dagger/feature_loss*
valueB: 
�
2dagger/gradients_2/dagger/feature_loss_grad/Prod_1Prod3dagger/gradients_2/dagger/feature_loss_grad/Shape_23dagger/gradients_2/dagger/feature_loss_grad/Const_1*
T0*&
_class
loc:@dagger/feature_loss*
	keep_dims( *

Tidx0
�
5dagger/gradients_2/dagger/feature_loss_grad/Maximum/yConst*&
_class
loc:@dagger/feature_loss*
value	B :*
dtype0
�
3dagger/gradients_2/dagger/feature_loss_grad/MaximumMaximum2dagger/gradients_2/dagger/feature_loss_grad/Prod_15dagger/gradients_2/dagger/feature_loss_grad/Maximum/y*
T0*&
_class
loc:@dagger/feature_loss
�
4dagger/gradients_2/dagger/feature_loss_grad/floordivFloorDiv0dagger/gradients_2/dagger/feature_loss_grad/Prod3dagger/gradients_2/dagger/feature_loss_grad/Maximum*
T0*&
_class
loc:@dagger/feature_loss
�
0dagger/gradients_2/dagger/feature_loss_grad/CastCast4dagger/gradients_2/dagger/feature_loss_grad/floordiv*

SrcT0*&
_class
loc:@dagger/feature_loss*
Truncate( *

DstT0
�
3dagger/gradients_2/dagger/feature_loss_grad/truedivRealDiv0dagger/gradients_2/dagger/feature_loss_grad/Tile0dagger/gradients_2/dagger/feature_loss_grad/Cast*
T0*&
_class
loc:@dagger/feature_loss

1dagger/gradients_2/dagger/loss_grad/Reshape/shapeConst*
_class
loc:@dagger/loss*
valueB:*
dtype0
�
+dagger/gradients_2/dagger/loss_grad/ReshapeReshape=dagger/gradients_2/dagger/mul_grad/tuple/control_dependency_11dagger/gradients_2/dagger/loss_grad/Reshape/shape*
T0*
_class
loc:@dagger/loss*
Tshape0
x
)dagger/gradients_2/dagger/loss_grad/ShapeShapedagger/Mean*
T0*
_class
loc:@dagger/loss*
out_type0
�
(dagger/gradients_2/dagger/loss_grad/TileTile+dagger/gradients_2/dagger/loss_grad/Reshape)dagger/gradients_2/dagger/loss_grad/Shape*

Tmultiples0*
T0*
_class
loc:@dagger/loss
z
+dagger/gradients_2/dagger/loss_grad/Shape_1Shapedagger/Mean*
T0*
_class
loc:@dagger/loss*
out_type0
t
+dagger/gradients_2/dagger/loss_grad/Shape_2Const*
_class
loc:@dagger/loss*
valueB *
dtype0
w
)dagger/gradients_2/dagger/loss_grad/ConstConst*
_class
loc:@dagger/loss*
valueB: *
dtype0
�
(dagger/gradients_2/dagger/loss_grad/ProdProd+dagger/gradients_2/dagger/loss_grad/Shape_1)dagger/gradients_2/dagger/loss_grad/Const*
T0*
_class
loc:@dagger/loss*
	keep_dims( *

Tidx0
y
+dagger/gradients_2/dagger/loss_grad/Const_1Const*
_class
loc:@dagger/loss*
valueB: *
dtype0
�
*dagger/gradients_2/dagger/loss_grad/Prod_1Prod+dagger/gradients_2/dagger/loss_grad/Shape_2+dagger/gradients_2/dagger/loss_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_class
loc:@dagger/loss
w
-dagger/gradients_2/dagger/loss_grad/Maximum/yConst*
_class
loc:@dagger/loss*
value	B :*
dtype0
�
+dagger/gradients_2/dagger/loss_grad/MaximumMaximum*dagger/gradients_2/dagger/loss_grad/Prod_1-dagger/gradients_2/dagger/loss_grad/Maximum/y*
T0*
_class
loc:@dagger/loss
�
,dagger/gradients_2/dagger/loss_grad/floordivFloorDiv(dagger/gradients_2/dagger/loss_grad/Prod+dagger/gradients_2/dagger/loss_grad/Maximum*
T0*
_class
loc:@dagger/loss
�
(dagger/gradients_2/dagger/loss_grad/CastCast,dagger/gradients_2/dagger/loss_grad/floordiv*

SrcT0*
_class
loc:@dagger/loss*
Truncate( *

DstT0
�
+dagger/gradients_2/dagger/loss_grad/truedivRealDiv(dagger/gradients_2/dagger/loss_grad/Tile(dagger/gradients_2/dagger/loss_grad/Cast*
T0*
_class
loc:@dagger/loss
�
+dagger/gradients_2/dagger/Mean_1_grad/ShapeShapedagger/Square_1*
T0* 
_class
loc:@dagger/Mean_1*
out_type0
v
*dagger/gradients_2/dagger/Mean_1_grad/SizeConst* 
_class
loc:@dagger/Mean_1*
value	B :*
dtype0
�
)dagger/gradients_2/dagger/Mean_1_grad/addAddV2dagger/Mean_1/reduction_indices*dagger/gradients_2/dagger/Mean_1_grad/Size*
T0* 
_class
loc:@dagger/Mean_1
�
)dagger/gradients_2/dagger/Mean_1_grad/modFloorMod)dagger/gradients_2/dagger/Mean_1_grad/add*dagger/gradients_2/dagger/Mean_1_grad/Size*
T0* 
_class
loc:@dagger/Mean_1
x
-dagger/gradients_2/dagger/Mean_1_grad/Shape_1Const* 
_class
loc:@dagger/Mean_1*
valueB *
dtype0
}
1dagger/gradients_2/dagger/Mean_1_grad/range/startConst*
dtype0* 
_class
loc:@dagger/Mean_1*
value	B : 
}
1dagger/gradients_2/dagger/Mean_1_grad/range/deltaConst* 
_class
loc:@dagger/Mean_1*
value	B :*
dtype0
�
+dagger/gradients_2/dagger/Mean_1_grad/rangeRange1dagger/gradients_2/dagger/Mean_1_grad/range/start*dagger/gradients_2/dagger/Mean_1_grad/Size1dagger/gradients_2/dagger/Mean_1_grad/range/delta* 
_class
loc:@dagger/Mean_1*

Tidx0
|
0dagger/gradients_2/dagger/Mean_1_grad/Fill/valueConst*
dtype0* 
_class
loc:@dagger/Mean_1*
value	B :
�
*dagger/gradients_2/dagger/Mean_1_grad/FillFill-dagger/gradients_2/dagger/Mean_1_grad/Shape_10dagger/gradients_2/dagger/Mean_1_grad/Fill/value*
T0* 
_class
loc:@dagger/Mean_1*

index_type0
�
3dagger/gradients_2/dagger/Mean_1_grad/DynamicStitchDynamicStitch+dagger/gradients_2/dagger/Mean_1_grad/range)dagger/gradients_2/dagger/Mean_1_grad/mod+dagger/gradients_2/dagger/Mean_1_grad/Shape*dagger/gradients_2/dagger/Mean_1_grad/Fill*
N*
T0* 
_class
loc:@dagger/Mean_1
{
/dagger/gradients_2/dagger/Mean_1_grad/Maximum/yConst*
dtype0* 
_class
loc:@dagger/Mean_1*
value	B :
�
-dagger/gradients_2/dagger/Mean_1_grad/MaximumMaximum3dagger/gradients_2/dagger/Mean_1_grad/DynamicStitch/dagger/gradients_2/dagger/Mean_1_grad/Maximum/y*
T0* 
_class
loc:@dagger/Mean_1
�
.dagger/gradients_2/dagger/Mean_1_grad/floordivFloorDiv+dagger/gradients_2/dagger/Mean_1_grad/Shape-dagger/gradients_2/dagger/Mean_1_grad/Maximum*
T0* 
_class
loc:@dagger/Mean_1
�
-dagger/gradients_2/dagger/Mean_1_grad/ReshapeReshape3dagger/gradients_2/dagger/feature_loss_grad/truediv3dagger/gradients_2/dagger/Mean_1_grad/DynamicStitch*
T0* 
_class
loc:@dagger/Mean_1*
Tshape0
�
*dagger/gradients_2/dagger/Mean_1_grad/TileTile-dagger/gradients_2/dagger/Mean_1_grad/Reshape.dagger/gradients_2/dagger/Mean_1_grad/floordiv*
T0* 
_class
loc:@dagger/Mean_1*

Tmultiples0
�
-dagger/gradients_2/dagger/Mean_1_grad/Shape_2Shapedagger/Square_1*
T0* 
_class
loc:@dagger/Mean_1*
out_type0
�
-dagger/gradients_2/dagger/Mean_1_grad/Shape_3Shapedagger/Mean_1*
T0* 
_class
loc:@dagger/Mean_1*
out_type0
{
+dagger/gradients_2/dagger/Mean_1_grad/ConstConst* 
_class
loc:@dagger/Mean_1*
valueB: *
dtype0
�
*dagger/gradients_2/dagger/Mean_1_grad/ProdProd-dagger/gradients_2/dagger/Mean_1_grad/Shape_2+dagger/gradients_2/dagger/Mean_1_grad/Const*
T0* 
_class
loc:@dagger/Mean_1*
	keep_dims( *

Tidx0
}
-dagger/gradients_2/dagger/Mean_1_grad/Const_1Const*
dtype0* 
_class
loc:@dagger/Mean_1*
valueB: 
�
,dagger/gradients_2/dagger/Mean_1_grad/Prod_1Prod-dagger/gradients_2/dagger/Mean_1_grad/Shape_3-dagger/gradients_2/dagger/Mean_1_grad/Const_1*
	keep_dims( *

Tidx0*
T0* 
_class
loc:@dagger/Mean_1
}
1dagger/gradients_2/dagger/Mean_1_grad/Maximum_1/yConst*
dtype0* 
_class
loc:@dagger/Mean_1*
value	B :
�
/dagger/gradients_2/dagger/Mean_1_grad/Maximum_1Maximum,dagger/gradients_2/dagger/Mean_1_grad/Prod_11dagger/gradients_2/dagger/Mean_1_grad/Maximum_1/y*
T0* 
_class
loc:@dagger/Mean_1
�
0dagger/gradients_2/dagger/Mean_1_grad/floordiv_1FloorDiv*dagger/gradients_2/dagger/Mean_1_grad/Prod/dagger/gradients_2/dagger/Mean_1_grad/Maximum_1*
T0* 
_class
loc:@dagger/Mean_1
�
*dagger/gradients_2/dagger/Mean_1_grad/CastCast0dagger/gradients_2/dagger/Mean_1_grad/floordiv_1*

SrcT0* 
_class
loc:@dagger/Mean_1*
Truncate( *

DstT0
�
-dagger/gradients_2/dagger/Mean_1_grad/truedivRealDiv*dagger/gradients_2/dagger/Mean_1_grad/Tile*dagger/gradients_2/dagger/Mean_1_grad/Cast*
T0* 
_class
loc:@dagger/Mean_1
�
.dagger/gradients_2/Identity/input_grad/unstackUnpack'dagger/gradients_2/dagger/Sum_grad/Tile*	
num*
T0*!
_class
loc:@Identity/input*

axis 
p
7dagger/gradients_2/Identity/input_grad/tuple/group_depsNoOp/^dagger/gradients_2/Identity/input_grad/unstack
�
?dagger/gradients_2/Identity/input_grad/tuple/control_dependencyIdentity.dagger/gradients_2/Identity/input_grad/unstack8^dagger/gradients_2/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
Adagger/gradients_2/Identity/input_grad/tuple/control_dependency_1Identity0dagger/gradients_2/Identity/input_grad/unstack:18^dagger/gradients_2/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
Adagger/gradients_2/Identity/input_grad/tuple/control_dependency_2Identity0dagger/gradients_2/Identity/input_grad/unstack:28^dagger/gradients_2/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
Adagger/gradients_2/Identity/input_grad/tuple/control_dependency_3Identity0dagger/gradients_2/Identity/input_grad/unstack:38^dagger/gradients_2/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
Adagger/gradients_2/Identity/input_grad/tuple/control_dependency_4Identity0dagger/gradients_2/Identity/input_grad/unstack:48^dagger/gradients_2/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
Adagger/gradients_2/Identity/input_grad/tuple/control_dependency_5Identity0dagger/gradients_2/Identity/input_grad/unstack:58^dagger/gradients_2/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
z
)dagger/gradients_2/dagger/Mean_grad/ShapeShapedagger/Square*
T0*
_class
loc:@dagger/Mean*
out_type0
r
(dagger/gradients_2/dagger/Mean_grad/SizeConst*
_class
loc:@dagger/Mean*
value	B :*
dtype0
�
'dagger/gradients_2/dagger/Mean_grad/addAddV2dagger/Mean/reduction_indices(dagger/gradients_2/dagger/Mean_grad/Size*
T0*
_class
loc:@dagger/Mean
�
'dagger/gradients_2/dagger/Mean_grad/modFloorMod'dagger/gradients_2/dagger/Mean_grad/add(dagger/gradients_2/dagger/Mean_grad/Size*
T0*
_class
loc:@dagger/Mean
t
+dagger/gradients_2/dagger/Mean_grad/Shape_1Const*
dtype0*
_class
loc:@dagger/Mean*
valueB 
y
/dagger/gradients_2/dagger/Mean_grad/range/startConst*
_class
loc:@dagger/Mean*
value	B : *
dtype0
y
/dagger/gradients_2/dagger/Mean_grad/range/deltaConst*
_class
loc:@dagger/Mean*
value	B :*
dtype0
�
)dagger/gradients_2/dagger/Mean_grad/rangeRange/dagger/gradients_2/dagger/Mean_grad/range/start(dagger/gradients_2/dagger/Mean_grad/Size/dagger/gradients_2/dagger/Mean_grad/range/delta*
_class
loc:@dagger/Mean*

Tidx0
x
.dagger/gradients_2/dagger/Mean_grad/Fill/valueConst*
_class
loc:@dagger/Mean*
value	B :*
dtype0
�
(dagger/gradients_2/dagger/Mean_grad/FillFill+dagger/gradients_2/dagger/Mean_grad/Shape_1.dagger/gradients_2/dagger/Mean_grad/Fill/value*
T0*
_class
loc:@dagger/Mean*

index_type0
�
1dagger/gradients_2/dagger/Mean_grad/DynamicStitchDynamicStitch)dagger/gradients_2/dagger/Mean_grad/range'dagger/gradients_2/dagger/Mean_grad/mod)dagger/gradients_2/dagger/Mean_grad/Shape(dagger/gradients_2/dagger/Mean_grad/Fill*
T0*
_class
loc:@dagger/Mean*
N
w
-dagger/gradients_2/dagger/Mean_grad/Maximum/yConst*
_class
loc:@dagger/Mean*
value	B :*
dtype0
�
+dagger/gradients_2/dagger/Mean_grad/MaximumMaximum1dagger/gradients_2/dagger/Mean_grad/DynamicStitch-dagger/gradients_2/dagger/Mean_grad/Maximum/y*
T0*
_class
loc:@dagger/Mean
�
,dagger/gradients_2/dagger/Mean_grad/floordivFloorDiv)dagger/gradients_2/dagger/Mean_grad/Shape+dagger/gradients_2/dagger/Mean_grad/Maximum*
T0*
_class
loc:@dagger/Mean
�
+dagger/gradients_2/dagger/Mean_grad/ReshapeReshape+dagger/gradients_2/dagger/loss_grad/truediv1dagger/gradients_2/dagger/Mean_grad/DynamicStitch*
T0*
_class
loc:@dagger/Mean*
Tshape0
�
(dagger/gradients_2/dagger/Mean_grad/TileTile+dagger/gradients_2/dagger/Mean_grad/Reshape,dagger/gradients_2/dagger/Mean_grad/floordiv*

Tmultiples0*
T0*
_class
loc:@dagger/Mean
|
+dagger/gradients_2/dagger/Mean_grad/Shape_2Shapedagger/Square*
T0*
_class
loc:@dagger/Mean*
out_type0
z
+dagger/gradients_2/dagger/Mean_grad/Shape_3Shapedagger/Mean*
T0*
_class
loc:@dagger/Mean*
out_type0
w
)dagger/gradients_2/dagger/Mean_grad/ConstConst*
_class
loc:@dagger/Mean*
valueB: *
dtype0
�
(dagger/gradients_2/dagger/Mean_grad/ProdProd+dagger/gradients_2/dagger/Mean_grad/Shape_2)dagger/gradients_2/dagger/Mean_grad/Const*
T0*
_class
loc:@dagger/Mean*
	keep_dims( *

Tidx0
y
+dagger/gradients_2/dagger/Mean_grad/Const_1Const*
_class
loc:@dagger/Mean*
valueB: *
dtype0
�
*dagger/gradients_2/dagger/Mean_grad/Prod_1Prod+dagger/gradients_2/dagger/Mean_grad/Shape_3+dagger/gradients_2/dagger/Mean_grad/Const_1*
T0*
_class
loc:@dagger/Mean*
	keep_dims( *

Tidx0
y
/dagger/gradients_2/dagger/Mean_grad/Maximum_1/yConst*
_class
loc:@dagger/Mean*
value	B :*
dtype0
�
-dagger/gradients_2/dagger/Mean_grad/Maximum_1Maximum*dagger/gradients_2/dagger/Mean_grad/Prod_1/dagger/gradients_2/dagger/Mean_grad/Maximum_1/y*
T0*
_class
loc:@dagger/Mean
�
.dagger/gradients_2/dagger/Mean_grad/floordiv_1FloorDiv(dagger/gradients_2/dagger/Mean_grad/Prod-dagger/gradients_2/dagger/Mean_grad/Maximum_1*
T0*
_class
loc:@dagger/Mean
�
(dagger/gradients_2/dagger/Mean_grad/CastCast.dagger/gradients_2/dagger/Mean_grad/floordiv_1*

SrcT0*
_class
loc:@dagger/Mean*
Truncate( *

DstT0
�
+dagger/gradients_2/dagger/Mean_grad/truedivRealDiv(dagger/gradients_2/dagger/Mean_grad/Tile(dagger/gradients_2/dagger/Mean_grad/Cast*
T0*
_class
loc:@dagger/Mean
�
-dagger/gradients_2/dagger/Square_1_grad/ConstConst.^dagger/gradients_2/dagger/Mean_1_grad/truediv*"
_class
loc:@dagger/Square_1*
valueB
 *   @*
dtype0
�
+dagger/gradients_2/dagger/Square_1_grad/MulMuldagger/sub_1-dagger/gradients_2/dagger/Square_1_grad/Const*
T0*"
_class
loc:@dagger/Square_1
�
-dagger/gradients_2/dagger/Square_1_grad/Mul_1Mul-dagger/gradients_2/dagger/Mean_1_grad/truediv+dagger/gradients_2/dagger/Square_1_grad/Mul*
T0*"
_class
loc:@dagger/Square_1
�
idagger/gradients_2/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMul?dagger/gradients_2/Identity/input_grad/tuple/control_dependencyTpolicy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*`
_classV
TRloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_2/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1Mul?dagger/gradients_2/Identity/input_grad/tuple/control_dependencyCast_2/x*
T0*`
_classV
TRloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
vdagger/gradients_2/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpj^dagger/gradients_2/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mull^dagger/gradients_2/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
~dagger/gradients_2/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentityidagger/gradients_2/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mulw^dagger/gradients_2/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_2/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitykdagger/gradients_2/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1w^dagger/gradients_2/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
idagger/gradients_2/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMulAdagger/gradients_2/Identity/input_grad/tuple/control_dependency_1Tpolicy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*`
_classV
TRloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_2/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1MulAdagger/gradients_2/Identity/input_grad/tuple/control_dependency_1Cast_2/x*
T0*`
_classV
TRloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
vdagger/gradients_2/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpj^dagger/gradients_2/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mull^dagger/gradients_2/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
~dagger/gradients_2/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentityidagger/gradients_2/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mulw^dagger/gradients_2/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_2/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitykdagger/gradients_2/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1w^dagger/gradients_2/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
idagger/gradients_2/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMulAdagger/gradients_2/Identity/input_grad/tuple/control_dependency_2Tpolicy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*`
_classV
TRloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_2/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1MulAdagger/gradients_2/Identity/input_grad/tuple/control_dependency_2Cast_2/x*
T0*`
_classV
TRloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
vdagger/gradients_2/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpj^dagger/gradients_2/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mull^dagger/gradients_2/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
~dagger/gradients_2/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentityidagger/gradients_2/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mulw^dagger/gradients_2/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_2/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitykdagger/gradients_2/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1w^dagger/gradients_2/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_2/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMulAdagger/gradients_2/Identity/input_grad/tuple/control_dependency_3Vpolicy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
mdagger/gradients_2/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1MulAdagger/gradients_2/Identity/input_grad/tuple/control_dependency_3Cast_2/x*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
xdagger/gradients_2/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpl^dagger/gradients_2/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muln^dagger/gradients_2/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
�dagger/gradients_2/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentitykdagger/gradients_2/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muly^dagger/gradients_2/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_2/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitymdagger/gradients_2/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1y^dagger/gradients_2/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_2/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMulAdagger/gradients_2/Identity/input_grad/tuple/control_dependency_4Vpolicy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
mdagger/gradients_2/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1MulAdagger/gradients_2/Identity/input_grad/tuple/control_dependency_4Cast_2/x*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
xdagger/gradients_2/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpl^dagger/gradients_2/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muln^dagger/gradients_2/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
�dagger/gradients_2/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentitykdagger/gradients_2/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muly^dagger/gradients_2/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_2/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitymdagger/gradients_2/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1y^dagger/gradients_2/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_2/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMulAdagger/gradients_2/Identity/input_grad/tuple/control_dependency_5Vpolicy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
mdagger/gradients_2/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1MulAdagger/gradients_2/Identity/input_grad/tuple/control_dependency_5Cast_2/x*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
xdagger/gradients_2/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpl^dagger/gradients_2/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muln^dagger/gradients_2/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
�dagger/gradients_2/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentitykdagger/gradients_2/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muly^dagger/gradients_2/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_2/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitymdagger/gradients_2/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1y^dagger/gradients_2/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
+dagger/gradients_2/dagger/Square_grad/ConstConst,^dagger/gradients_2/dagger/Mean_grad/truediv*
dtype0* 
_class
loc:@dagger/Square*
valueB
 *   @
�
)dagger/gradients_2/dagger/Square_grad/MulMul
dagger/sub+dagger/gradients_2/dagger/Square_grad/Const*
T0* 
_class
loc:@dagger/Square
�
+dagger/gradients_2/dagger/Square_grad/Mul_1Mul+dagger/gradients_2/dagger/Mean_grad/truediv)dagger/gradients_2/dagger/Square_grad/Mul*
T0* 
_class
loc:@dagger/Square

*dagger/gradients_2/dagger/sub_1_grad/ShapeShapedagger/Reshape_6*
T0*
_class
loc:@dagger/sub_1*
out_type0
�
,dagger/gradients_2/dagger/sub_1_grad/Shape_1Shapeextra_encoder/featureMap*
T0*
_class
loc:@dagger/sub_1*
out_type0
�
:dagger/gradients_2/dagger/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs*dagger/gradients_2/dagger/sub_1_grad/Shape,dagger/gradients_2/dagger/sub_1_grad/Shape_1*
T0*
_class
loc:@dagger/sub_1
�
(dagger/gradients_2/dagger/sub_1_grad/SumSum-dagger/gradients_2/dagger/Square_1_grad/Mul_1:dagger/gradients_2/dagger/sub_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_class
loc:@dagger/sub_1
�
,dagger/gradients_2/dagger/sub_1_grad/ReshapeReshape(dagger/gradients_2/dagger/sub_1_grad/Sum*dagger/gradients_2/dagger/sub_1_grad/Shape*
T0*
_class
loc:@dagger/sub_1*
Tshape0
�
(dagger/gradients_2/dagger/sub_1_grad/NegNeg-dagger/gradients_2/dagger/Square_1_grad/Mul_1*
T0*
_class
loc:@dagger/sub_1
�
*dagger/gradients_2/dagger/sub_1_grad/Sum_1Sum(dagger/gradients_2/dagger/sub_1_grad/Neg<dagger/gradients_2/dagger/sub_1_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@dagger/sub_1*
	keep_dims( *

Tidx0
�
.dagger/gradients_2/dagger/sub_1_grad/Reshape_1Reshape*dagger/gradients_2/dagger/sub_1_grad/Sum_1,dagger/gradients_2/dagger/sub_1_grad/Shape_1*
T0*
_class
loc:@dagger/sub_1*
Tshape0
�
5dagger/gradients_2/dagger/sub_1_grad/tuple/group_depsNoOp-^dagger/gradients_2/dagger/sub_1_grad/Reshape/^dagger/gradients_2/dagger/sub_1_grad/Reshape_1
�
=dagger/gradients_2/dagger/sub_1_grad/tuple/control_dependencyIdentity,dagger/gradients_2/dagger/sub_1_grad/Reshape6^dagger/gradients_2/dagger/sub_1_grad/tuple/group_deps*
T0*
_class
loc:@dagger/sub_1
�
?dagger/gradients_2/dagger/sub_1_grad/tuple/control_dependency_1Identity.dagger/gradients_2/dagger/sub_1_grad/Reshape_16^dagger/gradients_2/dagger/sub_1_grad/tuple/group_deps*
T0*
_class
loc:@dagger/sub_1
�
pdagger/gradients_2/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul#policy/fully_connected/weights/read�dagger/gradients_2/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
pdagger/gradients_2/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul%policy/fully_connected_1/weights/read�dagger/gradients_2/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
pdagger/gradients_2/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul%policy/fully_connected_2/weights/read�dagger/gradients_2/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
rdagger/gradients_2/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul%valueNet/fully_connected/weights/read�dagger/gradients_2/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*i
_class_
][loc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
rdagger/gradients_2/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul'valueNet/fully_connected_1/weights/read�dagger/gradients_2/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*i
_class_
][loc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
rdagger/gradients_2/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul'valueNet/fully_connected_2/weights/read�dagger/gradients_2/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*i
_class_
][loc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
{
(dagger/gradients_2/dagger/sub_grad/ShapeShapedagger/Reshape_4*
T0*
_class
loc:@dagger/sub*
out_type0
�
*dagger/gradients_2/dagger/sub_grad/Shape_1Shape%policy/policy/fully_connected/BiasAdd*
T0*
_class
loc:@dagger/sub*
out_type0
�
8dagger/gradients_2/dagger/sub_grad/BroadcastGradientArgsBroadcastGradientArgs(dagger/gradients_2/dagger/sub_grad/Shape*dagger/gradients_2/dagger/sub_grad/Shape_1*
T0*
_class
loc:@dagger/sub
�
&dagger/gradients_2/dagger/sub_grad/SumSum+dagger/gradients_2/dagger/Square_grad/Mul_18dagger/gradients_2/dagger/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_class
loc:@dagger/sub
�
*dagger/gradients_2/dagger/sub_grad/ReshapeReshape&dagger/gradients_2/dagger/sub_grad/Sum(dagger/gradients_2/dagger/sub_grad/Shape*
T0*
_class
loc:@dagger/sub*
Tshape0
�
&dagger/gradients_2/dagger/sub_grad/NegNeg+dagger/gradients_2/dagger/Square_grad/Mul_1*
T0*
_class
loc:@dagger/sub
�
(dagger/gradients_2/dagger/sub_grad/Sum_1Sum&dagger/gradients_2/dagger/sub_grad/Neg:dagger/gradients_2/dagger/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_class
loc:@dagger/sub
�
,dagger/gradients_2/dagger/sub_grad/Reshape_1Reshape(dagger/gradients_2/dagger/sub_grad/Sum_1*dagger/gradients_2/dagger/sub_grad/Shape_1*
T0*
_class
loc:@dagger/sub*
Tshape0
�
3dagger/gradients_2/dagger/sub_grad/tuple/group_depsNoOp+^dagger/gradients_2/dagger/sub_grad/Reshape-^dagger/gradients_2/dagger/sub_grad/Reshape_1
�
;dagger/gradients_2/dagger/sub_grad/tuple/control_dependencyIdentity*dagger/gradients_2/dagger/sub_grad/Reshape4^dagger/gradients_2/dagger/sub_grad/tuple/group_deps*
T0*
_class
loc:@dagger/sub
�
=dagger/gradients_2/dagger/sub_grad/tuple/control_dependency_1Identity,dagger/gradients_2/dagger/sub_grad/Reshape_14^dagger/gradients_2/dagger/sub_grad/tuple/group_deps*
T0*
_class
loc:@dagger/sub
�
Idagger/gradients_2/policy/policy/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGrad=dagger/gradients_2/dagger/sub_grad/tuple/control_dependency_1*
T0*8
_class.
,*loc:@policy/policy/fully_connected/BiasAdd*
data_formatNHWC
�
Ndagger/gradients_2/policy/policy/fully_connected/BiasAdd_grad/tuple/group_depsNoOp>^dagger/gradients_2/dagger/sub_grad/tuple/control_dependency_1J^dagger/gradients_2/policy/policy/fully_connected/BiasAdd_grad/BiasAddGrad
�
Vdagger/gradients_2/policy/policy/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentity=dagger/gradients_2/dagger/sub_grad/tuple/control_dependency_1O^dagger/gradients_2/policy/policy/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*
_class
loc:@dagger/sub
�
Xdagger/gradients_2/policy/policy/fully_connected/BiasAdd_grad/tuple/control_dependency_1IdentityIdagger/gradients_2/policy/policy/fully_connected/BiasAdd_grad/BiasAddGradO^dagger/gradients_2/policy/policy/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@policy/policy/fully_connected/BiasAdd
�
Cdagger/gradients_2/policy/policy/fully_connected/MatMul_grad/MatMulMatMulVdagger/gradients_2/policy/policy/fully_connected/BiasAdd_grad/tuple/control_dependency%policy/fully_connected_3/weights/read*
T0*7
_class-
+)loc:@policy/policy/fully_connected/MatMul*
transpose_a( *
transpose_b(
�
Edagger/gradients_2/policy/policy/fully_connected/MatMul_grad/MatMul_1MatMul0policy/policy/hidden_layer2/fully_connected/TanhVdagger/gradients_2/policy/policy/fully_connected/BiasAdd_grad/tuple/control_dependency*
T0*7
_class-
+)loc:@policy/policy/fully_connected/MatMul*
transpose_a(*
transpose_b( 
�
Mdagger/gradients_2/policy/policy/fully_connected/MatMul_grad/tuple/group_depsNoOpD^dagger/gradients_2/policy/policy/fully_connected/MatMul_grad/MatMulF^dagger/gradients_2/policy/policy/fully_connected/MatMul_grad/MatMul_1
�
Udagger/gradients_2/policy/policy/fully_connected/MatMul_grad/tuple/control_dependencyIdentityCdagger/gradients_2/policy/policy/fully_connected/MatMul_grad/MatMulN^dagger/gradients_2/policy/policy/fully_connected/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@policy/policy/fully_connected/MatMul
�
Wdagger/gradients_2/policy/policy/fully_connected/MatMul_grad/tuple/control_dependency_1IdentityEdagger/gradients_2/policy/policy/fully_connected/MatMul_grad/MatMul_1N^dagger/gradients_2/policy/policy/fully_connected/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@policy/policy/fully_connected/MatMul
�
Qdagger/gradients_2/policy/policy/hidden_layer2/fully_connected/Tanh_grad/TanhGradTanhGrad0policy/policy/hidden_layer2/fully_connected/TanhUdagger/gradients_2/policy/policy/fully_connected/MatMul_grad/tuple/control_dependency*
T0*C
_class9
75loc:@policy/policy/hidden_layer2/fully_connected/Tanh
�
Wdagger/gradients_2/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGradQdagger/gradients_2/policy/policy/hidden_layer2/fully_connected/Tanh_grad/TanhGrad*
T0*F
_class<
:8loc:@policy/policy/hidden_layer2/fully_connected/BiasAdd*
data_formatNHWC
�
\dagger/gradients_2/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/group_depsNoOpX^dagger/gradients_2/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/BiasAddGradR^dagger/gradients_2/policy/policy/hidden_layer2/fully_connected/Tanh_grad/TanhGrad
�
ddagger/gradients_2/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentityQdagger/gradients_2/policy/policy/hidden_layer2/fully_connected/Tanh_grad/TanhGrad]^dagger/gradients_2/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@policy/policy/hidden_layer2/fully_connected/Tanh
�
fdagger/gradients_2/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/control_dependency_1IdentityWdagger/gradients_2/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/BiasAddGrad]^dagger/gradients_2/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@policy/policy/hidden_layer2/fully_connected/BiasAdd
�
Qdagger/gradients_2/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMulMatMulddagger/gradients_2/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/control_dependency%policy/fully_connected_2/weights/read*
T0*E
_class;
97loc:@policy/policy/hidden_layer2/fully_connected/MatMul*
transpose_a( *
transpose_b(
�
Sdagger/gradients_2/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMul_1MatMul0policy/policy/hidden_layer1/fully_connected/Tanhddagger/gradients_2/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/control_dependency*
T0*E
_class;
97loc:@policy/policy/hidden_layer2/fully_connected/MatMul*
transpose_a(*
transpose_b( 
�
[dagger/gradients_2/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/group_depsNoOpR^dagger/gradients_2/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMulT^dagger/gradients_2/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMul_1
�
cdagger/gradients_2/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/control_dependencyIdentityQdagger/gradients_2/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMul\^dagger/gradients_2/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer2/fully_connected/MatMul
�
edagger/gradients_2/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/control_dependency_1IdentitySdagger/gradients_2/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMul_1\^dagger/gradients_2/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer2/fully_connected/MatMul
�
Qdagger/gradients_2/policy/policy/hidden_layer1/fully_connected/Tanh_grad/TanhGradTanhGrad0policy/policy/hidden_layer1/fully_connected/Tanhcdagger/gradients_2/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/control_dependency*
T0*C
_class9
75loc:@policy/policy/hidden_layer1/fully_connected/Tanh
�
dagger/gradients_2/AddNAddNpdagger/gradients_2/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/muledagger/gradients_2/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
N
�
Wdagger/gradients_2/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGradQdagger/gradients_2/policy/policy/hidden_layer1/fully_connected/Tanh_grad/TanhGrad*
data_formatNHWC*
T0*F
_class<
:8loc:@policy/policy/hidden_layer1/fully_connected/BiasAdd
�
\dagger/gradients_2/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/group_depsNoOpX^dagger/gradients_2/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/BiasAddGradR^dagger/gradients_2/policy/policy/hidden_layer1/fully_connected/Tanh_grad/TanhGrad
�
ddagger/gradients_2/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentityQdagger/gradients_2/policy/policy/hidden_layer1/fully_connected/Tanh_grad/TanhGrad]^dagger/gradients_2/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@policy/policy/hidden_layer1/fully_connected/Tanh
�
fdagger/gradients_2/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/control_dependency_1IdentityWdagger/gradients_2/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/BiasAddGrad]^dagger/gradients_2/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@policy/policy/hidden_layer1/fully_connected/BiasAdd
�
Qdagger/gradients_2/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMulMatMulddagger/gradients_2/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/control_dependency%policy/fully_connected_1/weights/read*
T0*E
_class;
97loc:@policy/policy/hidden_layer1/fully_connected/MatMul*
transpose_a( *
transpose_b(
�
Sdagger/gradients_2/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMul_1MatMul0policy/policy/hidden_layer0/fully_connected/Tanhddagger/gradients_2/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*E
_class;
97loc:@policy/policy/hidden_layer1/fully_connected/MatMul*
transpose_a(
�
[dagger/gradients_2/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/group_depsNoOpR^dagger/gradients_2/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMulT^dagger/gradients_2/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMul_1
�
cdagger/gradients_2/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/control_dependencyIdentityQdagger/gradients_2/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMul\^dagger/gradients_2/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer1/fully_connected/MatMul
�
edagger/gradients_2/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/control_dependency_1IdentitySdagger/gradients_2/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMul_1\^dagger/gradients_2/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer1/fully_connected/MatMul
�
Qdagger/gradients_2/policy/policy/hidden_layer0/fully_connected/Tanh_grad/TanhGradTanhGrad0policy/policy/hidden_layer0/fully_connected/Tanhcdagger/gradients_2/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/control_dependency*
T0*C
_class9
75loc:@policy/policy/hidden_layer0/fully_connected/Tanh
�
dagger/gradients_2/AddN_1AddNpdagger/gradients_2/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/muledagger/gradients_2/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
N
�
Wdagger/gradients_2/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGradQdagger/gradients_2/policy/policy/hidden_layer0/fully_connected/Tanh_grad/TanhGrad*
T0*F
_class<
:8loc:@policy/policy/hidden_layer0/fully_connected/BiasAdd*
data_formatNHWC
�
\dagger/gradients_2/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/group_depsNoOpX^dagger/gradients_2/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/BiasAddGradR^dagger/gradients_2/policy/policy/hidden_layer0/fully_connected/Tanh_grad/TanhGrad
�
ddagger/gradients_2/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentityQdagger/gradients_2/policy/policy/hidden_layer0/fully_connected/Tanh_grad/TanhGrad]^dagger/gradients_2/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@policy/policy/hidden_layer0/fully_connected/Tanh
�
fdagger/gradients_2/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/control_dependency_1IdentityWdagger/gradients_2/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/BiasAddGrad]^dagger/gradients_2/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@policy/policy/hidden_layer0/fully_connected/BiasAdd
�
Qdagger/gradients_2/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMulMatMulddagger/gradients_2/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/control_dependency#policy/fully_connected/weights/read*
transpose_a( *
transpose_b(*
T0*E
_class;
97loc:@policy/policy/hidden_layer0/fully_connected/MatMul
�
Sdagger/gradients_2/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMul_1MatMulpolicy/concatddagger/gradients_2/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*E
_class;
97loc:@policy/policy/hidden_layer0/fully_connected/MatMul*
transpose_a(
�
[dagger/gradients_2/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/group_depsNoOpR^dagger/gradients_2/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMulT^dagger/gradients_2/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMul_1
�
cdagger/gradients_2/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/control_dependencyIdentityQdagger/gradients_2/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMul\^dagger/gradients_2/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer0/fully_connected/MatMul
�
edagger/gradients_2/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/control_dependency_1IdentitySdagger/gradients_2/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMul_1\^dagger/gradients_2/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer0/fully_connected/MatMul
v
*dagger/gradients_2/policy/concat_grad/RankConst* 
_class
loc:@policy/concat*
value	B :*
dtype0
�
)dagger/gradients_2/policy/concat_grad/modFloorModpolicy/concat/axis*dagger/gradients_2/policy/concat_grad/Rank*
T0* 
_class
loc:@policy/concat
�
+dagger/gradients_2/policy/concat_grad/ShapeShapepolicy/strided_slice*
T0* 
_class
loc:@policy/concat*
out_type0
�
,dagger/gradients_2/policy/concat_grad/ShapeNShapeNpolicy/strided_sliceextra_encoder/featureMap*
N*
T0* 
_class
loc:@policy/concat*
out_type0
�
2dagger/gradients_2/policy/concat_grad/ConcatOffsetConcatOffset)dagger/gradients_2/policy/concat_grad/mod,dagger/gradients_2/policy/concat_grad/ShapeN.dagger/gradients_2/policy/concat_grad/ShapeN:1*
N* 
_class
loc:@policy/concat
�
+dagger/gradients_2/policy/concat_grad/SliceSlicecdagger/gradients_2/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/control_dependency2dagger/gradients_2/policy/concat_grad/ConcatOffset,dagger/gradients_2/policy/concat_grad/ShapeN*
Index0*
T0* 
_class
loc:@policy/concat
�
-dagger/gradients_2/policy/concat_grad/Slice_1Slicecdagger/gradients_2/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/control_dependency4dagger/gradients_2/policy/concat_grad/ConcatOffset:1.dagger/gradients_2/policy/concat_grad/ShapeN:1*
Index0*
T0* 
_class
loc:@policy/concat
�
6dagger/gradients_2/policy/concat_grad/tuple/group_depsNoOp,^dagger/gradients_2/policy/concat_grad/Slice.^dagger/gradients_2/policy/concat_grad/Slice_1
�
>dagger/gradients_2/policy/concat_grad/tuple/control_dependencyIdentity+dagger/gradients_2/policy/concat_grad/Slice7^dagger/gradients_2/policy/concat_grad/tuple/group_deps*
T0* 
_class
loc:@policy/concat
�
@dagger/gradients_2/policy/concat_grad/tuple/control_dependency_1Identity-dagger/gradients_2/policy/concat_grad/Slice_17^dagger/gradients_2/policy/concat_grad/tuple/group_deps*
T0* 
_class
loc:@policy/concat
�
dagger/gradients_2/AddN_2AddNpdagger/gradients_2/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/muledagger/gradients_2/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
N
�
dagger/gradients_2/AddN_3AddN?dagger/gradients_2/dagger/sub_1_grad/tuple/control_dependency_1@dagger/gradients_2/policy/concat_grad/tuple/control_dependency_1*
N*
T0*
_class
loc:@dagger/sub_1
�
Wdagger/gradients_2/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGraddagger/gradients_2/AddN_3*
T0*F
_class<
:8loc:@extra_encoder/extra_encoder/fully_connected/BiasAdd*
data_formatNHWC
�
\dagger/gradients_2/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/group_depsNoOp^dagger/gradients_2/AddN_3X^dagger/gradients_2/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/BiasAddGrad
�
ddagger/gradients_2/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentitydagger/gradients_2/AddN_3]^dagger/gradients_2/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*
_class
loc:@dagger/sub_1
�
fdagger/gradients_2/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependency_1IdentityWdagger/gradients_2/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/BiasAddGrad]^dagger/gradients_2/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@extra_encoder/extra_encoder/fully_connected/BiasAdd
�
Qdagger/gradients_2/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMulMatMulddagger/gradients_2/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependency*extra_encoder/fully_connected/weights/read*
T0*E
_class;
97loc:@extra_encoder/extra_encoder/fully_connected/MatMul*
transpose_a( *
transpose_b(
�
Sdagger/gradients_2/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMul_1MatMulextra_encoder/strided_sliceddagger/gradients_2/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*E
_class;
97loc:@extra_encoder/extra_encoder/fully_connected/MatMul
�
[dagger/gradients_2/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/group_depsNoOpR^dagger/gradients_2/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMulT^dagger/gradients_2/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMul_1
�
cdagger/gradients_2/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/control_dependencyIdentityQdagger/gradients_2/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMul\^dagger/gradients_2/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@extra_encoder/extra_encoder/fully_connected/MatMul
�
edagger/gradients_2/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/control_dependency_1IdentitySdagger/gradients_2/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMul_1\^dagger/gradients_2/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@extra_encoder/extra_encoder/fully_connected/MatMul
O
"dagger/feature_solver_summed/beta1Const*
valueB
 *fff?*
dtype0
O
"dagger/feature_solver_summed/beta2Const*
valueB
 *w�?*
dtype0
Q
$dagger/feature_solver_summed/epsilonConst*
valueB
 *w�+2*
dtype0
�
Sdagger/feature_solver_summed/update_extra_encoder/fully_connected/weights/ApplyAdam	ApplyAdam%extra_encoder/fully_connected/weights*extra_encoder/fully_connected/weights/Adam,extra_encoder/fully_connected/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR"dagger/feature_solver_summed/beta1"dagger/feature_solver_summed/beta2$dagger/feature_solver_summed/epsilonedagger/gradients_2/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights
�
Rdagger/feature_solver_summed/update_extra_encoder/fully_connected/biases/ApplyAdam	ApplyAdam$extra_encoder/fully_connected/biases)extra_encoder/fully_connected/biases/Adam+extra_encoder/fully_connected/biases/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR"dagger/feature_solver_summed/beta1"dagger/feature_solver_summed/beta2$dagger/feature_solver_summed/epsilonfdagger/gradients_2/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases*
use_nesterov( 
�
Ldagger/feature_solver_summed/update_policy/fully_connected/weights/ApplyAdam	ApplyAdampolicy/fully_connected/weights#policy/fully_connected/weights/Adam%policy/fully_connected/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR"dagger/feature_solver_summed/beta1"dagger/feature_solver_summed/beta2$dagger/feature_solver_summed/epsilondagger/gradients_2/AddN_2*
use_nesterov( *
use_locking( *
T0*1
_class'
%#loc:@policy/fully_connected/weights
�
Kdagger/feature_solver_summed/update_policy/fully_connected/biases/ApplyAdam	ApplyAdampolicy/fully_connected/biases"policy/fully_connected/biases/Adam$policy/fully_connected/biases/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR"dagger/feature_solver_summed/beta1"dagger/feature_solver_summed/beta2$dagger/feature_solver_summed/epsilonfdagger/gradients_2/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*0
_class&
$"loc:@policy/fully_connected/biases*
use_nesterov( 
�
Ndagger/feature_solver_summed/update_policy/fully_connected_1/weights/ApplyAdam	ApplyAdam policy/fully_connected_1/weights%policy/fully_connected_1/weights/Adam'policy/fully_connected_1/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR"dagger/feature_solver_summed/beta1"dagger/feature_solver_summed/beta2$dagger/feature_solver_summed/epsilondagger/gradients_2/AddN_1*
use_nesterov( *
use_locking( *
T0*3
_class)
'%loc:@policy/fully_connected_1/weights
�
Mdagger/feature_solver_summed/update_policy/fully_connected_1/biases/ApplyAdam	ApplyAdampolicy/fully_connected_1/biases$policy/fully_connected_1/biases/Adam&policy/fully_connected_1/biases/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR"dagger/feature_solver_summed/beta1"dagger/feature_solver_summed/beta2$dagger/feature_solver_summed/epsilonfdagger/gradients_2/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_1/biases
�
Ndagger/feature_solver_summed/update_policy/fully_connected_2/weights/ApplyAdam	ApplyAdam policy/fully_connected_2/weights%policy/fully_connected_2/weights/Adam'policy/fully_connected_2/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR"dagger/feature_solver_summed/beta1"dagger/feature_solver_summed/beta2$dagger/feature_solver_summed/epsilondagger/gradients_2/AddN*
T0*3
_class)
'%loc:@policy/fully_connected_2/weights*
use_nesterov( *
use_locking( 
�
Mdagger/feature_solver_summed/update_policy/fully_connected_2/biases/ApplyAdam	ApplyAdampolicy/fully_connected_2/biases$policy/fully_connected_2/biases/Adam&policy/fully_connected_2/biases/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR"dagger/feature_solver_summed/beta1"dagger/feature_solver_summed/beta2$dagger/feature_solver_summed/epsilonfdagger/gradients_2/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_2/biases*
use_nesterov( 
�
Ndagger/feature_solver_summed/update_policy/fully_connected_3/weights/ApplyAdam	ApplyAdam policy/fully_connected_3/weights%policy/fully_connected_3/weights/Adam'policy/fully_connected_3/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR"dagger/feature_solver_summed/beta1"dagger/feature_solver_summed/beta2$dagger/feature_solver_summed/epsilonWdagger/gradients_2/policy/policy/fully_connected/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*3
_class)
'%loc:@policy/fully_connected_3/weights
�
Mdagger/feature_solver_summed/update_policy/fully_connected_3/biases/ApplyAdam	ApplyAdampolicy/fully_connected_3/biases$policy/fully_connected_3/biases/Adam&policy/fully_connected_3/biases/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR"dagger/feature_solver_summed/beta1"dagger/feature_solver_summed/beta2$dagger/feature_solver_summed/epsilonXdagger/gradients_2/policy/policy/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_3/biases
�
Ndagger/feature_solver_summed/update_valueNet/fully_connected/weights/ApplyAdam	ApplyAdam valueNet/fully_connected/weights%valueNet/fully_connected/weights/Adam'valueNet/fully_connected/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR"dagger/feature_solver_summed/beta1"dagger/feature_solver_summed/beta2$dagger/feature_solver_summed/epsilonrdagger/gradients_2/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul*
T0*3
_class)
'%loc:@valueNet/fully_connected/weights*
use_nesterov( *
use_locking( 
�
Pdagger/feature_solver_summed/update_valueNet/fully_connected_1/weights/ApplyAdam	ApplyAdam"valueNet/fully_connected_1/weights'valueNet/fully_connected_1/weights/Adam)valueNet/fully_connected_1/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR"dagger/feature_solver_summed/beta1"dagger/feature_solver_summed/beta2$dagger/feature_solver_summed/epsilonrdagger/gradients_2/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul*
use_nesterov( *
use_locking( *
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights
�
Pdagger/feature_solver_summed/update_valueNet/fully_connected_2/weights/ApplyAdam	ApplyAdam"valueNet/fully_connected_2/weights'valueNet/fully_connected_2/weights/Adam)valueNet/fully_connected_2/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR"dagger/feature_solver_summed/beta1"dagger/feature_solver_summed/beta2$dagger/feature_solver_summed/epsilonrdagger/gradients_2/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul*
use_nesterov( *
use_locking( *
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights
�	
 dagger/feature_solver_summed/mulMuldagger/beta1_power/read"dagger/feature_solver_summed/beta1S^dagger/feature_solver_summed/update_extra_encoder/fully_connected/biases/ApplyAdamT^dagger/feature_solver_summed/update_extra_encoder/fully_connected/weights/ApplyAdamL^dagger/feature_solver_summed/update_policy/fully_connected/biases/ApplyAdamM^dagger/feature_solver_summed/update_policy/fully_connected/weights/ApplyAdamN^dagger/feature_solver_summed/update_policy/fully_connected_1/biases/ApplyAdamO^dagger/feature_solver_summed/update_policy/fully_connected_1/weights/ApplyAdamN^dagger/feature_solver_summed/update_policy/fully_connected_2/biases/ApplyAdamO^dagger/feature_solver_summed/update_policy/fully_connected_2/weights/ApplyAdamN^dagger/feature_solver_summed/update_policy/fully_connected_3/biases/ApplyAdamO^dagger/feature_solver_summed/update_policy/fully_connected_3/weights/ApplyAdamO^dagger/feature_solver_summed/update_valueNet/fully_connected/weights/ApplyAdamQ^dagger/feature_solver_summed/update_valueNet/fully_connected_1/weights/ApplyAdamQ^dagger/feature_solver_summed/update_valueNet/fully_connected_2/weights/ApplyAdam*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�
#dagger/feature_solver_summed/AssignAssigndagger/beta1_power dagger/feature_solver_summed/mul*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases*
validate_shape(*
use_locking( 
�	
"dagger/feature_solver_summed/mul_1Muldagger/beta2_power/read"dagger/feature_solver_summed/beta2S^dagger/feature_solver_summed/update_extra_encoder/fully_connected/biases/ApplyAdamT^dagger/feature_solver_summed/update_extra_encoder/fully_connected/weights/ApplyAdamL^dagger/feature_solver_summed/update_policy/fully_connected/biases/ApplyAdamM^dagger/feature_solver_summed/update_policy/fully_connected/weights/ApplyAdamN^dagger/feature_solver_summed/update_policy/fully_connected_1/biases/ApplyAdamO^dagger/feature_solver_summed/update_policy/fully_connected_1/weights/ApplyAdamN^dagger/feature_solver_summed/update_policy/fully_connected_2/biases/ApplyAdamO^dagger/feature_solver_summed/update_policy/fully_connected_2/weights/ApplyAdamN^dagger/feature_solver_summed/update_policy/fully_connected_3/biases/ApplyAdamO^dagger/feature_solver_summed/update_policy/fully_connected_3/weights/ApplyAdamO^dagger/feature_solver_summed/update_valueNet/fully_connected/weights/ApplyAdamQ^dagger/feature_solver_summed/update_valueNet/fully_connected_1/weights/ApplyAdamQ^dagger/feature_solver_summed/update_valueNet/fully_connected_2/weights/ApplyAdam*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�
%dagger/feature_solver_summed/Assign_1Assigndagger/beta2_power"dagger/feature_solver_summed/mul_1*
validate_shape(*
use_locking( *
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�	
#dagger/feature_solver_summed/updateNoOp$^dagger/feature_solver_summed/Assign&^dagger/feature_solver_summed/Assign_1S^dagger/feature_solver_summed/update_extra_encoder/fully_connected/biases/ApplyAdamT^dagger/feature_solver_summed/update_extra_encoder/fully_connected/weights/ApplyAdamL^dagger/feature_solver_summed/update_policy/fully_connected/biases/ApplyAdamM^dagger/feature_solver_summed/update_policy/fully_connected/weights/ApplyAdamN^dagger/feature_solver_summed/update_policy/fully_connected_1/biases/ApplyAdamO^dagger/feature_solver_summed/update_policy/fully_connected_1/weights/ApplyAdamN^dagger/feature_solver_summed/update_policy/fully_connected_2/biases/ApplyAdamO^dagger/feature_solver_summed/update_policy/fully_connected_2/weights/ApplyAdamN^dagger/feature_solver_summed/update_policy/fully_connected_3/biases/ApplyAdamO^dagger/feature_solver_summed/update_policy/fully_connected_3/weights/ApplyAdamO^dagger/feature_solver_summed/update_valueNet/fully_connected/weights/ApplyAdamQ^dagger/feature_solver_summed/update_valueNet/fully_connected_1/weights/ApplyAdamQ^dagger/feature_solver_summed/update_valueNet/fully_connected_2/weights/ApplyAdam
�
"dagger/feature_solver_summed/valueConst$^dagger/feature_solver_summed/update*%
_class
loc:@dagger/global_step*
value	B :*
dtype0
�
dagger/feature_solver_summed	AssignAdddagger/global_step"dagger/feature_solver_summed/value*
use_locking( *
T0*%
_class
loc:@dagger/global_step
H
dagger/add_5AddV2dagger/summed_loss_maskeddagger/l2loss*
T0
b
dagger/gradients_3/ShapeConst*
_class
loc:@dagger/add_5*
valueB *
dtype0
j
dagger/gradients_3/grad_ys_0Const*
_class
loc:@dagger/add_5*
valueB
 *  �?*
dtype0
�
dagger/gradients_3/FillFilldagger/gradients_3/Shapedagger/gradients_3/grad_ys_0*
T0*
_class
loc:@dagger/add_5*

index_type0
W
5dagger/gradients_3/dagger/add_5_grad/tuple/group_depsNoOp^dagger/gradients_3/Fill
�
=dagger/gradients_3/dagger/add_5_grad/tuple/control_dependencyIdentitydagger/gradients_3/Fill6^dagger/gradients_3/dagger/add_5_grad/tuple/group_deps*
T0*
_class
loc:@dagger/add_5
�
?dagger/gradients_3/dagger/add_5_grad/tuple/control_dependency_1Identitydagger/gradients_3/Fill6^dagger/gradients_3/dagger/add_5_grad/tuple/group_deps*
T0*
_class
loc:@dagger/add_5
}
5dagger/gradients_3/dagger/add_3_grad/tuple/group_depsNoOp>^dagger/gradients_3/dagger/add_5_grad/tuple/control_dependency
�
=dagger/gradients_3/dagger/add_3_grad/tuple/control_dependencyIdentity=dagger/gradients_3/dagger/add_5_grad/tuple/control_dependency6^dagger/gradients_3/dagger/add_3_grad/tuple/group_deps*
T0*
_class
loc:@dagger/add_5
�
?dagger/gradients_3/dagger/add_3_grad/tuple/control_dependency_1Identity=dagger/gradients_3/dagger/add_5_grad/tuple/control_dependency6^dagger/gradients_3/dagger/add_3_grad/tuple/group_deps*
T0*
_class
loc:@dagger/add_5
}
0dagger/gradients_3/dagger/Sum_grad/Reshape/shapeConst*
_class
loc:@dagger/Sum*
valueB:*
dtype0
�
*dagger/gradients_3/dagger/Sum_grad/ReshapeReshape?dagger/gradients_3/dagger/add_5_grad/tuple/control_dependency_10dagger/gradients_3/dagger/Sum_grad/Reshape/shape*
T0*
_class
loc:@dagger/Sum*
Tshape0
u
(dagger/gradients_3/dagger/Sum_grad/ConstConst*
_class
loc:@dagger/Sum*
valueB:*
dtype0
�
'dagger/gradients_3/dagger/Sum_grad/TileTile*dagger/gradients_3/dagger/Sum_grad/Reshape(dagger/gradients_3/dagger/Sum_grad/Const*
T0*
_class
loc:@dagger/Sum*

Tmultiples0
�
(dagger/gradients_3/dagger/mul_1_grad/MulMul=dagger/gradients_3/dagger/add_3_grad/tuple/control_dependencydagger/loss_masked*
T0*
_class
loc:@dagger/mul_1
�
*dagger/gradients_3/dagger/mul_1_grad/Mul_1Mul=dagger/gradients_3/dagger/add_3_grad/tuple/control_dependencydagger/dagger_coeff/read*
T0*
_class
loc:@dagger/mul_1
�
5dagger/gradients_3/dagger/mul_1_grad/tuple/group_depsNoOp)^dagger/gradients_3/dagger/mul_1_grad/Mul+^dagger/gradients_3/dagger/mul_1_grad/Mul_1
�
=dagger/gradients_3/dagger/mul_1_grad/tuple/control_dependencyIdentity(dagger/gradients_3/dagger/mul_1_grad/Mul6^dagger/gradients_3/dagger/mul_1_grad/tuple/group_deps*
T0*
_class
loc:@dagger/mul_1
�
?dagger/gradients_3/dagger/mul_1_grad/tuple/control_dependency_1Identity*dagger/gradients_3/dagger/mul_1_grad/Mul_16^dagger/gradients_3/dagger/mul_1_grad/tuple/group_deps*
T0*
_class
loc:@dagger/mul_1
�
@dagger/gradients_3/dagger/feature_loss_masked_grad/Reshape/shapeConst*-
_class#
!loc:@dagger/feature_loss_masked*
valueB"      *
dtype0
�
:dagger/gradients_3/dagger/feature_loss_masked_grad/ReshapeReshape?dagger/gradients_3/dagger/add_3_grad/tuple/control_dependency_1@dagger/gradients_3/dagger/feature_loss_masked_grad/Reshape/shape*
T0*-
_class#
!loc:@dagger/feature_loss_masked*
Tshape0
�
8dagger/gradients_3/dagger/feature_loss_masked_grad/ShapeShapedagger/boolean_mask_1/GatherV2*
T0*-
_class#
!loc:@dagger/feature_loss_masked*
out_type0
�
7dagger/gradients_3/dagger/feature_loss_masked_grad/TileTile:dagger/gradients_3/dagger/feature_loss_masked_grad/Reshape8dagger/gradients_3/dagger/feature_loss_masked_grad/Shape*

Tmultiples0*
T0*-
_class#
!loc:@dagger/feature_loss_masked
�
:dagger/gradients_3/dagger/feature_loss_masked_grad/Shape_1Shapedagger/boolean_mask_1/GatherV2*
T0*-
_class#
!loc:@dagger/feature_loss_masked*
out_type0
�
:dagger/gradients_3/dagger/feature_loss_masked_grad/Shape_2Const*
dtype0*-
_class#
!loc:@dagger/feature_loss_masked*
valueB 
�
8dagger/gradients_3/dagger/feature_loss_masked_grad/ConstConst*-
_class#
!loc:@dagger/feature_loss_masked*
valueB: *
dtype0
�
7dagger/gradients_3/dagger/feature_loss_masked_grad/ProdProd:dagger/gradients_3/dagger/feature_loss_masked_grad/Shape_18dagger/gradients_3/dagger/feature_loss_masked_grad/Const*
T0*-
_class#
!loc:@dagger/feature_loss_masked*
	keep_dims( *

Tidx0
�
:dagger/gradients_3/dagger/feature_loss_masked_grad/Const_1Const*-
_class#
!loc:@dagger/feature_loss_masked*
valueB: *
dtype0
�
9dagger/gradients_3/dagger/feature_loss_masked_grad/Prod_1Prod:dagger/gradients_3/dagger/feature_loss_masked_grad/Shape_2:dagger/gradients_3/dagger/feature_loss_masked_grad/Const_1*
	keep_dims( *

Tidx0*
T0*-
_class#
!loc:@dagger/feature_loss_masked
�
<dagger/gradients_3/dagger/feature_loss_masked_grad/Maximum/yConst*-
_class#
!loc:@dagger/feature_loss_masked*
value	B :*
dtype0
�
:dagger/gradients_3/dagger/feature_loss_masked_grad/MaximumMaximum9dagger/gradients_3/dagger/feature_loss_masked_grad/Prod_1<dagger/gradients_3/dagger/feature_loss_masked_grad/Maximum/y*
T0*-
_class#
!loc:@dagger/feature_loss_masked
�
;dagger/gradients_3/dagger/feature_loss_masked_grad/floordivFloorDiv7dagger/gradients_3/dagger/feature_loss_masked_grad/Prod:dagger/gradients_3/dagger/feature_loss_masked_grad/Maximum*
T0*-
_class#
!loc:@dagger/feature_loss_masked
�
7dagger/gradients_3/dagger/feature_loss_masked_grad/CastCast;dagger/gradients_3/dagger/feature_loss_masked_grad/floordiv*

SrcT0*-
_class#
!loc:@dagger/feature_loss_masked*
Truncate( *

DstT0
�
:dagger/gradients_3/dagger/feature_loss_masked_grad/truedivRealDiv7dagger/gradients_3/dagger/feature_loss_masked_grad/Tile7dagger/gradients_3/dagger/feature_loss_masked_grad/Cast*
T0*-
_class#
!loc:@dagger/feature_loss_masked
�
8dagger/gradients_3/dagger/loss_masked_grad/Reshape/shapeConst*
dtype0*%
_class
loc:@dagger/loss_masked*
valueB"      
�
2dagger/gradients_3/dagger/loss_masked_grad/ReshapeReshape?dagger/gradients_3/dagger/mul_1_grad/tuple/control_dependency_18dagger/gradients_3/dagger/loss_masked_grad/Reshape/shape*
T0*%
_class
loc:@dagger/loss_masked*
Tshape0
�
0dagger/gradients_3/dagger/loss_masked_grad/ShapeShapedagger/boolean_mask/GatherV2*
T0*%
_class
loc:@dagger/loss_masked*
out_type0
�
/dagger/gradients_3/dagger/loss_masked_grad/TileTile2dagger/gradients_3/dagger/loss_masked_grad/Reshape0dagger/gradients_3/dagger/loss_masked_grad/Shape*

Tmultiples0*
T0*%
_class
loc:@dagger/loss_masked
�
2dagger/gradients_3/dagger/loss_masked_grad/Shape_1Shapedagger/boolean_mask/GatherV2*
T0*%
_class
loc:@dagger/loss_masked*
out_type0
�
2dagger/gradients_3/dagger/loss_masked_grad/Shape_2Const*%
_class
loc:@dagger/loss_masked*
valueB *
dtype0
�
0dagger/gradients_3/dagger/loss_masked_grad/ConstConst*%
_class
loc:@dagger/loss_masked*
valueB: *
dtype0
�
/dagger/gradients_3/dagger/loss_masked_grad/ProdProd2dagger/gradients_3/dagger/loss_masked_grad/Shape_10dagger/gradients_3/dagger/loss_masked_grad/Const*
	keep_dims( *

Tidx0*
T0*%
_class
loc:@dagger/loss_masked
�
2dagger/gradients_3/dagger/loss_masked_grad/Const_1Const*%
_class
loc:@dagger/loss_masked*
valueB: *
dtype0
�
1dagger/gradients_3/dagger/loss_masked_grad/Prod_1Prod2dagger/gradients_3/dagger/loss_masked_grad/Shape_22dagger/gradients_3/dagger/loss_masked_grad/Const_1*
T0*%
_class
loc:@dagger/loss_masked*
	keep_dims( *

Tidx0
�
4dagger/gradients_3/dagger/loss_masked_grad/Maximum/yConst*%
_class
loc:@dagger/loss_masked*
value	B :*
dtype0
�
2dagger/gradients_3/dagger/loss_masked_grad/MaximumMaximum1dagger/gradients_3/dagger/loss_masked_grad/Prod_14dagger/gradients_3/dagger/loss_masked_grad/Maximum/y*
T0*%
_class
loc:@dagger/loss_masked
�
3dagger/gradients_3/dagger/loss_masked_grad/floordivFloorDiv/dagger/gradients_3/dagger/loss_masked_grad/Prod2dagger/gradients_3/dagger/loss_masked_grad/Maximum*
T0*%
_class
loc:@dagger/loss_masked
�
/dagger/gradients_3/dagger/loss_masked_grad/CastCast3dagger/gradients_3/dagger/loss_masked_grad/floordiv*
Truncate( *

DstT0*

SrcT0*%
_class
loc:@dagger/loss_masked
�
2dagger/gradients_3/dagger/loss_masked_grad/truedivRealDiv/dagger/gradients_3/dagger/loss_masked_grad/Tile/dagger/gradients_3/dagger/loss_masked_grad/Cast*
T0*%
_class
loc:@dagger/loss_masked
�
<dagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/ShapeShapedagger/boolean_mask_1/Reshape*
T0*U
_classK
I#loc:@dagger/boolean_mask_1/GatherV2"loc:@dagger/boolean_mask_1/Reshape*
out_type0	
�
;dagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/CastCast<dagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/Shape*

SrcT0	*U
_classK
I#loc:@dagger/boolean_mask_1/GatherV2"loc:@dagger/boolean_mask_1/Reshape*
Truncate( *

DstT0
�
;dagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/SizeSizedagger/boolean_mask_1/Squeeze*
T0	*1
_class'
%#loc:@dagger/boolean_mask_1/GatherV2*
out_type0
�
Edagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/ExpandDims/dimConst*1
_class'
%#loc:@dagger/boolean_mask_1/GatherV2*
value	B : *
dtype0
�
Adagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/ExpandDims
ExpandDims;dagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/SizeEdagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/ExpandDims/dim*
T0*1
_class'
%#loc:@dagger/boolean_mask_1/GatherV2*

Tdim0
�
Jdagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/strided_slice/stackConst*1
_class'
%#loc:@dagger/boolean_mask_1/GatherV2*
valueB:*
dtype0
�
Ldagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/strided_slice/stack_1Const*1
_class'
%#loc:@dagger/boolean_mask_1/GatherV2*
valueB: *
dtype0
�
Ldagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/strided_slice/stack_2Const*
dtype0*1
_class'
%#loc:@dagger/boolean_mask_1/GatherV2*
valueB:
�
Ddagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/strided_sliceStridedSlice;dagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/CastJdagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/strided_slice/stackLdagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/strided_slice/stack_1Ldagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0*1
_class'
%#loc:@dagger/boolean_mask_1/GatherV2
�
Bdagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/concat/axisConst*
dtype0*1
_class'
%#loc:@dagger/boolean_mask_1/GatherV2*
value	B : 
�
=dagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/concatConcatV2Adagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/ExpandDimsDdagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/strided_sliceBdagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/concat/axis*
T0*1
_class'
%#loc:@dagger/boolean_mask_1/GatherV2*
N*

Tidx0
�
>dagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/ReshapeReshape:dagger/gradients_3/dagger/feature_loss_masked_grad/truediv=dagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/concat*
T0*1
_class'
%#loc:@dagger/boolean_mask_1/GatherV2*
Tshape0
�
@dagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/Reshape_1Reshapedagger/boolean_mask_1/SqueezeAdagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/ExpandDims*
T0	*1
_class'
%#loc:@dagger/boolean_mask_1/GatherV2*
Tshape0
�
.dagger/gradients_3/Identity/input_grad/unstackUnpack'dagger/gradients_3/dagger/Sum_grad/Tile*	
num*
T0*!
_class
loc:@Identity/input*

axis 
p
7dagger/gradients_3/Identity/input_grad/tuple/group_depsNoOp/^dagger/gradients_3/Identity/input_grad/unstack
�
?dagger/gradients_3/Identity/input_grad/tuple/control_dependencyIdentity.dagger/gradients_3/Identity/input_grad/unstack8^dagger/gradients_3/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
Adagger/gradients_3/Identity/input_grad/tuple/control_dependency_1Identity0dagger/gradients_3/Identity/input_grad/unstack:18^dagger/gradients_3/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
Adagger/gradients_3/Identity/input_grad/tuple/control_dependency_2Identity0dagger/gradients_3/Identity/input_grad/unstack:28^dagger/gradients_3/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
Adagger/gradients_3/Identity/input_grad/tuple/control_dependency_3Identity0dagger/gradients_3/Identity/input_grad/unstack:38^dagger/gradients_3/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
Adagger/gradients_3/Identity/input_grad/tuple/control_dependency_4Identity0dagger/gradients_3/Identity/input_grad/unstack:48^dagger/gradients_3/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
Adagger/gradients_3/Identity/input_grad/tuple/control_dependency_5Identity0dagger/gradients_3/Identity/input_grad/unstack:58^dagger/gradients_3/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
:dagger/gradients_3/dagger/boolean_mask/GatherV2_grad/ShapeShapedagger/boolean_mask/Reshape*
T0*Q
_classG
E!loc:@dagger/boolean_mask/GatherV2 loc:@dagger/boolean_mask/Reshape*
out_type0	
�
9dagger/gradients_3/dagger/boolean_mask/GatherV2_grad/CastCast:dagger/gradients_3/dagger/boolean_mask/GatherV2_grad/Shape*
Truncate( *

DstT0*

SrcT0	*Q
_classG
E!loc:@dagger/boolean_mask/GatherV2 loc:@dagger/boolean_mask/Reshape
�
9dagger/gradients_3/dagger/boolean_mask/GatherV2_grad/SizeSizedagger/boolean_mask/Squeeze*
T0	*/
_class%
#!loc:@dagger/boolean_mask/GatherV2*
out_type0
�
Cdagger/gradients_3/dagger/boolean_mask/GatherV2_grad/ExpandDims/dimConst*/
_class%
#!loc:@dagger/boolean_mask/GatherV2*
value	B : *
dtype0
�
?dagger/gradients_3/dagger/boolean_mask/GatherV2_grad/ExpandDims
ExpandDims9dagger/gradients_3/dagger/boolean_mask/GatherV2_grad/SizeCdagger/gradients_3/dagger/boolean_mask/GatherV2_grad/ExpandDims/dim*

Tdim0*
T0*/
_class%
#!loc:@dagger/boolean_mask/GatherV2
�
Hdagger/gradients_3/dagger/boolean_mask/GatherV2_grad/strided_slice/stackConst*/
_class%
#!loc:@dagger/boolean_mask/GatherV2*
valueB:*
dtype0
�
Jdagger/gradients_3/dagger/boolean_mask/GatherV2_grad/strided_slice/stack_1Const*/
_class%
#!loc:@dagger/boolean_mask/GatherV2*
valueB: *
dtype0
�
Jdagger/gradients_3/dagger/boolean_mask/GatherV2_grad/strided_slice/stack_2Const*/
_class%
#!loc:@dagger/boolean_mask/GatherV2*
valueB:*
dtype0
�
Bdagger/gradients_3/dagger/boolean_mask/GatherV2_grad/strided_sliceStridedSlice9dagger/gradients_3/dagger/boolean_mask/GatherV2_grad/CastHdagger/gradients_3/dagger/boolean_mask/GatherV2_grad/strided_slice/stackJdagger/gradients_3/dagger/boolean_mask/GatherV2_grad/strided_slice/stack_1Jdagger/gradients_3/dagger/boolean_mask/GatherV2_grad/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
T0*
Index0*/
_class%
#!loc:@dagger/boolean_mask/GatherV2
�
@dagger/gradients_3/dagger/boolean_mask/GatherV2_grad/concat/axisConst*/
_class%
#!loc:@dagger/boolean_mask/GatherV2*
value	B : *
dtype0
�
;dagger/gradients_3/dagger/boolean_mask/GatherV2_grad/concatConcatV2?dagger/gradients_3/dagger/boolean_mask/GatherV2_grad/ExpandDimsBdagger/gradients_3/dagger/boolean_mask/GatherV2_grad/strided_slice@dagger/gradients_3/dagger/boolean_mask/GatherV2_grad/concat/axis*
T0*/
_class%
#!loc:@dagger/boolean_mask/GatherV2*
N*

Tidx0
�
<dagger/gradients_3/dagger/boolean_mask/GatherV2_grad/ReshapeReshape2dagger/gradients_3/dagger/loss_masked_grad/truediv;dagger/gradients_3/dagger/boolean_mask/GatherV2_grad/concat*
T0*/
_class%
#!loc:@dagger/boolean_mask/GatherV2*
Tshape0
�
>dagger/gradients_3/dagger/boolean_mask/GatherV2_grad/Reshape_1Reshapedagger/boolean_mask/Squeeze?dagger/gradients_3/dagger/boolean_mask/GatherV2_grad/ExpandDims*
T0	*/
_class%
#!loc:@dagger/boolean_mask/GatherV2*
Tshape0
�
;dagger/gradients_3/dagger/boolean_mask_1/Reshape_grad/ShapeShapedagger/Reshape_7*
T0*0
_class&
$"loc:@dagger/boolean_mask_1/Reshape*
out_type0
�
Qdagger/gradients_3/dagger/boolean_mask_1/Reshape_grad/Reshape/strided_slice/stackConst*0
_class&
$"loc:@dagger/boolean_mask_1/Reshape*
valueB: *
dtype0
�
Sdagger/gradients_3/dagger/boolean_mask_1/Reshape_grad/Reshape/strided_slice/stack_1Const*0
_class&
$"loc:@dagger/boolean_mask_1/Reshape*
valueB:*
dtype0
�
Sdagger/gradients_3/dagger/boolean_mask_1/Reshape_grad/Reshape/strided_slice/stack_2Const*0
_class&
$"loc:@dagger/boolean_mask_1/Reshape*
valueB:*
dtype0
�
Kdagger/gradients_3/dagger/boolean_mask_1/Reshape_grad/Reshape/strided_sliceStridedSlice;dagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/CastQdagger/gradients_3/dagger/boolean_mask_1/Reshape_grad/Reshape/strided_slice/stackSdagger/gradients_3/dagger/boolean_mask_1/Reshape_grad/Reshape/strided_slice/stack_1Sdagger/gradients_3/dagger/boolean_mask_1/Reshape_grad/Reshape/strided_slice/stack_2*
Index0*
T0*0
_class&
$"loc:@dagger/boolean_mask_1/Reshape*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask 
�
Ddagger/gradients_3/dagger/boolean_mask_1/Reshape_grad/Reshape/tensorUnsortedSegmentSum>dagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/Reshape@dagger/gradients_3/dagger/boolean_mask_1/GatherV2_grad/Reshape_1Kdagger/gradients_3/dagger/boolean_mask_1/Reshape_grad/Reshape/strided_slice*
T0*0
_class&
$"loc:@dagger/boolean_mask_1/Reshape*
Tnumsegments0*
Tindices0	
�
=dagger/gradients_3/dagger/boolean_mask_1/Reshape_grad/ReshapeReshapeDdagger/gradients_3/dagger/boolean_mask_1/Reshape_grad/Reshape/tensor;dagger/gradients_3/dagger/boolean_mask_1/Reshape_grad/Shape*
T0*0
_class&
$"loc:@dagger/boolean_mask_1/Reshape*
Tshape0
�
idagger/gradients_3/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMul?dagger/gradients_3/Identity/input_grad/tuple/control_dependencyTpolicy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*`
_classV
TRloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_3/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1Mul?dagger/gradients_3/Identity/input_grad/tuple/control_dependencyCast_2/x*
T0*`
_classV
TRloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
vdagger/gradients_3/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpj^dagger/gradients_3/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mull^dagger/gradients_3/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
~dagger/gradients_3/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentityidagger/gradients_3/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mulw^dagger/gradients_3/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_3/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitykdagger/gradients_3/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1w^dagger/gradients_3/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
idagger/gradients_3/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMulAdagger/gradients_3/Identity/input_grad/tuple/control_dependency_1Tpolicy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*`
_classV
TRloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_3/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1MulAdagger/gradients_3/Identity/input_grad/tuple/control_dependency_1Cast_2/x*
T0*`
_classV
TRloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
vdagger/gradients_3/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpj^dagger/gradients_3/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mull^dagger/gradients_3/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
~dagger/gradients_3/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentityidagger/gradients_3/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mulw^dagger/gradients_3/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_3/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitykdagger/gradients_3/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1w^dagger/gradients_3/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
idagger/gradients_3/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMulAdagger/gradients_3/Identity/input_grad/tuple/control_dependency_2Tpolicy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*`
_classV
TRloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_3/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1MulAdagger/gradients_3/Identity/input_grad/tuple/control_dependency_2Cast_2/x*
T0*`
_classV
TRloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
vdagger/gradients_3/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpj^dagger/gradients_3/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mull^dagger/gradients_3/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
~dagger/gradients_3/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentityidagger/gradients_3/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mulw^dagger/gradients_3/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_3/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitykdagger/gradients_3/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1w^dagger/gradients_3/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_3/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMulAdagger/gradients_3/Identity/input_grad/tuple/control_dependency_3Vpolicy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
mdagger/gradients_3/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1MulAdagger/gradients_3/Identity/input_grad/tuple/control_dependency_3Cast_2/x*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
xdagger/gradients_3/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpl^dagger/gradients_3/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muln^dagger/gradients_3/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
�dagger/gradients_3/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentitykdagger/gradients_3/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muly^dagger/gradients_3/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_3/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitymdagger/gradients_3/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1y^dagger/gradients_3/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_3/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMulAdagger/gradients_3/Identity/input_grad/tuple/control_dependency_4Vpolicy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
mdagger/gradients_3/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1MulAdagger/gradients_3/Identity/input_grad/tuple/control_dependency_4Cast_2/x*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
xdagger/gradients_3/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpl^dagger/gradients_3/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muln^dagger/gradients_3/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
�dagger/gradients_3/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentitykdagger/gradients_3/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muly^dagger/gradients_3/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_3/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitymdagger/gradients_3/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1y^dagger/gradients_3/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_3/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMulAdagger/gradients_3/Identity/input_grad/tuple/control_dependency_5Vpolicy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
mdagger/gradients_3/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1MulAdagger/gradients_3/Identity/input_grad/tuple/control_dependency_5Cast_2/x*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
xdagger/gradients_3/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpl^dagger/gradients_3/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muln^dagger/gradients_3/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
�dagger/gradients_3/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentitykdagger/gradients_3/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muly^dagger/gradients_3/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_3/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitymdagger/gradients_3/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1y^dagger/gradients_3/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
9dagger/gradients_3/dagger/boolean_mask/Reshape_grad/ShapeShapedagger/Reshape_5*
T0*.
_class$
" loc:@dagger/boolean_mask/Reshape*
out_type0
�
Odagger/gradients_3/dagger/boolean_mask/Reshape_grad/Reshape/strided_slice/stackConst*.
_class$
" loc:@dagger/boolean_mask/Reshape*
valueB: *
dtype0
�
Qdagger/gradients_3/dagger/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_1Const*.
_class$
" loc:@dagger/boolean_mask/Reshape*
valueB:*
dtype0
�
Qdagger/gradients_3/dagger/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_2Const*.
_class$
" loc:@dagger/boolean_mask/Reshape*
valueB:*
dtype0
�
Idagger/gradients_3/dagger/boolean_mask/Reshape_grad/Reshape/strided_sliceStridedSlice9dagger/gradients_3/dagger/boolean_mask/GatherV2_grad/CastOdagger/gradients_3/dagger/boolean_mask/Reshape_grad/Reshape/strided_slice/stackQdagger/gradients_3/dagger/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_1Qdagger/gradients_3/dagger/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_2*
Index0*
T0*.
_class$
" loc:@dagger/boolean_mask/Reshape*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask 
�
Bdagger/gradients_3/dagger/boolean_mask/Reshape_grad/Reshape/tensorUnsortedSegmentSum<dagger/gradients_3/dagger/boolean_mask/GatherV2_grad/Reshape>dagger/gradients_3/dagger/boolean_mask/GatherV2_grad/Reshape_1Idagger/gradients_3/dagger/boolean_mask/Reshape_grad/Reshape/strided_slice*
Tnumsegments0*
Tindices0	*
T0*.
_class$
" loc:@dagger/boolean_mask/Reshape
�
;dagger/gradients_3/dagger/boolean_mask/Reshape_grad/ReshapeReshapeBdagger/gradients_3/dagger/boolean_mask/Reshape_grad/Reshape/tensor9dagger/gradients_3/dagger/boolean_mask/Reshape_grad/Shape*
T0*.
_class$
" loc:@dagger/boolean_mask/Reshape*
Tshape0
�
.dagger/gradients_3/dagger/Reshape_7_grad/ShapeShapedagger/Mean_1*
T0*#
_class
loc:@dagger/Reshape_7*
out_type0
�
0dagger/gradients_3/dagger/Reshape_7_grad/ReshapeReshape=dagger/gradients_3/dagger/boolean_mask_1/Reshape_grad/Reshape.dagger/gradients_3/dagger/Reshape_7_grad/Shape*
T0*#
_class
loc:@dagger/Reshape_7*
Tshape0
�
pdagger/gradients_3/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul#policy/fully_connected/weights/read�dagger/gradients_3/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
pdagger/gradients_3/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul%policy/fully_connected_1/weights/read�dagger/gradients_3/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
pdagger/gradients_3/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul%policy/fully_connected_2/weights/read�dagger/gradients_3/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
rdagger/gradients_3/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul%valueNet/fully_connected/weights/read�dagger/gradients_3/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*i
_class_
][loc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
rdagger/gradients_3/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul'valueNet/fully_connected_1/weights/read�dagger/gradients_3/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*i
_class_
][loc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
rdagger/gradients_3/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul'valueNet/fully_connected_2/weights/read�dagger/gradients_3/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*i
_class_
][loc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
.dagger/gradients_3/dagger/Reshape_5_grad/ShapeShapedagger/Mean*
T0*#
_class
loc:@dagger/Reshape_5*
out_type0
�
0dagger/gradients_3/dagger/Reshape_5_grad/ReshapeReshape;dagger/gradients_3/dagger/boolean_mask/Reshape_grad/Reshape.dagger/gradients_3/dagger/Reshape_5_grad/Shape*
T0*#
_class
loc:@dagger/Reshape_5*
Tshape0
�
+dagger/gradients_3/dagger/Mean_1_grad/ShapeShapedagger/Square_1*
T0* 
_class
loc:@dagger/Mean_1*
out_type0
v
*dagger/gradients_3/dagger/Mean_1_grad/SizeConst* 
_class
loc:@dagger/Mean_1*
value	B :*
dtype0
�
)dagger/gradients_3/dagger/Mean_1_grad/addAddV2dagger/Mean_1/reduction_indices*dagger/gradients_3/dagger/Mean_1_grad/Size*
T0* 
_class
loc:@dagger/Mean_1
�
)dagger/gradients_3/dagger/Mean_1_grad/modFloorMod)dagger/gradients_3/dagger/Mean_1_grad/add*dagger/gradients_3/dagger/Mean_1_grad/Size*
T0* 
_class
loc:@dagger/Mean_1
x
-dagger/gradients_3/dagger/Mean_1_grad/Shape_1Const* 
_class
loc:@dagger/Mean_1*
valueB *
dtype0
}
1dagger/gradients_3/dagger/Mean_1_grad/range/startConst*
dtype0* 
_class
loc:@dagger/Mean_1*
value	B : 
}
1dagger/gradients_3/dagger/Mean_1_grad/range/deltaConst* 
_class
loc:@dagger/Mean_1*
value	B :*
dtype0
�
+dagger/gradients_3/dagger/Mean_1_grad/rangeRange1dagger/gradients_3/dagger/Mean_1_grad/range/start*dagger/gradients_3/dagger/Mean_1_grad/Size1dagger/gradients_3/dagger/Mean_1_grad/range/delta*

Tidx0* 
_class
loc:@dagger/Mean_1
|
0dagger/gradients_3/dagger/Mean_1_grad/Fill/valueConst* 
_class
loc:@dagger/Mean_1*
value	B :*
dtype0
�
*dagger/gradients_3/dagger/Mean_1_grad/FillFill-dagger/gradients_3/dagger/Mean_1_grad/Shape_10dagger/gradients_3/dagger/Mean_1_grad/Fill/value*
T0* 
_class
loc:@dagger/Mean_1*

index_type0
�
3dagger/gradients_3/dagger/Mean_1_grad/DynamicStitchDynamicStitch+dagger/gradients_3/dagger/Mean_1_grad/range)dagger/gradients_3/dagger/Mean_1_grad/mod+dagger/gradients_3/dagger/Mean_1_grad/Shape*dagger/gradients_3/dagger/Mean_1_grad/Fill*
T0* 
_class
loc:@dagger/Mean_1*
N
{
/dagger/gradients_3/dagger/Mean_1_grad/Maximum/yConst* 
_class
loc:@dagger/Mean_1*
value	B :*
dtype0
�
-dagger/gradients_3/dagger/Mean_1_grad/MaximumMaximum3dagger/gradients_3/dagger/Mean_1_grad/DynamicStitch/dagger/gradients_3/dagger/Mean_1_grad/Maximum/y*
T0* 
_class
loc:@dagger/Mean_1
�
.dagger/gradients_3/dagger/Mean_1_grad/floordivFloorDiv+dagger/gradients_3/dagger/Mean_1_grad/Shape-dagger/gradients_3/dagger/Mean_1_grad/Maximum*
T0* 
_class
loc:@dagger/Mean_1
�
-dagger/gradients_3/dagger/Mean_1_grad/ReshapeReshape0dagger/gradients_3/dagger/Reshape_7_grad/Reshape3dagger/gradients_3/dagger/Mean_1_grad/DynamicStitch*
T0* 
_class
loc:@dagger/Mean_1*
Tshape0
�
*dagger/gradients_3/dagger/Mean_1_grad/TileTile-dagger/gradients_3/dagger/Mean_1_grad/Reshape.dagger/gradients_3/dagger/Mean_1_grad/floordiv*

Tmultiples0*
T0* 
_class
loc:@dagger/Mean_1
�
-dagger/gradients_3/dagger/Mean_1_grad/Shape_2Shapedagger/Square_1*
T0* 
_class
loc:@dagger/Mean_1*
out_type0
�
-dagger/gradients_3/dagger/Mean_1_grad/Shape_3Shapedagger/Mean_1*
T0* 
_class
loc:@dagger/Mean_1*
out_type0
{
+dagger/gradients_3/dagger/Mean_1_grad/ConstConst* 
_class
loc:@dagger/Mean_1*
valueB: *
dtype0
�
*dagger/gradients_3/dagger/Mean_1_grad/ProdProd-dagger/gradients_3/dagger/Mean_1_grad/Shape_2+dagger/gradients_3/dagger/Mean_1_grad/Const*
	keep_dims( *

Tidx0*
T0* 
_class
loc:@dagger/Mean_1
}
-dagger/gradients_3/dagger/Mean_1_grad/Const_1Const* 
_class
loc:@dagger/Mean_1*
valueB: *
dtype0
�
,dagger/gradients_3/dagger/Mean_1_grad/Prod_1Prod-dagger/gradients_3/dagger/Mean_1_grad/Shape_3-dagger/gradients_3/dagger/Mean_1_grad/Const_1*
T0* 
_class
loc:@dagger/Mean_1*
	keep_dims( *

Tidx0
}
1dagger/gradients_3/dagger/Mean_1_grad/Maximum_1/yConst* 
_class
loc:@dagger/Mean_1*
value	B :*
dtype0
�
/dagger/gradients_3/dagger/Mean_1_grad/Maximum_1Maximum,dagger/gradients_3/dagger/Mean_1_grad/Prod_11dagger/gradients_3/dagger/Mean_1_grad/Maximum_1/y*
T0* 
_class
loc:@dagger/Mean_1
�
0dagger/gradients_3/dagger/Mean_1_grad/floordiv_1FloorDiv*dagger/gradients_3/dagger/Mean_1_grad/Prod/dagger/gradients_3/dagger/Mean_1_grad/Maximum_1*
T0* 
_class
loc:@dagger/Mean_1
�
*dagger/gradients_3/dagger/Mean_1_grad/CastCast0dagger/gradients_3/dagger/Mean_1_grad/floordiv_1*

SrcT0* 
_class
loc:@dagger/Mean_1*
Truncate( *

DstT0
�
-dagger/gradients_3/dagger/Mean_1_grad/truedivRealDiv*dagger/gradients_3/dagger/Mean_1_grad/Tile*dagger/gradients_3/dagger/Mean_1_grad/Cast*
T0* 
_class
loc:@dagger/Mean_1
z
)dagger/gradients_3/dagger/Mean_grad/ShapeShapedagger/Square*
T0*
_class
loc:@dagger/Mean*
out_type0
r
(dagger/gradients_3/dagger/Mean_grad/SizeConst*
_class
loc:@dagger/Mean*
value	B :*
dtype0
�
'dagger/gradients_3/dagger/Mean_grad/addAddV2dagger/Mean/reduction_indices(dagger/gradients_3/dagger/Mean_grad/Size*
T0*
_class
loc:@dagger/Mean
�
'dagger/gradients_3/dagger/Mean_grad/modFloorMod'dagger/gradients_3/dagger/Mean_grad/add(dagger/gradients_3/dagger/Mean_grad/Size*
T0*
_class
loc:@dagger/Mean
t
+dagger/gradients_3/dagger/Mean_grad/Shape_1Const*
_class
loc:@dagger/Mean*
valueB *
dtype0
y
/dagger/gradients_3/dagger/Mean_grad/range/startConst*
_class
loc:@dagger/Mean*
value	B : *
dtype0
y
/dagger/gradients_3/dagger/Mean_grad/range/deltaConst*
_class
loc:@dagger/Mean*
value	B :*
dtype0
�
)dagger/gradients_3/dagger/Mean_grad/rangeRange/dagger/gradients_3/dagger/Mean_grad/range/start(dagger/gradients_3/dagger/Mean_grad/Size/dagger/gradients_3/dagger/Mean_grad/range/delta*
_class
loc:@dagger/Mean*

Tidx0
x
.dagger/gradients_3/dagger/Mean_grad/Fill/valueConst*
_class
loc:@dagger/Mean*
value	B :*
dtype0
�
(dagger/gradients_3/dagger/Mean_grad/FillFill+dagger/gradients_3/dagger/Mean_grad/Shape_1.dagger/gradients_3/dagger/Mean_grad/Fill/value*
T0*
_class
loc:@dagger/Mean*

index_type0
�
1dagger/gradients_3/dagger/Mean_grad/DynamicStitchDynamicStitch)dagger/gradients_3/dagger/Mean_grad/range'dagger/gradients_3/dagger/Mean_grad/mod)dagger/gradients_3/dagger/Mean_grad/Shape(dagger/gradients_3/dagger/Mean_grad/Fill*
T0*
_class
loc:@dagger/Mean*
N
w
-dagger/gradients_3/dagger/Mean_grad/Maximum/yConst*
dtype0*
_class
loc:@dagger/Mean*
value	B :
�
+dagger/gradients_3/dagger/Mean_grad/MaximumMaximum1dagger/gradients_3/dagger/Mean_grad/DynamicStitch-dagger/gradients_3/dagger/Mean_grad/Maximum/y*
T0*
_class
loc:@dagger/Mean
�
,dagger/gradients_3/dagger/Mean_grad/floordivFloorDiv)dagger/gradients_3/dagger/Mean_grad/Shape+dagger/gradients_3/dagger/Mean_grad/Maximum*
T0*
_class
loc:@dagger/Mean
�
+dagger/gradients_3/dagger/Mean_grad/ReshapeReshape0dagger/gradients_3/dagger/Reshape_5_grad/Reshape1dagger/gradients_3/dagger/Mean_grad/DynamicStitch*
T0*
_class
loc:@dagger/Mean*
Tshape0
�
(dagger/gradients_3/dagger/Mean_grad/TileTile+dagger/gradients_3/dagger/Mean_grad/Reshape,dagger/gradients_3/dagger/Mean_grad/floordiv*
T0*
_class
loc:@dagger/Mean*

Tmultiples0
|
+dagger/gradients_3/dagger/Mean_grad/Shape_2Shapedagger/Square*
T0*
_class
loc:@dagger/Mean*
out_type0
z
+dagger/gradients_3/dagger/Mean_grad/Shape_3Shapedagger/Mean*
T0*
_class
loc:@dagger/Mean*
out_type0
w
)dagger/gradients_3/dagger/Mean_grad/ConstConst*
_class
loc:@dagger/Mean*
valueB: *
dtype0
�
(dagger/gradients_3/dagger/Mean_grad/ProdProd+dagger/gradients_3/dagger/Mean_grad/Shape_2)dagger/gradients_3/dagger/Mean_grad/Const*
T0*
_class
loc:@dagger/Mean*
	keep_dims( *

Tidx0
y
+dagger/gradients_3/dagger/Mean_grad/Const_1Const*
_class
loc:@dagger/Mean*
valueB: *
dtype0
�
*dagger/gradients_3/dagger/Mean_grad/Prod_1Prod+dagger/gradients_3/dagger/Mean_grad/Shape_3+dagger/gradients_3/dagger/Mean_grad/Const_1*
T0*
_class
loc:@dagger/Mean*
	keep_dims( *

Tidx0
y
/dagger/gradients_3/dagger/Mean_grad/Maximum_1/yConst*
_class
loc:@dagger/Mean*
value	B :*
dtype0
�
-dagger/gradients_3/dagger/Mean_grad/Maximum_1Maximum*dagger/gradients_3/dagger/Mean_grad/Prod_1/dagger/gradients_3/dagger/Mean_grad/Maximum_1/y*
T0*
_class
loc:@dagger/Mean
�
.dagger/gradients_3/dagger/Mean_grad/floordiv_1FloorDiv(dagger/gradients_3/dagger/Mean_grad/Prod-dagger/gradients_3/dagger/Mean_grad/Maximum_1*
T0*
_class
loc:@dagger/Mean
�
(dagger/gradients_3/dagger/Mean_grad/CastCast.dagger/gradients_3/dagger/Mean_grad/floordiv_1*

SrcT0*
_class
loc:@dagger/Mean*
Truncate( *

DstT0
�
+dagger/gradients_3/dagger/Mean_grad/truedivRealDiv(dagger/gradients_3/dagger/Mean_grad/Tile(dagger/gradients_3/dagger/Mean_grad/Cast*
T0*
_class
loc:@dagger/Mean
�
-dagger/gradients_3/dagger/Square_1_grad/ConstConst.^dagger/gradients_3/dagger/Mean_1_grad/truediv*"
_class
loc:@dagger/Square_1*
valueB
 *   @*
dtype0
�
+dagger/gradients_3/dagger/Square_1_grad/MulMuldagger/sub_1-dagger/gradients_3/dagger/Square_1_grad/Const*
T0*"
_class
loc:@dagger/Square_1
�
-dagger/gradients_3/dagger/Square_1_grad/Mul_1Mul-dagger/gradients_3/dagger/Mean_1_grad/truediv+dagger/gradients_3/dagger/Square_1_grad/Mul*
T0*"
_class
loc:@dagger/Square_1
�
+dagger/gradients_3/dagger/Square_grad/ConstConst,^dagger/gradients_3/dagger/Mean_grad/truediv* 
_class
loc:@dagger/Square*
valueB
 *   @*
dtype0
�
)dagger/gradients_3/dagger/Square_grad/MulMul
dagger/sub+dagger/gradients_3/dagger/Square_grad/Const*
T0* 
_class
loc:@dagger/Square
�
+dagger/gradients_3/dagger/Square_grad/Mul_1Mul+dagger/gradients_3/dagger/Mean_grad/truediv)dagger/gradients_3/dagger/Square_grad/Mul*
T0* 
_class
loc:@dagger/Square

*dagger/gradients_3/dagger/sub_1_grad/ShapeShapedagger/Reshape_6*
T0*
_class
loc:@dagger/sub_1*
out_type0
�
,dagger/gradients_3/dagger/sub_1_grad/Shape_1Shapeextra_encoder/featureMap*
T0*
_class
loc:@dagger/sub_1*
out_type0
�
:dagger/gradients_3/dagger/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs*dagger/gradients_3/dagger/sub_1_grad/Shape,dagger/gradients_3/dagger/sub_1_grad/Shape_1*
T0*
_class
loc:@dagger/sub_1
�
(dagger/gradients_3/dagger/sub_1_grad/SumSum-dagger/gradients_3/dagger/Square_1_grad/Mul_1:dagger/gradients_3/dagger/sub_1_grad/BroadcastGradientArgs*
T0*
_class
loc:@dagger/sub_1*
	keep_dims( *

Tidx0
�
,dagger/gradients_3/dagger/sub_1_grad/ReshapeReshape(dagger/gradients_3/dagger/sub_1_grad/Sum*dagger/gradients_3/dagger/sub_1_grad/Shape*
T0*
_class
loc:@dagger/sub_1*
Tshape0
�
(dagger/gradients_3/dagger/sub_1_grad/NegNeg-dagger/gradients_3/dagger/Square_1_grad/Mul_1*
T0*
_class
loc:@dagger/sub_1
�
*dagger/gradients_3/dagger/sub_1_grad/Sum_1Sum(dagger/gradients_3/dagger/sub_1_grad/Neg<dagger/gradients_3/dagger/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_class
loc:@dagger/sub_1
�
.dagger/gradients_3/dagger/sub_1_grad/Reshape_1Reshape*dagger/gradients_3/dagger/sub_1_grad/Sum_1,dagger/gradients_3/dagger/sub_1_grad/Shape_1*
T0*
_class
loc:@dagger/sub_1*
Tshape0
�
5dagger/gradients_3/dagger/sub_1_grad/tuple/group_depsNoOp-^dagger/gradients_3/dagger/sub_1_grad/Reshape/^dagger/gradients_3/dagger/sub_1_grad/Reshape_1
�
=dagger/gradients_3/dagger/sub_1_grad/tuple/control_dependencyIdentity,dagger/gradients_3/dagger/sub_1_grad/Reshape6^dagger/gradients_3/dagger/sub_1_grad/tuple/group_deps*
T0*
_class
loc:@dagger/sub_1
�
?dagger/gradients_3/dagger/sub_1_grad/tuple/control_dependency_1Identity.dagger/gradients_3/dagger/sub_1_grad/Reshape_16^dagger/gradients_3/dagger/sub_1_grad/tuple/group_deps*
T0*
_class
loc:@dagger/sub_1
{
(dagger/gradients_3/dagger/sub_grad/ShapeShapedagger/Reshape_4*
T0*
_class
loc:@dagger/sub*
out_type0
�
*dagger/gradients_3/dagger/sub_grad/Shape_1Shape%policy/policy/fully_connected/BiasAdd*
T0*
_class
loc:@dagger/sub*
out_type0
�
8dagger/gradients_3/dagger/sub_grad/BroadcastGradientArgsBroadcastGradientArgs(dagger/gradients_3/dagger/sub_grad/Shape*dagger/gradients_3/dagger/sub_grad/Shape_1*
T0*
_class
loc:@dagger/sub
�
&dagger/gradients_3/dagger/sub_grad/SumSum+dagger/gradients_3/dagger/Square_grad/Mul_18dagger/gradients_3/dagger/sub_grad/BroadcastGradientArgs*
T0*
_class
loc:@dagger/sub*
	keep_dims( *

Tidx0
�
*dagger/gradients_3/dagger/sub_grad/ReshapeReshape&dagger/gradients_3/dagger/sub_grad/Sum(dagger/gradients_3/dagger/sub_grad/Shape*
T0*
_class
loc:@dagger/sub*
Tshape0
�
&dagger/gradients_3/dagger/sub_grad/NegNeg+dagger/gradients_3/dagger/Square_grad/Mul_1*
T0*
_class
loc:@dagger/sub
�
(dagger/gradients_3/dagger/sub_grad/Sum_1Sum&dagger/gradients_3/dagger/sub_grad/Neg:dagger/gradients_3/dagger/sub_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@dagger/sub*
	keep_dims( *

Tidx0
�
,dagger/gradients_3/dagger/sub_grad/Reshape_1Reshape(dagger/gradients_3/dagger/sub_grad/Sum_1*dagger/gradients_3/dagger/sub_grad/Shape_1*
T0*
_class
loc:@dagger/sub*
Tshape0
�
3dagger/gradients_3/dagger/sub_grad/tuple/group_depsNoOp+^dagger/gradients_3/dagger/sub_grad/Reshape-^dagger/gradients_3/dagger/sub_grad/Reshape_1
�
;dagger/gradients_3/dagger/sub_grad/tuple/control_dependencyIdentity*dagger/gradients_3/dagger/sub_grad/Reshape4^dagger/gradients_3/dagger/sub_grad/tuple/group_deps*
T0*
_class
loc:@dagger/sub
�
=dagger/gradients_3/dagger/sub_grad/tuple/control_dependency_1Identity,dagger/gradients_3/dagger/sub_grad/Reshape_14^dagger/gradients_3/dagger/sub_grad/tuple/group_deps*
T0*
_class
loc:@dagger/sub
�
Idagger/gradients_3/policy/policy/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGrad=dagger/gradients_3/dagger/sub_grad/tuple/control_dependency_1*
data_formatNHWC*
T0*8
_class.
,*loc:@policy/policy/fully_connected/BiasAdd
�
Ndagger/gradients_3/policy/policy/fully_connected/BiasAdd_grad/tuple/group_depsNoOp>^dagger/gradients_3/dagger/sub_grad/tuple/control_dependency_1J^dagger/gradients_3/policy/policy/fully_connected/BiasAdd_grad/BiasAddGrad
�
Vdagger/gradients_3/policy/policy/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentity=dagger/gradients_3/dagger/sub_grad/tuple/control_dependency_1O^dagger/gradients_3/policy/policy/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*
_class
loc:@dagger/sub
�
Xdagger/gradients_3/policy/policy/fully_connected/BiasAdd_grad/tuple/control_dependency_1IdentityIdagger/gradients_3/policy/policy/fully_connected/BiasAdd_grad/BiasAddGradO^dagger/gradients_3/policy/policy/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@policy/policy/fully_connected/BiasAdd
�
Cdagger/gradients_3/policy/policy/fully_connected/MatMul_grad/MatMulMatMulVdagger/gradients_3/policy/policy/fully_connected/BiasAdd_grad/tuple/control_dependency%policy/fully_connected_3/weights/read*
T0*7
_class-
+)loc:@policy/policy/fully_connected/MatMul*
transpose_a( *
transpose_b(
�
Edagger/gradients_3/policy/policy/fully_connected/MatMul_grad/MatMul_1MatMul0policy/policy/hidden_layer2/fully_connected/TanhVdagger/gradients_3/policy/policy/fully_connected/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*7
_class-
+)loc:@policy/policy/fully_connected/MatMul
�
Mdagger/gradients_3/policy/policy/fully_connected/MatMul_grad/tuple/group_depsNoOpD^dagger/gradients_3/policy/policy/fully_connected/MatMul_grad/MatMulF^dagger/gradients_3/policy/policy/fully_connected/MatMul_grad/MatMul_1
�
Udagger/gradients_3/policy/policy/fully_connected/MatMul_grad/tuple/control_dependencyIdentityCdagger/gradients_3/policy/policy/fully_connected/MatMul_grad/MatMulN^dagger/gradients_3/policy/policy/fully_connected/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@policy/policy/fully_connected/MatMul
�
Wdagger/gradients_3/policy/policy/fully_connected/MatMul_grad/tuple/control_dependency_1IdentityEdagger/gradients_3/policy/policy/fully_connected/MatMul_grad/MatMul_1N^dagger/gradients_3/policy/policy/fully_connected/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@policy/policy/fully_connected/MatMul
�
Qdagger/gradients_3/policy/policy/hidden_layer2/fully_connected/Tanh_grad/TanhGradTanhGrad0policy/policy/hidden_layer2/fully_connected/TanhUdagger/gradients_3/policy/policy/fully_connected/MatMul_grad/tuple/control_dependency*
T0*C
_class9
75loc:@policy/policy/hidden_layer2/fully_connected/Tanh
�
Wdagger/gradients_3/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGradQdagger/gradients_3/policy/policy/hidden_layer2/fully_connected/Tanh_grad/TanhGrad*
data_formatNHWC*
T0*F
_class<
:8loc:@policy/policy/hidden_layer2/fully_connected/BiasAdd
�
\dagger/gradients_3/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/group_depsNoOpX^dagger/gradients_3/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/BiasAddGradR^dagger/gradients_3/policy/policy/hidden_layer2/fully_connected/Tanh_grad/TanhGrad
�
ddagger/gradients_3/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentityQdagger/gradients_3/policy/policy/hidden_layer2/fully_connected/Tanh_grad/TanhGrad]^dagger/gradients_3/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@policy/policy/hidden_layer2/fully_connected/Tanh
�
fdagger/gradients_3/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/control_dependency_1IdentityWdagger/gradients_3/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/BiasAddGrad]^dagger/gradients_3/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@policy/policy/hidden_layer2/fully_connected/BiasAdd
�
Qdagger/gradients_3/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMulMatMulddagger/gradients_3/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/control_dependency%policy/fully_connected_2/weights/read*
T0*E
_class;
97loc:@policy/policy/hidden_layer2/fully_connected/MatMul*
transpose_a( *
transpose_b(
�
Sdagger/gradients_3/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMul_1MatMul0policy/policy/hidden_layer1/fully_connected/Tanhddagger/gradients_3/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*E
_class;
97loc:@policy/policy/hidden_layer2/fully_connected/MatMul*
transpose_a(
�
[dagger/gradients_3/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/group_depsNoOpR^dagger/gradients_3/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMulT^dagger/gradients_3/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMul_1
�
cdagger/gradients_3/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/control_dependencyIdentityQdagger/gradients_3/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMul\^dagger/gradients_3/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer2/fully_connected/MatMul
�
edagger/gradients_3/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/control_dependency_1IdentitySdagger/gradients_3/policy/policy/hidden_layer2/fully_connected/MatMul_grad/MatMul_1\^dagger/gradients_3/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer2/fully_connected/MatMul
�
Qdagger/gradients_3/policy/policy/hidden_layer1/fully_connected/Tanh_grad/TanhGradTanhGrad0policy/policy/hidden_layer1/fully_connected/Tanhcdagger/gradients_3/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/control_dependency*
T0*C
_class9
75loc:@policy/policy/hidden_layer1/fully_connected/Tanh
�
dagger/gradients_3/AddNAddNpdagger/gradients_3/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/muledagger/gradients_3/policy/policy/hidden_layer2/fully_connected/MatMul_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
N
�
Wdagger/gradients_3/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGradQdagger/gradients_3/policy/policy/hidden_layer1/fully_connected/Tanh_grad/TanhGrad*
T0*F
_class<
:8loc:@policy/policy/hidden_layer1/fully_connected/BiasAdd*
data_formatNHWC
�
\dagger/gradients_3/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/group_depsNoOpX^dagger/gradients_3/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/BiasAddGradR^dagger/gradients_3/policy/policy/hidden_layer1/fully_connected/Tanh_grad/TanhGrad
�
ddagger/gradients_3/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentityQdagger/gradients_3/policy/policy/hidden_layer1/fully_connected/Tanh_grad/TanhGrad]^dagger/gradients_3/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@policy/policy/hidden_layer1/fully_connected/Tanh
�
fdagger/gradients_3/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/control_dependency_1IdentityWdagger/gradients_3/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/BiasAddGrad]^dagger/gradients_3/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@policy/policy/hidden_layer1/fully_connected/BiasAdd
�
Qdagger/gradients_3/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMulMatMulddagger/gradients_3/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/control_dependency%policy/fully_connected_1/weights/read*
T0*E
_class;
97loc:@policy/policy/hidden_layer1/fully_connected/MatMul*
transpose_a( *
transpose_b(
�
Sdagger/gradients_3/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMul_1MatMul0policy/policy/hidden_layer0/fully_connected/Tanhddagger/gradients_3/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*E
_class;
97loc:@policy/policy/hidden_layer1/fully_connected/MatMul
�
[dagger/gradients_3/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/group_depsNoOpR^dagger/gradients_3/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMulT^dagger/gradients_3/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMul_1
�
cdagger/gradients_3/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/control_dependencyIdentityQdagger/gradients_3/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMul\^dagger/gradients_3/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer1/fully_connected/MatMul
�
edagger/gradients_3/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/control_dependency_1IdentitySdagger/gradients_3/policy/policy/hidden_layer1/fully_connected/MatMul_grad/MatMul_1\^dagger/gradients_3/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer1/fully_connected/MatMul
�
Qdagger/gradients_3/policy/policy/hidden_layer0/fully_connected/Tanh_grad/TanhGradTanhGrad0policy/policy/hidden_layer0/fully_connected/Tanhcdagger/gradients_3/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/control_dependency*
T0*C
_class9
75loc:@policy/policy/hidden_layer0/fully_connected/Tanh
�
dagger/gradients_3/AddN_1AddNpdagger/gradients_3/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/muledagger/gradients_3/policy/policy/hidden_layer1/fully_connected/MatMul_grad/tuple/control_dependency_1*
N*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
Wdagger/gradients_3/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGradQdagger/gradients_3/policy/policy/hidden_layer0/fully_connected/Tanh_grad/TanhGrad*
T0*F
_class<
:8loc:@policy/policy/hidden_layer0/fully_connected/BiasAdd*
data_formatNHWC
�
\dagger/gradients_3/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/group_depsNoOpX^dagger/gradients_3/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/BiasAddGradR^dagger/gradients_3/policy/policy/hidden_layer0/fully_connected/Tanh_grad/TanhGrad
�
ddagger/gradients_3/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentityQdagger/gradients_3/policy/policy/hidden_layer0/fully_connected/Tanh_grad/TanhGrad]^dagger/gradients_3/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@policy/policy/hidden_layer0/fully_connected/Tanh
�
fdagger/gradients_3/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/control_dependency_1IdentityWdagger/gradients_3/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/BiasAddGrad]^dagger/gradients_3/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@policy/policy/hidden_layer0/fully_connected/BiasAdd
�
Qdagger/gradients_3/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMulMatMulddagger/gradients_3/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/control_dependency#policy/fully_connected/weights/read*
T0*E
_class;
97loc:@policy/policy/hidden_layer0/fully_connected/MatMul*
transpose_a( *
transpose_b(
�
Sdagger/gradients_3/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMul_1MatMulpolicy/concatddagger/gradients_3/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/control_dependency*
T0*E
_class;
97loc:@policy/policy/hidden_layer0/fully_connected/MatMul*
transpose_a(*
transpose_b( 
�
[dagger/gradients_3/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/group_depsNoOpR^dagger/gradients_3/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMulT^dagger/gradients_3/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMul_1
�
cdagger/gradients_3/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/control_dependencyIdentityQdagger/gradients_3/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMul\^dagger/gradients_3/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer0/fully_connected/MatMul
�
edagger/gradients_3/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/control_dependency_1IdentitySdagger/gradients_3/policy/policy/hidden_layer0/fully_connected/MatMul_grad/MatMul_1\^dagger/gradients_3/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@policy/policy/hidden_layer0/fully_connected/MatMul
v
*dagger/gradients_3/policy/concat_grad/RankConst* 
_class
loc:@policy/concat*
value	B :*
dtype0
�
)dagger/gradients_3/policy/concat_grad/modFloorModpolicy/concat/axis*dagger/gradients_3/policy/concat_grad/Rank*
T0* 
_class
loc:@policy/concat
�
+dagger/gradients_3/policy/concat_grad/ShapeShapepolicy/strided_slice*
T0* 
_class
loc:@policy/concat*
out_type0
�
,dagger/gradients_3/policy/concat_grad/ShapeNShapeNpolicy/strided_sliceextra_encoder/featureMap*
T0* 
_class
loc:@policy/concat*
out_type0*
N
�
2dagger/gradients_3/policy/concat_grad/ConcatOffsetConcatOffset)dagger/gradients_3/policy/concat_grad/mod,dagger/gradients_3/policy/concat_grad/ShapeN.dagger/gradients_3/policy/concat_grad/ShapeN:1*
N* 
_class
loc:@policy/concat
�
+dagger/gradients_3/policy/concat_grad/SliceSlicecdagger/gradients_3/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/control_dependency2dagger/gradients_3/policy/concat_grad/ConcatOffset,dagger/gradients_3/policy/concat_grad/ShapeN*
Index0*
T0* 
_class
loc:@policy/concat
�
-dagger/gradients_3/policy/concat_grad/Slice_1Slicecdagger/gradients_3/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/control_dependency4dagger/gradients_3/policy/concat_grad/ConcatOffset:1.dagger/gradients_3/policy/concat_grad/ShapeN:1*
Index0*
T0* 
_class
loc:@policy/concat
�
6dagger/gradients_3/policy/concat_grad/tuple/group_depsNoOp,^dagger/gradients_3/policy/concat_grad/Slice.^dagger/gradients_3/policy/concat_grad/Slice_1
�
>dagger/gradients_3/policy/concat_grad/tuple/control_dependencyIdentity+dagger/gradients_3/policy/concat_grad/Slice7^dagger/gradients_3/policy/concat_grad/tuple/group_deps*
T0* 
_class
loc:@policy/concat
�
@dagger/gradients_3/policy/concat_grad/tuple/control_dependency_1Identity-dagger/gradients_3/policy/concat_grad/Slice_17^dagger/gradients_3/policy/concat_grad/tuple/group_deps*
T0* 
_class
loc:@policy/concat
�
dagger/gradients_3/AddN_2AddNpdagger/gradients_3/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/muledagger/gradients_3/policy/policy/hidden_layer0/fully_connected/MatMul_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
N
�
dagger/gradients_3/AddN_3AddN?dagger/gradients_3/dagger/sub_1_grad/tuple/control_dependency_1@dagger/gradients_3/policy/concat_grad/tuple/control_dependency_1*
N*
T0*
_class
loc:@dagger/sub_1
�
Wdagger/gradients_3/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGraddagger/gradients_3/AddN_3*
T0*F
_class<
:8loc:@extra_encoder/extra_encoder/fully_connected/BiasAdd*
data_formatNHWC
�
\dagger/gradients_3/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/group_depsNoOp^dagger/gradients_3/AddN_3X^dagger/gradients_3/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/BiasAddGrad
�
ddagger/gradients_3/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentitydagger/gradients_3/AddN_3]^dagger/gradients_3/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*
_class
loc:@dagger/sub_1
�
fdagger/gradients_3/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependency_1IdentityWdagger/gradients_3/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/BiasAddGrad]^dagger/gradients_3/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@extra_encoder/extra_encoder/fully_connected/BiasAdd
�
Qdagger/gradients_3/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMulMatMulddagger/gradients_3/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependency*extra_encoder/fully_connected/weights/read*
T0*E
_class;
97loc:@extra_encoder/extra_encoder/fully_connected/MatMul*
transpose_a( *
transpose_b(
�
Sdagger/gradients_3/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMul_1MatMulextra_encoder/strided_sliceddagger/gradients_3/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependency*
T0*E
_class;
97loc:@extra_encoder/extra_encoder/fully_connected/MatMul*
transpose_a(*
transpose_b( 
�
[dagger/gradients_3/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/group_depsNoOpR^dagger/gradients_3/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMulT^dagger/gradients_3/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMul_1
�
cdagger/gradients_3/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/control_dependencyIdentityQdagger/gradients_3/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMul\^dagger/gradients_3/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@extra_encoder/extra_encoder/fully_connected/MatMul
�
edagger/gradients_3/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/control_dependency_1IdentitySdagger/gradients_3/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMul_1\^dagger/gradients_3/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@extra_encoder/extra_encoder/fully_connected/MatMul
V
)dagger/feature_solver_summed_masked/beta1Const*
valueB
 *fff?*
dtype0
V
)dagger/feature_solver_summed_masked/beta2Const*
valueB
 *w�?*
dtype0
X
+dagger/feature_solver_summed_masked/epsilonConst*
valueB
 *w�+2*
dtype0
�
Zdagger/feature_solver_summed_masked/update_extra_encoder/fully_connected/weights/ApplyAdam	ApplyAdam%extra_encoder/fully_connected/weights*extra_encoder/fully_connected/weights/Adam,extra_encoder/fully_connected/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR)dagger/feature_solver_summed_masked/beta1)dagger/feature_solver_summed_masked/beta2+dagger/feature_solver_summed_masked/epsilonedagger/gradients_3/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights*
use_nesterov( 
�
Ydagger/feature_solver_summed_masked/update_extra_encoder/fully_connected/biases/ApplyAdam	ApplyAdam$extra_encoder/fully_connected/biases)extra_encoder/fully_connected/biases/Adam+extra_encoder/fully_connected/biases/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR)dagger/feature_solver_summed_masked/beta1)dagger/feature_solver_summed_masked/beta2+dagger/feature_solver_summed_masked/epsilonfdagger/gradients_3/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�
Sdagger/feature_solver_summed_masked/update_policy/fully_connected/weights/ApplyAdam	ApplyAdampolicy/fully_connected/weights#policy/fully_connected/weights/Adam%policy/fully_connected/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR)dagger/feature_solver_summed_masked/beta1)dagger/feature_solver_summed_masked/beta2+dagger/feature_solver_summed_masked/epsilondagger/gradients_3/AddN_2*
use_locking( *
T0*1
_class'
%#loc:@policy/fully_connected/weights*
use_nesterov( 
�
Rdagger/feature_solver_summed_masked/update_policy/fully_connected/biases/ApplyAdam	ApplyAdampolicy/fully_connected/biases"policy/fully_connected/biases/Adam$policy/fully_connected/biases/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR)dagger/feature_solver_summed_masked/beta1)dagger/feature_solver_summed_masked/beta2+dagger/feature_solver_summed_masked/epsilonfdagger/gradients_3/policy/policy/hidden_layer0/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*0
_class&
$"loc:@policy/fully_connected/biases*
use_nesterov( 
�
Udagger/feature_solver_summed_masked/update_policy/fully_connected_1/weights/ApplyAdam	ApplyAdam policy/fully_connected_1/weights%policy/fully_connected_1/weights/Adam'policy/fully_connected_1/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR)dagger/feature_solver_summed_masked/beta1)dagger/feature_solver_summed_masked/beta2+dagger/feature_solver_summed_masked/epsilondagger/gradients_3/AddN_1*
T0*3
_class)
'%loc:@policy/fully_connected_1/weights*
use_nesterov( *
use_locking( 
�
Tdagger/feature_solver_summed_masked/update_policy/fully_connected_1/biases/ApplyAdam	ApplyAdampolicy/fully_connected_1/biases$policy/fully_connected_1/biases/Adam&policy/fully_connected_1/biases/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR)dagger/feature_solver_summed_masked/beta1)dagger/feature_solver_summed_masked/beta2+dagger/feature_solver_summed_masked/epsilonfdagger/gradients_3/policy/policy/hidden_layer1/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_1/biases*
use_nesterov( 
�
Udagger/feature_solver_summed_masked/update_policy/fully_connected_2/weights/ApplyAdam	ApplyAdam policy/fully_connected_2/weights%policy/fully_connected_2/weights/Adam'policy/fully_connected_2/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR)dagger/feature_solver_summed_masked/beta1)dagger/feature_solver_summed_masked/beta2+dagger/feature_solver_summed_masked/epsilondagger/gradients_3/AddN*
use_locking( *
T0*3
_class)
'%loc:@policy/fully_connected_2/weights*
use_nesterov( 
�
Tdagger/feature_solver_summed_masked/update_policy/fully_connected_2/biases/ApplyAdam	ApplyAdampolicy/fully_connected_2/biases$policy/fully_connected_2/biases/Adam&policy/fully_connected_2/biases/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR)dagger/feature_solver_summed_masked/beta1)dagger/feature_solver_summed_masked/beta2+dagger/feature_solver_summed_masked/epsilonfdagger/gradients_3/policy/policy/hidden_layer2/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*2
_class(
&$loc:@policy/fully_connected_2/biases*
use_nesterov( 
�
Udagger/feature_solver_summed_masked/update_policy/fully_connected_3/weights/ApplyAdam	ApplyAdam policy/fully_connected_3/weights%policy/fully_connected_3/weights/Adam'policy/fully_connected_3/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR)dagger/feature_solver_summed_masked/beta1)dagger/feature_solver_summed_masked/beta2+dagger/feature_solver_summed_masked/epsilonWdagger/gradients_3/policy/policy/fully_connected/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*3
_class)
'%loc:@policy/fully_connected_3/weights
�
Tdagger/feature_solver_summed_masked/update_policy/fully_connected_3/biases/ApplyAdam	ApplyAdampolicy/fully_connected_3/biases$policy/fully_connected_3/biases/Adam&policy/fully_connected_3/biases/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR)dagger/feature_solver_summed_masked/beta1)dagger/feature_solver_summed_masked/beta2+dagger/feature_solver_summed_masked/epsilonXdagger/gradients_3/policy/policy/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
T0*2
_class(
&$loc:@policy/fully_connected_3/biases*
use_nesterov( *
use_locking( 
�
Udagger/feature_solver_summed_masked/update_valueNet/fully_connected/weights/ApplyAdam	ApplyAdam valueNet/fully_connected/weights%valueNet/fully_connected/weights/Adam'valueNet/fully_connected/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR)dagger/feature_solver_summed_masked/beta1)dagger/feature_solver_summed_masked/beta2+dagger/feature_solver_summed_masked/epsilonrdagger/gradients_3/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul*
use_locking( *
T0*3
_class)
'%loc:@valueNet/fully_connected/weights*
use_nesterov( 
�
Wdagger/feature_solver_summed_masked/update_valueNet/fully_connected_1/weights/ApplyAdam	ApplyAdam"valueNet/fully_connected_1/weights'valueNet/fully_connected_1/weights/Adam)valueNet/fully_connected_1/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR)dagger/feature_solver_summed_masked/beta1)dagger/feature_solver_summed_masked/beta2+dagger/feature_solver_summed_masked/epsilonrdagger/gradients_3/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul*
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights*
use_nesterov( *
use_locking( 
�
Wdagger/feature_solver_summed_masked/update_valueNet/fully_connected_2/weights/ApplyAdam	ApplyAdam"valueNet/fully_connected_2/weights'valueNet/fully_connected_2/weights/Adam)valueNet/fully_connected_2/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LR)dagger/feature_solver_summed_masked/beta1)dagger/feature_solver_summed_masked/beta2+dagger/feature_solver_summed_masked/epsilonrdagger/gradients_3/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul*
use_locking( *
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights*
use_nesterov( 
�

'dagger/feature_solver_summed_masked/mulMuldagger/beta1_power/read)dagger/feature_solver_summed_masked/beta1Z^dagger/feature_solver_summed_masked/update_extra_encoder/fully_connected/biases/ApplyAdam[^dagger/feature_solver_summed_masked/update_extra_encoder/fully_connected/weights/ApplyAdamS^dagger/feature_solver_summed_masked/update_policy/fully_connected/biases/ApplyAdamT^dagger/feature_solver_summed_masked/update_policy/fully_connected/weights/ApplyAdamU^dagger/feature_solver_summed_masked/update_policy/fully_connected_1/biases/ApplyAdamV^dagger/feature_solver_summed_masked/update_policy/fully_connected_1/weights/ApplyAdamU^dagger/feature_solver_summed_masked/update_policy/fully_connected_2/biases/ApplyAdamV^dagger/feature_solver_summed_masked/update_policy/fully_connected_2/weights/ApplyAdamU^dagger/feature_solver_summed_masked/update_policy/fully_connected_3/biases/ApplyAdamV^dagger/feature_solver_summed_masked/update_policy/fully_connected_3/weights/ApplyAdamV^dagger/feature_solver_summed_masked/update_valueNet/fully_connected/weights/ApplyAdamX^dagger/feature_solver_summed_masked/update_valueNet/fully_connected_1/weights/ApplyAdamX^dagger/feature_solver_summed_masked/update_valueNet/fully_connected_2/weights/ApplyAdam*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�
*dagger/feature_solver_summed_masked/AssignAssigndagger/beta1_power'dagger/feature_solver_summed_masked/mul*
validate_shape(*
use_locking( *
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�

)dagger/feature_solver_summed_masked/mul_1Muldagger/beta2_power/read)dagger/feature_solver_summed_masked/beta2Z^dagger/feature_solver_summed_masked/update_extra_encoder/fully_connected/biases/ApplyAdam[^dagger/feature_solver_summed_masked/update_extra_encoder/fully_connected/weights/ApplyAdamS^dagger/feature_solver_summed_masked/update_policy/fully_connected/biases/ApplyAdamT^dagger/feature_solver_summed_masked/update_policy/fully_connected/weights/ApplyAdamU^dagger/feature_solver_summed_masked/update_policy/fully_connected_1/biases/ApplyAdamV^dagger/feature_solver_summed_masked/update_policy/fully_connected_1/weights/ApplyAdamU^dagger/feature_solver_summed_masked/update_policy/fully_connected_2/biases/ApplyAdamV^dagger/feature_solver_summed_masked/update_policy/fully_connected_2/weights/ApplyAdamU^dagger/feature_solver_summed_masked/update_policy/fully_connected_3/biases/ApplyAdamV^dagger/feature_solver_summed_masked/update_policy/fully_connected_3/weights/ApplyAdamV^dagger/feature_solver_summed_masked/update_valueNet/fully_connected/weights/ApplyAdamX^dagger/feature_solver_summed_masked/update_valueNet/fully_connected_1/weights/ApplyAdamX^dagger/feature_solver_summed_masked/update_valueNet/fully_connected_2/weights/ApplyAdam*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�
,dagger/feature_solver_summed_masked/Assign_1Assigndagger/beta2_power)dagger/feature_solver_summed_masked/mul_1*
validate_shape(*
use_locking( *
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�

*dagger/feature_solver_summed_masked/updateNoOp+^dagger/feature_solver_summed_masked/Assign-^dagger/feature_solver_summed_masked/Assign_1Z^dagger/feature_solver_summed_masked/update_extra_encoder/fully_connected/biases/ApplyAdam[^dagger/feature_solver_summed_masked/update_extra_encoder/fully_connected/weights/ApplyAdamS^dagger/feature_solver_summed_masked/update_policy/fully_connected/biases/ApplyAdamT^dagger/feature_solver_summed_masked/update_policy/fully_connected/weights/ApplyAdamU^dagger/feature_solver_summed_masked/update_policy/fully_connected_1/biases/ApplyAdamV^dagger/feature_solver_summed_masked/update_policy/fully_connected_1/weights/ApplyAdamU^dagger/feature_solver_summed_masked/update_policy/fully_connected_2/biases/ApplyAdamV^dagger/feature_solver_summed_masked/update_policy/fully_connected_2/weights/ApplyAdamU^dagger/feature_solver_summed_masked/update_policy/fully_connected_3/biases/ApplyAdamV^dagger/feature_solver_summed_masked/update_policy/fully_connected_3/weights/ApplyAdamV^dagger/feature_solver_summed_masked/update_valueNet/fully_connected/weights/ApplyAdamX^dagger/feature_solver_summed_masked/update_valueNet/fully_connected_1/weights/ApplyAdamX^dagger/feature_solver_summed_masked/update_valueNet/fully_connected_2/weights/ApplyAdam
�
)dagger/feature_solver_summed_masked/valueConst+^dagger/feature_solver_summed_masked/update*%
_class
loc:@dagger/global_step*
value	B :*
dtype0
�
#dagger/feature_solver_summed_masked	AssignAdddagger/global_step)dagger/feature_solver_summed_masked/value*
T0*%
_class
loc:@dagger/global_step*
use_locking( 
=
dagger/add_6AddV2dagger/feature_lossIdentity*
T0
g
dagger/gradients_4/ShapeConst*
_class
loc:@dagger/add_6*
valueB:*
dtype0
j
dagger/gradients_4/grad_ys_0Const*
_class
loc:@dagger/add_6*
valueB
 *  �?*
dtype0
�
dagger/gradients_4/FillFilldagger/gradients_4/Shapedagger/gradients_4/grad_ys_0*
T0*
_class
loc:@dagger/add_6*

index_type0
�
=dagger/gradients_4/dagger/add_6_grad/BroadcastGradientArgs/s0Const*
_class
loc:@dagger/add_6*
valueB *
dtype0
�
=dagger/gradients_4/dagger/add_6_grad/BroadcastGradientArgs/s1Const*
_class
loc:@dagger/add_6*
valueB:*
dtype0
�
:dagger/gradients_4/dagger/add_6_grad/BroadcastGradientArgsBroadcastGradientArgs=dagger/gradients_4/dagger/add_6_grad/BroadcastGradientArgs/s0=dagger/gradients_4/dagger/add_6_grad/BroadcastGradientArgs/s1*
T0*
_class
loc:@dagger/add_6
�
:dagger/gradients_4/dagger/add_6_grad/Sum/reduction_indicesConst*
_class
loc:@dagger/add_6*
valueB: *
dtype0
�
(dagger/gradients_4/dagger/add_6_grad/SumSumdagger/gradients_4/Fill:dagger/gradients_4/dagger/add_6_grad/Sum/reduction_indices*
T0*
_class
loc:@dagger/add_6*
	keep_dims( *

Tidx0
|
2dagger/gradients_4/dagger/add_6_grad/Reshape/shapeConst*
_class
loc:@dagger/add_6*
valueB *
dtype0
�
,dagger/gradients_4/dagger/add_6_grad/ReshapeReshape(dagger/gradients_4/dagger/add_6_grad/Sum2dagger/gradients_4/dagger/add_6_grad/Reshape/shape*
T0*
_class
loc:@dagger/add_6*
Tshape0
�
5dagger/gradients_4/dagger/add_6_grad/tuple/group_depsNoOp^dagger/gradients_4/Fill-^dagger/gradients_4/dagger/add_6_grad/Reshape
�
=dagger/gradients_4/dagger/add_6_grad/tuple/control_dependencyIdentity,dagger/gradients_4/dagger/add_6_grad/Reshape6^dagger/gradients_4/dagger/add_6_grad/tuple/group_deps*
T0*
_class
loc:@dagger/add_6
�
?dagger/gradients_4/dagger/add_6_grad/tuple/control_dependency_1Identitydagger/gradients_4/Fill6^dagger/gradients_4/dagger/add_6_grad/tuple/group_deps*
T0*
_class
loc:@dagger/add_6
�
9dagger/gradients_4/dagger/feature_loss_grad/Reshape/shapeConst*&
_class
loc:@dagger/feature_loss*
valueB:*
dtype0
�
3dagger/gradients_4/dagger/feature_loss_grad/ReshapeReshape=dagger/gradients_4/dagger/add_6_grad/tuple/control_dependency9dagger/gradients_4/dagger/feature_loss_grad/Reshape/shape*
T0*&
_class
loc:@dagger/feature_loss*
Tshape0
�
1dagger/gradients_4/dagger/feature_loss_grad/ShapeShapedagger/Mean_1*
T0*&
_class
loc:@dagger/feature_loss*
out_type0
�
0dagger/gradients_4/dagger/feature_loss_grad/TileTile3dagger/gradients_4/dagger/feature_loss_grad/Reshape1dagger/gradients_4/dagger/feature_loss_grad/Shape*

Tmultiples0*
T0*&
_class
loc:@dagger/feature_loss
�
3dagger/gradients_4/dagger/feature_loss_grad/Shape_1Shapedagger/Mean_1*
T0*&
_class
loc:@dagger/feature_loss*
out_type0
�
3dagger/gradients_4/dagger/feature_loss_grad/Shape_2Const*&
_class
loc:@dagger/feature_loss*
valueB *
dtype0
�
1dagger/gradients_4/dagger/feature_loss_grad/ConstConst*&
_class
loc:@dagger/feature_loss*
valueB: *
dtype0
�
0dagger/gradients_4/dagger/feature_loss_grad/ProdProd3dagger/gradients_4/dagger/feature_loss_grad/Shape_11dagger/gradients_4/dagger/feature_loss_grad/Const*
	keep_dims( *

Tidx0*
T0*&
_class
loc:@dagger/feature_loss
�
3dagger/gradients_4/dagger/feature_loss_grad/Const_1Const*&
_class
loc:@dagger/feature_loss*
valueB: *
dtype0
�
2dagger/gradients_4/dagger/feature_loss_grad/Prod_1Prod3dagger/gradients_4/dagger/feature_loss_grad/Shape_23dagger/gradients_4/dagger/feature_loss_grad/Const_1*
	keep_dims( *

Tidx0*
T0*&
_class
loc:@dagger/feature_loss
�
5dagger/gradients_4/dagger/feature_loss_grad/Maximum/yConst*&
_class
loc:@dagger/feature_loss*
value	B :*
dtype0
�
3dagger/gradients_4/dagger/feature_loss_grad/MaximumMaximum2dagger/gradients_4/dagger/feature_loss_grad/Prod_15dagger/gradients_4/dagger/feature_loss_grad/Maximum/y*
T0*&
_class
loc:@dagger/feature_loss
�
4dagger/gradients_4/dagger/feature_loss_grad/floordivFloorDiv0dagger/gradients_4/dagger/feature_loss_grad/Prod3dagger/gradients_4/dagger/feature_loss_grad/Maximum*
T0*&
_class
loc:@dagger/feature_loss
�
0dagger/gradients_4/dagger/feature_loss_grad/CastCast4dagger/gradients_4/dagger/feature_loss_grad/floordiv*

SrcT0*&
_class
loc:@dagger/feature_loss*
Truncate( *

DstT0
�
3dagger/gradients_4/dagger/feature_loss_grad/truedivRealDiv0dagger/gradients_4/dagger/feature_loss_grad/Tile0dagger/gradients_4/dagger/feature_loss_grad/Cast*
T0*&
_class
loc:@dagger/feature_loss
�
+dagger/gradients_4/dagger/Mean_1_grad/ShapeShapedagger/Square_1*
T0* 
_class
loc:@dagger/Mean_1*
out_type0
v
*dagger/gradients_4/dagger/Mean_1_grad/SizeConst* 
_class
loc:@dagger/Mean_1*
value	B :*
dtype0
�
)dagger/gradients_4/dagger/Mean_1_grad/addAddV2dagger/Mean_1/reduction_indices*dagger/gradients_4/dagger/Mean_1_grad/Size*
T0* 
_class
loc:@dagger/Mean_1
�
)dagger/gradients_4/dagger/Mean_1_grad/modFloorMod)dagger/gradients_4/dagger/Mean_1_grad/add*dagger/gradients_4/dagger/Mean_1_grad/Size*
T0* 
_class
loc:@dagger/Mean_1
x
-dagger/gradients_4/dagger/Mean_1_grad/Shape_1Const* 
_class
loc:@dagger/Mean_1*
valueB *
dtype0
}
1dagger/gradients_4/dagger/Mean_1_grad/range/startConst*
dtype0* 
_class
loc:@dagger/Mean_1*
value	B : 
}
1dagger/gradients_4/dagger/Mean_1_grad/range/deltaConst* 
_class
loc:@dagger/Mean_1*
value	B :*
dtype0
�
+dagger/gradients_4/dagger/Mean_1_grad/rangeRange1dagger/gradients_4/dagger/Mean_1_grad/range/start*dagger/gradients_4/dagger/Mean_1_grad/Size1dagger/gradients_4/dagger/Mean_1_grad/range/delta*

Tidx0* 
_class
loc:@dagger/Mean_1
|
0dagger/gradients_4/dagger/Mean_1_grad/Fill/valueConst* 
_class
loc:@dagger/Mean_1*
value	B :*
dtype0
�
*dagger/gradients_4/dagger/Mean_1_grad/FillFill-dagger/gradients_4/dagger/Mean_1_grad/Shape_10dagger/gradients_4/dagger/Mean_1_grad/Fill/value*
T0* 
_class
loc:@dagger/Mean_1*

index_type0
�
3dagger/gradients_4/dagger/Mean_1_grad/DynamicStitchDynamicStitch+dagger/gradients_4/dagger/Mean_1_grad/range)dagger/gradients_4/dagger/Mean_1_grad/mod+dagger/gradients_4/dagger/Mean_1_grad/Shape*dagger/gradients_4/dagger/Mean_1_grad/Fill*
T0* 
_class
loc:@dagger/Mean_1*
N
{
/dagger/gradients_4/dagger/Mean_1_grad/Maximum/yConst* 
_class
loc:@dagger/Mean_1*
value	B :*
dtype0
�
-dagger/gradients_4/dagger/Mean_1_grad/MaximumMaximum3dagger/gradients_4/dagger/Mean_1_grad/DynamicStitch/dagger/gradients_4/dagger/Mean_1_grad/Maximum/y*
T0* 
_class
loc:@dagger/Mean_1
�
.dagger/gradients_4/dagger/Mean_1_grad/floordivFloorDiv+dagger/gradients_4/dagger/Mean_1_grad/Shape-dagger/gradients_4/dagger/Mean_1_grad/Maximum*
T0* 
_class
loc:@dagger/Mean_1
�
-dagger/gradients_4/dagger/Mean_1_grad/ReshapeReshape3dagger/gradients_4/dagger/feature_loss_grad/truediv3dagger/gradients_4/dagger/Mean_1_grad/DynamicStitch*
T0* 
_class
loc:@dagger/Mean_1*
Tshape0
�
*dagger/gradients_4/dagger/Mean_1_grad/TileTile-dagger/gradients_4/dagger/Mean_1_grad/Reshape.dagger/gradients_4/dagger/Mean_1_grad/floordiv*

Tmultiples0*
T0* 
_class
loc:@dagger/Mean_1
�
-dagger/gradients_4/dagger/Mean_1_grad/Shape_2Shapedagger/Square_1*
T0* 
_class
loc:@dagger/Mean_1*
out_type0
�
-dagger/gradients_4/dagger/Mean_1_grad/Shape_3Shapedagger/Mean_1*
T0* 
_class
loc:@dagger/Mean_1*
out_type0
{
+dagger/gradients_4/dagger/Mean_1_grad/ConstConst* 
_class
loc:@dagger/Mean_1*
valueB: *
dtype0
�
*dagger/gradients_4/dagger/Mean_1_grad/ProdProd-dagger/gradients_4/dagger/Mean_1_grad/Shape_2+dagger/gradients_4/dagger/Mean_1_grad/Const*
	keep_dims( *

Tidx0*
T0* 
_class
loc:@dagger/Mean_1
}
-dagger/gradients_4/dagger/Mean_1_grad/Const_1Const* 
_class
loc:@dagger/Mean_1*
valueB: *
dtype0
�
,dagger/gradients_4/dagger/Mean_1_grad/Prod_1Prod-dagger/gradients_4/dagger/Mean_1_grad/Shape_3-dagger/gradients_4/dagger/Mean_1_grad/Const_1*
	keep_dims( *

Tidx0*
T0* 
_class
loc:@dagger/Mean_1
}
1dagger/gradients_4/dagger/Mean_1_grad/Maximum_1/yConst*
dtype0* 
_class
loc:@dagger/Mean_1*
value	B :
�
/dagger/gradients_4/dagger/Mean_1_grad/Maximum_1Maximum,dagger/gradients_4/dagger/Mean_1_grad/Prod_11dagger/gradients_4/dagger/Mean_1_grad/Maximum_1/y*
T0* 
_class
loc:@dagger/Mean_1
�
0dagger/gradients_4/dagger/Mean_1_grad/floordiv_1FloorDiv*dagger/gradients_4/dagger/Mean_1_grad/Prod/dagger/gradients_4/dagger/Mean_1_grad/Maximum_1*
T0* 
_class
loc:@dagger/Mean_1
�
*dagger/gradients_4/dagger/Mean_1_grad/CastCast0dagger/gradients_4/dagger/Mean_1_grad/floordiv_1*
Truncate( *

DstT0*

SrcT0* 
_class
loc:@dagger/Mean_1
�
-dagger/gradients_4/dagger/Mean_1_grad/truedivRealDiv*dagger/gradients_4/dagger/Mean_1_grad/Tile*dagger/gradients_4/dagger/Mean_1_grad/Cast*
T0* 
_class
loc:@dagger/Mean_1
�
.dagger/gradients_4/Identity/input_grad/unstackUnpack?dagger/gradients_4/dagger/add_6_grad/tuple/control_dependency_1*	
num*
T0*!
_class
loc:@Identity/input*

axis 
p
7dagger/gradients_4/Identity/input_grad/tuple/group_depsNoOp/^dagger/gradients_4/Identity/input_grad/unstack
�
?dagger/gradients_4/Identity/input_grad/tuple/control_dependencyIdentity.dagger/gradients_4/Identity/input_grad/unstack8^dagger/gradients_4/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
Adagger/gradients_4/Identity/input_grad/tuple/control_dependency_1Identity0dagger/gradients_4/Identity/input_grad/unstack:18^dagger/gradients_4/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
Adagger/gradients_4/Identity/input_grad/tuple/control_dependency_2Identity0dagger/gradients_4/Identity/input_grad/unstack:28^dagger/gradients_4/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
Adagger/gradients_4/Identity/input_grad/tuple/control_dependency_3Identity0dagger/gradients_4/Identity/input_grad/unstack:38^dagger/gradients_4/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
Adagger/gradients_4/Identity/input_grad/tuple/control_dependency_4Identity0dagger/gradients_4/Identity/input_grad/unstack:48^dagger/gradients_4/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
Adagger/gradients_4/Identity/input_grad/tuple/control_dependency_5Identity0dagger/gradients_4/Identity/input_grad/unstack:58^dagger/gradients_4/Identity/input_grad/tuple/group_deps*
T0*!
_class
loc:@Identity/input
�
-dagger/gradients_4/dagger/Square_1_grad/ConstConst.^dagger/gradients_4/dagger/Mean_1_grad/truediv*"
_class
loc:@dagger/Square_1*
valueB
 *   @*
dtype0
�
+dagger/gradients_4/dagger/Square_1_grad/MulMuldagger/sub_1-dagger/gradients_4/dagger/Square_1_grad/Const*
T0*"
_class
loc:@dagger/Square_1
�
-dagger/gradients_4/dagger/Square_1_grad/Mul_1Mul-dagger/gradients_4/dagger/Mean_1_grad/truediv+dagger/gradients_4/dagger/Square_1_grad/Mul*
T0*"
_class
loc:@dagger/Square_1
�
idagger/gradients_4/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMul?dagger/gradients_4/Identity/input_grad/tuple/control_dependencyTpolicy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*`
_classV
TRloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_4/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1Mul?dagger/gradients_4/Identity/input_grad/tuple/control_dependencyCast_2/x*
T0*`
_classV
TRloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
vdagger/gradients_4/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpj^dagger/gradients_4/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mull^dagger/gradients_4/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
~dagger/gradients_4/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentityidagger/gradients_4/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mulw^dagger/gradients_4/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_4/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitykdagger/gradients_4/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1w^dagger/gradients_4/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
idagger/gradients_4/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMulAdagger/gradients_4/Identity/input_grad/tuple/control_dependency_1Tpolicy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*`
_classV
TRloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_4/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1MulAdagger/gradients_4/Identity/input_grad/tuple/control_dependency_1Cast_2/x*
T0*`
_classV
TRloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
vdagger/gradients_4/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpj^dagger/gradients_4/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mull^dagger/gradients_4/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
~dagger/gradients_4/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentityidagger/gradients_4/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mulw^dagger/gradients_4/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_4/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitykdagger/gradients_4/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1w^dagger/gradients_4/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
idagger/gradients_4/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMulAdagger/gradients_4/Identity/input_grad/tuple/control_dependency_2Tpolicy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*`
_classV
TRloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_4/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1MulAdagger/gradients_4/Identity/input_grad/tuple/control_dependency_2Cast_2/x*
T0*`
_classV
TRloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
vdagger/gradients_4/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpj^dagger/gradients_4/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mull^dagger/gradients_4/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
~dagger/gradients_4/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentityidagger/gradients_4/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mulw^dagger/gradients_4/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_4/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitykdagger/gradients_4/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1w^dagger/gradients_4/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*`
_classV
TRloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_4/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMulAdagger/gradients_4/Identity/input_grad/tuple/control_dependency_3Vpolicy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
mdagger/gradients_4/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1MulAdagger/gradients_4/Identity/input_grad/tuple/control_dependency_3Cast_2/x*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
xdagger/gradients_4/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpl^dagger/gradients_4/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muln^dagger/gradients_4/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
�dagger/gradients_4/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentitykdagger/gradients_4/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muly^dagger/gradients_4/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_4/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitymdagger/gradients_4/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1y^dagger/gradients_4/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_4/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMulAdagger/gradients_4/Identity/input_grad/tuple/control_dependency_4Vpolicy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
mdagger/gradients_4/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1MulAdagger/gradients_4/Identity/input_grad/tuple/control_dependency_4Cast_2/x*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
xdagger/gradients_4/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpl^dagger/gradients_4/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muln^dagger/gradients_4/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
�dagger/gradients_4/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentitykdagger/gradients_4/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muly^dagger/gradients_4/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_4/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitymdagger/gradients_4/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1y^dagger/gradients_4/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer
�
kdagger/gradients_4/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/MulMulAdagger/gradients_4/Identity/input_grad/tuple/control_dependency_5Vpolicy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
mdagger/gradients_4/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1MulAdagger/gradients_4/Identity/input_grad/tuple/control_dependency_5Cast_2/x*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
xdagger/gradients_4/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_depsNoOpl^dagger/gradients_4/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muln^dagger/gradients_4/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1
�
�dagger/gradients_4/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependencyIdentitykdagger/gradients_4/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Muly^dagger/gradients_4/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer
�
�dagger/gradients_4/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1Identitymdagger/gradients_4/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/Mul_1y^dagger/gradients_4/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/group_deps*
T0*b
_classX
VTloc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer

*dagger/gradients_4/dagger/sub_1_grad/ShapeShapedagger/Reshape_6*
T0*
_class
loc:@dagger/sub_1*
out_type0
�
,dagger/gradients_4/dagger/sub_1_grad/Shape_1Shapeextra_encoder/featureMap*
T0*
_class
loc:@dagger/sub_1*
out_type0
�
:dagger/gradients_4/dagger/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs*dagger/gradients_4/dagger/sub_1_grad/Shape,dagger/gradients_4/dagger/sub_1_grad/Shape_1*
T0*
_class
loc:@dagger/sub_1
�
(dagger/gradients_4/dagger/sub_1_grad/SumSum-dagger/gradients_4/dagger/Square_1_grad/Mul_1:dagger/gradients_4/dagger/sub_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_class
loc:@dagger/sub_1
�
,dagger/gradients_4/dagger/sub_1_grad/ReshapeReshape(dagger/gradients_4/dagger/sub_1_grad/Sum*dagger/gradients_4/dagger/sub_1_grad/Shape*
T0*
_class
loc:@dagger/sub_1*
Tshape0
�
(dagger/gradients_4/dagger/sub_1_grad/NegNeg-dagger/gradients_4/dagger/Square_1_grad/Mul_1*
T0*
_class
loc:@dagger/sub_1
�
*dagger/gradients_4/dagger/sub_1_grad/Sum_1Sum(dagger/gradients_4/dagger/sub_1_grad/Neg<dagger/gradients_4/dagger/sub_1_grad/BroadcastGradientArgs:1*
T0*
_class
loc:@dagger/sub_1*
	keep_dims( *

Tidx0
�
.dagger/gradients_4/dagger/sub_1_grad/Reshape_1Reshape*dagger/gradients_4/dagger/sub_1_grad/Sum_1,dagger/gradients_4/dagger/sub_1_grad/Shape_1*
T0*
_class
loc:@dagger/sub_1*
Tshape0
�
5dagger/gradients_4/dagger/sub_1_grad/tuple/group_depsNoOp-^dagger/gradients_4/dagger/sub_1_grad/Reshape/^dagger/gradients_4/dagger/sub_1_grad/Reshape_1
�
=dagger/gradients_4/dagger/sub_1_grad/tuple/control_dependencyIdentity,dagger/gradients_4/dagger/sub_1_grad/Reshape6^dagger/gradients_4/dagger/sub_1_grad/tuple/group_deps*
T0*
_class
loc:@dagger/sub_1
�
?dagger/gradients_4/dagger/sub_1_grad/tuple/control_dependency_1Identity.dagger/gradients_4/dagger/sub_1_grad/Reshape_16^dagger/gradients_4/dagger/sub_1_grad/tuple/group_deps*
T0*
_class
loc:@dagger/sub_1
�
pdagger/gradients_4/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul#policy/fully_connected/weights/read�dagger/gradients_4/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
pdagger/gradients_4/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul%policy/fully_connected_1/weights/read�dagger/gradients_4/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
pdagger/gradients_4/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul%policy/fully_connected_2/weights/read�dagger/gradients_4/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*g
_class]
[Yloc:@policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
rdagger/gradients_4/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul%valueNet/fully_connected/weights/read�dagger/gradients_4/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*i
_class_
][loc:@policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
rdagger/gradients_4/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul'valueNet/fully_connected_1/weights/read�dagger/gradients_4/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*i
_class_
][loc:@policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
rdagger/gradients_4/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mulMul'valueNet/fully_connected_2/weights/read�dagger/gradients_4/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer_grad/tuple/control_dependency_1*
T0*i
_class_
][loc:@policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss
�
Wdagger/gradients_4/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/BiasAddGradBiasAddGrad?dagger/gradients_4/dagger/sub_1_grad/tuple/control_dependency_1*
T0*F
_class<
:8loc:@extra_encoder/extra_encoder/fully_connected/BiasAdd*
data_formatNHWC
�
\dagger/gradients_4/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/group_depsNoOp@^dagger/gradients_4/dagger/sub_1_grad/tuple/control_dependency_1X^dagger/gradients_4/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/BiasAddGrad
�
ddagger/gradients_4/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependencyIdentity?dagger/gradients_4/dagger/sub_1_grad/tuple/control_dependency_1]^dagger/gradients_4/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*
_class
loc:@dagger/sub_1
�
fdagger/gradients_4/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependency_1IdentityWdagger/gradients_4/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/BiasAddGrad]^dagger/gradients_4/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@extra_encoder/extra_encoder/fully_connected/BiasAdd
�
Qdagger/gradients_4/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMulMatMulddagger/gradients_4/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependency*extra_encoder/fully_connected/weights/read*
transpose_b(*
T0*E
_class;
97loc:@extra_encoder/extra_encoder/fully_connected/MatMul*
transpose_a( 
�
Sdagger/gradients_4/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMul_1MatMulextra_encoder/strided_sliceddagger/gradients_4/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*E
_class;
97loc:@extra_encoder/extra_encoder/fully_connected/MatMul*
transpose_a(
�
[dagger/gradients_4/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/group_depsNoOpR^dagger/gradients_4/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMulT^dagger/gradients_4/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMul_1
�
cdagger/gradients_4/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/control_dependencyIdentityQdagger/gradients_4/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMul\^dagger/gradients_4/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@extra_encoder/extra_encoder/fully_connected/MatMul
�
edagger/gradients_4/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/control_dependency_1IdentitySdagger/gradients_4/extra_encoder/extra_encoder/fully_connected/MatMul_grad/MatMul_1\^dagger/gradients_4/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@extra_encoder/extra_encoder/fully_connected/MatMul
H
dagger/feature_solver/beta1Const*
valueB
 *fff?*
dtype0
H
dagger/feature_solver/beta2Const*
valueB
 *w�?*
dtype0
J
dagger/feature_solver/epsilonConst*
valueB
 *w�+2*
dtype0
�
Ldagger/feature_solver/update_extra_encoder/fully_connected/weights/ApplyAdam	ApplyAdam%extra_encoder/fully_connected/weights*extra_encoder/fully_connected/weights/Adam,extra_encoder/fully_connected/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/feature_solver/beta1dagger/feature_solver/beta2dagger/feature_solver/epsilonedagger/gradients_4/extra_encoder/extra_encoder/fully_connected/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights
�
Kdagger/feature_solver/update_extra_encoder/fully_connected/biases/ApplyAdam	ApplyAdam$extra_encoder/fully_connected/biases)extra_encoder/fully_connected/biases/Adam+extra_encoder/fully_connected/biases/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/feature_solver/beta1dagger/feature_solver/beta2dagger/feature_solver/epsilonfdagger/gradients_4/extra_encoder/extra_encoder/fully_connected/BiasAdd_grad/tuple/control_dependency_1*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases*
use_nesterov( *
use_locking( 
�
Edagger/feature_solver/update_policy/fully_connected/weights/ApplyAdam	ApplyAdampolicy/fully_connected/weights#policy/fully_connected/weights/Adam%policy/fully_connected/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/feature_solver/beta1dagger/feature_solver/beta2dagger/feature_solver/epsilonpdagger/gradients_4/policy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul*
use_locking( *
T0*1
_class'
%#loc:@policy/fully_connected/weights*
use_nesterov( 
�
Gdagger/feature_solver/update_policy/fully_connected_1/weights/ApplyAdam	ApplyAdam policy/fully_connected_1/weights%policy/fully_connected_1/weights/Adam'policy/fully_connected_1/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/feature_solver/beta1dagger/feature_solver/beta2dagger/feature_solver/epsilonpdagger/gradients_4/policy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul*
use_locking( *
T0*3
_class)
'%loc:@policy/fully_connected_1/weights*
use_nesterov( 
�
Gdagger/feature_solver/update_policy/fully_connected_2/weights/ApplyAdam	ApplyAdam policy/fully_connected_2/weights%policy/fully_connected_2/weights/Adam'policy/fully_connected_2/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/feature_solver/beta1dagger/feature_solver/beta2dagger/feature_solver/epsilonpdagger/gradients_4/policy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul*
T0*3
_class)
'%loc:@policy/fully_connected_2/weights*
use_nesterov( *
use_locking( 
�
Gdagger/feature_solver/update_valueNet/fully_connected/weights/ApplyAdam	ApplyAdam valueNet/fully_connected/weights%valueNet/fully_connected/weights/Adam'valueNet/fully_connected/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/feature_solver/beta1dagger/feature_solver/beta2dagger/feature_solver/epsilonrdagger/gradients_4/policy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul*
use_locking( *
T0*3
_class)
'%loc:@valueNet/fully_connected/weights*
use_nesterov( 
�
Idagger/feature_solver/update_valueNet/fully_connected_1/weights/ApplyAdam	ApplyAdam"valueNet/fully_connected_1/weights'valueNet/fully_connected_1/weights/Adam)valueNet/fully_connected_1/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/feature_solver/beta1dagger/feature_solver/beta2dagger/feature_solver/epsilonrdagger/gradients_4/policy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul*
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights*
use_nesterov( *
use_locking( 
�
Idagger/feature_solver/update_valueNet/fully_connected_2/weights/ApplyAdam	ApplyAdam"valueNet/fully_connected_2/weights'valueNet/fully_connected_2/weights/Adam)valueNet/fully_connected_2/weights/Adam_1dagger/beta1_power/readdagger/beta2_power/read	dagger/LRdagger/feature_solver/beta1dagger/feature_solver/beta2dagger/feature_solver/epsilonrdagger/gradients_4/policy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer/L2Loss_grad/mul*
use_nesterov( *
use_locking( *
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights
�
dagger/feature_solver/mulMuldagger/beta1_power/readdagger/feature_solver/beta1L^dagger/feature_solver/update_extra_encoder/fully_connected/biases/ApplyAdamM^dagger/feature_solver/update_extra_encoder/fully_connected/weights/ApplyAdamF^dagger/feature_solver/update_policy/fully_connected/weights/ApplyAdamH^dagger/feature_solver/update_policy/fully_connected_1/weights/ApplyAdamH^dagger/feature_solver/update_policy/fully_connected_2/weights/ApplyAdamH^dagger/feature_solver/update_valueNet/fully_connected/weights/ApplyAdamJ^dagger/feature_solver/update_valueNet/fully_connected_1/weights/ApplyAdamJ^dagger/feature_solver/update_valueNet/fully_connected_2/weights/ApplyAdam*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�
dagger/feature_solver/AssignAssigndagger/beta1_powerdagger/feature_solver/mul*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases*
validate_shape(*
use_locking( 
�
dagger/feature_solver/mul_1Muldagger/beta2_power/readdagger/feature_solver/beta2L^dagger/feature_solver/update_extra_encoder/fully_connected/biases/ApplyAdamM^dagger/feature_solver/update_extra_encoder/fully_connected/weights/ApplyAdamF^dagger/feature_solver/update_policy/fully_connected/weights/ApplyAdamH^dagger/feature_solver/update_policy/fully_connected_1/weights/ApplyAdamH^dagger/feature_solver/update_policy/fully_connected_2/weights/ApplyAdamH^dagger/feature_solver/update_valueNet/fully_connected/weights/ApplyAdamJ^dagger/feature_solver/update_valueNet/fully_connected_1/weights/ApplyAdamJ^dagger/feature_solver/update_valueNet/fully_connected_2/weights/ApplyAdam*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�
dagger/feature_solver/Assign_1Assigndagger/beta2_powerdagger/feature_solver/mul_1*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases*
validate_shape(*
use_locking( 
�
dagger/feature_solver/updateNoOp^dagger/feature_solver/Assign^dagger/feature_solver/Assign_1L^dagger/feature_solver/update_extra_encoder/fully_connected/biases/ApplyAdamM^dagger/feature_solver/update_extra_encoder/fully_connected/weights/ApplyAdamF^dagger/feature_solver/update_policy/fully_connected/weights/ApplyAdamH^dagger/feature_solver/update_policy/fully_connected_1/weights/ApplyAdamH^dagger/feature_solver/update_policy/fully_connected_2/weights/ApplyAdamH^dagger/feature_solver/update_valueNet/fully_connected/weights/ApplyAdamJ^dagger/feature_solver/update_valueNet/fully_connected_1/weights/ApplyAdamJ^dagger/feature_solver/update_valueNet/fully_connected_2/weights/ApplyAdam
�
dagger/feature_solver/valueConst^dagger/feature_solver/update*%
_class
loc:@dagger/global_step*
value	B :*
dtype0
�
dagger/feature_solver	AssignAdddagger/global_stepdagger/feature_solver/value*
use_locking( *
T0*%
_class
loc:@dagger/global_step
H
saver_op/filename/inputConst*
valueB Bmy_graph*
dtype0
^
saver_op/filenamePlaceholderWithDefaultsaver_op/filename/input*
dtype0*
shape: 
U
saver_op/ConstPlaceholderWithDefaultsaver_op/filename*
dtype0*
shape: 
�
saver_op/SaveV2/tensor_namesConst*�
value�B�>BClipRateBEntropyParamBValueClipRateBdagger/DecayRateLRBdagger/DecayStepLRBdagger/beta1_powerBdagger/beta2_powerBdagger/dagger_coeffBdagger/global_stepBdagger/learningRateB$extra_encoder/fully_connected/biasesB)extra_encoder/fully_connected/biases/AdamB+extra_encoder/fully_connected/biases/Adam_1B%extra_encoder/fully_connected/weightsB*extra_encoder/fully_connected/weights/AdamB,extra_encoder/fully_connected/weights/Adam_1Bglobal_stepBpolicy/fully_connected/biasesB"policy/fully_connected/biases/AdamB$policy/fully_connected/biases/Adam_1Bpolicy/fully_connected/weightsB#policy/fully_connected/weights/AdamB%policy/fully_connected/weights/Adam_1Bpolicy/fully_connected_1/biasesB$policy/fully_connected_1/biases/AdamB&policy/fully_connected_1/biases/Adam_1B policy/fully_connected_1/weightsB%policy/fully_connected_1/weights/AdamB'policy/fully_connected_1/weights/Adam_1Bpolicy/fully_connected_2/biasesB$policy/fully_connected_2/biases/AdamB&policy/fully_connected_2/biases/Adam_1B policy/fully_connected_2/weightsB%policy/fully_connected_2/weights/AdamB'policy/fully_connected_2/weights/Adam_1Bpolicy/fully_connected_3/biasesB$policy/fully_connected_3/biases/AdamB&policy/fully_connected_3/biases/Adam_1B policy/fully_connected_3/weightsB%policy/fully_connected_3/weights/AdamB'policy/fully_connected_3/weights/Adam_1Bpolicy/stdevconcatOutput/WBtrainingOptions/DecayRateLRBtrainingOptions/DecayStepLRBtrainingOptions/InitLRBtrainingOptions/MinLRBtrainingOptions/dropout_rateBtrainingOptions/max_grad_normBvalueNet/fully_connected/biasesB valueNet/fully_connected/weightsB%valueNet/fully_connected/weights/AdamB'valueNet/fully_connected/weights/Adam_1B!valueNet/fully_connected_1/biasesB"valueNet/fully_connected_1/weightsB'valueNet/fully_connected_1/weights/AdamB)valueNet/fully_connected_1/weights/Adam_1B!valueNet/fully_connected_2/biasesB"valueNet/fully_connected_2/weightsB'valueNet/fully_connected_2/weights/AdamB)valueNet/fully_connected_2/weights/Adam_1B!valueNet/fully_connected_3/biasesB"valueNet/fully_connected_3/weights*
dtype0
�
 saver_op/SaveV2/shape_and_slicesConst*�
value�B�>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
�
saver_op/SaveV2SaveV2saver_op/Constsaver_op/SaveV2/tensor_names saver_op/SaveV2/shape_and_slicesClipRateEntropyParamValueClipRatedagger/DecayRateLRdagger/DecayStepLRdagger/beta1_powerdagger/beta2_powerdagger/dagger_coeffdagger/global_stepdagger/learningRate$extra_encoder/fully_connected/biases)extra_encoder/fully_connected/biases/Adam+extra_encoder/fully_connected/biases/Adam_1%extra_encoder/fully_connected/weights*extra_encoder/fully_connected/weights/Adam,extra_encoder/fully_connected/weights/Adam_1global_steppolicy/fully_connected/biases"policy/fully_connected/biases/Adam$policy/fully_connected/biases/Adam_1policy/fully_connected/weights#policy/fully_connected/weights/Adam%policy/fully_connected/weights/Adam_1policy/fully_connected_1/biases$policy/fully_connected_1/biases/Adam&policy/fully_connected_1/biases/Adam_1 policy/fully_connected_1/weights%policy/fully_connected_1/weights/Adam'policy/fully_connected_1/weights/Adam_1policy/fully_connected_2/biases$policy/fully_connected_2/biases/Adam&policy/fully_connected_2/biases/Adam_1 policy/fully_connected_2/weights%policy/fully_connected_2/weights/Adam'policy/fully_connected_2/weights/Adam_1policy/fully_connected_3/biases$policy/fully_connected_3/biases/Adam&policy/fully_connected_3/biases/Adam_1 policy/fully_connected_3/weights%policy/fully_connected_3/weights/Adam'policy/fully_connected_3/weights/Adam_1policy/stdevconcatOutput/WtrainingOptions/DecayRateLRtrainingOptions/DecayStepLRtrainingOptions/InitLRtrainingOptions/MinLRtrainingOptions/dropout_ratetrainingOptions/max_grad_normvalueNet/fully_connected/biases valueNet/fully_connected/weights%valueNet/fully_connected/weights/Adam'valueNet/fully_connected/weights/Adam_1!valueNet/fully_connected_1/biases"valueNet/fully_connected_1/weights'valueNet/fully_connected_1/weights/Adam)valueNet/fully_connected_1/weights/Adam_1!valueNet/fully_connected_2/biases"valueNet/fully_connected_2/weights'valueNet/fully_connected_2/weights/Adam)valueNet/fully_connected_2/weights/Adam_1!valueNet/fully_connected_3/biases"valueNet/fully_connected_3/weights*L
dtypesB
@2>
u
saver_op/control_dependencyIdentitysaver_op/Const^saver_op/SaveV2*
T0*!
_class
loc:@saver_op/Const
�
saver_op/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*�
value�B�>BClipRateBEntropyParamBValueClipRateBdagger/DecayRateLRBdagger/DecayStepLRBdagger/beta1_powerBdagger/beta2_powerBdagger/dagger_coeffBdagger/global_stepBdagger/learningRateB$extra_encoder/fully_connected/biasesB)extra_encoder/fully_connected/biases/AdamB+extra_encoder/fully_connected/biases/Adam_1B%extra_encoder/fully_connected/weightsB*extra_encoder/fully_connected/weights/AdamB,extra_encoder/fully_connected/weights/Adam_1Bglobal_stepBpolicy/fully_connected/biasesB"policy/fully_connected/biases/AdamB$policy/fully_connected/biases/Adam_1Bpolicy/fully_connected/weightsB#policy/fully_connected/weights/AdamB%policy/fully_connected/weights/Adam_1Bpolicy/fully_connected_1/biasesB$policy/fully_connected_1/biases/AdamB&policy/fully_connected_1/biases/Adam_1B policy/fully_connected_1/weightsB%policy/fully_connected_1/weights/AdamB'policy/fully_connected_1/weights/Adam_1Bpolicy/fully_connected_2/biasesB$policy/fully_connected_2/biases/AdamB&policy/fully_connected_2/biases/Adam_1B policy/fully_connected_2/weightsB%policy/fully_connected_2/weights/AdamB'policy/fully_connected_2/weights/Adam_1Bpolicy/fully_connected_3/biasesB$policy/fully_connected_3/biases/AdamB&policy/fully_connected_3/biases/Adam_1B policy/fully_connected_3/weightsB%policy/fully_connected_3/weights/AdamB'policy/fully_connected_3/weights/Adam_1Bpolicy/stdevconcatOutput/WBtrainingOptions/DecayRateLRBtrainingOptions/DecayStepLRBtrainingOptions/InitLRBtrainingOptions/MinLRBtrainingOptions/dropout_rateBtrainingOptions/max_grad_normBvalueNet/fully_connected/biasesB valueNet/fully_connected/weightsB%valueNet/fully_connected/weights/AdamB'valueNet/fully_connected/weights/Adam_1B!valueNet/fully_connected_1/biasesB"valueNet/fully_connected_1/weightsB'valueNet/fully_connected_1/weights/AdamB)valueNet/fully_connected_1/weights/Adam_1B!valueNet/fully_connected_2/biasesB"valueNet/fully_connected_2/weightsB'valueNet/fully_connected_2/weights/AdamB)valueNet/fully_connected_2/weights/Adam_1B!valueNet/fully_connected_3/biasesB"valueNet/fully_connected_3/weights
�
#saver_op/RestoreV2/shape_and_slicesConst"/device:CPU:0*�
value�B�>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
�
saver_op/RestoreV2	RestoreV2saver_op/Constsaver_op/RestoreV2/tensor_names#saver_op/RestoreV2/shape_and_slices"/device:CPU:0*L
dtypesB
@2>
�
saver_op/AssignAssignClipRatesaver_op/RestoreV2*
validate_shape(*
use_locking(*
T0*
_class
loc:@ClipRate
�
saver_op/Assign_1AssignEntropyParamsaver_op/RestoreV2:1*
validate_shape(*
use_locking(*
T0*
_class
loc:@EntropyParam
�
saver_op/Assign_2AssignValueClipRatesaver_op/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@ValueClipRate*
validate_shape(
�
saver_op/Assign_3Assigndagger/DecayRateLRsaver_op/RestoreV2:3*
use_locking(*
T0*%
_class
loc:@dagger/DecayRateLR*
validate_shape(
�
saver_op/Assign_4Assigndagger/DecayStepLRsaver_op/RestoreV2:4*
use_locking(*
T0*%
_class
loc:@dagger/DecayStepLR*
validate_shape(
�
saver_op/Assign_5Assigndagger/beta1_powersaver_op/RestoreV2:5*
validate_shape(*
use_locking(*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�
saver_op/Assign_6Assigndagger/beta2_powersaver_op/RestoreV2:6*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases*
validate_shape(*
use_locking(
�
saver_op/Assign_7Assigndagger/dagger_coeffsaver_op/RestoreV2:7*
use_locking(*
T0*&
_class
loc:@dagger/dagger_coeff*
validate_shape(
�
saver_op/Assign_8Assigndagger/global_stepsaver_op/RestoreV2:8*
use_locking(*
T0*%
_class
loc:@dagger/global_step*
validate_shape(
�
saver_op/Assign_9Assigndagger/learningRatesaver_op/RestoreV2:9*
use_locking(*
T0*&
_class
loc:@dagger/learningRate*
validate_shape(
�
saver_op/Assign_10Assign$extra_encoder/fully_connected/biasessaver_op/RestoreV2:10*
use_locking(*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases*
validate_shape(
�
saver_op/Assign_11Assign)extra_encoder/fully_connected/biases/Adamsaver_op/RestoreV2:11*
validate_shape(*
use_locking(*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�
saver_op/Assign_12Assign+extra_encoder/fully_connected/biases/Adam_1saver_op/RestoreV2:12*
validate_shape(*
use_locking(*
T0*7
_class-
+)loc:@extra_encoder/fully_connected/biases
�
saver_op/Assign_13Assign%extra_encoder/fully_connected/weightssaver_op/RestoreV2:13*
use_locking(*
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights*
validate_shape(
�
saver_op/Assign_14Assign*extra_encoder/fully_connected/weights/Adamsaver_op/RestoreV2:14*
use_locking(*
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights*
validate_shape(
�
saver_op/Assign_15Assign,extra_encoder/fully_connected/weights/Adam_1saver_op/RestoreV2:15*
use_locking(*
T0*8
_class.
,*loc:@extra_encoder/fully_connected/weights*
validate_shape(
�
saver_op/Assign_16Assignglobal_stepsaver_op/RestoreV2:16*
validate_shape(*
use_locking(*
T0*
_class
loc:@global_step
�
saver_op/Assign_17Assignpolicy/fully_connected/biasessaver_op/RestoreV2:17*
use_locking(*
T0*0
_class&
$"loc:@policy/fully_connected/biases*
validate_shape(
�
saver_op/Assign_18Assign"policy/fully_connected/biases/Adamsaver_op/RestoreV2:18*
use_locking(*
T0*0
_class&
$"loc:@policy/fully_connected/biases*
validate_shape(
�
saver_op/Assign_19Assign$policy/fully_connected/biases/Adam_1saver_op/RestoreV2:19*
use_locking(*
T0*0
_class&
$"loc:@policy/fully_connected/biases*
validate_shape(
�
saver_op/Assign_20Assignpolicy/fully_connected/weightssaver_op/RestoreV2:20*
use_locking(*
T0*1
_class'
%#loc:@policy/fully_connected/weights*
validate_shape(
�
saver_op/Assign_21Assign#policy/fully_connected/weights/Adamsaver_op/RestoreV2:21*
T0*1
_class'
%#loc:@policy/fully_connected/weights*
validate_shape(*
use_locking(
�
saver_op/Assign_22Assign%policy/fully_connected/weights/Adam_1saver_op/RestoreV2:22*
T0*1
_class'
%#loc:@policy/fully_connected/weights*
validate_shape(*
use_locking(
�
saver_op/Assign_23Assignpolicy/fully_connected_1/biasessaver_op/RestoreV2:23*
T0*2
_class(
&$loc:@policy/fully_connected_1/biases*
validate_shape(*
use_locking(
�
saver_op/Assign_24Assign$policy/fully_connected_1/biases/Adamsaver_op/RestoreV2:24*
use_locking(*
T0*2
_class(
&$loc:@policy/fully_connected_1/biases*
validate_shape(
�
saver_op/Assign_25Assign&policy/fully_connected_1/biases/Adam_1saver_op/RestoreV2:25*
use_locking(*
T0*2
_class(
&$loc:@policy/fully_connected_1/biases*
validate_shape(
�
saver_op/Assign_26Assign policy/fully_connected_1/weightssaver_op/RestoreV2:26*
validate_shape(*
use_locking(*
T0*3
_class)
'%loc:@policy/fully_connected_1/weights
�
saver_op/Assign_27Assign%policy/fully_connected_1/weights/Adamsaver_op/RestoreV2:27*
validate_shape(*
use_locking(*
T0*3
_class)
'%loc:@policy/fully_connected_1/weights
�
saver_op/Assign_28Assign'policy/fully_connected_1/weights/Adam_1saver_op/RestoreV2:28*
T0*3
_class)
'%loc:@policy/fully_connected_1/weights*
validate_shape(*
use_locking(
�
saver_op/Assign_29Assignpolicy/fully_connected_2/biasessaver_op/RestoreV2:29*
use_locking(*
T0*2
_class(
&$loc:@policy/fully_connected_2/biases*
validate_shape(
�
saver_op/Assign_30Assign$policy/fully_connected_2/biases/Adamsaver_op/RestoreV2:30*
use_locking(*
T0*2
_class(
&$loc:@policy/fully_connected_2/biases*
validate_shape(
�
saver_op/Assign_31Assign&policy/fully_connected_2/biases/Adam_1saver_op/RestoreV2:31*
use_locking(*
T0*2
_class(
&$loc:@policy/fully_connected_2/biases*
validate_shape(
�
saver_op/Assign_32Assign policy/fully_connected_2/weightssaver_op/RestoreV2:32*
use_locking(*
T0*3
_class)
'%loc:@policy/fully_connected_2/weights*
validate_shape(
�
saver_op/Assign_33Assign%policy/fully_connected_2/weights/Adamsaver_op/RestoreV2:33*
use_locking(*
T0*3
_class)
'%loc:@policy/fully_connected_2/weights*
validate_shape(
�
saver_op/Assign_34Assign'policy/fully_connected_2/weights/Adam_1saver_op/RestoreV2:34*
use_locking(*
T0*3
_class)
'%loc:@policy/fully_connected_2/weights*
validate_shape(
�
saver_op/Assign_35Assignpolicy/fully_connected_3/biasessaver_op/RestoreV2:35*
use_locking(*
T0*2
_class(
&$loc:@policy/fully_connected_3/biases*
validate_shape(
�
saver_op/Assign_36Assign$policy/fully_connected_3/biases/Adamsaver_op/RestoreV2:36*
use_locking(*
T0*2
_class(
&$loc:@policy/fully_connected_3/biases*
validate_shape(
�
saver_op/Assign_37Assign&policy/fully_connected_3/biases/Adam_1saver_op/RestoreV2:37*
use_locking(*
T0*2
_class(
&$loc:@policy/fully_connected_3/biases*
validate_shape(
�
saver_op/Assign_38Assign policy/fully_connected_3/weightssaver_op/RestoreV2:38*
validate_shape(*
use_locking(*
T0*3
_class)
'%loc:@policy/fully_connected_3/weights
�
saver_op/Assign_39Assign%policy/fully_connected_3/weights/Adamsaver_op/RestoreV2:39*
use_locking(*
T0*3
_class)
'%loc:@policy/fully_connected_3/weights*
validate_shape(
�
saver_op/Assign_40Assign'policy/fully_connected_3/weights/Adam_1saver_op/RestoreV2:40*
validate_shape(*
use_locking(*
T0*3
_class)
'%loc:@policy/fully_connected_3/weights
�
saver_op/Assign_41Assignpolicy/stdevconcatOutput/Wsaver_op/RestoreV2:41*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@policy/stdevconcatOutput/W
�
saver_op/Assign_42AssigntrainingOptions/DecayRateLRsaver_op/RestoreV2:42*
use_locking(*
T0*.
_class$
" loc:@trainingOptions/DecayRateLR*
validate_shape(
�
saver_op/Assign_43AssigntrainingOptions/DecayStepLRsaver_op/RestoreV2:43*
use_locking(*
T0*.
_class$
" loc:@trainingOptions/DecayStepLR*
validate_shape(
�
saver_op/Assign_44AssigntrainingOptions/InitLRsaver_op/RestoreV2:44*
use_locking(*
T0*)
_class
loc:@trainingOptions/InitLR*
validate_shape(
�
saver_op/Assign_45AssigntrainingOptions/MinLRsaver_op/RestoreV2:45*
use_locking(*
T0*(
_class
loc:@trainingOptions/MinLR*
validate_shape(
�
saver_op/Assign_46AssigntrainingOptions/dropout_ratesaver_op/RestoreV2:46*
use_locking(*
T0*/
_class%
#!loc:@trainingOptions/dropout_rate*
validate_shape(
�
saver_op/Assign_47AssigntrainingOptions/max_grad_normsaver_op/RestoreV2:47*
T0*0
_class&
$"loc:@trainingOptions/max_grad_norm*
validate_shape(*
use_locking(
�
saver_op/Assign_48AssignvalueNet/fully_connected/biasessaver_op/RestoreV2:48*
validate_shape(*
use_locking(*
T0*2
_class(
&$loc:@valueNet/fully_connected/biases
�
saver_op/Assign_49Assign valueNet/fully_connected/weightssaver_op/RestoreV2:49*
T0*3
_class)
'%loc:@valueNet/fully_connected/weights*
validate_shape(*
use_locking(
�
saver_op/Assign_50Assign%valueNet/fully_connected/weights/Adamsaver_op/RestoreV2:50*
use_locking(*
T0*3
_class)
'%loc:@valueNet/fully_connected/weights*
validate_shape(
�
saver_op/Assign_51Assign'valueNet/fully_connected/weights/Adam_1saver_op/RestoreV2:51*
use_locking(*
T0*3
_class)
'%loc:@valueNet/fully_connected/weights*
validate_shape(
�
saver_op/Assign_52Assign!valueNet/fully_connected_1/biasessaver_op/RestoreV2:52*
T0*4
_class*
(&loc:@valueNet/fully_connected_1/biases*
validate_shape(*
use_locking(
�
saver_op/Assign_53Assign"valueNet/fully_connected_1/weightssaver_op/RestoreV2:53*
use_locking(*
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights*
validate_shape(
�
saver_op/Assign_54Assign'valueNet/fully_connected_1/weights/Adamsaver_op/RestoreV2:54*
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights*
validate_shape(*
use_locking(
�
saver_op/Assign_55Assign)valueNet/fully_connected_1/weights/Adam_1saver_op/RestoreV2:55*
use_locking(*
T0*5
_class+
)'loc:@valueNet/fully_connected_1/weights*
validate_shape(
�
saver_op/Assign_56Assign!valueNet/fully_connected_2/biasessaver_op/RestoreV2:56*
use_locking(*
T0*4
_class*
(&loc:@valueNet/fully_connected_2/biases*
validate_shape(
�
saver_op/Assign_57Assign"valueNet/fully_connected_2/weightssaver_op/RestoreV2:57*
validate_shape(*
use_locking(*
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights
�
saver_op/Assign_58Assign'valueNet/fully_connected_2/weights/Adamsaver_op/RestoreV2:58*
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights*
validate_shape(*
use_locking(
�
saver_op/Assign_59Assign)valueNet/fully_connected_2/weights/Adam_1saver_op/RestoreV2:59*
use_locking(*
T0*5
_class+
)'loc:@valueNet/fully_connected_2/weights*
validate_shape(
�
saver_op/Assign_60Assign!valueNet/fully_connected_3/biasessaver_op/RestoreV2:60*
T0*4
_class*
(&loc:@valueNet/fully_connected_3/biases*
validate_shape(*
use_locking(
�
saver_op/Assign_61Assign"valueNet/fully_connected_3/weightssaver_op/RestoreV2:61*
use_locking(*
T0*5
_class+
)'loc:@valueNet/fully_connected_3/weights*
validate_shape(
�

saver_op/restore_allNoOp^saver_op/Assign^saver_op/Assign_1^saver_op/Assign_10^saver_op/Assign_11^saver_op/Assign_12^saver_op/Assign_13^saver_op/Assign_14^saver_op/Assign_15^saver_op/Assign_16^saver_op/Assign_17^saver_op/Assign_18^saver_op/Assign_19^saver_op/Assign_2^saver_op/Assign_20^saver_op/Assign_21^saver_op/Assign_22^saver_op/Assign_23^saver_op/Assign_24^saver_op/Assign_25^saver_op/Assign_26^saver_op/Assign_27^saver_op/Assign_28^saver_op/Assign_29^saver_op/Assign_3^saver_op/Assign_30^saver_op/Assign_31^saver_op/Assign_32^saver_op/Assign_33^saver_op/Assign_34^saver_op/Assign_35^saver_op/Assign_36^saver_op/Assign_37^saver_op/Assign_38^saver_op/Assign_39^saver_op/Assign_4^saver_op/Assign_40^saver_op/Assign_41^saver_op/Assign_42^saver_op/Assign_43^saver_op/Assign_44^saver_op/Assign_45^saver_op/Assign_46^saver_op/Assign_47^saver_op/Assign_48^saver_op/Assign_49^saver_op/Assign_5^saver_op/Assign_50^saver_op/Assign_51^saver_op/Assign_52^saver_op/Assign_53^saver_op/Assign_54^saver_op/Assign_55^saver_op/Assign_56^saver_op/Assign_57^saver_op/Assign_58^saver_op/Assign_59^saver_op/Assign_6^saver_op/Assign_60^saver_op/Assign_61^saver_op/Assign_7^saver_op/Assign_8^saver_op/Assign_9
�
initializeAllVariablesNoOp^ClipRate/Assign^EntropyParam/Assign^ValueClipRate/Assign^dagger/DecayRateLR/Assign^dagger/DecayStepLR/Assign^dagger/beta1_power/Assign^dagger/beta2_power/Assign^dagger/dagger_coeff/Assign^dagger/global_step/Assign^dagger/learningRate/Assign1^extra_encoder/fully_connected/biases/Adam/Assign3^extra_encoder/fully_connected/biases/Adam_1/Assign,^extra_encoder/fully_connected/biases/Assign2^extra_encoder/fully_connected/weights/Adam/Assign4^extra_encoder/fully_connected/weights/Adam_1/Assign-^extra_encoder/fully_connected/weights/Assign^global_step/Assign*^policy/fully_connected/biases/Adam/Assign,^policy/fully_connected/biases/Adam_1/Assign%^policy/fully_connected/biases/Assign+^policy/fully_connected/weights/Adam/Assign-^policy/fully_connected/weights/Adam_1/Assign&^policy/fully_connected/weights/Assign,^policy/fully_connected_1/biases/Adam/Assign.^policy/fully_connected_1/biases/Adam_1/Assign'^policy/fully_connected_1/biases/Assign-^policy/fully_connected_1/weights/Adam/Assign/^policy/fully_connected_1/weights/Adam_1/Assign(^policy/fully_connected_1/weights/Assign,^policy/fully_connected_2/biases/Adam/Assign.^policy/fully_connected_2/biases/Adam_1/Assign'^policy/fully_connected_2/biases/Assign-^policy/fully_connected_2/weights/Adam/Assign/^policy/fully_connected_2/weights/Adam_1/Assign(^policy/fully_connected_2/weights/Assign,^policy/fully_connected_3/biases/Adam/Assign.^policy/fully_connected_3/biases/Adam_1/Assign'^policy/fully_connected_3/biases/Assign-^policy/fully_connected_3/weights/Adam/Assign/^policy/fully_connected_3/weights/Adam_1/Assign(^policy/fully_connected_3/weights/Assign"^policy/stdevconcatOutput/W/Assign#^trainingOptions/DecayRateLR/Assign#^trainingOptions/DecayStepLR/Assign^trainingOptions/InitLR/Assign^trainingOptions/MinLR/Assign$^trainingOptions/dropout_rate/Assign%^trainingOptions/max_grad_norm/Assign'^valueNet/fully_connected/biases/Assign-^valueNet/fully_connected/weights/Adam/Assign/^valueNet/fully_connected/weights/Adam_1/Assign(^valueNet/fully_connected/weights/Assign)^valueNet/fully_connected_1/biases/Assign/^valueNet/fully_connected_1/weights/Adam/Assign1^valueNet/fully_connected_1/weights/Adam_1/Assign*^valueNet/fully_connected_1/weights/Assign)^valueNet/fully_connected_2/biases/Assign/^valueNet/fully_connected_2/weights/Adam/Assign1^valueNet/fully_connected_2/weights/Adam_1/Assign*^valueNet/fully_connected_2/weights/Assign)^valueNet/fully_connected_3/biases/Assign*^valueNet/fully_connected_3/weights/Assign"�P
saver_op/Const:0saver_op/control_dependency:0saver_op/restore_all 
5 @F8"�
regularization_losses�
�
Opolicy/policy/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer:0
Opolicy/policy/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer:0
Opolicy/policy/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer:0
Qpolicy/valueNet/hidden_layer0/fully_connected/kernel/Regularizer/l2_regularizer:0
Qpolicy/valueNet/hidden_layer1/fully_connected/kernel/Regularizer/l2_regularizer:0
Qpolicy/valueNet/hidden_layer2/fully_connected/kernel/Regularizer/l2_regularizer:0"�
model_variables��
�
'extra_encoder/fully_connected/weights:0,extra_encoder/fully_connected/weights/Assign,extra_encoder/fully_connected/weights/read:02Bextra_encoder/fully_connected/weights/Initializer/random_uniform:08
�
&extra_encoder/fully_connected/biases:0+extra_encoder/fully_connected/biases/Assign+extra_encoder/fully_connected/biases/read:028extra_encoder/fully_connected/biases/Initializer/Const:08
�
 policy/fully_connected/weights:0%policy/fully_connected/weights/Assign%policy/fully_connected/weights/read:022policy/fully_connected/weights/Initializer/mul_1:08
�
policy/fully_connected/biases:0$policy/fully_connected/biases/Assign$policy/fully_connected/biases/read:021policy/fully_connected/biases/Initializer/zeros:08
�
"policy/fully_connected_1/weights:0'policy/fully_connected_1/weights/Assign'policy/fully_connected_1/weights/read:024policy/fully_connected_1/weights/Initializer/mul_1:08
�
!policy/fully_connected_1/biases:0&policy/fully_connected_1/biases/Assign&policy/fully_connected_1/biases/read:023policy/fully_connected_1/biases/Initializer/zeros:08
�
"policy/fully_connected_2/weights:0'policy/fully_connected_2/weights/Assign'policy/fully_connected_2/weights/read:024policy/fully_connected_2/weights/Initializer/mul_1:08
�
!policy/fully_connected_2/biases:0&policy/fully_connected_2/biases/Assign&policy/fully_connected_2/biases/read:023policy/fully_connected_2/biases/Initializer/zeros:08
�
"policy/fully_connected_3/weights:0'policy/fully_connected_3/weights/Assign'policy/fully_connected_3/weights/read:02=policy/fully_connected_3/weights/Initializer/random_uniform:08
�
!policy/fully_connected_3/biases:0&policy/fully_connected_3/biases/Assign&policy/fully_connected_3/biases/read:023policy/fully_connected_3/biases/Initializer/Const:08
�
"valueNet/fully_connected/weights:0'valueNet/fully_connected/weights/Assign'valueNet/fully_connected/weights/read:024valueNet/fully_connected/weights/Initializer/mul_1:08
�
!valueNet/fully_connected/biases:0&valueNet/fully_connected/biases/Assign&valueNet/fully_connected/biases/read:023valueNet/fully_connected/biases/Initializer/zeros:08
�
$valueNet/fully_connected_1/weights:0)valueNet/fully_connected_1/weights/Assign)valueNet/fully_connected_1/weights/read:026valueNet/fully_connected_1/weights/Initializer/mul_1:08
�
#valueNet/fully_connected_1/biases:0(valueNet/fully_connected_1/biases/Assign(valueNet/fully_connected_1/biases/read:025valueNet/fully_connected_1/biases/Initializer/zeros:08
�
$valueNet/fully_connected_2/weights:0)valueNet/fully_connected_2/weights/Assign)valueNet/fully_connected_2/weights/read:026valueNet/fully_connected_2/weights/Initializer/mul_1:08
�
#valueNet/fully_connected_2/biases:0(valueNet/fully_connected_2/biases/Assign(valueNet/fully_connected_2/biases/read:025valueNet/fully_connected_2/biases/Initializer/zeros:08
�
$valueNet/fully_connected_3/weights:0)valueNet/fully_connected_3/weights/Assign)valueNet/fully_connected_3/weights/read:02?valueNet/fully_connected_3/weights/Initializer/random_uniform:08
�
#valueNet/fully_connected_3/biases:0(valueNet/fully_connected_3/biases/Assign(valueNet/fully_connected_3/biases/read:025valueNet/fully_connected_3/biases/Initializer/Const:08"�
trainable_variables��
�
'extra_encoder/fully_connected/weights:0,extra_encoder/fully_connected/weights/Assign,extra_encoder/fully_connected/weights/read:02Bextra_encoder/fully_connected/weights/Initializer/random_uniform:08
�
&extra_encoder/fully_connected/biases:0+extra_encoder/fully_connected/biases/Assign+extra_encoder/fully_connected/biases/read:028extra_encoder/fully_connected/biases/Initializer/Const:08
�
 policy/fully_connected/weights:0%policy/fully_connected/weights/Assign%policy/fully_connected/weights/read:022policy/fully_connected/weights/Initializer/mul_1:08
�
policy/fully_connected/biases:0$policy/fully_connected/biases/Assign$policy/fully_connected/biases/read:021policy/fully_connected/biases/Initializer/zeros:08
�
"policy/fully_connected_1/weights:0'policy/fully_connected_1/weights/Assign'policy/fully_connected_1/weights/read:024policy/fully_connected_1/weights/Initializer/mul_1:08
�
!policy/fully_connected_1/biases:0&policy/fully_connected_1/biases/Assign&policy/fully_connected_1/biases/read:023policy/fully_connected_1/biases/Initializer/zeros:08
�
"policy/fully_connected_2/weights:0'policy/fully_connected_2/weights/Assign'policy/fully_connected_2/weights/read:024policy/fully_connected_2/weights/Initializer/mul_1:08
�
!policy/fully_connected_2/biases:0&policy/fully_connected_2/biases/Assign&policy/fully_connected_2/biases/read:023policy/fully_connected_2/biases/Initializer/zeros:08
�
"policy/fully_connected_3/weights:0'policy/fully_connected_3/weights/Assign'policy/fully_connected_3/weights/read:02=policy/fully_connected_3/weights/Initializer/random_uniform:08
�
!policy/fully_connected_3/biases:0&policy/fully_connected_3/biases/Assign&policy/fully_connected_3/biases/read:023policy/fully_connected_3/biases/Initializer/Const:08
�
policy/stdevconcatOutput/W:0!policy/stdevconcatOutput/W/Assign!policy/stdevconcatOutput/W/read:02 policy/stdevconcatOutput/zeros:08
�
"valueNet/fully_connected/weights:0'valueNet/fully_connected/weights/Assign'valueNet/fully_connected/weights/read:024valueNet/fully_connected/weights/Initializer/mul_1:08
�
!valueNet/fully_connected/biases:0&valueNet/fully_connected/biases/Assign&valueNet/fully_connected/biases/read:023valueNet/fully_connected/biases/Initializer/zeros:08
�
$valueNet/fully_connected_1/weights:0)valueNet/fully_connected_1/weights/Assign)valueNet/fully_connected_1/weights/read:026valueNet/fully_connected_1/weights/Initializer/mul_1:08
�
#valueNet/fully_connected_1/biases:0(valueNet/fully_connected_1/biases/Assign(valueNet/fully_connected_1/biases/read:025valueNet/fully_connected_1/biases/Initializer/zeros:08
�
$valueNet/fully_connected_2/weights:0)valueNet/fully_connected_2/weights/Assign)valueNet/fully_connected_2/weights/read:026valueNet/fully_connected_2/weights/Initializer/mul_1:08
�
#valueNet/fully_connected_2/biases:0(valueNet/fully_connected_2/biases/Assign(valueNet/fully_connected_2/biases/read:025valueNet/fully_connected_2/biases/Initializer/zeros:08
�
$valueNet/fully_connected_3/weights:0)valueNet/fully_connected_3/weights/Assign)valueNet/fully_connected_3/weights/read:02?valueNet/fully_connected_3/weights/Initializer/random_uniform:08
�
#valueNet/fully_connected_3/biases:0(valueNet/fully_connected_3/biases/Assign(valueNet/fully_connected_3/biases/read:025valueNet/fully_connected_3/biases/Initializer/Const:08"�
train_op�

dagger/solver
dagger/solver_masked
dagger/feature_solver_summed
#dagger/feature_solver_summed_masked
dagger/feature_solver"�Q
	variables�Q�Q
�
'extra_encoder/fully_connected/weights:0,extra_encoder/fully_connected/weights/Assign,extra_encoder/fully_connected/weights/read:02Bextra_encoder/fully_connected/weights/Initializer/random_uniform:08
�
&extra_encoder/fully_connected/biases:0+extra_encoder/fully_connected/biases/Assign+extra_encoder/fully_connected/biases/read:028extra_encoder/fully_connected/biases/Initializer/Const:08
�
 policy/fully_connected/weights:0%policy/fully_connected/weights/Assign%policy/fully_connected/weights/read:022policy/fully_connected/weights/Initializer/mul_1:08
�
policy/fully_connected/biases:0$policy/fully_connected/biases/Assign$policy/fully_connected/biases/read:021policy/fully_connected/biases/Initializer/zeros:08
�
"policy/fully_connected_1/weights:0'policy/fully_connected_1/weights/Assign'policy/fully_connected_1/weights/read:024policy/fully_connected_1/weights/Initializer/mul_1:08
�
!policy/fully_connected_1/biases:0&policy/fully_connected_1/biases/Assign&policy/fully_connected_1/biases/read:023policy/fully_connected_1/biases/Initializer/zeros:08
�
"policy/fully_connected_2/weights:0'policy/fully_connected_2/weights/Assign'policy/fully_connected_2/weights/read:024policy/fully_connected_2/weights/Initializer/mul_1:08
�
!policy/fully_connected_2/biases:0&policy/fully_connected_2/biases/Assign&policy/fully_connected_2/biases/read:023policy/fully_connected_2/biases/Initializer/zeros:08
�
"policy/fully_connected_3/weights:0'policy/fully_connected_3/weights/Assign'policy/fully_connected_3/weights/read:02=policy/fully_connected_3/weights/Initializer/random_uniform:08
�
!policy/fully_connected_3/biases:0&policy/fully_connected_3/biases/Assign&policy/fully_connected_3/biases/read:023policy/fully_connected_3/biases/Initializer/Const:08
�
policy/stdevconcatOutput/W:0!policy/stdevconcatOutput/W/Assign!policy/stdevconcatOutput/W/read:02 policy/stdevconcatOutput/zeros:08
�
"valueNet/fully_connected/weights:0'valueNet/fully_connected/weights/Assign'valueNet/fully_connected/weights/read:024valueNet/fully_connected/weights/Initializer/mul_1:08
�
!valueNet/fully_connected/biases:0&valueNet/fully_connected/biases/Assign&valueNet/fully_connected/biases/read:023valueNet/fully_connected/biases/Initializer/zeros:08
�
$valueNet/fully_connected_1/weights:0)valueNet/fully_connected_1/weights/Assign)valueNet/fully_connected_1/weights/read:026valueNet/fully_connected_1/weights/Initializer/mul_1:08
�
#valueNet/fully_connected_1/biases:0(valueNet/fully_connected_1/biases/Assign(valueNet/fully_connected_1/biases/read:025valueNet/fully_connected_1/biases/Initializer/zeros:08
�
$valueNet/fully_connected_2/weights:0)valueNet/fully_connected_2/weights/Assign)valueNet/fully_connected_2/weights/read:026valueNet/fully_connected_2/weights/Initializer/mul_1:08
�
#valueNet/fully_connected_2/biases:0(valueNet/fully_connected_2/biases/Assign(valueNet/fully_connected_2/biases/read:025valueNet/fully_connected_2/biases/Initializer/zeros:08
�
$valueNet/fully_connected_3/weights:0)valueNet/fully_connected_3/weights/Assign)valueNet/fully_connected_3/weights/read:02?valueNet/fully_connected_3/weights/Initializer/random_uniform:08
�
#valueNet/fully_connected_3/biases:0(valueNet/fully_connected_3/biases/Assign(valueNet/fully_connected_3/biases/read:025valueNet/fully_connected_3/biases/Initializer/Const:08
T
global_step:0global_step/Assignglobal_step/read:02global_step/initial_value:0
�
trainingOptions/max_grad_norm:0$trainingOptions/max_grad_norm/Assign$trainingOptions/max_grad_norm/read:02trainingOptions/Const:0
s
trainingOptions/InitLR:0trainingOptions/InitLR/AssigntrainingOptions/InitLR/read:02trainingOptions/Const_1:0
p
trainingOptions/MinLR:0trainingOptions/MinLR/AssigntrainingOptions/MinLR/read:02trainingOptions/Const_2:0
�
trainingOptions/DecayRateLR:0"trainingOptions/DecayRateLR/Assign"trainingOptions/DecayRateLR/read:02trainingOptions/Const_3:0
�
trainingOptions/DecayStepLR:0"trainingOptions/DecayStepLR/Assign"trainingOptions/DecayStepLR/read:02trainingOptions/Const_4:0
�
trainingOptions/dropout_rate:0#trainingOptions/dropout_rate/Assign#trainingOptions/dropout_rate/read:02trainingOptions/Const_5:0
9

ClipRate:0ClipRate/AssignClipRate/read:02	Const_5:0
H
ValueClipRate:0ValueClipRate/AssignValueClipRate/read:02	Const_6:0
E
EntropyParam:0EntropyParam/AssignEntropyParam/read:02	Const_7:0
_
dagger/learningRate:0dagger/learningRate/Assigndagger/learningRate/read:02dagger/Const:0
^
dagger/DecayRateLR:0dagger/DecayRateLR/Assigndagger/DecayRateLR/read:02dagger/Const_1:0
^
dagger/DecayStepLR:0dagger/DecayStepLR/Assigndagger/DecayStepLR/read:02dagger/Const_2:0
p
dagger/global_step:0dagger/global_step/Assigndagger/global_step/read:02"dagger/global_step/initial_value:0
a
dagger/dagger_coeff:0dagger/dagger_coeff/Assigndagger/dagger_coeff/read:02dagger/Const_3:0
p
dagger/beta1_power:0dagger/beta1_power/Assigndagger/beta1_power/read:02"dagger/beta1_power/initial_value:0
p
dagger/beta2_power:0dagger/beta2_power/Assigndagger/beta2_power/read:02"dagger/beta2_power/initial_value:0
�
,extra_encoder/fully_connected/weights/Adam:01extra_encoder/fully_connected/weights/Adam/Assign1extra_encoder/fully_connected/weights/Adam/read:02>extra_encoder/fully_connected/weights/Adam/Initializer/zeros:0
�
.extra_encoder/fully_connected/weights/Adam_1:03extra_encoder/fully_connected/weights/Adam_1/Assign3extra_encoder/fully_connected/weights/Adam_1/read:02@extra_encoder/fully_connected/weights/Adam_1/Initializer/zeros:0
�
+extra_encoder/fully_connected/biases/Adam:00extra_encoder/fully_connected/biases/Adam/Assign0extra_encoder/fully_connected/biases/Adam/read:02=extra_encoder/fully_connected/biases/Adam/Initializer/zeros:0
�
-extra_encoder/fully_connected/biases/Adam_1:02extra_encoder/fully_connected/biases/Adam_1/Assign2extra_encoder/fully_connected/biases/Adam_1/read:02?extra_encoder/fully_connected/biases/Adam_1/Initializer/zeros:0
�
%policy/fully_connected/weights/Adam:0*policy/fully_connected/weights/Adam/Assign*policy/fully_connected/weights/Adam/read:027policy/fully_connected/weights/Adam/Initializer/zeros:0
�
'policy/fully_connected/weights/Adam_1:0,policy/fully_connected/weights/Adam_1/Assign,policy/fully_connected/weights/Adam_1/read:029policy/fully_connected/weights/Adam_1/Initializer/zeros:0
�
$policy/fully_connected/biases/Adam:0)policy/fully_connected/biases/Adam/Assign)policy/fully_connected/biases/Adam/read:026policy/fully_connected/biases/Adam/Initializer/zeros:0
�
&policy/fully_connected/biases/Adam_1:0+policy/fully_connected/biases/Adam_1/Assign+policy/fully_connected/biases/Adam_1/read:028policy/fully_connected/biases/Adam_1/Initializer/zeros:0
�
'policy/fully_connected_1/weights/Adam:0,policy/fully_connected_1/weights/Adam/Assign,policy/fully_connected_1/weights/Adam/read:029policy/fully_connected_1/weights/Adam/Initializer/zeros:0
�
)policy/fully_connected_1/weights/Adam_1:0.policy/fully_connected_1/weights/Adam_1/Assign.policy/fully_connected_1/weights/Adam_1/read:02;policy/fully_connected_1/weights/Adam_1/Initializer/zeros:0
�
&policy/fully_connected_1/biases/Adam:0+policy/fully_connected_1/biases/Adam/Assign+policy/fully_connected_1/biases/Adam/read:028policy/fully_connected_1/biases/Adam/Initializer/zeros:0
�
(policy/fully_connected_1/biases/Adam_1:0-policy/fully_connected_1/biases/Adam_1/Assign-policy/fully_connected_1/biases/Adam_1/read:02:policy/fully_connected_1/biases/Adam_1/Initializer/zeros:0
�
'policy/fully_connected_2/weights/Adam:0,policy/fully_connected_2/weights/Adam/Assign,policy/fully_connected_2/weights/Adam/read:029policy/fully_connected_2/weights/Adam/Initializer/zeros:0
�
)policy/fully_connected_2/weights/Adam_1:0.policy/fully_connected_2/weights/Adam_1/Assign.policy/fully_connected_2/weights/Adam_1/read:02;policy/fully_connected_2/weights/Adam_1/Initializer/zeros:0
�
&policy/fully_connected_2/biases/Adam:0+policy/fully_connected_2/biases/Adam/Assign+policy/fully_connected_2/biases/Adam/read:028policy/fully_connected_2/biases/Adam/Initializer/zeros:0
�
(policy/fully_connected_2/biases/Adam_1:0-policy/fully_connected_2/biases/Adam_1/Assign-policy/fully_connected_2/biases/Adam_1/read:02:policy/fully_connected_2/biases/Adam_1/Initializer/zeros:0
�
'policy/fully_connected_3/weights/Adam:0,policy/fully_connected_3/weights/Adam/Assign,policy/fully_connected_3/weights/Adam/read:029policy/fully_connected_3/weights/Adam/Initializer/zeros:0
�
)policy/fully_connected_3/weights/Adam_1:0.policy/fully_connected_3/weights/Adam_1/Assign.policy/fully_connected_3/weights/Adam_1/read:02;policy/fully_connected_3/weights/Adam_1/Initializer/zeros:0
�
&policy/fully_connected_3/biases/Adam:0+policy/fully_connected_3/biases/Adam/Assign+policy/fully_connected_3/biases/Adam/read:028policy/fully_connected_3/biases/Adam/Initializer/zeros:0
�
(policy/fully_connected_3/biases/Adam_1:0-policy/fully_connected_3/biases/Adam_1/Assign-policy/fully_connected_3/biases/Adam_1/read:02:policy/fully_connected_3/biases/Adam_1/Initializer/zeros:0
�
'valueNet/fully_connected/weights/Adam:0,valueNet/fully_connected/weights/Adam/Assign,valueNet/fully_connected/weights/Adam/read:029valueNet/fully_connected/weights/Adam/Initializer/zeros:0
�
)valueNet/fully_connected/weights/Adam_1:0.valueNet/fully_connected/weights/Adam_1/Assign.valueNet/fully_connected/weights/Adam_1/read:02;valueNet/fully_connected/weights/Adam_1/Initializer/zeros:0
�
)valueNet/fully_connected_1/weights/Adam:0.valueNet/fully_connected_1/weights/Adam/Assign.valueNet/fully_connected_1/weights/Adam/read:02;valueNet/fully_connected_1/weights/Adam/Initializer/zeros:0
�
+valueNet/fully_connected_1/weights/Adam_1:00valueNet/fully_connected_1/weights/Adam_1/Assign0valueNet/fully_connected_1/weights/Adam_1/read:02=valueNet/fully_connected_1/weights/Adam_1/Initializer/zeros:0
�
)valueNet/fully_connected_2/weights/Adam:0.valueNet/fully_connected_2/weights/Adam/Assign.valueNet/fully_connected_2/weights/Adam/read:02;valueNet/fully_connected_2/weights/Adam/Initializer/zeros:0
�
+valueNet/fully_connected_2/weights/Adam_1:00valueNet/fully_connected_2/weights/Adam_1/Assign0valueNet/fully_connected_2/weights/Adam_1/read:02=valueNet/fully_connected_2/weights/Adam_1/Initializer/zeros:0