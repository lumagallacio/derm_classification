�7
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
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
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.13.12v2.13.0-17-gf841394b1b78ҩ/
�
random_zoom_2/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*'
shared_namerandom_zoom_2/StateVar
}
*random_zoom_2/StateVar/Read/ReadVariableOpReadVariableOprandom_zoom_2/StateVar*
_output_shapes
:*
dtype0	
�
random_rotation_2/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*+
shared_namerandom_rotation_2/StateVar
�
.random_rotation_2/StateVar/Read/ReadVariableOpReadVariableOprandom_rotation_2/StateVar*
_output_shapes
:*
dtype0	
�
random_flip_2/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*'
shared_namerandom_flip_2/StateVar
}
*random_flip_2/StateVar/Read/ReadVariableOpReadVariableOprandom_flip_2/StateVar*
_output_shapes
:*
dtype0	
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
�
Adam/v/Final_Dense2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/v/Final_Dense2/bias
�
,Adam/v/Final_Dense2/bias/Read/ReadVariableOpReadVariableOpAdam/v/Final_Dense2/bias*
_output_shapes
:*
dtype0
�
Adam/m/Final_Dense2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/m/Final_Dense2/bias
�
,Adam/m/Final_Dense2/bias/Read/ReadVariableOpReadVariableOpAdam/m/Final_Dense2/bias*
_output_shapes
:*
dtype0
�
Adam/v/Final_Dense2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*+
shared_nameAdam/v/Final_Dense2/kernel
�
.Adam/v/Final_Dense2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/Final_Dense2/kernel*
_output_shapes

:*
dtype0
�
Adam/m/Final_Dense2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*+
shared_nameAdam/m/Final_Dense2/kernel
�
.Adam/m/Final_Dense2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/Final_Dense2/kernel*
_output_shapes

:*
dtype0
�
Adam/v/Final_BN/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/Final_BN/beta
y
(Adam/v/Final_BN/beta/Read/ReadVariableOpReadVariableOpAdam/v/Final_BN/beta*
_output_shapes
:*
dtype0
�
Adam/m/Final_BN/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/Final_BN/beta
y
(Adam/m/Final_BN/beta/Read/ReadVariableOpReadVariableOpAdam/m/Final_BN/beta*
_output_shapes
:*
dtype0
�
Adam/v/Final_BN/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/v/Final_BN/gamma
{
)Adam/v/Final_BN/gamma/Read/ReadVariableOpReadVariableOpAdam/v/Final_BN/gamma*
_output_shapes
:*
dtype0
�
Adam/m/Final_BN/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/m/Final_BN/gamma
{
)Adam/m/Final_BN/gamma/Read/ReadVariableOpReadVariableOpAdam/m/Final_BN/gamma*
_output_shapes
:*
dtype0
�
Adam/v/Final_Dense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/v/Final_Dense1/bias
�
,Adam/v/Final_Dense1/bias/Read/ReadVariableOpReadVariableOpAdam/v/Final_Dense1/bias*
_output_shapes
:*
dtype0
�
Adam/m/Final_Dense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/m/Final_Dense1/bias
�
,Adam/m/Final_Dense1/bias/Read/ReadVariableOpReadVariableOpAdam/m/Final_Dense1/bias*
_output_shapes
:*
dtype0
�
Adam/v/Final_Dense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*+
shared_nameAdam/v/Final_Dense1/kernel
�
.Adam/v/Final_Dense1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/Final_Dense1/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/Final_Dense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*+
shared_nameAdam/m/Final_Dense1/kernel
�
.Adam/m/Final_Dense1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/Final_Dense1/kernel* 
_output_shapes
:
��*
dtype0
|
Adam/v/B2_BN2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/v/B2_BN2/beta
u
&Adam/v/B2_BN2/beta/Read/ReadVariableOpReadVariableOpAdam/v/B2_BN2/beta*
_output_shapes
:@*
dtype0
|
Adam/m/B2_BN2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/m/B2_BN2/beta
u
&Adam/m/B2_BN2/beta/Read/ReadVariableOpReadVariableOpAdam/m/B2_BN2/beta*
_output_shapes
:@*
dtype0
~
Adam/v/B2_BN2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/v/B2_BN2/gamma
w
'Adam/v/B2_BN2/gamma/Read/ReadVariableOpReadVariableOpAdam/v/B2_BN2/gamma*
_output_shapes
:@*
dtype0
~
Adam/m/B2_BN2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/m/B2_BN2/gamma
w
'Adam/m/B2_BN2/gamma/Read/ReadVariableOpReadVariableOpAdam/m/B2_BN2/gamma*
_output_shapes
:@*
dtype0
�
Adam/v/B2_Conv2d2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/v/B2_Conv2d2/bias
}
*Adam/v/B2_Conv2d2/bias/Read/ReadVariableOpReadVariableOpAdam/v/B2_Conv2d2/bias*
_output_shapes
:@*
dtype0
�
Adam/m/B2_Conv2d2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/m/B2_Conv2d2/bias
}
*Adam/m/B2_Conv2d2/bias/Read/ReadVariableOpReadVariableOpAdam/m/B2_Conv2d2/bias*
_output_shapes
:@*
dtype0
�
Adam/v/B2_Conv2d2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/v/B2_Conv2d2/kernel
�
,Adam/v/B2_Conv2d2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/B2_Conv2d2/kernel*&
_output_shapes
:@@*
dtype0
�
Adam/m/B2_Conv2d2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*)
shared_nameAdam/m/B2_Conv2d2/kernel
�
,Adam/m/B2_Conv2d2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/B2_Conv2d2/kernel*&
_output_shapes
:@@*
dtype0
|
Adam/v/B2_BN1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/v/B2_BN1/beta
u
&Adam/v/B2_BN1/beta/Read/ReadVariableOpReadVariableOpAdam/v/B2_BN1/beta*
_output_shapes
:@*
dtype0
|
Adam/m/B2_BN1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/m/B2_BN1/beta
u
&Adam/m/B2_BN1/beta/Read/ReadVariableOpReadVariableOpAdam/m/B2_BN1/beta*
_output_shapes
:@*
dtype0
~
Adam/v/B2_BN1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/v/B2_BN1/gamma
w
'Adam/v/B2_BN1/gamma/Read/ReadVariableOpReadVariableOpAdam/v/B2_BN1/gamma*
_output_shapes
:@*
dtype0
~
Adam/m/B2_BN1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/m/B2_BN1/gamma
w
'Adam/m/B2_BN1/gamma/Read/ReadVariableOpReadVariableOpAdam/m/B2_BN1/gamma*
_output_shapes
:@*
dtype0
�
Adam/v/B2_Conv2d1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/v/B2_Conv2d1/bias
}
*Adam/v/B2_Conv2d1/bias/Read/ReadVariableOpReadVariableOpAdam/v/B2_Conv2d1/bias*
_output_shapes
:@*
dtype0
�
Adam/m/B2_Conv2d1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/m/B2_Conv2d1/bias
}
*Adam/m/B2_Conv2d1/bias/Read/ReadVariableOpReadVariableOpAdam/m/B2_Conv2d1/bias*
_output_shapes
:@*
dtype0
�
Adam/v/B2_Conv2d1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/v/B2_Conv2d1/kernel
�
,Adam/v/B2_Conv2d1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/B2_Conv2d1/kernel*&
_output_shapes
: @*
dtype0
�
Adam/m/B2_Conv2d1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*)
shared_nameAdam/m/B2_Conv2d1/kernel
�
,Adam/m/B2_Conv2d1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/B2_Conv2d1/kernel*&
_output_shapes
: @*
dtype0
|
Adam/v/B1_BN2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/v/B1_BN2/beta
u
&Adam/v/B1_BN2/beta/Read/ReadVariableOpReadVariableOpAdam/v/B1_BN2/beta*
_output_shapes
: *
dtype0
|
Adam/m/B1_BN2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/m/B1_BN2/beta
u
&Adam/m/B1_BN2/beta/Read/ReadVariableOpReadVariableOpAdam/m/B1_BN2/beta*
_output_shapes
: *
dtype0
~
Adam/v/B1_BN2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/v/B1_BN2/gamma
w
'Adam/v/B1_BN2/gamma/Read/ReadVariableOpReadVariableOpAdam/v/B1_BN2/gamma*
_output_shapes
: *
dtype0
~
Adam/m/B1_BN2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/m/B1_BN2/gamma
w
'Adam/m/B1_BN2/gamma/Read/ReadVariableOpReadVariableOpAdam/m/B1_BN2/gamma*
_output_shapes
: *
dtype0
�
Adam/v/B1_Conv2d2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/v/B1_Conv2d2/bias
}
*Adam/v/B1_Conv2d2/bias/Read/ReadVariableOpReadVariableOpAdam/v/B1_Conv2d2/bias*
_output_shapes
: *
dtype0
�
Adam/m/B1_Conv2d2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/m/B1_Conv2d2/bias
}
*Adam/m/B1_Conv2d2/bias/Read/ReadVariableOpReadVariableOpAdam/m/B1_Conv2d2/bias*
_output_shapes
: *
dtype0
�
Adam/v/B1_Conv2d2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/v/B1_Conv2d2/kernel
�
,Adam/v/B1_Conv2d2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/B1_Conv2d2/kernel*&
_output_shapes
:  *
dtype0
�
Adam/m/B1_Conv2d2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameAdam/m/B1_Conv2d2/kernel
�
,Adam/m/B1_Conv2d2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/B1_Conv2d2/kernel*&
_output_shapes
:  *
dtype0
|
Adam/v/B1_BN1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/v/B1_BN1/beta
u
&Adam/v/B1_BN1/beta/Read/ReadVariableOpReadVariableOpAdam/v/B1_BN1/beta*
_output_shapes
: *
dtype0
|
Adam/m/B1_BN1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/m/B1_BN1/beta
u
&Adam/m/B1_BN1/beta/Read/ReadVariableOpReadVariableOpAdam/m/B1_BN1/beta*
_output_shapes
: *
dtype0
~
Adam/v/B1_BN1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/v/B1_BN1/gamma
w
'Adam/v/B1_BN1/gamma/Read/ReadVariableOpReadVariableOpAdam/v/B1_BN1/gamma*
_output_shapes
: *
dtype0
~
Adam/m/B1_BN1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/m/B1_BN1/gamma
w
'Adam/m/B1_BN1/gamma/Read/ReadVariableOpReadVariableOpAdam/m/B1_BN1/gamma*
_output_shapes
: *
dtype0
�
Adam/v/B1_Conv2d1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/v/B1_Conv2d1/bias
}
*Adam/v/B1_Conv2d1/bias/Read/ReadVariableOpReadVariableOpAdam/v/B1_Conv2d1/bias*
_output_shapes
: *
dtype0
�
Adam/m/B1_Conv2d1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/m/B1_Conv2d1/bias
}
*Adam/m/B1_Conv2d1/bias/Read/ReadVariableOpReadVariableOpAdam/m/B1_Conv2d1/bias*
_output_shapes
: *
dtype0
�
Adam/v/B1_Conv2d1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/v/B1_Conv2d1/kernel
�
,Adam/v/B1_Conv2d1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/B1_Conv2d1/kernel*&
_output_shapes
: *
dtype0
�
Adam/m/B1_Conv2d1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/m/B1_Conv2d1/kernel
�
,Adam/m/B1_Conv2d1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/B1_Conv2d1/kernel*&
_output_shapes
: *
dtype0
|
Adam/v/B0_BN2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/v/B0_BN2/beta
u
&Adam/v/B0_BN2/beta/Read/ReadVariableOpReadVariableOpAdam/v/B0_BN2/beta*
_output_shapes
:*
dtype0
|
Adam/m/B0_BN2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/m/B0_BN2/beta
u
&Adam/m/B0_BN2/beta/Read/ReadVariableOpReadVariableOpAdam/m/B0_BN2/beta*
_output_shapes
:*
dtype0
~
Adam/v/B0_BN2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/B0_BN2/gamma
w
'Adam/v/B0_BN2/gamma/Read/ReadVariableOpReadVariableOpAdam/v/B0_BN2/gamma*
_output_shapes
:*
dtype0
~
Adam/m/B0_BN2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/B0_BN2/gamma
w
'Adam/m/B0_BN2/gamma/Read/ReadVariableOpReadVariableOpAdam/m/B0_BN2/gamma*
_output_shapes
:*
dtype0
�
Adam/v/B0_Conv2d2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/v/B0_Conv2d2/bias
}
*Adam/v/B0_Conv2d2/bias/Read/ReadVariableOpReadVariableOpAdam/v/B0_Conv2d2/bias*
_output_shapes
:*
dtype0
�
Adam/m/B0_Conv2d2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/m/B0_Conv2d2/bias
}
*Adam/m/B0_Conv2d2/bias/Read/ReadVariableOpReadVariableOpAdam/m/B0_Conv2d2/bias*
_output_shapes
:*
dtype0
�
Adam/v/B0_Conv2d2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/v/B0_Conv2d2/kernel
�
,Adam/v/B0_Conv2d2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/B0_Conv2d2/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/B0_Conv2d2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/m/B0_Conv2d2/kernel
�
,Adam/m/B0_Conv2d2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/B0_Conv2d2/kernel*&
_output_shapes
:*
dtype0
|
Adam/v/B0_BN1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/v/B0_BN1/beta
u
&Adam/v/B0_BN1/beta/Read/ReadVariableOpReadVariableOpAdam/v/B0_BN1/beta*
_output_shapes
:*
dtype0
|
Adam/m/B0_BN1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/m/B0_BN1/beta
u
&Adam/m/B0_BN1/beta/Read/ReadVariableOpReadVariableOpAdam/m/B0_BN1/beta*
_output_shapes
:*
dtype0
~
Adam/v/B0_BN1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/B0_BN1/gamma
w
'Adam/v/B0_BN1/gamma/Read/ReadVariableOpReadVariableOpAdam/v/B0_BN1/gamma*
_output_shapes
:*
dtype0
~
Adam/m/B0_BN1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/B0_BN1/gamma
w
'Adam/m/B0_BN1/gamma/Read/ReadVariableOpReadVariableOpAdam/m/B0_BN1/gamma*
_output_shapes
:*
dtype0
�
Adam/v/B0_Conv2d1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/v/B0_Conv2d1/bias
}
*Adam/v/B0_Conv2d1/bias/Read/ReadVariableOpReadVariableOpAdam/v/B0_Conv2d1/bias*
_output_shapes
:*
dtype0
�
Adam/m/B0_Conv2d1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/m/B0_Conv2d1/bias
}
*Adam/m/B0_Conv2d1/bias/Read/ReadVariableOpReadVariableOpAdam/m/B0_Conv2d1/bias*
_output_shapes
:*
dtype0
�
Adam/v/B0_Conv2d1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/v/B0_Conv2d1/kernel
�
,Adam/v/B0_Conv2d1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/B0_Conv2d1/kernel*&
_output_shapes
:*
dtype0
�
Adam/m/B0_Conv2d1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/m/B0_Conv2d1/kernel
�
,Adam/m/B0_Conv2d1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/B0_Conv2d1/kernel*&
_output_shapes
:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
z
Final_Dense2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameFinal_Dense2/bias
s
%Final_Dense2/bias/Read/ReadVariableOpReadVariableOpFinal_Dense2/bias*
_output_shapes
:*
dtype0
�
Final_Dense2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameFinal_Dense2/kernel
{
'Final_Dense2/kernel/Read/ReadVariableOpReadVariableOpFinal_Dense2/kernel*
_output_shapes

:*
dtype0
�
Final_BN/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameFinal_BN/moving_variance
�
,Final_BN/moving_variance/Read/ReadVariableOpReadVariableOpFinal_BN/moving_variance*
_output_shapes
:*
dtype0
�
Final_BN/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameFinal_BN/moving_mean
y
(Final_BN/moving_mean/Read/ReadVariableOpReadVariableOpFinal_BN/moving_mean*
_output_shapes
:*
dtype0
r
Final_BN/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameFinal_BN/beta
k
!Final_BN/beta/Read/ReadVariableOpReadVariableOpFinal_BN/beta*
_output_shapes
:*
dtype0
t
Final_BN/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameFinal_BN/gamma
m
"Final_BN/gamma/Read/ReadVariableOpReadVariableOpFinal_BN/gamma*
_output_shapes
:*
dtype0
z
Final_Dense1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameFinal_Dense1/bias
s
%Final_Dense1/bias/Read/ReadVariableOpReadVariableOpFinal_Dense1/bias*
_output_shapes
:*
dtype0
�
Final_Dense1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*$
shared_nameFinal_Dense1/kernel
}
'Final_Dense1/kernel/Read/ReadVariableOpReadVariableOpFinal_Dense1/kernel* 
_output_shapes
:
��*
dtype0
�
B2_BN2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameB2_BN2/moving_variance
}
*B2_BN2/moving_variance/Read/ReadVariableOpReadVariableOpB2_BN2/moving_variance*
_output_shapes
:@*
dtype0
|
B2_BN2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameB2_BN2/moving_mean
u
&B2_BN2/moving_mean/Read/ReadVariableOpReadVariableOpB2_BN2/moving_mean*
_output_shapes
:@*
dtype0
n
B2_BN2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameB2_BN2/beta
g
B2_BN2/beta/Read/ReadVariableOpReadVariableOpB2_BN2/beta*
_output_shapes
:@*
dtype0
p
B2_BN2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameB2_BN2/gamma
i
 B2_BN2/gamma/Read/ReadVariableOpReadVariableOpB2_BN2/gamma*
_output_shapes
:@*
dtype0
v
B2_Conv2d2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameB2_Conv2d2/bias
o
#B2_Conv2d2/bias/Read/ReadVariableOpReadVariableOpB2_Conv2d2/bias*
_output_shapes
:@*
dtype0
�
B2_Conv2d2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*"
shared_nameB2_Conv2d2/kernel

%B2_Conv2d2/kernel/Read/ReadVariableOpReadVariableOpB2_Conv2d2/kernel*&
_output_shapes
:@@*
dtype0
�
B2_BN1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameB2_BN1/moving_variance
}
*B2_BN1/moving_variance/Read/ReadVariableOpReadVariableOpB2_BN1/moving_variance*
_output_shapes
:@*
dtype0
|
B2_BN1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameB2_BN1/moving_mean
u
&B2_BN1/moving_mean/Read/ReadVariableOpReadVariableOpB2_BN1/moving_mean*
_output_shapes
:@*
dtype0
n
B2_BN1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameB2_BN1/beta
g
B2_BN1/beta/Read/ReadVariableOpReadVariableOpB2_BN1/beta*
_output_shapes
:@*
dtype0
p
B2_BN1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameB2_BN1/gamma
i
 B2_BN1/gamma/Read/ReadVariableOpReadVariableOpB2_BN1/gamma*
_output_shapes
:@*
dtype0
v
B2_Conv2d1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameB2_Conv2d1/bias
o
#B2_Conv2d1/bias/Read/ReadVariableOpReadVariableOpB2_Conv2d1/bias*
_output_shapes
:@*
dtype0
�
B2_Conv2d1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*"
shared_nameB2_Conv2d1/kernel

%B2_Conv2d1/kernel/Read/ReadVariableOpReadVariableOpB2_Conv2d1/kernel*&
_output_shapes
: @*
dtype0
�
B1_BN2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameB1_BN2/moving_variance
}
*B1_BN2/moving_variance/Read/ReadVariableOpReadVariableOpB1_BN2/moving_variance*
_output_shapes
: *
dtype0
|
B1_BN2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameB1_BN2/moving_mean
u
&B1_BN2/moving_mean/Read/ReadVariableOpReadVariableOpB1_BN2/moving_mean*
_output_shapes
: *
dtype0
n
B1_BN2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameB1_BN2/beta
g
B1_BN2/beta/Read/ReadVariableOpReadVariableOpB1_BN2/beta*
_output_shapes
: *
dtype0
p
B1_BN2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameB1_BN2/gamma
i
 B1_BN2/gamma/Read/ReadVariableOpReadVariableOpB1_BN2/gamma*
_output_shapes
: *
dtype0
v
B1_Conv2d2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameB1_Conv2d2/bias
o
#B1_Conv2d2/bias/Read/ReadVariableOpReadVariableOpB1_Conv2d2/bias*
_output_shapes
: *
dtype0
�
B1_Conv2d2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *"
shared_nameB1_Conv2d2/kernel

%B1_Conv2d2/kernel/Read/ReadVariableOpReadVariableOpB1_Conv2d2/kernel*&
_output_shapes
:  *
dtype0
�
B1_BN1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameB1_BN1/moving_variance
}
*B1_BN1/moving_variance/Read/ReadVariableOpReadVariableOpB1_BN1/moving_variance*
_output_shapes
: *
dtype0
|
B1_BN1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameB1_BN1/moving_mean
u
&B1_BN1/moving_mean/Read/ReadVariableOpReadVariableOpB1_BN1/moving_mean*
_output_shapes
: *
dtype0
n
B1_BN1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameB1_BN1/beta
g
B1_BN1/beta/Read/ReadVariableOpReadVariableOpB1_BN1/beta*
_output_shapes
: *
dtype0
p
B1_BN1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameB1_BN1/gamma
i
 B1_BN1/gamma/Read/ReadVariableOpReadVariableOpB1_BN1/gamma*
_output_shapes
: *
dtype0
v
B1_Conv2d1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameB1_Conv2d1/bias
o
#B1_Conv2d1/bias/Read/ReadVariableOpReadVariableOpB1_Conv2d1/bias*
_output_shapes
: *
dtype0
�
B1_Conv2d1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameB1_Conv2d1/kernel

%B1_Conv2d1/kernel/Read/ReadVariableOpReadVariableOpB1_Conv2d1/kernel*&
_output_shapes
: *
dtype0
�
B0_BN2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameB0_BN2/moving_variance
}
*B0_BN2/moving_variance/Read/ReadVariableOpReadVariableOpB0_BN2/moving_variance*
_output_shapes
:*
dtype0
|
B0_BN2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameB0_BN2/moving_mean
u
&B0_BN2/moving_mean/Read/ReadVariableOpReadVariableOpB0_BN2/moving_mean*
_output_shapes
:*
dtype0
n
B0_BN2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameB0_BN2/beta
g
B0_BN2/beta/Read/ReadVariableOpReadVariableOpB0_BN2/beta*
_output_shapes
:*
dtype0
p
B0_BN2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameB0_BN2/gamma
i
 B0_BN2/gamma/Read/ReadVariableOpReadVariableOpB0_BN2/gamma*
_output_shapes
:*
dtype0
v
B0_Conv2d2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameB0_Conv2d2/bias
o
#B0_Conv2d2/bias/Read/ReadVariableOpReadVariableOpB0_Conv2d2/bias*
_output_shapes
:*
dtype0
�
B0_Conv2d2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameB0_Conv2d2/kernel

%B0_Conv2d2/kernel/Read/ReadVariableOpReadVariableOpB0_Conv2d2/kernel*&
_output_shapes
:*
dtype0
�
B0_BN1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameB0_BN1/moving_variance
}
*B0_BN1/moving_variance/Read/ReadVariableOpReadVariableOpB0_BN1/moving_variance*
_output_shapes
:*
dtype0
|
B0_BN1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameB0_BN1/moving_mean
u
&B0_BN1/moving_mean/Read/ReadVariableOpReadVariableOpB0_BN1/moving_mean*
_output_shapes
:*
dtype0
n
B0_BN1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameB0_BN1/beta
g
B0_BN1/beta/Read/ReadVariableOpReadVariableOpB0_BN1/beta*
_output_shapes
:*
dtype0
p
B0_BN1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameB0_BN1/gamma
i
 B0_BN1/gamma/Read/ReadVariableOpReadVariableOpB0_BN1/gamma*
_output_shapes
:*
dtype0
v
B0_Conv2d1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameB0_Conv2d1/bias
o
#B0_Conv2d1/bias/Read/ReadVariableOpReadVariableOpB0_Conv2d1/bias*
_output_shapes
:*
dtype0
�
B0_Conv2d1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameB0_Conv2d1/kernel

%B0_Conv2d1/kernel/Read/ReadVariableOpReadVariableOpB0_Conv2d1/kernel*&
_output_shapes
:*
dtype0
�
'serving_default_data_augmentation_inputPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�	
StatefulPartitionedCallStatefulPartitionedCall'serving_default_data_augmentation_inputB0_Conv2d1/kernelB0_Conv2d1/biasB0_BN1/gammaB0_BN1/betaB0_BN1/moving_meanB0_BN1/moving_varianceB0_Conv2d2/kernelB0_Conv2d2/biasB0_BN2/gammaB0_BN2/betaB0_BN2/moving_meanB0_BN2/moving_varianceB1_Conv2d1/kernelB1_Conv2d1/biasB1_BN1/gammaB1_BN1/betaB1_BN1/moving_meanB1_BN1/moving_varianceB1_Conv2d2/kernelB1_Conv2d2/biasB1_BN2/gammaB1_BN2/betaB1_BN2/moving_meanB1_BN2/moving_varianceB2_Conv2d1/kernelB2_Conv2d1/biasB2_BN1/gammaB2_BN1/betaB2_BN1/moving_meanB2_BN1/moving_varianceB2_Conv2d2/kernelB2_Conv2d2/biasB2_BN2/gammaB2_BN2/betaB2_BN2/moving_meanB2_BN2/moving_varianceFinal_Dense1/kernelFinal_Dense1/biasFinal_BN/moving_varianceFinal_BN/gammaFinal_BN/moving_meanFinal_BN/betaFinal_Dense2/kernelFinal_Dense2/bias*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8� *.
f)R'
%__inference_signature_wrapper_4793590

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� Bܗ
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
�
layer-0
layer-1
layer-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer-6
layer_with_weights-4
layer-7
layer_with_weights-5
layer-8
 layer-9
!layer_with_weights-6
!layer-10
"layer_with_weights-7
"layer-11
#layer-12
$layer-13
%layer_with_weights-8
%layer-14
&layer_with_weights-9
&layer-15
'layer-16
(layer_with_weights-10
(layer-17
)layer_with_weights-11
)layer-18
*layer-19
+layer-20
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses*
�
2layer-0
3layer_with_weights-0
3layer-1
4layer_with_weights-1
4layer-2
5layer-3
6layer_with_weights-2
6layer-4
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses*
�
=0
>1
?2
@3
A4
B5
C6
D7
E8
F9
G10
H11
I12
J13
K14
L15
M16
N17
O18
P19
Q20
R21
S22
T23
U24
V25
W26
X27
Y28
Z29
[30
\31
]32
^33
_34
`35
a36
b37
c38
d39
e40
f41
g42
h43*
�
=0
>1
?2
@3
C4
D5
E6
F7
I8
J9
K10
L11
O12
P13
Q14
R15
U16
V17
W18
X19
[20
\21
]22
^23
a24
b25
c26
d27
g28
h29*
* 
�
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*

ntrace_0
otrace_1* 

ptrace_0
qtrace_1* 
* 
�
r
_variables
s_iterations
t_learning_rate
u_index_dict
v
_momentums
w_velocities
x_update_step_xla*

yserving_default* 
�
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

=kernel
>bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	?gamma
@beta
Amoving_mean
Bmoving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Ckernel
Dbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Egamma
Fbeta
Gmoving_mean
Hmoving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Ikernel
Jbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Kgamma
Lbeta
Mmoving_mean
Nmoving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Okernel
Pbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Qgamma
Rbeta
Smoving_mean
Tmoving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Ukernel
Vbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

[kernel
\bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	]gamma
^beta
_moving_mean
`moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
=0
>1
?2
@3
A4
B5
C6
D7
E8
F9
G10
H11
I12
J13
K14
L15
M16
N17
O18
P19
Q20
R21
S22
T23
U24
V25
W26
X27
Y28
Z29
[30
\31
]32
^33
_34
`35*
�
=0
>1
?2
@3
C4
D5
E6
F7
I8
J9
K10
L11
O12
P13
Q14
R15
U16
V17
W18
X19
[20
\21
]22
^23*
2
�0
�1
�2
�3
�4
�5* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

akernel
bbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	cgamma
dbeta
emoving_mean
fmoving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

gkernel
hbias*
<
a0
b1
c2
d3
e4
f5
g6
h7*
.
a0
b1
c2
d3
g4
h5*

�0
�1* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
QK
VARIABLE_VALUEB0_Conv2d1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEB0_Conv2d1/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEB0_BN1/gamma&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEB0_BN1/beta&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEB0_BN1/moving_mean&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEB0_BN1/moving_variance&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEB0_Conv2d2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEB0_Conv2d2/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEB0_BN2/gamma&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEB0_BN2/beta&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEB0_BN2/moving_mean'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEB0_BN2/moving_variance'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEB1_Conv2d1/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEB1_Conv2d1/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEB1_BN1/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEB1_BN1/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEB1_BN1/moving_mean'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEB1_BN1/moving_variance'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEB1_Conv2d2/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEB1_Conv2d2/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEB1_BN2/gamma'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEB1_BN2/beta'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEB1_BN2/moving_mean'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEB1_BN2/moving_variance'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEB2_Conv2d1/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEB2_Conv2d1/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEB2_BN1/gamma'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEB2_BN1/beta'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEB2_BN1/moving_mean'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEB2_BN1/moving_variance'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEB2_Conv2d2/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEB2_Conv2d2/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEB2_BN2/gamma'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEB2_BN2/beta'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEB2_BN2/moving_mean'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEB2_BN2/moving_variance'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEFinal_Dense1/kernel'variables/36/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEFinal_Dense1/bias'variables/37/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEFinal_BN/gamma'variables/38/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEFinal_BN/beta'variables/39/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEFinal_BN/moving_mean'variables/40/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEFinal_BN/moving_variance'variables/41/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEFinal_Dense2/kernel'variables/42/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEFinal_Dense2/bias'variables/43/.ATTRIBUTES/VARIABLE_VALUE*
j
A0
B1
G2
H3
M4
N5
S6
T7
Y8
Z9
_10
`11
e12
f13*

0
1
2*

�0
�1*
* 
* 
* 
* 
* 
* 
�
s0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29*
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29*
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7
�trace_8
�trace_9
�trace_10
�trace_11
�trace_12
�trace_13
�trace_14
�trace_15
�trace_16
�trace_17
�trace_18
�trace_19
�trace_20
�trace_21
�trace_22
�trace_23
�trace_24
�trace_25
�trace_26
�trace_27
�trace_28
�trace_29* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

�
_generator*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

�
_generator*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

�
_generator*
* 
 
0
1
2
3*
* 
* 
* 
* 
* 
* 
* 

=0
>1*

=0
>1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
 
?0
@1
A2
B3*

?0
@1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

C0
D1*

C0
D1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
 
E0
F1
G2
H3*

E0
F1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

I0
J1*

I0
J1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
 
K0
L1
M2
N3*

K0
L1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

O0
P1*

O0
P1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
 
Q0
R1
S2
T3*

Q0
R1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

U0
V1*

U0
V1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
 
W0
X1
Y2
Z3*

W0
X1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

[0
\1*

[0
\1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
 
]0
^1
_2
`3*

]0
^1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 
Z
A0
B1
G2
H3
M4
N5
S6
T7
Y8
Z9
_10
`11*
�
0
1
2
3
4
5
6
7
8
 9
!10
"11
#12
$13
%14
&15
'16
(17
)18
*19
+20*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

a0
b1*

a0
b1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
 
c0
d1
e2
f3*

c0
d1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

g0
h1*

g0
h1*


�0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

e0
f1*
'
20
31
42
53
64*
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
c]
VARIABLE_VALUEAdam/m/B0_Conv2d1/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/B0_Conv2d1/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/B0_Conv2d1/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/B0_Conv2d1/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/B0_BN1/gamma1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/B0_BN1/gamma1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/B0_BN1/beta1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/B0_BN1/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/B0_Conv2d2/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/B0_Conv2d2/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/B0_Conv2d2/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/B0_Conv2d2/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/B0_BN2/gamma2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/B0_BN2/gamma2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/B0_BN2/beta2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/B0_BN2/beta2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/B1_Conv2d1/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/B1_Conv2d1/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/B1_Conv2d1/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/B1_Conv2d1/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/B1_BN1/gamma2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/B1_BN1/gamma2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/B1_BN1/beta2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/B1_BN1/beta2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/B1_Conv2d2/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/B1_Conv2d2/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/B1_Conv2d2/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/B1_Conv2d2/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/B1_BN2/gamma2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/B1_BN2/gamma2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/B1_BN2/beta2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/B1_BN2/beta2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/B2_Conv2d1/kernel2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/B2_Conv2d1/kernel2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/B2_Conv2d1/bias2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/B2_Conv2d1/bias2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/B2_BN1/gamma2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/B2_BN1/gamma2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/B2_BN1/beta2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/B2_BN1/beta2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/B2_Conv2d2/kernel2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/B2_Conv2d2/kernel2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/B2_Conv2d2/bias2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/B2_Conv2d2/bias2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/B2_BN2/gamma2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/B2_BN2/gamma2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/B2_BN2/beta2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/B2_BN2/beta2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/m/Final_Dense1/kernel2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/v/Final_Dense1/kernel2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/Final_Dense1/bias2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/Final_Dense1/bias2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/Final_BN/gamma2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/Final_BN/gamma2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/Final_BN/beta2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/Final_BN/beta2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/m/Final_Dense2/kernel2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEAdam/v/Final_Dense2/kernel2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/m/Final_Dense2/bias2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEAdam/v/Final_Dense2/bias2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 

�
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 

�
_state_var*
* 
* 
* 


�0* 
* 
* 
* 

A0
B1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


�0* 
* 
* 
* 

G0
H1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


�0* 
* 
* 
* 

M0
N1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


�0* 
* 
* 
* 

S0
T1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


�0* 
* 
* 
* 

Y0
Z1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


�0* 
* 
* 
* 

_0
`1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


�0* 
* 
* 
* 

e0
f1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


�0* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
�|
VARIABLE_VALUErandom_flip_2/StateVarRlayer-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUErandom_rotation_2/StateVarRlayer-0/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUErandom_zoom_2/StateVarRlayer-0/layer-3/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameB0_Conv2d1/kernelB0_Conv2d1/biasB0_BN1/gammaB0_BN1/betaB0_BN1/moving_meanB0_BN1/moving_varianceB0_Conv2d2/kernelB0_Conv2d2/biasB0_BN2/gammaB0_BN2/betaB0_BN2/moving_meanB0_BN2/moving_varianceB1_Conv2d1/kernelB1_Conv2d1/biasB1_BN1/gammaB1_BN1/betaB1_BN1/moving_meanB1_BN1/moving_varianceB1_Conv2d2/kernelB1_Conv2d2/biasB1_BN2/gammaB1_BN2/betaB1_BN2/moving_meanB1_BN2/moving_varianceB2_Conv2d1/kernelB2_Conv2d1/biasB2_BN1/gammaB2_BN1/betaB2_BN1/moving_meanB2_BN1/moving_varianceB2_Conv2d2/kernelB2_Conv2d2/biasB2_BN2/gammaB2_BN2/betaB2_BN2/moving_meanB2_BN2/moving_varianceFinal_Dense1/kernelFinal_Dense1/biasFinal_BN/gammaFinal_BN/betaFinal_BN/moving_meanFinal_BN/moving_varianceFinal_Dense2/kernelFinal_Dense2/bias	iterationlearning_rateAdam/m/B0_Conv2d1/kernelAdam/v/B0_Conv2d1/kernelAdam/m/B0_Conv2d1/biasAdam/v/B0_Conv2d1/biasAdam/m/B0_BN1/gammaAdam/v/B0_BN1/gammaAdam/m/B0_BN1/betaAdam/v/B0_BN1/betaAdam/m/B0_Conv2d2/kernelAdam/v/B0_Conv2d2/kernelAdam/m/B0_Conv2d2/biasAdam/v/B0_Conv2d2/biasAdam/m/B0_BN2/gammaAdam/v/B0_BN2/gammaAdam/m/B0_BN2/betaAdam/v/B0_BN2/betaAdam/m/B1_Conv2d1/kernelAdam/v/B1_Conv2d1/kernelAdam/m/B1_Conv2d1/biasAdam/v/B1_Conv2d1/biasAdam/m/B1_BN1/gammaAdam/v/B1_BN1/gammaAdam/m/B1_BN1/betaAdam/v/B1_BN1/betaAdam/m/B1_Conv2d2/kernelAdam/v/B1_Conv2d2/kernelAdam/m/B1_Conv2d2/biasAdam/v/B1_Conv2d2/biasAdam/m/B1_BN2/gammaAdam/v/B1_BN2/gammaAdam/m/B1_BN2/betaAdam/v/B1_BN2/betaAdam/m/B2_Conv2d1/kernelAdam/v/B2_Conv2d1/kernelAdam/m/B2_Conv2d1/biasAdam/v/B2_Conv2d1/biasAdam/m/B2_BN1/gammaAdam/v/B2_BN1/gammaAdam/m/B2_BN1/betaAdam/v/B2_BN1/betaAdam/m/B2_Conv2d2/kernelAdam/v/B2_Conv2d2/kernelAdam/m/B2_Conv2d2/biasAdam/v/B2_Conv2d2/biasAdam/m/B2_BN2/gammaAdam/v/B2_BN2/gammaAdam/m/B2_BN2/betaAdam/v/B2_BN2/betaAdam/m/Final_Dense1/kernelAdam/v/Final_Dense1/kernelAdam/m/Final_Dense1/biasAdam/v/Final_Dense1/biasAdam/m/Final_BN/gammaAdam/v/Final_BN/gammaAdam/m/Final_BN/betaAdam/v/Final_BN/betaAdam/m/Final_Dense2/kernelAdam/v/Final_Dense2/kernelAdam/m/Final_Dense2/biasAdam/v/Final_Dense2/biastotal_1count_1totalcountrandom_flip_2/StateVarrandom_rotation_2/StateVarrandom_zoom_2/StateVarConst*~
Tinw
u2s*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__traced_save_4795987
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameB0_Conv2d1/kernelB0_Conv2d1/biasB0_BN1/gammaB0_BN1/betaB0_BN1/moving_meanB0_BN1/moving_varianceB0_Conv2d2/kernelB0_Conv2d2/biasB0_BN2/gammaB0_BN2/betaB0_BN2/moving_meanB0_BN2/moving_varianceB1_Conv2d1/kernelB1_Conv2d1/biasB1_BN1/gammaB1_BN1/betaB1_BN1/moving_meanB1_BN1/moving_varianceB1_Conv2d2/kernelB1_Conv2d2/biasB1_BN2/gammaB1_BN2/betaB1_BN2/moving_meanB1_BN2/moving_varianceB2_Conv2d1/kernelB2_Conv2d1/biasB2_BN1/gammaB2_BN1/betaB2_BN1/moving_meanB2_BN1/moving_varianceB2_Conv2d2/kernelB2_Conv2d2/biasB2_BN2/gammaB2_BN2/betaB2_BN2/moving_meanB2_BN2/moving_varianceFinal_Dense1/kernelFinal_Dense1/biasFinal_BN/gammaFinal_BN/betaFinal_BN/moving_meanFinal_BN/moving_varianceFinal_Dense2/kernelFinal_Dense2/bias	iterationlearning_rateAdam/m/B0_Conv2d1/kernelAdam/v/B0_Conv2d1/kernelAdam/m/B0_Conv2d1/biasAdam/v/B0_Conv2d1/biasAdam/m/B0_BN1/gammaAdam/v/B0_BN1/gammaAdam/m/B0_BN1/betaAdam/v/B0_BN1/betaAdam/m/B0_Conv2d2/kernelAdam/v/B0_Conv2d2/kernelAdam/m/B0_Conv2d2/biasAdam/v/B0_Conv2d2/biasAdam/m/B0_BN2/gammaAdam/v/B0_BN2/gammaAdam/m/B0_BN2/betaAdam/v/B0_BN2/betaAdam/m/B1_Conv2d1/kernelAdam/v/B1_Conv2d1/kernelAdam/m/B1_Conv2d1/biasAdam/v/B1_Conv2d1/biasAdam/m/B1_BN1/gammaAdam/v/B1_BN1/gammaAdam/m/B1_BN1/betaAdam/v/B1_BN1/betaAdam/m/B1_Conv2d2/kernelAdam/v/B1_Conv2d2/kernelAdam/m/B1_Conv2d2/biasAdam/v/B1_Conv2d2/biasAdam/m/B1_BN2/gammaAdam/v/B1_BN2/gammaAdam/m/B1_BN2/betaAdam/v/B1_BN2/betaAdam/m/B2_Conv2d1/kernelAdam/v/B2_Conv2d1/kernelAdam/m/B2_Conv2d1/biasAdam/v/B2_Conv2d1/biasAdam/m/B2_BN1/gammaAdam/v/B2_BN1/gammaAdam/m/B2_BN1/betaAdam/v/B2_BN1/betaAdam/m/B2_Conv2d2/kernelAdam/v/B2_Conv2d2/kernelAdam/m/B2_Conv2d2/biasAdam/v/B2_Conv2d2/biasAdam/m/B2_BN2/gammaAdam/v/B2_BN2/gammaAdam/m/B2_BN2/betaAdam/v/B2_BN2/betaAdam/m/Final_Dense1/kernelAdam/v/Final_Dense1/kernelAdam/m/Final_Dense1/biasAdam/v/Final_Dense1/biasAdam/m/Final_BN/gammaAdam/v/Final_BN/gammaAdam/m/Final_BN/betaAdam/v/Final_BN/betaAdam/m/Final_Dense2/kernelAdam/v/Final_Dense2/kernelAdam/m/Final_Dense2/biasAdam/v/Final_Dense2/biastotal_1count_1totalcountrandom_flip_2/StateVarrandom_rotation_2/StateVarrandom_zoom_2/StateVar*}
Tinv
t2r*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference__traced_restore_4796335��*
�
�
I__inference_Final_Dense1_layer_call_and_return_conditional_losses_4792579

inputs2
matmul_readvariableop_resource:
��-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp�5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������j
%Final_Dense1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
#Final_Dense1/kernel/Regularizer/AbsAbs:Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��x
'Final_Dense1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
#Final_Dense1/kernel/Regularizer/SumSum'Final_Dense1/kernel/Regularizer/Abs:y:00Final_Dense1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: j
%Final_Dense1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#Final_Dense1/kernel/Regularizer/mulMul.Final_Dense1/kernel/Regularizer/mul/x:output:0,Final_Dense1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
#Final_Dense1/kernel/Regularizer/addAddV2.Final_Dense1/kernel/Regularizer/Const:output:0'Final_Dense1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
&Final_Dense1/kernel/Regularizer/L2LossL2Loss=Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'Final_Dense1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
%Final_Dense1/kernel/Regularizer/mul_1Mul0Final_Dense1/kernel/Regularizer/mul_1/x:output:0/Final_Dense1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
%Final_Dense1/kernel/Regularizer/add_1AddV2'Final_Dense1/kernel/Regularizer/add:z:0)Final_Dense1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp3^Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp6^Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2h
2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp2n
5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
J__inference_random_flip_2_layer_call_and_return_conditional_losses_4790892

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identity��(stateful_uniform_full_int/RngReadAndSkip�*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:������������
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::��~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:�
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:���������y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:�����������k
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:������������
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:�����������k
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
*stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource+stateful_uniform_full_int_1/Cast/x:output:0&stateful_uniform_full_int_1/Cast_1:y:0)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:y
/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
#stateful_uniform_full_int_1/BitcastBitcast2stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0{
1stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_full_int_1StatelessRandomUniformFullIntV2*stateful_uniform_full_int_1/shape:output:0.stateful_uniform_full_int_1/Bitcast_1:output:0,stateful_uniform_full_int_1/Bitcast:output:0(stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	V
zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ~
stack_1Pack$stateful_uniform_full_int_1:output:0zeros_like_1:output:0*
N*
T0	*
_output_shapes

:f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*1
_output_shapes
:������������
#stateless_random_flip_up_down/ShapeShape9stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::��{
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
<stateless_random_flip_up_down/stateless_random_uniform/shapePack4stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
:stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
:stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::�
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������o
-stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:���������v
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:�����������h
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:����������
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:������������
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:�����������~
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:�����������z
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
c
E__inference_Final_DP_layer_call_and_return_conditional_losses_4792685

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
C__inference_B2_BN2_layer_call_and_return_conditional_losses_4791566

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
K
/__inference_random_flip_2_layer_call_fn_4793823

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_random_flip_2_layer_call_and_return_conditional_losses_4791130j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_33954
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�

b
C__inference_B2_DP1_layer_call_and_return_conditional_losses_4791860

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *G�?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������{{@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������{{@*
dtype0*
seed��[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������{{@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:���������{{@i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:���������{{@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������{{@:W S
/
_output_shapes
:���������{{@
 
_user_specified_nameinputs
�

b
C__inference_B2_DP1_layer_call_and_return_conditional_losses_4794815

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *G�?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������{{@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������{{@*
dtype0*
seed��[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������{{@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:���������{{@i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:���������{{@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������{{@:W S
/
_output_shapes
:���������{{@
 
_user_specified_nameinputs
�
�
C__inference_B2_BN1_layer_call_and_return_conditional_losses_4794793

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_34009
gradient"
variable: @*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: @: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
: @
"
_user_specified_name
gradient
�
�
G__inference_B1_Conv2d2_layer_call_and_return_conditional_losses_4791782

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp�3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp�BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� h
#B1_Conv2d2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
!B1_Conv2d2/kernel/Regularizer/AbsAbs8B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:  ~
%B1_Conv2d2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B1_Conv2d2/kernel/Regularizer/SumSum%B1_Conv2d2/kernel/Regularizer/Abs:y:0.B1_Conv2d2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B1_Conv2d2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B1_Conv2d2/kernel/Regularizer/mulMul,B1_Conv2d2/kernel/Regularizer/mul/x:output:0*B1_Conv2d2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B1_Conv2d2/kernel/Regularizer/addAddV2,B1_Conv2d2/kernel/Regularizer/Const:output:0%B1_Conv2d2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
$B1_Conv2d2/kernel/Regularizer/L2LossL2Loss;B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B1_Conv2d2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B1_Conv2d2/kernel/Regularizer/mul_1Mul.B1_Conv2d2/kernel/Regularizer/mul_1/x:output:0-B1_Conv2d2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B1_Conv2d2/kernel/Regularizer/add_1AddV2%B1_Conv2d2/kernel/Regularizer/add:z:0'B1_Conv2d2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� �
NoOpNoOp1^B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp4^B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:����������� : : 2d
0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp2j
3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�?
�
I__inference_dense_layers_layer_call_and_return_conditional_losses_4792719
flatten_input(
final_dense1_4792667:
��"
final_dense1_4792669:
final_bn_4792672:
final_bn_4792674:
final_bn_4792676:
final_bn_4792678:&
final_dense2_4792687:"
final_dense2_4792689:
identity�� Final_BN/StatefulPartitionedCall�$Final_Dense1/StatefulPartitionedCall�2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp�5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp�$Final_Dense2/StatefulPartitionedCall�2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp�5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp�
flatten/PartitionedCallPartitionedCallflatten_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_4792554�
$Final_Dense1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0final_dense1_4792667final_dense1_4792669*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_Final_Dense1_layer_call_and_return_conditional_losses_4792579�
 Final_BN/StatefulPartitionedCallStatefulPartitionedCall-Final_Dense1/StatefulPartitionedCall:output:0final_bn_4792672final_bn_4792674final_bn_4792676final_bn_4792678*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Final_BN_layer_call_and_return_conditional_losses_4792520�
Final_DP/PartitionedCallPartitionedCall)Final_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Final_DP_layer_call_and_return_conditional_losses_4792685�
$Final_Dense2/StatefulPartitionedCallStatefulPartitionedCall!Final_DP/PartitionedCall:output:0final_dense2_4792687final_dense2_4792689*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_Final_Dense2_layer_call_and_return_conditional_losses_4792630j
%Final_Dense1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpfinal_dense1_4792667* 
_output_shapes
:
��*
dtype0�
#Final_Dense1/kernel/Regularizer/AbsAbs:Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��x
'Final_Dense1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
#Final_Dense1/kernel/Regularizer/SumSum'Final_Dense1/kernel/Regularizer/Abs:y:00Final_Dense1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: j
%Final_Dense1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#Final_Dense1/kernel/Regularizer/mulMul.Final_Dense1/kernel/Regularizer/mul/x:output:0,Final_Dense1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
#Final_Dense1/kernel/Regularizer/addAddV2.Final_Dense1/kernel/Regularizer/Const:output:0'Final_Dense1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpfinal_dense1_4792667* 
_output_shapes
:
��*
dtype0�
&Final_Dense1/kernel/Regularizer/L2LossL2Loss=Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'Final_Dense1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
%Final_Dense1/kernel/Regularizer/mul_1Mul0Final_Dense1/kernel/Regularizer/mul_1/x:output:0/Final_Dense1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
%Final_Dense1/kernel/Regularizer/add_1AddV2'Final_Dense1/kernel/Regularizer/add:z:0)Final_Dense1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: j
%Final_Dense2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpfinal_dense2_4792687*
_output_shapes

:*
dtype0�
#Final_Dense2/kernel/Regularizer/AbsAbs:Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:x
'Final_Dense2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
#Final_Dense2/kernel/Regularizer/SumSum'Final_Dense2/kernel/Regularizer/Abs:y:00Final_Dense2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: j
%Final_Dense2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#Final_Dense2/kernel/Regularizer/mulMul.Final_Dense2/kernel/Regularizer/mul/x:output:0,Final_Dense2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
#Final_Dense2/kernel/Regularizer/addAddV2.Final_Dense2/kernel/Regularizer/Const:output:0'Final_Dense2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpfinal_dense2_4792687*
_output_shapes

:*
dtype0�
&Final_Dense2/kernel/Regularizer/L2LossL2Loss=Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'Final_Dense2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
%Final_Dense2/kernel/Regularizer/mul_1Mul0Final_Dense2/kernel/Regularizer/mul_1/x:output:0/Final_Dense2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
%Final_Dense2/kernel/Regularizer/add_1AddV2'Final_Dense2/kernel/Regularizer/add:z:0)Final_Dense2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: |
IdentityIdentity-Final_Dense2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^Final_BN/StatefulPartitionedCall%^Final_Dense1/StatefulPartitionedCall3^Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp6^Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp%^Final_Dense2/StatefulPartitionedCall3^Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp6^Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������<<@: : : : : : : : 2D
 Final_BN/StatefulPartitionedCall Final_BN/StatefulPartitionedCall2L
$Final_Dense1/StatefulPartitionedCall$Final_Dense1/StatefulPartitionedCall2h
2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp2n
5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp2L
$Final_Dense2/StatefulPartitionedCall$Final_Dense2/StatefulPartitionedCall2h
2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp2n
5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp:'#
!
_user_specified_name	4792689:'#
!
_user_specified_name	4792687:'#
!
_user_specified_name	4792678:'#
!
_user_specified_name	4792676:'#
!
_user_specified_name	4792674:'#
!
_user_specified_name	4792672:'#
!
_user_specified_name	4792669:'#
!
_user_specified_name	4792667:^ Z
/
_output_shapes
:���������<<@
'
_user_specified_nameflatten_input
�
a
C__inference_B2_DP2_layer_call_and_return_conditional_losses_4792116

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������yy@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������yy@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������yy@:W S
/
_output_shapes
:���������yy@
 
_user_specified_nameinputs
�
D
(__inference_B2_DP1_layer_call_fn_4794803

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������{{@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B2_DP1_layer_call_and_return_conditional_losses_4792096h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������{{@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������{{@:W S
/
_output_shapes
:���������{{@
 
_user_specified_nameinputs
�
�
C__inference_B2_BN1_layer_call_and_return_conditional_losses_4791504

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
a
C__inference_B1_DP1_layer_call_and_return_conditional_losses_4792055

inputs

identity_1X
IdentityIdentityinputs*
T0*1
_output_shapes
:����������� e

Identity_1IdentityIdentity:output:0*
T0*1
_output_shapes
:����������� "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������� :Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
�
,__inference_B2_Conv2d1_layer_call_fn_4794707

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������{{@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_B2_Conv2d1_layer_call_and_return_conditional_losses_4791834w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������{{@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������}} : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4794703:'#
!
_user_specified_name	4794701:W S
/
_output_shapes
:���������}} 
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_34019
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�
�
,__inference_B0_Conv2d1_layer_call_fn_4794199

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_B0_Conv2d1_layer_call_and_return_conditional_losses_4791628y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4794195:'#
!
_user_specified_name	4794193:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
,__inference_B1_Conv2d2_layer_call_fn_4794575

inputs!
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_B1_Conv2d2_layer_call_and_return_conditional_losses_4791782y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:����������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:����������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4794571:'#
!
_user_specified_name	4794569:Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
�
G__inference_B0_Conv2d2_layer_call_and_return_conditional_losses_4791679

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp�3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp�BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������h
#B0_Conv2d2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
!B0_Conv2d2/kernel/Regularizer/AbsAbs8B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:~
%B0_Conv2d2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B0_Conv2d2/kernel/Regularizer/SumSum%B0_Conv2d2/kernel/Regularizer/Abs:y:0.B0_Conv2d2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B0_Conv2d2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B0_Conv2d2/kernel/Regularizer/mulMul,B0_Conv2d2/kernel/Regularizer/mul/x:output:0*B0_Conv2d2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B0_Conv2d2/kernel/Regularizer/addAddV2,B0_Conv2d2/kernel/Regularizer/Const:output:0%B0_Conv2d2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
$B0_Conv2d2/kernel/Regularizer/L2LossL2Loss;B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B0_Conv2d2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B0_Conv2d2/kernel/Regularizer/mul_1Mul.B0_Conv2d2/kernel/Regularizer/mul_1/x:output:0-B0_Conv2d2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B0_Conv2d2/kernel/Regularizer/add_1AddV2%B0_Conv2d2/kernel/Regularizer/add:z:0'B0_Conv2d2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp1^B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp4^B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 2d
0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp2j
3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
_
C__inference_B0_MAX_layer_call_and_return_conditional_losses_4791329

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�&
�
E__inference_Final_BN_layer_call_and_return_conditional_losses_4792500

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
_
C__inference_B2_MAX_layer_call_and_return_conditional_losses_4791597

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
a
(__inference_B0_DP1_layer_call_fn_4794290

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B0_DP1_layer_call_and_return_conditional_losses_4791654y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

b
C__inference_B2_DP2_layer_call_and_return_conditional_losses_4794937

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *G�?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������yy@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������yy@*
dtype0*
seed��[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������yy@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:���������yy@i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:���������yy@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������yy@:W S
/
_output_shapes
:���������yy@
 
_user_specified_nameinputs
�
�
__inference_loss_fn_2_4795003S
9b1_conv2d1_kernel_regularizer_abs_readvariableop_resource: 
identity��0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp�3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOph
#B1_Conv2d1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp9b1_conv2d1_kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
: *
dtype0�
!B1_Conv2d1/kernel/Regularizer/AbsAbs8B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: ~
%B1_Conv2d1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B1_Conv2d1/kernel/Regularizer/SumSum%B1_Conv2d1/kernel/Regularizer/Abs:y:0.B1_Conv2d1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B1_Conv2d1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B1_Conv2d1/kernel/Regularizer/mulMul,B1_Conv2d1/kernel/Regularizer/mul/x:output:0*B1_Conv2d1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B1_Conv2d1/kernel/Regularizer/addAddV2,B1_Conv2d1/kernel/Regularizer/Const:output:0%B1_Conv2d1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp9b1_conv2d1_kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
: *
dtype0�
$B1_Conv2d1/kernel/Regularizer/L2LossL2Loss;B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B1_Conv2d1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B1_Conv2d1/kernel/Regularizer/mul_1Mul.B1_Conv2d1/kernel/Regularizer/mul_1/x:output:0-B1_Conv2d1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B1_Conv2d1/kernel/Regularizer/add_1AddV2%B1_Conv2d1/kernel/Regularizer/add:z:0'B1_Conv2d1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: e
IdentityIdentity'B1_Conv2d1/kernel/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp1^B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp4^B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp2j
3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
_
C__inference_B1_MAX_layer_call_and_return_conditional_losses_4791463

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�&
�
E__inference_Final_BN_layer_call_and_return_conditional_losses_4795158

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
3__inference_random_rotation_2_layer_call_fn_4793945

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_random_rotation_2_layer_call_and_return_conditional_losses_4791013y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4793941:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
f
J__inference_random_zoom_2_layer_call_and_return_conditional_losses_4791140

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
�
(__inference_B2_BN2_layer_call_fn_4794866

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B2_BN2_layer_call_and_return_conditional_losses_4791548�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4794862:'#
!
_user_specified_name	4794860:'#
!
_user_specified_name	4794858:'#
!
_user_specified_name	4794856:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
d
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4790780

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:�����������d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_34044
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�
u
N__inference_data_augmentation_layer_call_and_return_conditional_losses_4791143
rescaling_2_input
identity�
rescaling_2/PartitionedCallPartitionedCallrescaling_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4790780�
random_flip_2/PartitionedCallPartitionedCall$rescaling_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_random_flip_2_layer_call_and_return_conditional_losses_4791130�
!random_rotation_2/PartitionedCallPartitionedCall&random_flip_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_random_rotation_2_layer_call_and_return_conditional_losses_4791135�
random_zoom_2/PartitionedCallPartitionedCall*random_rotation_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_random_zoom_2_layer_call_and_return_conditional_losses_4791140x
IdentityIdentity&random_zoom_2/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:d `
1
_output_shapes
:�����������
+
_user_specified_namerescaling_2_input
�
�
E__inference_Final_BN_layer_call_and_return_conditional_losses_4795178

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
D
(__inference_B1_DP2_layer_call_fn_4794671

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B1_DP2_layer_call_and_return_conditional_losses_4792075j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:����������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������� :Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
D
(__inference_B1_DP1_layer_call_fn_4794549

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B1_DP1_layer_call_and_return_conditional_losses_4792055j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:����������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������� :Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
a
C__inference_B1_DP2_layer_call_and_return_conditional_losses_4792075

inputs

identity_1X
IdentityIdentityinputs*
T0*1
_output_shapes
:����������� e

Identity_1IdentityIdentity:output:0*
T0*1
_output_shapes
:����������� "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������� :Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
�
.__inference_dense_layers_layer_call_fn_4792740
flatten_input
unknown:
��
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_dense_layers_layer_call_and_return_conditional_losses_4792663o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������<<@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4792736:'#
!
_user_specified_name	4792734:'#
!
_user_specified_name	4792732:'#
!
_user_specified_name	4792730:'#
!
_user_specified_name	4792728:'#
!
_user_specified_name	4792726:'#
!
_user_specified_name	4792724:'#
!
_user_specified_name	4792722:^ Z
/
_output_shapes
:���������<<@
'
_user_specified_nameflatten_input
�	
�
(__inference_B0_BN2_layer_call_fn_4794358

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B0_BN2_layer_call_and_return_conditional_losses_4791280�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4794354:'#
!
_user_specified_name	4794352:'#
!
_user_specified_name	4794350:'#
!
_user_specified_name	4794348:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
c
E__inference_Final_DP_layer_call_and_return_conditional_losses_4795205

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_B2_Conv2d2_layer_call_and_return_conditional_losses_4791885

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp�3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp�BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������yy@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������yy@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������yy@h
#B2_Conv2d2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
!B2_Conv2d2/kernel/Regularizer/AbsAbs8B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@~
%B2_Conv2d2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B2_Conv2d2/kernel/Regularizer/SumSum%B2_Conv2d2/kernel/Regularizer/Abs:y:0.B2_Conv2d2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B2_Conv2d2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B2_Conv2d2/kernel/Regularizer/mulMul,B2_Conv2d2/kernel/Regularizer/mul/x:output:0*B2_Conv2d2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B2_Conv2d2/kernel/Regularizer/addAddV2,B2_Conv2d2/kernel/Regularizer/Const:output:0%B2_Conv2d2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
$B2_Conv2d2/kernel/Regularizer/L2LossL2Loss;B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B2_Conv2d2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B2_Conv2d2/kernel/Regularizer/mul_1Mul.B2_Conv2d2/kernel/Regularizer/mul_1/x:output:0-B2_Conv2d2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B2_Conv2d2/kernel/Regularizer/add_1AddV2%B2_Conv2d2/kernel/Regularizer/add:z:0'B2_Conv2d2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������yy@�
NoOpNoOp1^B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp4^B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������{{@: : 2d
0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp2j
3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������{{@
 
_user_specified_nameinputs
�	
�
(__inference_B0_BN1_layer_call_fn_4794249

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B0_BN1_layer_call_and_return_conditional_losses_4791236�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4794245:'#
!
_user_specified_name	4794243:'#
!
_user_specified_name	4794241:'#
!
_user_specified_name	4794239:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
G__inference_B2_Conv2d1_layer_call_and_return_conditional_losses_4791834

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp�3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp�BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������{{@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������{{@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������{{@h
#B2_Conv2d1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
!B2_Conv2d1/kernel/Regularizer/AbsAbs8B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: @~
%B2_Conv2d1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B2_Conv2d1/kernel/Regularizer/SumSum%B2_Conv2d1/kernel/Regularizer/Abs:y:0.B2_Conv2d1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B2_Conv2d1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B2_Conv2d1/kernel/Regularizer/mulMul,B2_Conv2d1/kernel/Regularizer/mul/x:output:0*B2_Conv2d1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B2_Conv2d1/kernel/Regularizer/addAddV2,B2_Conv2d1/kernel/Regularizer/Const:output:0%B2_Conv2d1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
$B2_Conv2d1/kernel/Regularizer/L2LossL2Loss;B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B2_Conv2d1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B2_Conv2d1/kernel/Regularizer/mul_1Mul.B2_Conv2d1/kernel/Regularizer/mul_1/x:output:0-B2_Conv2d1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B2_Conv2d1/kernel/Regularizer/add_1AddV2%B2_Conv2d1/kernel/Regularizer/add:z:0'B2_Conv2d1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������{{@�
NoOpNoOp1^B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp4^B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������}} : : 2d
0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp2j
3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������}} 
 
_user_specified_nameinputs
�
D
(__inference_B2_MAX_layer_call_fn_4794947

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B2_MAX_layer_call_and_return_conditional_losses_4791597�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
a
C__inference_B0_DP2_layer_call_and_return_conditional_losses_4792034

inputs

identity_1X
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������e

Identity_1IdentityIdentity:output:0*
T0*1
_output_shapes
:�����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
C__inference_B2_BN1_layer_call_and_return_conditional_losses_4791486

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
��
�
F__inference_CNN_Model_layer_call_and_return_conditional_losses_4791993
b0_conv2d1_input,
b0_conv2d1_4791629: 
b0_conv2d1_4791631:
b0_bn1_4791634:
b0_bn1_4791636:
b0_bn1_4791638:
b0_bn1_4791640:,
b0_conv2d2_4791680: 
b0_conv2d2_4791682:
b0_bn2_4791685:
b0_bn2_4791687:
b0_bn2_4791689:
b0_bn2_4791691:,
b1_conv2d1_4791732:  
b1_conv2d1_4791734: 
b1_bn1_4791737: 
b1_bn1_4791739: 
b1_bn1_4791741: 
b1_bn1_4791743: ,
b1_conv2d2_4791783:   
b1_conv2d2_4791785: 
b1_bn2_4791788: 
b1_bn2_4791790: 
b1_bn2_4791792: 
b1_bn2_4791794: ,
b2_conv2d1_4791835: @ 
b2_conv2d1_4791837:@
b2_bn1_4791840:@
b2_bn1_4791842:@
b2_bn1_4791844:@
b2_bn1_4791846:@,
b2_conv2d2_4791886:@@ 
b2_conv2d2_4791888:@
b2_bn2_4791891:@
b2_bn2_4791893:@
b2_bn2_4791895:@
b2_bn2_4791897:@
identity��B0_BN1/StatefulPartitionedCall�B0_BN2/StatefulPartitionedCall�"B0_Conv2d1/StatefulPartitionedCall�0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp�3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp�"B0_Conv2d2/StatefulPartitionedCall�0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp�3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp�B0_DP1/StatefulPartitionedCall�B0_DP2/StatefulPartitionedCall�B1_BN1/StatefulPartitionedCall�B1_BN2/StatefulPartitionedCall�"B1_Conv2d1/StatefulPartitionedCall�0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp�3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp�"B1_Conv2d2/StatefulPartitionedCall�0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp�3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp�B1_DP1/StatefulPartitionedCall�B1_DP2/StatefulPartitionedCall�B2_BN1/StatefulPartitionedCall�B2_BN2/StatefulPartitionedCall�"B2_Conv2d1/StatefulPartitionedCall�0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp�3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp�"B2_Conv2d2/StatefulPartitionedCall�0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp�3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp�B2_DP1/StatefulPartitionedCall�B2_DP2/StatefulPartitionedCall�
"B0_Conv2d1/StatefulPartitionedCallStatefulPartitionedCallb0_conv2d1_inputb0_conv2d1_4791629b0_conv2d1_4791631*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_B0_Conv2d1_layer_call_and_return_conditional_losses_4791628�
B0_BN1/StatefulPartitionedCallStatefulPartitionedCall+B0_Conv2d1/StatefulPartitionedCall:output:0b0_bn1_4791634b0_bn1_4791636b0_bn1_4791638b0_bn1_4791640*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B0_BN1_layer_call_and_return_conditional_losses_4791218�
B0_DP1/StatefulPartitionedCallStatefulPartitionedCall'B0_BN1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B0_DP1_layer_call_and_return_conditional_losses_4791654�
"B0_Conv2d2/StatefulPartitionedCallStatefulPartitionedCall'B0_DP1/StatefulPartitionedCall:output:0b0_conv2d2_4791680b0_conv2d2_4791682*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_B0_Conv2d2_layer_call_and_return_conditional_losses_4791679�
B0_BN2/StatefulPartitionedCallStatefulPartitionedCall+B0_Conv2d2/StatefulPartitionedCall:output:0b0_bn2_4791685b0_bn2_4791687b0_bn2_4791689b0_bn2_4791691*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B0_BN2_layer_call_and_return_conditional_losses_4791280�
B0_DP2/StatefulPartitionedCallStatefulPartitionedCall'B0_BN2/StatefulPartitionedCall:output:0^B0_DP1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B0_DP2_layer_call_and_return_conditional_losses_4791705�
B0_MAX/PartitionedCallPartitionedCall'B0_DP2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B0_MAX_layer_call_and_return_conditional_losses_4791329�
"B1_Conv2d1/StatefulPartitionedCallStatefulPartitionedCallB0_MAX/PartitionedCall:output:0b1_conv2d1_4791732b1_conv2d1_4791734*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_B1_Conv2d1_layer_call_and_return_conditional_losses_4791731�
B1_BN1/StatefulPartitionedCallStatefulPartitionedCall+B1_Conv2d1/StatefulPartitionedCall:output:0b1_bn1_4791737b1_bn1_4791739b1_bn1_4791741b1_bn1_4791743*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B1_BN1_layer_call_and_return_conditional_losses_4791352�
B1_DP1/StatefulPartitionedCallStatefulPartitionedCall'B1_BN1/StatefulPartitionedCall:output:0^B0_DP2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B1_DP1_layer_call_and_return_conditional_losses_4791757�
"B1_Conv2d2/StatefulPartitionedCallStatefulPartitionedCall'B1_DP1/StatefulPartitionedCall:output:0b1_conv2d2_4791783b1_conv2d2_4791785*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_B1_Conv2d2_layer_call_and_return_conditional_losses_4791782�
B1_BN2/StatefulPartitionedCallStatefulPartitionedCall+B1_Conv2d2/StatefulPartitionedCall:output:0b1_bn2_4791788b1_bn2_4791790b1_bn2_4791792b1_bn2_4791794*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B1_BN2_layer_call_and_return_conditional_losses_4791414�
B1_DP2/StatefulPartitionedCallStatefulPartitionedCall'B1_BN2/StatefulPartitionedCall:output:0^B1_DP1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B1_DP2_layer_call_and_return_conditional_losses_4791808�
B1_MAX/PartitionedCallPartitionedCall'B1_DP2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������}} * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B1_MAX_layer_call_and_return_conditional_losses_4791463�
"B2_Conv2d1/StatefulPartitionedCallStatefulPartitionedCallB1_MAX/PartitionedCall:output:0b2_conv2d1_4791835b2_conv2d1_4791837*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������{{@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_B2_Conv2d1_layer_call_and_return_conditional_losses_4791834�
B2_BN1/StatefulPartitionedCallStatefulPartitionedCall+B2_Conv2d1/StatefulPartitionedCall:output:0b2_bn1_4791840b2_bn1_4791842b2_bn1_4791844b2_bn1_4791846*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������{{@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B2_BN1_layer_call_and_return_conditional_losses_4791486�
B2_DP1/StatefulPartitionedCallStatefulPartitionedCall'B2_BN1/StatefulPartitionedCall:output:0^B1_DP2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������{{@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B2_DP1_layer_call_and_return_conditional_losses_4791860�
"B2_Conv2d2/StatefulPartitionedCallStatefulPartitionedCall'B2_DP1/StatefulPartitionedCall:output:0b2_conv2d2_4791886b2_conv2d2_4791888*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������yy@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_B2_Conv2d2_layer_call_and_return_conditional_losses_4791885�
B2_BN2/StatefulPartitionedCallStatefulPartitionedCall+B2_Conv2d2/StatefulPartitionedCall:output:0b2_bn2_4791891b2_bn2_4791893b2_bn2_4791895b2_bn2_4791897*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������yy@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B2_BN2_layer_call_and_return_conditional_losses_4791548�
B2_DP2/StatefulPartitionedCallStatefulPartitionedCall'B2_BN2/StatefulPartitionedCall:output:0^B2_DP1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������yy@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B2_DP2_layer_call_and_return_conditional_losses_4791911�
B2_MAX/PartitionedCallPartitionedCall'B2_DP2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B2_MAX_layer_call_and_return_conditional_losses_4791597h
#B0_Conv2d1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpb0_conv2d1_4791629*&
_output_shapes
:*
dtype0�
!B0_Conv2d1/kernel/Regularizer/AbsAbs8B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:~
%B0_Conv2d1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B0_Conv2d1/kernel/Regularizer/SumSum%B0_Conv2d1/kernel/Regularizer/Abs:y:0.B0_Conv2d1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B0_Conv2d1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B0_Conv2d1/kernel/Regularizer/mulMul,B0_Conv2d1/kernel/Regularizer/mul/x:output:0*B0_Conv2d1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B0_Conv2d1/kernel/Regularizer/addAddV2,B0_Conv2d1/kernel/Regularizer/Const:output:0%B0_Conv2d1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpb0_conv2d1_4791629*&
_output_shapes
:*
dtype0�
$B0_Conv2d1/kernel/Regularizer/L2LossL2Loss;B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B0_Conv2d1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B0_Conv2d1/kernel/Regularizer/mul_1Mul.B0_Conv2d1/kernel/Regularizer/mul_1/x:output:0-B0_Conv2d1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B0_Conv2d1/kernel/Regularizer/add_1AddV2%B0_Conv2d1/kernel/Regularizer/add:z:0'B0_Conv2d1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
#B0_Conv2d2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpb0_conv2d2_4791680*&
_output_shapes
:*
dtype0�
!B0_Conv2d2/kernel/Regularizer/AbsAbs8B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:~
%B0_Conv2d2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B0_Conv2d2/kernel/Regularizer/SumSum%B0_Conv2d2/kernel/Regularizer/Abs:y:0.B0_Conv2d2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B0_Conv2d2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B0_Conv2d2/kernel/Regularizer/mulMul,B0_Conv2d2/kernel/Regularizer/mul/x:output:0*B0_Conv2d2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B0_Conv2d2/kernel/Regularizer/addAddV2,B0_Conv2d2/kernel/Regularizer/Const:output:0%B0_Conv2d2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpb0_conv2d2_4791680*&
_output_shapes
:*
dtype0�
$B0_Conv2d2/kernel/Regularizer/L2LossL2Loss;B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B0_Conv2d2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B0_Conv2d2/kernel/Regularizer/mul_1Mul.B0_Conv2d2/kernel/Regularizer/mul_1/x:output:0-B0_Conv2d2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B0_Conv2d2/kernel/Regularizer/add_1AddV2%B0_Conv2d2/kernel/Regularizer/add:z:0'B0_Conv2d2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
#B1_Conv2d1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpb1_conv2d1_4791732*&
_output_shapes
: *
dtype0�
!B1_Conv2d1/kernel/Regularizer/AbsAbs8B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: ~
%B1_Conv2d1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B1_Conv2d1/kernel/Regularizer/SumSum%B1_Conv2d1/kernel/Regularizer/Abs:y:0.B1_Conv2d1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B1_Conv2d1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B1_Conv2d1/kernel/Regularizer/mulMul,B1_Conv2d1/kernel/Regularizer/mul/x:output:0*B1_Conv2d1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B1_Conv2d1/kernel/Regularizer/addAddV2,B1_Conv2d1/kernel/Regularizer/Const:output:0%B1_Conv2d1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpb1_conv2d1_4791732*&
_output_shapes
: *
dtype0�
$B1_Conv2d1/kernel/Regularizer/L2LossL2Loss;B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B1_Conv2d1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B1_Conv2d1/kernel/Regularizer/mul_1Mul.B1_Conv2d1/kernel/Regularizer/mul_1/x:output:0-B1_Conv2d1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B1_Conv2d1/kernel/Regularizer/add_1AddV2%B1_Conv2d1/kernel/Regularizer/add:z:0'B1_Conv2d1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
#B1_Conv2d2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpb1_conv2d2_4791783*&
_output_shapes
:  *
dtype0�
!B1_Conv2d2/kernel/Regularizer/AbsAbs8B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:  ~
%B1_Conv2d2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B1_Conv2d2/kernel/Regularizer/SumSum%B1_Conv2d2/kernel/Regularizer/Abs:y:0.B1_Conv2d2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B1_Conv2d2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B1_Conv2d2/kernel/Regularizer/mulMul,B1_Conv2d2/kernel/Regularizer/mul/x:output:0*B1_Conv2d2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B1_Conv2d2/kernel/Regularizer/addAddV2,B1_Conv2d2/kernel/Regularizer/Const:output:0%B1_Conv2d2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpb1_conv2d2_4791783*&
_output_shapes
:  *
dtype0�
$B1_Conv2d2/kernel/Regularizer/L2LossL2Loss;B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B1_Conv2d2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B1_Conv2d2/kernel/Regularizer/mul_1Mul.B1_Conv2d2/kernel/Regularizer/mul_1/x:output:0-B1_Conv2d2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B1_Conv2d2/kernel/Regularizer/add_1AddV2%B1_Conv2d2/kernel/Regularizer/add:z:0'B1_Conv2d2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
#B2_Conv2d1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpb2_conv2d1_4791835*&
_output_shapes
: @*
dtype0�
!B2_Conv2d1/kernel/Regularizer/AbsAbs8B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: @~
%B2_Conv2d1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B2_Conv2d1/kernel/Regularizer/SumSum%B2_Conv2d1/kernel/Regularizer/Abs:y:0.B2_Conv2d1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B2_Conv2d1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B2_Conv2d1/kernel/Regularizer/mulMul,B2_Conv2d1/kernel/Regularizer/mul/x:output:0*B2_Conv2d1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B2_Conv2d1/kernel/Regularizer/addAddV2,B2_Conv2d1/kernel/Regularizer/Const:output:0%B2_Conv2d1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpb2_conv2d1_4791835*&
_output_shapes
: @*
dtype0�
$B2_Conv2d1/kernel/Regularizer/L2LossL2Loss;B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B2_Conv2d1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B2_Conv2d1/kernel/Regularizer/mul_1Mul.B2_Conv2d1/kernel/Regularizer/mul_1/x:output:0-B2_Conv2d1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B2_Conv2d1/kernel/Regularizer/add_1AddV2%B2_Conv2d1/kernel/Regularizer/add:z:0'B2_Conv2d1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
#B2_Conv2d2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpb2_conv2d2_4791886*&
_output_shapes
:@@*
dtype0�
!B2_Conv2d2/kernel/Regularizer/AbsAbs8B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@~
%B2_Conv2d2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B2_Conv2d2/kernel/Regularizer/SumSum%B2_Conv2d2/kernel/Regularizer/Abs:y:0.B2_Conv2d2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B2_Conv2d2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B2_Conv2d2/kernel/Regularizer/mulMul,B2_Conv2d2/kernel/Regularizer/mul/x:output:0*B2_Conv2d2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B2_Conv2d2/kernel/Regularizer/addAddV2,B2_Conv2d2/kernel/Regularizer/Const:output:0%B2_Conv2d2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpb2_conv2d2_4791886*&
_output_shapes
:@@*
dtype0�
$B2_Conv2d2/kernel/Regularizer/L2LossL2Loss;B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B2_Conv2d2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B2_Conv2d2/kernel/Regularizer/mul_1Mul.B2_Conv2d2/kernel/Regularizer/mul_1/x:output:0-B2_Conv2d2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B2_Conv2d2/kernel/Regularizer/add_1AddV2%B2_Conv2d2/kernel/Regularizer/add:z:0'B2_Conv2d2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: v
IdentityIdentityB2_MAX/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<<@�

NoOpNoOp^B0_BN1/StatefulPartitionedCall^B0_BN2/StatefulPartitionedCall#^B0_Conv2d1/StatefulPartitionedCall1^B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp4^B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp#^B0_Conv2d2/StatefulPartitionedCall1^B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp4^B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp^B0_DP1/StatefulPartitionedCall^B0_DP2/StatefulPartitionedCall^B1_BN1/StatefulPartitionedCall^B1_BN2/StatefulPartitionedCall#^B1_Conv2d1/StatefulPartitionedCall1^B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp4^B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp#^B1_Conv2d2/StatefulPartitionedCall1^B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp4^B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp^B1_DP1/StatefulPartitionedCall^B1_DP2/StatefulPartitionedCall^B2_BN1/StatefulPartitionedCall^B2_BN2/StatefulPartitionedCall#^B2_Conv2d1/StatefulPartitionedCall1^B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp4^B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp#^B2_Conv2d2/StatefulPartitionedCall1^B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp4^B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp^B2_DP1/StatefulPartitionedCall^B2_DP2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
B0_BN1/StatefulPartitionedCallB0_BN1/StatefulPartitionedCall2@
B0_BN2/StatefulPartitionedCallB0_BN2/StatefulPartitionedCall2H
"B0_Conv2d1/StatefulPartitionedCall"B0_Conv2d1/StatefulPartitionedCall2d
0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp2j
3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp2H
"B0_Conv2d2/StatefulPartitionedCall"B0_Conv2d2/StatefulPartitionedCall2d
0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp2j
3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp2@
B0_DP1/StatefulPartitionedCallB0_DP1/StatefulPartitionedCall2@
B0_DP2/StatefulPartitionedCallB0_DP2/StatefulPartitionedCall2@
B1_BN1/StatefulPartitionedCallB1_BN1/StatefulPartitionedCall2@
B1_BN2/StatefulPartitionedCallB1_BN2/StatefulPartitionedCall2H
"B1_Conv2d1/StatefulPartitionedCall"B1_Conv2d1/StatefulPartitionedCall2d
0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp2j
3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp2H
"B1_Conv2d2/StatefulPartitionedCall"B1_Conv2d2/StatefulPartitionedCall2d
0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp2j
3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp2@
B1_DP1/StatefulPartitionedCallB1_DP1/StatefulPartitionedCall2@
B1_DP2/StatefulPartitionedCallB1_DP2/StatefulPartitionedCall2@
B2_BN1/StatefulPartitionedCallB2_BN1/StatefulPartitionedCall2@
B2_BN2/StatefulPartitionedCallB2_BN2/StatefulPartitionedCall2H
"B2_Conv2d1/StatefulPartitionedCall"B2_Conv2d1/StatefulPartitionedCall2d
0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp2j
3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp2H
"B2_Conv2d2/StatefulPartitionedCall"B2_Conv2d2/StatefulPartitionedCall2d
0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp2j
3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp2@
B2_DP1/StatefulPartitionedCallB2_DP1/StatefulPartitionedCall2@
B2_DP2/StatefulPartitionedCallB2_DP2/StatefulPartitionedCall:'$#
!
_user_specified_name	4791897:'##
!
_user_specified_name	4791895:'"#
!
_user_specified_name	4791893:'!#
!
_user_specified_name	4791891:' #
!
_user_specified_name	4791888:'#
!
_user_specified_name	4791886:'#
!
_user_specified_name	4791846:'#
!
_user_specified_name	4791844:'#
!
_user_specified_name	4791842:'#
!
_user_specified_name	4791840:'#
!
_user_specified_name	4791837:'#
!
_user_specified_name	4791835:'#
!
_user_specified_name	4791794:'#
!
_user_specified_name	4791792:'#
!
_user_specified_name	4791790:'#
!
_user_specified_name	4791788:'#
!
_user_specified_name	4791785:'#
!
_user_specified_name	4791783:'#
!
_user_specified_name	4791743:'#
!
_user_specified_name	4791741:'#
!
_user_specified_name	4791739:'#
!
_user_specified_name	4791737:'#
!
_user_specified_name	4791734:'#
!
_user_specified_name	4791732:'#
!
_user_specified_name	4791691:'#
!
_user_specified_name	4791689:'
#
!
_user_specified_name	4791687:'	#
!
_user_specified_name	4791685:'#
!
_user_specified_name	4791682:'#
!
_user_specified_name	4791680:'#
!
_user_specified_name	4791640:'#
!
_user_specified_name	4791638:'#
!
_user_specified_name	4791636:'#
!
_user_specified_name	4791634:'#
!
_user_specified_name	4791631:'#
!
_user_specified_name	4791629:c _
1
_output_shapes
:�����������
*
_user_specified_nameB0_Conv2d1_input
�

/__inference_random_flip_2_layer_call_fn_4793818

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_random_flip_2_layer_call_and_return_conditional_losses_4790892y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4793814:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
G__inference_B1_Conv2d1_layer_call_and_return_conditional_losses_4794477

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp�3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp�BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� h
#B1_Conv2d1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
!B1_Conv2d1/kernel/Regularizer/AbsAbs8B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: ~
%B1_Conv2d1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B1_Conv2d1/kernel/Regularizer/SumSum%B1_Conv2d1/kernel/Regularizer/Abs:y:0.B1_Conv2d1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B1_Conv2d1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B1_Conv2d1/kernel/Regularizer/mulMul,B1_Conv2d1/kernel/Regularizer/mul/x:output:0*B1_Conv2d1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B1_Conv2d1/kernel/Regularizer/addAddV2,B1_Conv2d1/kernel/Regularizer/Const:output:0%B1_Conv2d1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
$B1_Conv2d1/kernel/Regularizer/L2LossL2Loss;B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B1_Conv2d1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B1_Conv2d1/kernel/Regularizer/mul_1Mul.B1_Conv2d1/kernel/Regularizer/mul_1/x:output:0-B1_Conv2d1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B1_Conv2d1/kernel/Regularizer/add_1AddV2%B1_Conv2d1/kernel/Regularizer/add:z:0'B1_Conv2d1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� �
NoOpNoOp1^B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp4^B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 2d
0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp2j
3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
,__inference_B2_Conv2d2_layer_call_fn_4794829

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������yy@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_B2_Conv2d2_layer_call_and_return_conditional_losses_4791885w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������yy@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������{{@: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4794825:'#
!
_user_specified_name	4794823:W S
/
_output_shapes
:���������{{@
 
_user_specified_nameinputs
�
a
C__inference_B0_DP1_layer_call_and_return_conditional_losses_4794312

inputs

identity_1X
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������e

Identity_1IdentityIdentity:output:0*
T0*1
_output_shapes
:�����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
a
(__inference_B2_DP1_layer_call_fn_4794798

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������{{@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B2_DP1_layer_call_and_return_conditional_losses_4791860w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������{{@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������{{@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������{{@
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_34039
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�
�
C__inference_B0_BN1_layer_call_and_return_conditional_losses_4791236

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_34074
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�

d
E__inference_Final_DP_layer_call_and_return_conditional_losses_4795200

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *G�?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0*
seed��[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_7_4795272M
;final_dense2_kernel_regularizer_abs_readvariableop_resource:
identity��2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp�5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOpj
%Final_Dense2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp;final_dense2_kernel_regularizer_abs_readvariableop_resource*
_output_shapes

:*
dtype0�
#Final_Dense2/kernel/Regularizer/AbsAbs:Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:x
'Final_Dense2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
#Final_Dense2/kernel/Regularizer/SumSum'Final_Dense2/kernel/Regularizer/Abs:y:00Final_Dense2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: j
%Final_Dense2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#Final_Dense2/kernel/Regularizer/mulMul.Final_Dense2/kernel/Regularizer/mul/x:output:0,Final_Dense2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
#Final_Dense2/kernel/Regularizer/addAddV2.Final_Dense2/kernel/Regularizer/Const:output:0'Final_Dense2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp;final_dense2_kernel_regularizer_abs_readvariableop_resource*
_output_shapes

:*
dtype0�
&Final_Dense2/kernel/Regularizer/L2LossL2Loss=Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'Final_Dense2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
%Final_Dense2/kernel/Regularizer/mul_1Mul0Final_Dense2/kernel/Regularizer/mul_1/x:output:0/Final_Dense2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
%Final_Dense2/kernel/Regularizer/add_1AddV2'Final_Dense2/kernel/Regularizer/add:z:0)Final_Dense2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: g
IdentityIdentity)Final_Dense2/kernel/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp3^Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp6^Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp2n
5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
�
I__inference_Final_Dense2_layer_call_and_return_conditional_losses_4795238

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp�5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������j
%Final_Dense2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0�
#Final_Dense2/kernel/Regularizer/AbsAbs:Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:x
'Final_Dense2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
#Final_Dense2/kernel/Regularizer/SumSum'Final_Dense2/kernel/Regularizer/Abs:y:00Final_Dense2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: j
%Final_Dense2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#Final_Dense2/kernel/Regularizer/mulMul.Final_Dense2/kernel/Regularizer/mul/x:output:0,Final_Dense2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
#Final_Dense2/kernel/Regularizer/addAddV2.Final_Dense2/kernel/Regularizer/Const:output:0'Final_Dense2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0�
&Final_Dense2/kernel/Regularizer/L2LossL2Loss=Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'Final_Dense2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
%Final_Dense2/kernel/Regularizer/mul_1Mul0Final_Dense2/kernel/Regularizer/mul_1/x:output:0/Final_Dense2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
%Final_Dense2/kernel/Regularizer/add_1AddV2'Final_Dense2/kernel/Regularizer/add:z:0)Final_Dense2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp3^Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp6^Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2h
2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp2n
5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
a
C__inference_B1_DP1_layer_call_and_return_conditional_losses_4794566

inputs

identity_1X
IdentityIdentityinputs*
T0*1
_output_shapes
:����������� e

Identity_1IdentityIdentity:output:0*
T0*1
_output_shapes
:����������� "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������� :Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
K
/__inference_random_zoom_2_layer_call_fn_4794084

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_random_zoom_2_layer_call_and_return_conditional_losses_4791140j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
�
(__inference_B0_BN2_layer_call_fn_4794371

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B0_BN2_layer_call_and_return_conditional_losses_4791298�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4794367:'#
!
_user_specified_name	4794365:'#
!
_user_specified_name	4794363:'#
!
_user_specified_name	4794361:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
_
C__inference_B1_MAX_layer_call_and_return_conditional_losses_4794698

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�*
"__inference__wrapped_model_4790770
data_augmentation_inputQ
7cnn_cnn_model_b0_conv2d1_conv2d_readvariableop_resource:F
8cnn_cnn_model_b0_conv2d1_biasadd_readvariableop_resource::
,cnn_cnn_model_b0_bn1_readvariableop_resource:<
.cnn_cnn_model_b0_bn1_readvariableop_1_resource:K
=cnn_cnn_model_b0_bn1_fusedbatchnormv3_readvariableop_resource:M
?cnn_cnn_model_b0_bn1_fusedbatchnormv3_readvariableop_1_resource:Q
7cnn_cnn_model_b0_conv2d2_conv2d_readvariableop_resource:F
8cnn_cnn_model_b0_conv2d2_biasadd_readvariableop_resource::
,cnn_cnn_model_b0_bn2_readvariableop_resource:<
.cnn_cnn_model_b0_bn2_readvariableop_1_resource:K
=cnn_cnn_model_b0_bn2_fusedbatchnormv3_readvariableop_resource:M
?cnn_cnn_model_b0_bn2_fusedbatchnormv3_readvariableop_1_resource:Q
7cnn_cnn_model_b1_conv2d1_conv2d_readvariableop_resource: F
8cnn_cnn_model_b1_conv2d1_biasadd_readvariableop_resource: :
,cnn_cnn_model_b1_bn1_readvariableop_resource: <
.cnn_cnn_model_b1_bn1_readvariableop_1_resource: K
=cnn_cnn_model_b1_bn1_fusedbatchnormv3_readvariableop_resource: M
?cnn_cnn_model_b1_bn1_fusedbatchnormv3_readvariableop_1_resource: Q
7cnn_cnn_model_b1_conv2d2_conv2d_readvariableop_resource:  F
8cnn_cnn_model_b1_conv2d2_biasadd_readvariableop_resource: :
,cnn_cnn_model_b1_bn2_readvariableop_resource: <
.cnn_cnn_model_b1_bn2_readvariableop_1_resource: K
=cnn_cnn_model_b1_bn2_fusedbatchnormv3_readvariableop_resource: M
?cnn_cnn_model_b1_bn2_fusedbatchnormv3_readvariableop_1_resource: Q
7cnn_cnn_model_b2_conv2d1_conv2d_readvariableop_resource: @F
8cnn_cnn_model_b2_conv2d1_biasadd_readvariableop_resource:@:
,cnn_cnn_model_b2_bn1_readvariableop_resource:@<
.cnn_cnn_model_b2_bn1_readvariableop_1_resource:@K
=cnn_cnn_model_b2_bn1_fusedbatchnormv3_readvariableop_resource:@M
?cnn_cnn_model_b2_bn1_fusedbatchnormv3_readvariableop_1_resource:@Q
7cnn_cnn_model_b2_conv2d2_conv2d_readvariableop_resource:@@F
8cnn_cnn_model_b2_conv2d2_biasadd_readvariableop_resource:@:
,cnn_cnn_model_b2_bn2_readvariableop_resource:@<
.cnn_cnn_model_b2_bn2_readvariableop_1_resource:@K
=cnn_cnn_model_b2_bn2_fusedbatchnormv3_readvariableop_resource:@M
?cnn_cnn_model_b2_bn2_fusedbatchnormv3_readvariableop_1_resource:@P
<cnn_dense_layers_final_dense1_matmul_readvariableop_resource:
��K
=cnn_dense_layers_final_dense1_biasadd_readvariableop_resource:I
;cnn_dense_layers_final_bn_batchnorm_readvariableop_resource:M
?cnn_dense_layers_final_bn_batchnorm_mul_readvariableop_resource:K
=cnn_dense_layers_final_bn_batchnorm_readvariableop_1_resource:K
=cnn_dense_layers_final_bn_batchnorm_readvariableop_2_resource:N
<cnn_dense_layers_final_dense2_matmul_readvariableop_resource:K
=cnn_dense_layers_final_dense2_biasadd_readvariableop_resource:
identity��4CNN/CNN_Model/B0_BN1/FusedBatchNormV3/ReadVariableOp�6CNN/CNN_Model/B0_BN1/FusedBatchNormV3/ReadVariableOp_1�#CNN/CNN_Model/B0_BN1/ReadVariableOp�%CNN/CNN_Model/B0_BN1/ReadVariableOp_1�4CNN/CNN_Model/B0_BN2/FusedBatchNormV3/ReadVariableOp�6CNN/CNN_Model/B0_BN2/FusedBatchNormV3/ReadVariableOp_1�#CNN/CNN_Model/B0_BN2/ReadVariableOp�%CNN/CNN_Model/B0_BN2/ReadVariableOp_1�/CNN/CNN_Model/B0_Conv2d1/BiasAdd/ReadVariableOp�.CNN/CNN_Model/B0_Conv2d1/Conv2D/ReadVariableOp�/CNN/CNN_Model/B0_Conv2d2/BiasAdd/ReadVariableOp�.CNN/CNN_Model/B0_Conv2d2/Conv2D/ReadVariableOp�4CNN/CNN_Model/B1_BN1/FusedBatchNormV3/ReadVariableOp�6CNN/CNN_Model/B1_BN1/FusedBatchNormV3/ReadVariableOp_1�#CNN/CNN_Model/B1_BN1/ReadVariableOp�%CNN/CNN_Model/B1_BN1/ReadVariableOp_1�4CNN/CNN_Model/B1_BN2/FusedBatchNormV3/ReadVariableOp�6CNN/CNN_Model/B1_BN2/FusedBatchNormV3/ReadVariableOp_1�#CNN/CNN_Model/B1_BN2/ReadVariableOp�%CNN/CNN_Model/B1_BN2/ReadVariableOp_1�/CNN/CNN_Model/B1_Conv2d1/BiasAdd/ReadVariableOp�.CNN/CNN_Model/B1_Conv2d1/Conv2D/ReadVariableOp�/CNN/CNN_Model/B1_Conv2d2/BiasAdd/ReadVariableOp�.CNN/CNN_Model/B1_Conv2d2/Conv2D/ReadVariableOp�4CNN/CNN_Model/B2_BN1/FusedBatchNormV3/ReadVariableOp�6CNN/CNN_Model/B2_BN1/FusedBatchNormV3/ReadVariableOp_1�#CNN/CNN_Model/B2_BN1/ReadVariableOp�%CNN/CNN_Model/B2_BN1/ReadVariableOp_1�4CNN/CNN_Model/B2_BN2/FusedBatchNormV3/ReadVariableOp�6CNN/CNN_Model/B2_BN2/FusedBatchNormV3/ReadVariableOp_1�#CNN/CNN_Model/B2_BN2/ReadVariableOp�%CNN/CNN_Model/B2_BN2/ReadVariableOp_1�/CNN/CNN_Model/B2_Conv2d1/BiasAdd/ReadVariableOp�.CNN/CNN_Model/B2_Conv2d1/Conv2D/ReadVariableOp�/CNN/CNN_Model/B2_Conv2d2/BiasAdd/ReadVariableOp�.CNN/CNN_Model/B2_Conv2d2/Conv2D/ReadVariableOp�2CNN/dense_layers/Final_BN/batchnorm/ReadVariableOp�4CNN/dense_layers/Final_BN/batchnorm/ReadVariableOp_1�4CNN/dense_layers/Final_BN/batchnorm/ReadVariableOp_2�6CNN/dense_layers/Final_BN/batchnorm/mul/ReadVariableOp�4CNN/dense_layers/Final_Dense1/BiasAdd/ReadVariableOp�3CNN/dense_layers/Final_Dense1/MatMul/ReadVariableOp�4CNN/dense_layers/Final_Dense2/BiasAdd/ReadVariableOp�3CNN/dense_layers/Final_Dense2/MatMul/ReadVariableOpm
(CNN/data_augmentation/rescaling_2/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;o
*CNN/data_augmentation/rescaling_2/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%CNN/data_augmentation/rescaling_2/mulMuldata_augmentation_input1CNN/data_augmentation/rescaling_2/Cast/x:output:0*
T0*1
_output_shapes
:������������
%CNN/data_augmentation/rescaling_2/addAddV2)CNN/data_augmentation/rescaling_2/mul:z:03CNN/data_augmentation/rescaling_2/Cast_1/x:output:0*
T0*1
_output_shapes
:������������
.CNN/CNN_Model/B0_Conv2d1/Conv2D/ReadVariableOpReadVariableOp7cnn_cnn_model_b0_conv2d1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
CNN/CNN_Model/B0_Conv2d1/Conv2DConv2D)CNN/data_augmentation/rescaling_2/add:z:06CNN/CNN_Model/B0_Conv2d1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
/CNN/CNN_Model/B0_Conv2d1/BiasAdd/ReadVariableOpReadVariableOp8cnn_cnn_model_b0_conv2d1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 CNN/CNN_Model/B0_Conv2d1/BiasAddBiasAdd(CNN/CNN_Model/B0_Conv2d1/Conv2D:output:07CNN/CNN_Model/B0_Conv2d1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
CNN/CNN_Model/B0_Conv2d1/ReluRelu)CNN/CNN_Model/B0_Conv2d1/BiasAdd:output:0*
T0*1
_output_shapes
:������������
#CNN/CNN_Model/B0_BN1/ReadVariableOpReadVariableOp,cnn_cnn_model_b0_bn1_readvariableop_resource*
_output_shapes
:*
dtype0�
%CNN/CNN_Model/B0_BN1/ReadVariableOp_1ReadVariableOp.cnn_cnn_model_b0_bn1_readvariableop_1_resource*
_output_shapes
:*
dtype0�
4CNN/CNN_Model/B0_BN1/FusedBatchNormV3/ReadVariableOpReadVariableOp=cnn_cnn_model_b0_bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
6CNN/CNN_Model/B0_BN1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp?cnn_cnn_model_b0_bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
%CNN/CNN_Model/B0_BN1/FusedBatchNormV3FusedBatchNormV3+CNN/CNN_Model/B0_Conv2d1/Relu:activations:0+CNN/CNN_Model/B0_BN1/ReadVariableOp:value:0-CNN/CNN_Model/B0_BN1/ReadVariableOp_1:value:0<CNN/CNN_Model/B0_BN1/FusedBatchNormV3/ReadVariableOp:value:0>CNN/CNN_Model/B0_BN1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
CNN/CNN_Model/B0_DP1/IdentityIdentity)CNN/CNN_Model/B0_BN1/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:������������
.CNN/CNN_Model/B0_Conv2d2/Conv2D/ReadVariableOpReadVariableOp7cnn_cnn_model_b0_conv2d2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
CNN/CNN_Model/B0_Conv2d2/Conv2DConv2D&CNN/CNN_Model/B0_DP1/Identity:output:06CNN/CNN_Model/B0_Conv2d2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
�
/CNN/CNN_Model/B0_Conv2d2/BiasAdd/ReadVariableOpReadVariableOp8cnn_cnn_model_b0_conv2d2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
 CNN/CNN_Model/B0_Conv2d2/BiasAddBiasAdd(CNN/CNN_Model/B0_Conv2d2/Conv2D:output:07CNN/CNN_Model/B0_Conv2d2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:������������
CNN/CNN_Model/B0_Conv2d2/ReluRelu)CNN/CNN_Model/B0_Conv2d2/BiasAdd:output:0*
T0*1
_output_shapes
:������������
#CNN/CNN_Model/B0_BN2/ReadVariableOpReadVariableOp,cnn_cnn_model_b0_bn2_readvariableop_resource*
_output_shapes
:*
dtype0�
%CNN/CNN_Model/B0_BN2/ReadVariableOp_1ReadVariableOp.cnn_cnn_model_b0_bn2_readvariableop_1_resource*
_output_shapes
:*
dtype0�
4CNN/CNN_Model/B0_BN2/FusedBatchNormV3/ReadVariableOpReadVariableOp=cnn_cnn_model_b0_bn2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
6CNN/CNN_Model/B0_BN2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp?cnn_cnn_model_b0_bn2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
%CNN/CNN_Model/B0_BN2/FusedBatchNormV3FusedBatchNormV3+CNN/CNN_Model/B0_Conv2d2/Relu:activations:0+CNN/CNN_Model/B0_BN2/ReadVariableOp:value:0-CNN/CNN_Model/B0_BN2/ReadVariableOp_1:value:0<CNN/CNN_Model/B0_BN2/FusedBatchNormV3/ReadVariableOp:value:0>CNN/CNN_Model/B0_BN2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:�����������:::::*
epsilon%o�:*
is_training( �
CNN/CNN_Model/B0_DP2/IdentityIdentity)CNN/CNN_Model/B0_BN2/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:������������
CNN/CNN_Model/B0_MAX/MaxPoolMaxPool&CNN/CNN_Model/B0_DP2/Identity:output:0*1
_output_shapes
:�����������*
ksize
*
paddingVALID*
strides
�
.CNN/CNN_Model/B1_Conv2d1/Conv2D/ReadVariableOpReadVariableOp7cnn_cnn_model_b1_conv2d1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
CNN/CNN_Model/B1_Conv2d1/Conv2DConv2D%CNN/CNN_Model/B0_MAX/MaxPool:output:06CNN/CNN_Model/B1_Conv2d1/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
�
/CNN/CNN_Model/B1_Conv2d1/BiasAdd/ReadVariableOpReadVariableOp8cnn_cnn_model_b1_conv2d1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
 CNN/CNN_Model/B1_Conv2d1/BiasAddBiasAdd(CNN/CNN_Model/B1_Conv2d1/Conv2D:output:07CNN/CNN_Model/B1_Conv2d1/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� �
CNN/CNN_Model/B1_Conv2d1/ReluRelu)CNN/CNN_Model/B1_Conv2d1/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
#CNN/CNN_Model/B1_BN1/ReadVariableOpReadVariableOp,cnn_cnn_model_b1_bn1_readvariableop_resource*
_output_shapes
: *
dtype0�
%CNN/CNN_Model/B1_BN1/ReadVariableOp_1ReadVariableOp.cnn_cnn_model_b1_bn1_readvariableop_1_resource*
_output_shapes
: *
dtype0�
4CNN/CNN_Model/B1_BN1/FusedBatchNormV3/ReadVariableOpReadVariableOp=cnn_cnn_model_b1_bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
6CNN/CNN_Model/B1_BN1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp?cnn_cnn_model_b1_bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
%CNN/CNN_Model/B1_BN1/FusedBatchNormV3FusedBatchNormV3+CNN/CNN_Model/B1_Conv2d1/Relu:activations:0+CNN/CNN_Model/B1_BN1/ReadVariableOp:value:0-CNN/CNN_Model/B1_BN1/ReadVariableOp_1:value:0<CNN/CNN_Model/B1_BN1/FusedBatchNormV3/ReadVariableOp:value:0>CNN/CNN_Model/B1_BN1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:����������� : : : : :*
epsilon%o�:*
is_training( �
CNN/CNN_Model/B1_DP1/IdentityIdentity)CNN/CNN_Model/B1_BN1/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:����������� �
.CNN/CNN_Model/B1_Conv2d2/Conv2D/ReadVariableOpReadVariableOp7cnn_cnn_model_b1_conv2d2_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
CNN/CNN_Model/B1_Conv2d2/Conv2DConv2D&CNN/CNN_Model/B1_DP1/Identity:output:06CNN/CNN_Model/B1_Conv2d2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
�
/CNN/CNN_Model/B1_Conv2d2/BiasAdd/ReadVariableOpReadVariableOp8cnn_cnn_model_b1_conv2d2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
 CNN/CNN_Model/B1_Conv2d2/BiasAddBiasAdd(CNN/CNN_Model/B1_Conv2d2/Conv2D:output:07CNN/CNN_Model/B1_Conv2d2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� �
CNN/CNN_Model/B1_Conv2d2/ReluRelu)CNN/CNN_Model/B1_Conv2d2/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
#CNN/CNN_Model/B1_BN2/ReadVariableOpReadVariableOp,cnn_cnn_model_b1_bn2_readvariableop_resource*
_output_shapes
: *
dtype0�
%CNN/CNN_Model/B1_BN2/ReadVariableOp_1ReadVariableOp.cnn_cnn_model_b1_bn2_readvariableop_1_resource*
_output_shapes
: *
dtype0�
4CNN/CNN_Model/B1_BN2/FusedBatchNormV3/ReadVariableOpReadVariableOp=cnn_cnn_model_b1_bn2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
6CNN/CNN_Model/B1_BN2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp?cnn_cnn_model_b1_bn2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
%CNN/CNN_Model/B1_BN2/FusedBatchNormV3FusedBatchNormV3+CNN/CNN_Model/B1_Conv2d2/Relu:activations:0+CNN/CNN_Model/B1_BN2/ReadVariableOp:value:0-CNN/CNN_Model/B1_BN2/ReadVariableOp_1:value:0<CNN/CNN_Model/B1_BN2/FusedBatchNormV3/ReadVariableOp:value:0>CNN/CNN_Model/B1_BN2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:����������� : : : : :*
epsilon%o�:*
is_training( �
CNN/CNN_Model/B1_DP2/IdentityIdentity)CNN/CNN_Model/B1_BN2/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:����������� �
CNN/CNN_Model/B1_MAX/MaxPoolMaxPool&CNN/CNN_Model/B1_DP2/Identity:output:0*/
_output_shapes
:���������}} *
ksize
*
paddingVALID*
strides
�
.CNN/CNN_Model/B2_Conv2d1/Conv2D/ReadVariableOpReadVariableOp7cnn_cnn_model_b2_conv2d1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
CNN/CNN_Model/B2_Conv2d1/Conv2DConv2D%CNN/CNN_Model/B1_MAX/MaxPool:output:06CNN/CNN_Model/B2_Conv2d1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������{{@*
paddingVALID*
strides
�
/CNN/CNN_Model/B2_Conv2d1/BiasAdd/ReadVariableOpReadVariableOp8cnn_cnn_model_b2_conv2d1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
 CNN/CNN_Model/B2_Conv2d1/BiasAddBiasAdd(CNN/CNN_Model/B2_Conv2d1/Conv2D:output:07CNN/CNN_Model/B2_Conv2d1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������{{@�
CNN/CNN_Model/B2_Conv2d1/ReluRelu)CNN/CNN_Model/B2_Conv2d1/BiasAdd:output:0*
T0*/
_output_shapes
:���������{{@�
#CNN/CNN_Model/B2_BN1/ReadVariableOpReadVariableOp,cnn_cnn_model_b2_bn1_readvariableop_resource*
_output_shapes
:@*
dtype0�
%CNN/CNN_Model/B2_BN1/ReadVariableOp_1ReadVariableOp.cnn_cnn_model_b2_bn1_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
4CNN/CNN_Model/B2_BN1/FusedBatchNormV3/ReadVariableOpReadVariableOp=cnn_cnn_model_b2_bn1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
6CNN/CNN_Model/B2_BN1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp?cnn_cnn_model_b2_bn1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
%CNN/CNN_Model/B2_BN1/FusedBatchNormV3FusedBatchNormV3+CNN/CNN_Model/B2_Conv2d1/Relu:activations:0+CNN/CNN_Model/B2_BN1/ReadVariableOp:value:0-CNN/CNN_Model/B2_BN1/ReadVariableOp_1:value:0<CNN/CNN_Model/B2_BN1/FusedBatchNormV3/ReadVariableOp:value:0>CNN/CNN_Model/B2_BN1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������{{@:@:@:@:@:*
epsilon%o�:*
is_training( �
CNN/CNN_Model/B2_DP1/IdentityIdentity)CNN/CNN_Model/B2_BN1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������{{@�
.CNN/CNN_Model/B2_Conv2d2/Conv2D/ReadVariableOpReadVariableOp7cnn_cnn_model_b2_conv2d2_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
CNN/CNN_Model/B2_Conv2d2/Conv2DConv2D&CNN/CNN_Model/B2_DP1/Identity:output:06CNN/CNN_Model/B2_Conv2d2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������yy@*
paddingVALID*
strides
�
/CNN/CNN_Model/B2_Conv2d2/BiasAdd/ReadVariableOpReadVariableOp8cnn_cnn_model_b2_conv2d2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
 CNN/CNN_Model/B2_Conv2d2/BiasAddBiasAdd(CNN/CNN_Model/B2_Conv2d2/Conv2D:output:07CNN/CNN_Model/B2_Conv2d2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������yy@�
CNN/CNN_Model/B2_Conv2d2/ReluRelu)CNN/CNN_Model/B2_Conv2d2/BiasAdd:output:0*
T0*/
_output_shapes
:���������yy@�
#CNN/CNN_Model/B2_BN2/ReadVariableOpReadVariableOp,cnn_cnn_model_b2_bn2_readvariableop_resource*
_output_shapes
:@*
dtype0�
%CNN/CNN_Model/B2_BN2/ReadVariableOp_1ReadVariableOp.cnn_cnn_model_b2_bn2_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
4CNN/CNN_Model/B2_BN2/FusedBatchNormV3/ReadVariableOpReadVariableOp=cnn_cnn_model_b2_bn2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
6CNN/CNN_Model/B2_BN2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp?cnn_cnn_model_b2_bn2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
%CNN/CNN_Model/B2_BN2/FusedBatchNormV3FusedBatchNormV3+CNN/CNN_Model/B2_Conv2d2/Relu:activations:0+CNN/CNN_Model/B2_BN2/ReadVariableOp:value:0-CNN/CNN_Model/B2_BN2/ReadVariableOp_1:value:0<CNN/CNN_Model/B2_BN2/FusedBatchNormV3/ReadVariableOp:value:0>CNN/CNN_Model/B2_BN2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������yy@:@:@:@:@:*
epsilon%o�:*
is_training( �
CNN/CNN_Model/B2_DP2/IdentityIdentity)CNN/CNN_Model/B2_BN2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������yy@�
CNN/CNN_Model/B2_MAX/MaxPoolMaxPool&CNN/CNN_Model/B2_DP2/Identity:output:0*/
_output_shapes
:���������<<@*
ksize
*
paddingVALID*
strides
o
CNN/dense_layers/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� � �
 CNN/dense_layers/flatten/ReshapeReshape%CNN/CNN_Model/B2_MAX/MaxPool:output:0'CNN/dense_layers/flatten/Const:output:0*
T0*)
_output_shapes
:������������
3CNN/dense_layers/Final_Dense1/MatMul/ReadVariableOpReadVariableOp<cnn_dense_layers_final_dense1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
$CNN/dense_layers/Final_Dense1/MatMulMatMul)CNN/dense_layers/flatten/Reshape:output:0;CNN/dense_layers/Final_Dense1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
4CNN/dense_layers/Final_Dense1/BiasAdd/ReadVariableOpReadVariableOp=cnn_dense_layers_final_dense1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
%CNN/dense_layers/Final_Dense1/BiasAddBiasAdd.CNN/dense_layers/Final_Dense1/MatMul:product:0<CNN/dense_layers/Final_Dense1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
"CNN/dense_layers/Final_Dense1/ReluRelu.CNN/dense_layers/Final_Dense1/BiasAdd:output:0*
T0*'
_output_shapes
:����������
2CNN/dense_layers/Final_BN/batchnorm/ReadVariableOpReadVariableOp;cnn_dense_layers_final_bn_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0n
)CNN/dense_layers/Final_BN/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
'CNN/dense_layers/Final_BN/batchnorm/addAddV2:CNN/dense_layers/Final_BN/batchnorm/ReadVariableOp:value:02CNN/dense_layers/Final_BN/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
)CNN/dense_layers/Final_BN/batchnorm/RsqrtRsqrt+CNN/dense_layers/Final_BN/batchnorm/add:z:0*
T0*
_output_shapes
:�
6CNN/dense_layers/Final_BN/batchnorm/mul/ReadVariableOpReadVariableOp?cnn_dense_layers_final_bn_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
'CNN/dense_layers/Final_BN/batchnorm/mulMul-CNN/dense_layers/Final_BN/batchnorm/Rsqrt:y:0>CNN/dense_layers/Final_BN/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
)CNN/dense_layers/Final_BN/batchnorm/mul_1Mul0CNN/dense_layers/Final_Dense1/Relu:activations:0+CNN/dense_layers/Final_BN/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
4CNN/dense_layers/Final_BN/batchnorm/ReadVariableOp_1ReadVariableOp=cnn_dense_layers_final_bn_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
)CNN/dense_layers/Final_BN/batchnorm/mul_2Mul<CNN/dense_layers/Final_BN/batchnorm/ReadVariableOp_1:value:0+CNN/dense_layers/Final_BN/batchnorm/mul:z:0*
T0*
_output_shapes
:�
4CNN/dense_layers/Final_BN/batchnorm/ReadVariableOp_2ReadVariableOp=cnn_dense_layers_final_bn_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
'CNN/dense_layers/Final_BN/batchnorm/subSub<CNN/dense_layers/Final_BN/batchnorm/ReadVariableOp_2:value:0-CNN/dense_layers/Final_BN/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
)CNN/dense_layers/Final_BN/batchnorm/add_1AddV2-CNN/dense_layers/Final_BN/batchnorm/mul_1:z:0+CNN/dense_layers/Final_BN/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
"CNN/dense_layers/Final_DP/IdentityIdentity-CNN/dense_layers/Final_BN/batchnorm/add_1:z:0*
T0*'
_output_shapes
:����������
3CNN/dense_layers/Final_Dense2/MatMul/ReadVariableOpReadVariableOp<cnn_dense_layers_final_dense2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
$CNN/dense_layers/Final_Dense2/MatMulMatMul+CNN/dense_layers/Final_DP/Identity:output:0;CNN/dense_layers/Final_Dense2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
4CNN/dense_layers/Final_Dense2/BiasAdd/ReadVariableOpReadVariableOp=cnn_dense_layers_final_dense2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
%CNN/dense_layers/Final_Dense2/BiasAddBiasAdd.CNN/dense_layers/Final_Dense2/MatMul:product:0<CNN/dense_layers/Final_Dense2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
%CNN/dense_layers/Final_Dense2/SoftmaxSoftmax.CNN/dense_layers/Final_Dense2/BiasAdd:output:0*
T0*'
_output_shapes
:���������~
IdentityIdentity/CNN/dense_layers/Final_Dense2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp5^CNN/CNN_Model/B0_BN1/FusedBatchNormV3/ReadVariableOp7^CNN/CNN_Model/B0_BN1/FusedBatchNormV3/ReadVariableOp_1$^CNN/CNN_Model/B0_BN1/ReadVariableOp&^CNN/CNN_Model/B0_BN1/ReadVariableOp_15^CNN/CNN_Model/B0_BN2/FusedBatchNormV3/ReadVariableOp7^CNN/CNN_Model/B0_BN2/FusedBatchNormV3/ReadVariableOp_1$^CNN/CNN_Model/B0_BN2/ReadVariableOp&^CNN/CNN_Model/B0_BN2/ReadVariableOp_10^CNN/CNN_Model/B0_Conv2d1/BiasAdd/ReadVariableOp/^CNN/CNN_Model/B0_Conv2d1/Conv2D/ReadVariableOp0^CNN/CNN_Model/B0_Conv2d2/BiasAdd/ReadVariableOp/^CNN/CNN_Model/B0_Conv2d2/Conv2D/ReadVariableOp5^CNN/CNN_Model/B1_BN1/FusedBatchNormV3/ReadVariableOp7^CNN/CNN_Model/B1_BN1/FusedBatchNormV3/ReadVariableOp_1$^CNN/CNN_Model/B1_BN1/ReadVariableOp&^CNN/CNN_Model/B1_BN1/ReadVariableOp_15^CNN/CNN_Model/B1_BN2/FusedBatchNormV3/ReadVariableOp7^CNN/CNN_Model/B1_BN2/FusedBatchNormV3/ReadVariableOp_1$^CNN/CNN_Model/B1_BN2/ReadVariableOp&^CNN/CNN_Model/B1_BN2/ReadVariableOp_10^CNN/CNN_Model/B1_Conv2d1/BiasAdd/ReadVariableOp/^CNN/CNN_Model/B1_Conv2d1/Conv2D/ReadVariableOp0^CNN/CNN_Model/B1_Conv2d2/BiasAdd/ReadVariableOp/^CNN/CNN_Model/B1_Conv2d2/Conv2D/ReadVariableOp5^CNN/CNN_Model/B2_BN1/FusedBatchNormV3/ReadVariableOp7^CNN/CNN_Model/B2_BN1/FusedBatchNormV3/ReadVariableOp_1$^CNN/CNN_Model/B2_BN1/ReadVariableOp&^CNN/CNN_Model/B2_BN1/ReadVariableOp_15^CNN/CNN_Model/B2_BN2/FusedBatchNormV3/ReadVariableOp7^CNN/CNN_Model/B2_BN2/FusedBatchNormV3/ReadVariableOp_1$^CNN/CNN_Model/B2_BN2/ReadVariableOp&^CNN/CNN_Model/B2_BN2/ReadVariableOp_10^CNN/CNN_Model/B2_Conv2d1/BiasAdd/ReadVariableOp/^CNN/CNN_Model/B2_Conv2d1/Conv2D/ReadVariableOp0^CNN/CNN_Model/B2_Conv2d2/BiasAdd/ReadVariableOp/^CNN/CNN_Model/B2_Conv2d2/Conv2D/ReadVariableOp3^CNN/dense_layers/Final_BN/batchnorm/ReadVariableOp5^CNN/dense_layers/Final_BN/batchnorm/ReadVariableOp_15^CNN/dense_layers/Final_BN/batchnorm/ReadVariableOp_27^CNN/dense_layers/Final_BN/batchnorm/mul/ReadVariableOp5^CNN/dense_layers/Final_Dense1/BiasAdd/ReadVariableOp4^CNN/dense_layers/Final_Dense1/MatMul/ReadVariableOp5^CNN/dense_layers/Final_Dense2/BiasAdd/ReadVariableOp4^CNN/dense_layers/Final_Dense2/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesw
u:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6CNN/CNN_Model/B0_BN1/FusedBatchNormV3/ReadVariableOp_16CNN/CNN_Model/B0_BN1/FusedBatchNormV3/ReadVariableOp_12l
4CNN/CNN_Model/B0_BN1/FusedBatchNormV3/ReadVariableOp4CNN/CNN_Model/B0_BN1/FusedBatchNormV3/ReadVariableOp2N
%CNN/CNN_Model/B0_BN1/ReadVariableOp_1%CNN/CNN_Model/B0_BN1/ReadVariableOp_12J
#CNN/CNN_Model/B0_BN1/ReadVariableOp#CNN/CNN_Model/B0_BN1/ReadVariableOp2p
6CNN/CNN_Model/B0_BN2/FusedBatchNormV3/ReadVariableOp_16CNN/CNN_Model/B0_BN2/FusedBatchNormV3/ReadVariableOp_12l
4CNN/CNN_Model/B0_BN2/FusedBatchNormV3/ReadVariableOp4CNN/CNN_Model/B0_BN2/FusedBatchNormV3/ReadVariableOp2N
%CNN/CNN_Model/B0_BN2/ReadVariableOp_1%CNN/CNN_Model/B0_BN2/ReadVariableOp_12J
#CNN/CNN_Model/B0_BN2/ReadVariableOp#CNN/CNN_Model/B0_BN2/ReadVariableOp2b
/CNN/CNN_Model/B0_Conv2d1/BiasAdd/ReadVariableOp/CNN/CNN_Model/B0_Conv2d1/BiasAdd/ReadVariableOp2`
.CNN/CNN_Model/B0_Conv2d1/Conv2D/ReadVariableOp.CNN/CNN_Model/B0_Conv2d1/Conv2D/ReadVariableOp2b
/CNN/CNN_Model/B0_Conv2d2/BiasAdd/ReadVariableOp/CNN/CNN_Model/B0_Conv2d2/BiasAdd/ReadVariableOp2`
.CNN/CNN_Model/B0_Conv2d2/Conv2D/ReadVariableOp.CNN/CNN_Model/B0_Conv2d2/Conv2D/ReadVariableOp2p
6CNN/CNN_Model/B1_BN1/FusedBatchNormV3/ReadVariableOp_16CNN/CNN_Model/B1_BN1/FusedBatchNormV3/ReadVariableOp_12l
4CNN/CNN_Model/B1_BN1/FusedBatchNormV3/ReadVariableOp4CNN/CNN_Model/B1_BN1/FusedBatchNormV3/ReadVariableOp2N
%CNN/CNN_Model/B1_BN1/ReadVariableOp_1%CNN/CNN_Model/B1_BN1/ReadVariableOp_12J
#CNN/CNN_Model/B1_BN1/ReadVariableOp#CNN/CNN_Model/B1_BN1/ReadVariableOp2p
6CNN/CNN_Model/B1_BN2/FusedBatchNormV3/ReadVariableOp_16CNN/CNN_Model/B1_BN2/FusedBatchNormV3/ReadVariableOp_12l
4CNN/CNN_Model/B1_BN2/FusedBatchNormV3/ReadVariableOp4CNN/CNN_Model/B1_BN2/FusedBatchNormV3/ReadVariableOp2N
%CNN/CNN_Model/B1_BN2/ReadVariableOp_1%CNN/CNN_Model/B1_BN2/ReadVariableOp_12J
#CNN/CNN_Model/B1_BN2/ReadVariableOp#CNN/CNN_Model/B1_BN2/ReadVariableOp2b
/CNN/CNN_Model/B1_Conv2d1/BiasAdd/ReadVariableOp/CNN/CNN_Model/B1_Conv2d1/BiasAdd/ReadVariableOp2`
.CNN/CNN_Model/B1_Conv2d1/Conv2D/ReadVariableOp.CNN/CNN_Model/B1_Conv2d1/Conv2D/ReadVariableOp2b
/CNN/CNN_Model/B1_Conv2d2/BiasAdd/ReadVariableOp/CNN/CNN_Model/B1_Conv2d2/BiasAdd/ReadVariableOp2`
.CNN/CNN_Model/B1_Conv2d2/Conv2D/ReadVariableOp.CNN/CNN_Model/B1_Conv2d2/Conv2D/ReadVariableOp2p
6CNN/CNN_Model/B2_BN1/FusedBatchNormV3/ReadVariableOp_16CNN/CNN_Model/B2_BN1/FusedBatchNormV3/ReadVariableOp_12l
4CNN/CNN_Model/B2_BN1/FusedBatchNormV3/ReadVariableOp4CNN/CNN_Model/B2_BN1/FusedBatchNormV3/ReadVariableOp2N
%CNN/CNN_Model/B2_BN1/ReadVariableOp_1%CNN/CNN_Model/B2_BN1/ReadVariableOp_12J
#CNN/CNN_Model/B2_BN1/ReadVariableOp#CNN/CNN_Model/B2_BN1/ReadVariableOp2p
6CNN/CNN_Model/B2_BN2/FusedBatchNormV3/ReadVariableOp_16CNN/CNN_Model/B2_BN2/FusedBatchNormV3/ReadVariableOp_12l
4CNN/CNN_Model/B2_BN2/FusedBatchNormV3/ReadVariableOp4CNN/CNN_Model/B2_BN2/FusedBatchNormV3/ReadVariableOp2N
%CNN/CNN_Model/B2_BN2/ReadVariableOp_1%CNN/CNN_Model/B2_BN2/ReadVariableOp_12J
#CNN/CNN_Model/B2_BN2/ReadVariableOp#CNN/CNN_Model/B2_BN2/ReadVariableOp2b
/CNN/CNN_Model/B2_Conv2d1/BiasAdd/ReadVariableOp/CNN/CNN_Model/B2_Conv2d1/BiasAdd/ReadVariableOp2`
.CNN/CNN_Model/B2_Conv2d1/Conv2D/ReadVariableOp.CNN/CNN_Model/B2_Conv2d1/Conv2D/ReadVariableOp2b
/CNN/CNN_Model/B2_Conv2d2/BiasAdd/ReadVariableOp/CNN/CNN_Model/B2_Conv2d2/BiasAdd/ReadVariableOp2`
.CNN/CNN_Model/B2_Conv2d2/Conv2D/ReadVariableOp.CNN/CNN_Model/B2_Conv2d2/Conv2D/ReadVariableOp2l
4CNN/dense_layers/Final_BN/batchnorm/ReadVariableOp_14CNN/dense_layers/Final_BN/batchnorm/ReadVariableOp_12l
4CNN/dense_layers/Final_BN/batchnorm/ReadVariableOp_24CNN/dense_layers/Final_BN/batchnorm/ReadVariableOp_22h
2CNN/dense_layers/Final_BN/batchnorm/ReadVariableOp2CNN/dense_layers/Final_BN/batchnorm/ReadVariableOp2p
6CNN/dense_layers/Final_BN/batchnorm/mul/ReadVariableOp6CNN/dense_layers/Final_BN/batchnorm/mul/ReadVariableOp2l
4CNN/dense_layers/Final_Dense1/BiasAdd/ReadVariableOp4CNN/dense_layers/Final_Dense1/BiasAdd/ReadVariableOp2j
3CNN/dense_layers/Final_Dense1/MatMul/ReadVariableOp3CNN/dense_layers/Final_Dense1/MatMul/ReadVariableOp2l
4CNN/dense_layers/Final_Dense2/BiasAdd/ReadVariableOp4CNN/dense_layers/Final_Dense2/BiasAdd/ReadVariableOp2j
3CNN/dense_layers/Final_Dense2/MatMul/ReadVariableOp3CNN/dense_layers/Final_Dense2/MatMul/ReadVariableOp:(,$
"
_user_specified_name
resource:(+$
"
_user_specified_name
resource:(*$
"
_user_specified_name
resource:()$
"
_user_specified_name
resource:(($
"
_user_specified_name
resource:('$
"
_user_specified_name
resource:(&$
"
_user_specified_name
resource:(%$
"
_user_specified_name
resource:($$
"
_user_specified_name
resource:(#$
"
_user_specified_name
resource:("$
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
1
_output_shapes
:�����������
1
_user_specified_namedata_augmentation_input
�
�
.__inference_Final_Dense2_layer_call_fn_4795214

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_Final_Dense2_layer_call_and_return_conditional_losses_4792630o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4795210:'#
!
_user_specified_name	4795208:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

d
E__inference_Final_DP_layer_call_and_return_conditional_losses_4792605

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *G�?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0*
seed��[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
C__inference_B1_BN2_layer_call_and_return_conditional_losses_4791414

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�	
�
(__inference_B2_BN1_layer_call_fn_4794744

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B2_BN1_layer_call_and_return_conditional_losses_4791486�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4794740:'#
!
_user_specified_name	4794738:'#
!
_user_specified_name	4794736:'#
!
_user_specified_name	4794734:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
��
�F
#__inference__traced_restore_4796335
file_prefix<
"assignvariableop_b0_conv2d1_kernel:0
"assignvariableop_1_b0_conv2d1_bias:-
assignvariableop_2_b0_bn1_gamma:,
assignvariableop_3_b0_bn1_beta:3
%assignvariableop_4_b0_bn1_moving_mean:7
)assignvariableop_5_b0_bn1_moving_variance:>
$assignvariableop_6_b0_conv2d2_kernel:0
"assignvariableop_7_b0_conv2d2_bias:-
assignvariableop_8_b0_bn2_gamma:,
assignvariableop_9_b0_bn2_beta:4
&assignvariableop_10_b0_bn2_moving_mean:8
*assignvariableop_11_b0_bn2_moving_variance:?
%assignvariableop_12_b1_conv2d1_kernel: 1
#assignvariableop_13_b1_conv2d1_bias: .
 assignvariableop_14_b1_bn1_gamma: -
assignvariableop_15_b1_bn1_beta: 4
&assignvariableop_16_b1_bn1_moving_mean: 8
*assignvariableop_17_b1_bn1_moving_variance: ?
%assignvariableop_18_b1_conv2d2_kernel:  1
#assignvariableop_19_b1_conv2d2_bias: .
 assignvariableop_20_b1_bn2_gamma: -
assignvariableop_21_b1_bn2_beta: 4
&assignvariableop_22_b1_bn2_moving_mean: 8
*assignvariableop_23_b1_bn2_moving_variance: ?
%assignvariableop_24_b2_conv2d1_kernel: @1
#assignvariableop_25_b2_conv2d1_bias:@.
 assignvariableop_26_b2_bn1_gamma:@-
assignvariableop_27_b2_bn1_beta:@4
&assignvariableop_28_b2_bn1_moving_mean:@8
*assignvariableop_29_b2_bn1_moving_variance:@?
%assignvariableop_30_b2_conv2d2_kernel:@@1
#assignvariableop_31_b2_conv2d2_bias:@.
 assignvariableop_32_b2_bn2_gamma:@-
assignvariableop_33_b2_bn2_beta:@4
&assignvariableop_34_b2_bn2_moving_mean:@8
*assignvariableop_35_b2_bn2_moving_variance:@;
'assignvariableop_36_final_dense1_kernel:
��3
%assignvariableop_37_final_dense1_bias:0
"assignvariableop_38_final_bn_gamma:/
!assignvariableop_39_final_bn_beta:6
(assignvariableop_40_final_bn_moving_mean::
,assignvariableop_41_final_bn_moving_variance:9
'assignvariableop_42_final_dense2_kernel:3
%assignvariableop_43_final_dense2_bias:'
assignvariableop_44_iteration:	 +
!assignvariableop_45_learning_rate: F
,assignvariableop_46_adam_m_b0_conv2d1_kernel:F
,assignvariableop_47_adam_v_b0_conv2d1_kernel:8
*assignvariableop_48_adam_m_b0_conv2d1_bias:8
*assignvariableop_49_adam_v_b0_conv2d1_bias:5
'assignvariableop_50_adam_m_b0_bn1_gamma:5
'assignvariableop_51_adam_v_b0_bn1_gamma:4
&assignvariableop_52_adam_m_b0_bn1_beta:4
&assignvariableop_53_adam_v_b0_bn1_beta:F
,assignvariableop_54_adam_m_b0_conv2d2_kernel:F
,assignvariableop_55_adam_v_b0_conv2d2_kernel:8
*assignvariableop_56_adam_m_b0_conv2d2_bias:8
*assignvariableop_57_adam_v_b0_conv2d2_bias:5
'assignvariableop_58_adam_m_b0_bn2_gamma:5
'assignvariableop_59_adam_v_b0_bn2_gamma:4
&assignvariableop_60_adam_m_b0_bn2_beta:4
&assignvariableop_61_adam_v_b0_bn2_beta:F
,assignvariableop_62_adam_m_b1_conv2d1_kernel: F
,assignvariableop_63_adam_v_b1_conv2d1_kernel: 8
*assignvariableop_64_adam_m_b1_conv2d1_bias: 8
*assignvariableop_65_adam_v_b1_conv2d1_bias: 5
'assignvariableop_66_adam_m_b1_bn1_gamma: 5
'assignvariableop_67_adam_v_b1_bn1_gamma: 4
&assignvariableop_68_adam_m_b1_bn1_beta: 4
&assignvariableop_69_adam_v_b1_bn1_beta: F
,assignvariableop_70_adam_m_b1_conv2d2_kernel:  F
,assignvariableop_71_adam_v_b1_conv2d2_kernel:  8
*assignvariableop_72_adam_m_b1_conv2d2_bias: 8
*assignvariableop_73_adam_v_b1_conv2d2_bias: 5
'assignvariableop_74_adam_m_b1_bn2_gamma: 5
'assignvariableop_75_adam_v_b1_bn2_gamma: 4
&assignvariableop_76_adam_m_b1_bn2_beta: 4
&assignvariableop_77_adam_v_b1_bn2_beta: F
,assignvariableop_78_adam_m_b2_conv2d1_kernel: @F
,assignvariableop_79_adam_v_b2_conv2d1_kernel: @8
*assignvariableop_80_adam_m_b2_conv2d1_bias:@8
*assignvariableop_81_adam_v_b2_conv2d1_bias:@5
'assignvariableop_82_adam_m_b2_bn1_gamma:@5
'assignvariableop_83_adam_v_b2_bn1_gamma:@4
&assignvariableop_84_adam_m_b2_bn1_beta:@4
&assignvariableop_85_adam_v_b2_bn1_beta:@F
,assignvariableop_86_adam_m_b2_conv2d2_kernel:@@F
,assignvariableop_87_adam_v_b2_conv2d2_kernel:@@8
*assignvariableop_88_adam_m_b2_conv2d2_bias:@8
*assignvariableop_89_adam_v_b2_conv2d2_bias:@5
'assignvariableop_90_adam_m_b2_bn2_gamma:@5
'assignvariableop_91_adam_v_b2_bn2_gamma:@4
&assignvariableop_92_adam_m_b2_bn2_beta:@4
&assignvariableop_93_adam_v_b2_bn2_beta:@B
.assignvariableop_94_adam_m_final_dense1_kernel:
��B
.assignvariableop_95_adam_v_final_dense1_kernel:
��:
,assignvariableop_96_adam_m_final_dense1_bias::
,assignvariableop_97_adam_v_final_dense1_bias:7
)assignvariableop_98_adam_m_final_bn_gamma:7
)assignvariableop_99_adam_v_final_bn_gamma:7
)assignvariableop_100_adam_m_final_bn_beta:7
)assignvariableop_101_adam_v_final_bn_beta:A
/assignvariableop_102_adam_m_final_dense2_kernel:A
/assignvariableop_103_adam_v_final_dense2_kernel:;
-assignvariableop_104_adam_m_final_dense2_bias:;
-assignvariableop_105_adam_v_final_dense2_bias:&
assignvariableop_106_total_1: &
assignvariableop_107_count_1: $
assignvariableop_108_total: $
assignvariableop_109_count: 9
+assignvariableop_110_random_flip_2_statevar:	=
/assignvariableop_111_random_rotation_2_statevar:	9
+assignvariableop_112_random_zoom_2_statevar:	
identity_114��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_100�AssignVariableOp_101�AssignVariableOp_102�AssignVariableOp_103�AssignVariableOp_104�AssignVariableOp_105�AssignVariableOp_106�AssignVariableOp_107�AssignVariableOp_108�AssignVariableOp_109�AssignVariableOp_11�AssignVariableOp_110�AssignVariableOp_111�AssignVariableOp_112�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_87�AssignVariableOp_88�AssignVariableOp_89�AssignVariableOp_9�AssignVariableOp_90�AssignVariableOp_91�AssignVariableOp_92�AssignVariableOp_93�AssignVariableOp_94�AssignVariableOp_95�AssignVariableOp_96�AssignVariableOp_97�AssignVariableOp_98�AssignVariableOp_99�+
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:r*
dtype0*�+
value�+B�+rB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-3/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:r*
dtype0*�
value�B�rB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*�
dtypesv
t2r				[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp"assignvariableop_b0_conv2d1_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp"assignvariableop_1_b0_conv2d1_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_b0_bn1_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_b0_bn1_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp%assignvariableop_4_b0_bn1_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp)assignvariableop_5_b0_bn1_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp$assignvariableop_6_b0_conv2d2_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp"assignvariableop_7_b0_conv2d2_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_b0_bn2_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_b0_bn2_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp&assignvariableop_10_b0_bn2_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp*assignvariableop_11_b0_bn2_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp%assignvariableop_12_b1_conv2d1_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp#assignvariableop_13_b1_conv2d1_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp assignvariableop_14_b1_bn1_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_b1_bn1_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp&assignvariableop_16_b1_bn1_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp*assignvariableop_17_b1_bn1_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp%assignvariableop_18_b1_conv2d2_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp#assignvariableop_19_b1_conv2d2_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp assignvariableop_20_b1_bn2_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_b1_bn2_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp&assignvariableop_22_b1_bn2_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp*assignvariableop_23_b1_bn2_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp%assignvariableop_24_b2_conv2d1_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp#assignvariableop_25_b2_conv2d1_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp assignvariableop_26_b2_bn1_gammaIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_b2_bn1_betaIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp&assignvariableop_28_b2_bn1_moving_meanIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp*assignvariableop_29_b2_bn1_moving_varianceIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp%assignvariableop_30_b2_conv2d2_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp#assignvariableop_31_b2_conv2d2_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp assignvariableop_32_b2_bn2_gammaIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpassignvariableop_33_b2_bn2_betaIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp&assignvariableop_34_b2_bn2_moving_meanIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp*assignvariableop_35_b2_bn2_moving_varianceIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp'assignvariableop_36_final_dense1_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp%assignvariableop_37_final_dense1_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp"assignvariableop_38_final_bn_gammaIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp!assignvariableop_39_final_bn_betaIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp(assignvariableop_40_final_bn_moving_meanIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp,assignvariableop_41_final_bn_moving_varianceIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp'assignvariableop_42_final_dense2_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp%assignvariableop_43_final_dense2_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_44AssignVariableOpassignvariableop_44_iterationIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp!assignvariableop_45_learning_rateIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp,assignvariableop_46_adam_m_b0_conv2d1_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp,assignvariableop_47_adam_v_b0_conv2d1_kernelIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp*assignvariableop_48_adam_m_b0_conv2d1_biasIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_v_b0_conv2d1_biasIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_m_b0_bn1_gammaIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp'assignvariableop_51_adam_v_b0_bn1_gammaIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp&assignvariableop_52_adam_m_b0_bn1_betaIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp&assignvariableop_53_adam_v_b0_bn1_betaIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp,assignvariableop_54_adam_m_b0_conv2d2_kernelIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp,assignvariableop_55_adam_v_b0_conv2d2_kernelIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp*assignvariableop_56_adam_m_b0_conv2d2_biasIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_v_b0_conv2d2_biasIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp'assignvariableop_58_adam_m_b0_bn2_gammaIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp'assignvariableop_59_adam_v_b0_bn2_gammaIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp&assignvariableop_60_adam_m_b0_bn2_betaIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp&assignvariableop_61_adam_v_b0_bn2_betaIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp,assignvariableop_62_adam_m_b1_conv2d1_kernelIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp,assignvariableop_63_adam_v_b1_conv2d1_kernelIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp*assignvariableop_64_adam_m_b1_conv2d1_biasIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp*assignvariableop_65_adam_v_b1_conv2d1_biasIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp'assignvariableop_66_adam_m_b1_bn1_gammaIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp'assignvariableop_67_adam_v_b1_bn1_gammaIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp&assignvariableop_68_adam_m_b1_bn1_betaIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp&assignvariableop_69_adam_v_b1_bn1_betaIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp,assignvariableop_70_adam_m_b1_conv2d2_kernelIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp,assignvariableop_71_adam_v_b1_conv2d2_kernelIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp*assignvariableop_72_adam_m_b1_conv2d2_biasIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp*assignvariableop_73_adam_v_b1_conv2d2_biasIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp'assignvariableop_74_adam_m_b1_bn2_gammaIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp'assignvariableop_75_adam_v_b1_bn2_gammaIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp&assignvariableop_76_adam_m_b1_bn2_betaIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp&assignvariableop_77_adam_v_b1_bn2_betaIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOp,assignvariableop_78_adam_m_b2_conv2d1_kernelIdentity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp,assignvariableop_79_adam_v_b2_conv2d1_kernelIdentity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOp*assignvariableop_80_adam_m_b2_conv2d1_biasIdentity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOp*assignvariableop_81_adam_v_b2_conv2d1_biasIdentity_81:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOp'assignvariableop_82_adam_m_b2_bn1_gammaIdentity_82:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOp'assignvariableop_83_adam_v_b2_bn1_gammaIdentity_83:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOp&assignvariableop_84_adam_m_b2_bn1_betaIdentity_84:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOp&assignvariableop_85_adam_v_b2_bn1_betaIdentity_85:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_86AssignVariableOp,assignvariableop_86_adam_m_b2_conv2d2_kernelIdentity_86:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_87AssignVariableOp,assignvariableop_87_adam_v_b2_conv2d2_kernelIdentity_87:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_88AssignVariableOp*assignvariableop_88_adam_m_b2_conv2d2_biasIdentity_88:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_89AssignVariableOp*assignvariableop_89_adam_v_b2_conv2d2_biasIdentity_89:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_90AssignVariableOp'assignvariableop_90_adam_m_b2_bn2_gammaIdentity_90:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_91AssignVariableOp'assignvariableop_91_adam_v_b2_bn2_gammaIdentity_91:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_92AssignVariableOp&assignvariableop_92_adam_m_b2_bn2_betaIdentity_92:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_93AssignVariableOp&assignvariableop_93_adam_v_b2_bn2_betaIdentity_93:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_94AssignVariableOp.assignvariableop_94_adam_m_final_dense1_kernelIdentity_94:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_95AssignVariableOp.assignvariableop_95_adam_v_final_dense1_kernelIdentity_95:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_96AssignVariableOp,assignvariableop_96_adam_m_final_dense1_biasIdentity_96:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_97AssignVariableOp,assignvariableop_97_adam_v_final_dense1_biasIdentity_97:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_98AssignVariableOp)assignvariableop_98_adam_m_final_bn_gammaIdentity_98:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_99AssignVariableOp)assignvariableop_99_adam_v_final_bn_gammaIdentity_99:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_100AssignVariableOp)assignvariableop_100_adam_m_final_bn_betaIdentity_100:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_101AssignVariableOp)assignvariableop_101_adam_v_final_bn_betaIdentity_101:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_102AssignVariableOp/assignvariableop_102_adam_m_final_dense2_kernelIdentity_102:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_103AssignVariableOp/assignvariableop_103_adam_v_final_dense2_kernelIdentity_103:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_104AssignVariableOp-assignvariableop_104_adam_m_final_dense2_biasIdentity_104:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_105AssignVariableOp-assignvariableop_105_adam_v_final_dense2_biasIdentity_105:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_106AssignVariableOpassignvariableop_106_total_1Identity_106:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_107AssignVariableOpassignvariableop_107_count_1Identity_107:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_108AssignVariableOpassignvariableop_108_totalIdentity_108:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_109AssignVariableOpassignvariableop_109_countIdentity_109:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_110AssignVariableOp+assignvariableop_110_random_flip_2_statevarIdentity_110:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_111AssignVariableOp/assignvariableop_111_random_rotation_2_statevarIdentity_111:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_112AssignVariableOp+assignvariableop_112_random_zoom_2_statevarIdentity_112:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_113Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_114IdentityIdentity_113:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
_output_shapes
 "%
identity_114Identity_114:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_992(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:6q2
0
_user_specified_namerandom_zoom_2/StateVar::p6
4
_user_specified_namerandom_rotation_2/StateVar:6o2
0
_user_specified_namerandom_flip_2/StateVar:%n!

_user_specified_namecount:%m!

_user_specified_nametotal:'l#
!
_user_specified_name	count_1:'k#
!
_user_specified_name	total_1:8j4
2
_user_specified_nameAdam/v/Final_Dense2/bias:8i4
2
_user_specified_nameAdam/m/Final_Dense2/bias::h6
4
_user_specified_nameAdam/v/Final_Dense2/kernel::g6
4
_user_specified_nameAdam/m/Final_Dense2/kernel:4f0
.
_user_specified_nameAdam/v/Final_BN/beta:4e0
.
_user_specified_nameAdam/m/Final_BN/beta:5d1
/
_user_specified_nameAdam/v/Final_BN/gamma:5c1
/
_user_specified_nameAdam/m/Final_BN/gamma:8b4
2
_user_specified_nameAdam/v/Final_Dense1/bias:8a4
2
_user_specified_nameAdam/m/Final_Dense1/bias::`6
4
_user_specified_nameAdam/v/Final_Dense1/kernel::_6
4
_user_specified_nameAdam/m/Final_Dense1/kernel:2^.
,
_user_specified_nameAdam/v/B2_BN2/beta:2].
,
_user_specified_nameAdam/m/B2_BN2/beta:3\/
-
_user_specified_nameAdam/v/B2_BN2/gamma:3[/
-
_user_specified_nameAdam/m/B2_BN2/gamma:6Z2
0
_user_specified_nameAdam/v/B2_Conv2d2/bias:6Y2
0
_user_specified_nameAdam/m/B2_Conv2d2/bias:8X4
2
_user_specified_nameAdam/v/B2_Conv2d2/kernel:8W4
2
_user_specified_nameAdam/m/B2_Conv2d2/kernel:2V.
,
_user_specified_nameAdam/v/B2_BN1/beta:2U.
,
_user_specified_nameAdam/m/B2_BN1/beta:3T/
-
_user_specified_nameAdam/v/B2_BN1/gamma:3S/
-
_user_specified_nameAdam/m/B2_BN1/gamma:6R2
0
_user_specified_nameAdam/v/B2_Conv2d1/bias:6Q2
0
_user_specified_nameAdam/m/B2_Conv2d1/bias:8P4
2
_user_specified_nameAdam/v/B2_Conv2d1/kernel:8O4
2
_user_specified_nameAdam/m/B2_Conv2d1/kernel:2N.
,
_user_specified_nameAdam/v/B1_BN2/beta:2M.
,
_user_specified_nameAdam/m/B1_BN2/beta:3L/
-
_user_specified_nameAdam/v/B1_BN2/gamma:3K/
-
_user_specified_nameAdam/m/B1_BN2/gamma:6J2
0
_user_specified_nameAdam/v/B1_Conv2d2/bias:6I2
0
_user_specified_nameAdam/m/B1_Conv2d2/bias:8H4
2
_user_specified_nameAdam/v/B1_Conv2d2/kernel:8G4
2
_user_specified_nameAdam/m/B1_Conv2d2/kernel:2F.
,
_user_specified_nameAdam/v/B1_BN1/beta:2E.
,
_user_specified_nameAdam/m/B1_BN1/beta:3D/
-
_user_specified_nameAdam/v/B1_BN1/gamma:3C/
-
_user_specified_nameAdam/m/B1_BN1/gamma:6B2
0
_user_specified_nameAdam/v/B1_Conv2d1/bias:6A2
0
_user_specified_nameAdam/m/B1_Conv2d1/bias:8@4
2
_user_specified_nameAdam/v/B1_Conv2d1/kernel:8?4
2
_user_specified_nameAdam/m/B1_Conv2d1/kernel:2>.
,
_user_specified_nameAdam/v/B0_BN2/beta:2=.
,
_user_specified_nameAdam/m/B0_BN2/beta:3</
-
_user_specified_nameAdam/v/B0_BN2/gamma:3;/
-
_user_specified_nameAdam/m/B0_BN2/gamma:6:2
0
_user_specified_nameAdam/v/B0_Conv2d2/bias:692
0
_user_specified_nameAdam/m/B0_Conv2d2/bias:884
2
_user_specified_nameAdam/v/B0_Conv2d2/kernel:874
2
_user_specified_nameAdam/m/B0_Conv2d2/kernel:26.
,
_user_specified_nameAdam/v/B0_BN1/beta:25.
,
_user_specified_nameAdam/m/B0_BN1/beta:34/
-
_user_specified_nameAdam/v/B0_BN1/gamma:33/
-
_user_specified_nameAdam/m/B0_BN1/gamma:622
0
_user_specified_nameAdam/v/B0_Conv2d1/bias:612
0
_user_specified_nameAdam/m/B0_Conv2d1/bias:804
2
_user_specified_nameAdam/v/B0_Conv2d1/kernel:8/4
2
_user_specified_nameAdam/m/B0_Conv2d1/kernel:-.)
'
_user_specified_namelearning_rate:)-%
#
_user_specified_name	iteration:1,-
+
_user_specified_nameFinal_Dense2/bias:3+/
-
_user_specified_nameFinal_Dense2/kernel:8*4
2
_user_specified_nameFinal_BN/moving_variance:4)0
.
_user_specified_nameFinal_BN/moving_mean:-()
'
_user_specified_nameFinal_BN/beta:.'*
(
_user_specified_nameFinal_BN/gamma:1&-
+
_user_specified_nameFinal_Dense1/bias:3%/
-
_user_specified_nameFinal_Dense1/kernel:6$2
0
_user_specified_nameB2_BN2/moving_variance:2#.
,
_user_specified_nameB2_BN2/moving_mean:+"'
%
_user_specified_nameB2_BN2/beta:,!(
&
_user_specified_nameB2_BN2/gamma:/ +
)
_user_specified_nameB2_Conv2d2/bias:1-
+
_user_specified_nameB2_Conv2d2/kernel:62
0
_user_specified_nameB2_BN1/moving_variance:2.
,
_user_specified_nameB2_BN1/moving_mean:+'
%
_user_specified_nameB2_BN1/beta:,(
&
_user_specified_nameB2_BN1/gamma:/+
)
_user_specified_nameB2_Conv2d1/bias:1-
+
_user_specified_nameB2_Conv2d1/kernel:62
0
_user_specified_nameB1_BN2/moving_variance:2.
,
_user_specified_nameB1_BN2/moving_mean:+'
%
_user_specified_nameB1_BN2/beta:,(
&
_user_specified_nameB1_BN2/gamma:/+
)
_user_specified_nameB1_Conv2d2/bias:1-
+
_user_specified_nameB1_Conv2d2/kernel:62
0
_user_specified_nameB1_BN1/moving_variance:2.
,
_user_specified_nameB1_BN1/moving_mean:+'
%
_user_specified_nameB1_BN1/beta:,(
&
_user_specified_nameB1_BN1/gamma:/+
)
_user_specified_nameB1_Conv2d1/bias:1-
+
_user_specified_nameB1_Conv2d1/kernel:62
0
_user_specified_nameB0_BN2/moving_variance:2.
,
_user_specified_nameB0_BN2/moving_mean:+
'
%
_user_specified_nameB0_BN2/beta:,	(
&
_user_specified_nameB0_BN2/gamma:/+
)
_user_specified_nameB0_Conv2d2/bias:1-
+
_user_specified_nameB0_Conv2d2/kernel:62
0
_user_specified_nameB0_BN1/moving_variance:2.
,
_user_specified_nameB0_BN1/moving_mean:+'
%
_user_specified_nameB0_BN1/beta:,(
&
_user_specified_nameB0_BN1/gamma:/+
)
_user_specified_nameB0_Conv2d1/bias:1-
+
_user_specified_nameB0_Conv2d1/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
J
"__inference__update_step_xla_33974
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
: 
"
_user_specified_name
gradient
�
_
C__inference_B0_MAX_layer_call_and_return_conditional_losses_4794444

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
D
(__inference_B0_MAX_layer_call_fn_4794439

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B0_MAX_layer_call_and_return_conditional_losses_4791329�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
a
(__inference_B2_DP2_layer_call_fn_4794920

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������yy@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B2_DP2_layer_call_and_return_conditional_losses_4791911w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������yy@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������yy@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������yy@
 
_user_specified_nameinputs
�
�
G__inference_B2_Conv2d2_layer_call_and_return_conditional_losses_4794853

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp�3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp�BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������yy@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������yy@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������yy@h
#B2_Conv2d2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
!B2_Conv2d2/kernel/Regularizer/AbsAbs8B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@~
%B2_Conv2d2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B2_Conv2d2/kernel/Regularizer/SumSum%B2_Conv2d2/kernel/Regularizer/Abs:y:0.B2_Conv2d2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B2_Conv2d2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B2_Conv2d2/kernel/Regularizer/mulMul,B2_Conv2d2/kernel/Regularizer/mul/x:output:0*B2_Conv2d2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B2_Conv2d2/kernel/Regularizer/addAddV2,B2_Conv2d2/kernel/Regularizer/Const:output:0%B2_Conv2d2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
$B2_Conv2d2/kernel/Regularizer/L2LossL2Loss;B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B2_Conv2d2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B2_Conv2d2/kernel/Regularizer/mul_1Mul.B2_Conv2d2/kernel/Regularizer/mul_1/x:output:0-B2_Conv2d2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B2_Conv2d2/kernel/Regularizer/add_1AddV2%B2_Conv2d2/kernel/Regularizer/add:z:0'B2_Conv2d2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������yy@�
NoOpNoOp1^B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp4^B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������{{@: : 2d
0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp2j
3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������{{@
 
_user_specified_nameinputs
�	
�
(__inference_B2_BN2_layer_call_fn_4794879

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B2_BN2_layer_call_and_return_conditional_losses_4791566�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4794875:'#
!
_user_specified_name	4794873:'#
!
_user_specified_name	4794871:'#
!
_user_specified_name	4794869:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�	
�
(__inference_B1_BN1_layer_call_fn_4794503

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B1_BN1_layer_call_and_return_conditional_losses_4791370�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4794499:'#
!
_user_specified_name	4794497:'#
!
_user_specified_name	4794495:'#
!
_user_specified_name	4794493:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�n
�
J__inference_random_zoom_2_layer_call_and_return_conditional_losses_4791118

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *�̌?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������^
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
::��i
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:���������x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:���������X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:���������v
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������v
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:���������Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������S
transform/ShapeShapeinputs*
T0*
_output_shapes
::��g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:�����������D
NoOpNoOp ^stateful_uniform/RngReadAndSkip*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
,__inference_B0_Conv2d2_layer_call_fn_4794321

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_B0_Conv2d2_layer_call_and_return_conditional_losses_4791679y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4794317:'#
!
_user_specified_name	4794315:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

/__inference_random_zoom_2_layer_call_fn_4794079

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_random_zoom_2_layer_call_and_return_conditional_losses_4791118y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4794075:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
N__inference_data_augmentation_layer_call_and_return_conditional_losses_4791123
rescaling_2_input#
random_flip_2_4790893:	'
random_rotation_2_4791014:	#
random_zoom_2_4791119:	
identity��%random_flip_2/StatefulPartitionedCall�)random_rotation_2/StatefulPartitionedCall�%random_zoom_2/StatefulPartitionedCall�
rescaling_2/PartitionedCallPartitionedCallrescaling_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4790780�
%random_flip_2/StatefulPartitionedCallStatefulPartitionedCall$rescaling_2/PartitionedCall:output:0random_flip_2_4790893*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_random_flip_2_layer_call_and_return_conditional_losses_4790892�
)random_rotation_2/StatefulPartitionedCallStatefulPartitionedCall.random_flip_2/StatefulPartitionedCall:output:0random_rotation_2_4791014*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_random_rotation_2_layer_call_and_return_conditional_losses_4791013�
%random_zoom_2/StatefulPartitionedCallStatefulPartitionedCall2random_rotation_2/StatefulPartitionedCall:output:0random_zoom_2_4791119*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *S
fNRL
J__inference_random_zoom_2_layer_call_and_return_conditional_losses_4791118�
IdentityIdentity.random_zoom_2/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp&^random_flip_2/StatefulPartitionedCall*^random_rotation_2/StatefulPartitionedCall&^random_zoom_2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:�����������: : : 2N
%random_flip_2/StatefulPartitionedCall%random_flip_2/StatefulPartitionedCall2V
)random_rotation_2/StatefulPartitionedCall)random_rotation_2/StatefulPartitionedCall2N
%random_zoom_2/StatefulPartitionedCall%random_zoom_2/StatefulPartitionedCall:'#
!
_user_specified_name	4791119:'#
!
_user_specified_name	4791014:'#
!
_user_specified_name	4790893:d `
1
_output_shapes
:�����������
+
_user_specified_namerescaling_2_input
�
�
G__inference_B0_Conv2d1_layer_call_and_return_conditional_losses_4794223

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp�3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp�BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������h
#B0_Conv2d1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
!B0_Conv2d1/kernel/Regularizer/AbsAbs8B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:~
%B0_Conv2d1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B0_Conv2d1/kernel/Regularizer/SumSum%B0_Conv2d1/kernel/Regularizer/Abs:y:0.B0_Conv2d1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B0_Conv2d1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B0_Conv2d1/kernel/Regularizer/mulMul,B0_Conv2d1/kernel/Regularizer/mul/x:output:0*B0_Conv2d1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B0_Conv2d1/kernel/Regularizer/addAddV2,B0_Conv2d1/kernel/Regularizer/Const:output:0%B0_Conv2d1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
$B0_Conv2d1/kernel/Regularizer/L2LossL2Loss;B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B0_Conv2d1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B0_Conv2d1/kernel/Regularizer/mul_1Mul.B0_Conv2d1/kernel/Regularizer/mul_1/x:output:0-B0_Conv2d1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B0_Conv2d1/kernel/Regularizer/add_1AddV2%B0_Conv2d1/kernel/Regularizer/add:z:0'B0_Conv2d1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp1^B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp4^B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 2d
0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp2j
3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
C__inference_B0_BN1_layer_call_and_return_conditional_losses_4791218

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
C__inference_B1_BN1_layer_call_and_return_conditional_losses_4794521

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
C__inference_B0_BN2_layer_call_and_return_conditional_losses_4791280

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_33999
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
: 
"
_user_specified_name
gradient
�
O
3__inference_random_rotation_2_layer_call_fn_4793950

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_random_rotation_2_layer_call_and_return_conditional_losses_4791135j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
C__inference_B1_BN1_layer_call_and_return_conditional_losses_4791370

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
G__inference_B0_Conv2d2_layer_call_and_return_conditional_losses_4794345

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp�3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp�BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������h
#B0_Conv2d2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
!B0_Conv2d2/kernel/Regularizer/AbsAbs8B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:~
%B0_Conv2d2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B0_Conv2d2/kernel/Regularizer/SumSum%B0_Conv2d2/kernel/Regularizer/Abs:y:0.B0_Conv2d2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B0_Conv2d2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B0_Conv2d2/kernel/Regularizer/mulMul,B0_Conv2d2/kernel/Regularizer/mul/x:output:0*B0_Conv2d2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B0_Conv2d2/kernel/Regularizer/addAddV2,B0_Conv2d2/kernel/Regularizer/Const:output:0%B0_Conv2d2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
$B0_Conv2d2/kernel/Regularizer/L2LossL2Loss;B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B0_Conv2d2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B0_Conv2d2/kernel/Regularizer/mul_1Mul.B0_Conv2d2/kernel/Regularizer/mul_1/x:output:0-B0_Conv2d2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B0_Conv2d2/kernel/Regularizer/add_1AddV2%B0_Conv2d2/kernel/Regularizer/add:z:0'B0_Conv2d2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp1^B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp4^B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 2d
0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp2j
3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_33959
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
V
"__inference__update_step_xla_33989
gradient"
variable:  *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:  : *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:  
"
_user_specified_name
gradient
�
a
C__inference_B0_DP1_layer_call_and_return_conditional_losses_4792014

inputs

identity_1X
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������e

Identity_1IdentityIdentity:output:0*
T0*1
_output_shapes
:�����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
ɀ
�
N__inference_random_rotation_2_layer_call_and_return_conditional_losses_4791013

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|� �Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|� @`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:���������g
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
::��m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������S
transform/ShapeShapeinputs*
T0*
_output_shapes
::��g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:�����������D
NoOpNoOp ^stateful_uniform/RngReadAndSkip*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
N
"__inference__update_step_xla_34069
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:H D

_output_shapes

:
"
_user_specified_name
gradient
�
J
"__inference__update_step_xla_33979
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
: 
"
_user_specified_name
gradient
�
�
C__inference_B2_BN2_layer_call_and_return_conditional_losses_4791548

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
��
�f
 __inference__traced_save_4795987
file_prefixB
(read_disablecopyonread_b0_conv2d1_kernel:6
(read_1_disablecopyonread_b0_conv2d1_bias:3
%read_2_disablecopyonread_b0_bn1_gamma:2
$read_3_disablecopyonread_b0_bn1_beta:9
+read_4_disablecopyonread_b0_bn1_moving_mean:=
/read_5_disablecopyonread_b0_bn1_moving_variance:D
*read_6_disablecopyonread_b0_conv2d2_kernel:6
(read_7_disablecopyonread_b0_conv2d2_bias:3
%read_8_disablecopyonread_b0_bn2_gamma:2
$read_9_disablecopyonread_b0_bn2_beta::
,read_10_disablecopyonread_b0_bn2_moving_mean:>
0read_11_disablecopyonread_b0_bn2_moving_variance:E
+read_12_disablecopyonread_b1_conv2d1_kernel: 7
)read_13_disablecopyonread_b1_conv2d1_bias: 4
&read_14_disablecopyonread_b1_bn1_gamma: 3
%read_15_disablecopyonread_b1_bn1_beta: :
,read_16_disablecopyonread_b1_bn1_moving_mean: >
0read_17_disablecopyonread_b1_bn1_moving_variance: E
+read_18_disablecopyonread_b1_conv2d2_kernel:  7
)read_19_disablecopyonread_b1_conv2d2_bias: 4
&read_20_disablecopyonread_b1_bn2_gamma: 3
%read_21_disablecopyonread_b1_bn2_beta: :
,read_22_disablecopyonread_b1_bn2_moving_mean: >
0read_23_disablecopyonread_b1_bn2_moving_variance: E
+read_24_disablecopyonread_b2_conv2d1_kernel: @7
)read_25_disablecopyonread_b2_conv2d1_bias:@4
&read_26_disablecopyonread_b2_bn1_gamma:@3
%read_27_disablecopyonread_b2_bn1_beta:@:
,read_28_disablecopyonread_b2_bn1_moving_mean:@>
0read_29_disablecopyonread_b2_bn1_moving_variance:@E
+read_30_disablecopyonread_b2_conv2d2_kernel:@@7
)read_31_disablecopyonread_b2_conv2d2_bias:@4
&read_32_disablecopyonread_b2_bn2_gamma:@3
%read_33_disablecopyonread_b2_bn2_beta:@:
,read_34_disablecopyonread_b2_bn2_moving_mean:@>
0read_35_disablecopyonread_b2_bn2_moving_variance:@A
-read_36_disablecopyonread_final_dense1_kernel:
��9
+read_37_disablecopyonread_final_dense1_bias:6
(read_38_disablecopyonread_final_bn_gamma:5
'read_39_disablecopyonread_final_bn_beta:<
.read_40_disablecopyonread_final_bn_moving_mean:@
2read_41_disablecopyonread_final_bn_moving_variance:?
-read_42_disablecopyonread_final_dense2_kernel:9
+read_43_disablecopyonread_final_dense2_bias:-
#read_44_disablecopyonread_iteration:	 1
'read_45_disablecopyonread_learning_rate: L
2read_46_disablecopyonread_adam_m_b0_conv2d1_kernel:L
2read_47_disablecopyonread_adam_v_b0_conv2d1_kernel:>
0read_48_disablecopyonread_adam_m_b0_conv2d1_bias:>
0read_49_disablecopyonread_adam_v_b0_conv2d1_bias:;
-read_50_disablecopyonread_adam_m_b0_bn1_gamma:;
-read_51_disablecopyonread_adam_v_b0_bn1_gamma::
,read_52_disablecopyonread_adam_m_b0_bn1_beta::
,read_53_disablecopyonread_adam_v_b0_bn1_beta:L
2read_54_disablecopyonread_adam_m_b0_conv2d2_kernel:L
2read_55_disablecopyonread_adam_v_b0_conv2d2_kernel:>
0read_56_disablecopyonread_adam_m_b0_conv2d2_bias:>
0read_57_disablecopyonread_adam_v_b0_conv2d2_bias:;
-read_58_disablecopyonread_adam_m_b0_bn2_gamma:;
-read_59_disablecopyonread_adam_v_b0_bn2_gamma::
,read_60_disablecopyonread_adam_m_b0_bn2_beta::
,read_61_disablecopyonread_adam_v_b0_bn2_beta:L
2read_62_disablecopyonread_adam_m_b1_conv2d1_kernel: L
2read_63_disablecopyonread_adam_v_b1_conv2d1_kernel: >
0read_64_disablecopyonread_adam_m_b1_conv2d1_bias: >
0read_65_disablecopyonread_adam_v_b1_conv2d1_bias: ;
-read_66_disablecopyonread_adam_m_b1_bn1_gamma: ;
-read_67_disablecopyonread_adam_v_b1_bn1_gamma: :
,read_68_disablecopyonread_adam_m_b1_bn1_beta: :
,read_69_disablecopyonread_adam_v_b1_bn1_beta: L
2read_70_disablecopyonread_adam_m_b1_conv2d2_kernel:  L
2read_71_disablecopyonread_adam_v_b1_conv2d2_kernel:  >
0read_72_disablecopyonread_adam_m_b1_conv2d2_bias: >
0read_73_disablecopyonread_adam_v_b1_conv2d2_bias: ;
-read_74_disablecopyonread_adam_m_b1_bn2_gamma: ;
-read_75_disablecopyonread_adam_v_b1_bn2_gamma: :
,read_76_disablecopyonread_adam_m_b1_bn2_beta: :
,read_77_disablecopyonread_adam_v_b1_bn2_beta: L
2read_78_disablecopyonread_adam_m_b2_conv2d1_kernel: @L
2read_79_disablecopyonread_adam_v_b2_conv2d1_kernel: @>
0read_80_disablecopyonread_adam_m_b2_conv2d1_bias:@>
0read_81_disablecopyonread_adam_v_b2_conv2d1_bias:@;
-read_82_disablecopyonread_adam_m_b2_bn1_gamma:@;
-read_83_disablecopyonread_adam_v_b2_bn1_gamma:@:
,read_84_disablecopyonread_adam_m_b2_bn1_beta:@:
,read_85_disablecopyonread_adam_v_b2_bn1_beta:@L
2read_86_disablecopyonread_adam_m_b2_conv2d2_kernel:@@L
2read_87_disablecopyonread_adam_v_b2_conv2d2_kernel:@@>
0read_88_disablecopyonread_adam_m_b2_conv2d2_bias:@>
0read_89_disablecopyonread_adam_v_b2_conv2d2_bias:@;
-read_90_disablecopyonread_adam_m_b2_bn2_gamma:@;
-read_91_disablecopyonread_adam_v_b2_bn2_gamma:@:
,read_92_disablecopyonread_adam_m_b2_bn2_beta:@:
,read_93_disablecopyonread_adam_v_b2_bn2_beta:@H
4read_94_disablecopyonread_adam_m_final_dense1_kernel:
��H
4read_95_disablecopyonread_adam_v_final_dense1_kernel:
��@
2read_96_disablecopyonread_adam_m_final_dense1_bias:@
2read_97_disablecopyonread_adam_v_final_dense1_bias:=
/read_98_disablecopyonread_adam_m_final_bn_gamma:=
/read_99_disablecopyonread_adam_v_final_bn_gamma:=
/read_100_disablecopyonread_adam_m_final_bn_beta:=
/read_101_disablecopyonread_adam_v_final_bn_beta:G
5read_102_disablecopyonread_adam_m_final_dense2_kernel:G
5read_103_disablecopyonread_adam_v_final_dense2_kernel:A
3read_104_disablecopyonread_adam_m_final_dense2_bias:A
3read_105_disablecopyonread_adam_v_final_dense2_bias:,
"read_106_disablecopyonread_total_1: ,
"read_107_disablecopyonread_count_1: *
 read_108_disablecopyonread_total: *
 read_109_disablecopyonread_count: ?
1read_110_disablecopyonread_random_flip_2_statevar:	C
5read_111_disablecopyonread_random_rotation_2_statevar:	?
1read_112_disablecopyonread_random_zoom_2_statevar:	
savev2_const
identity_227��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_100/DisableCopyOnRead�Read_100/ReadVariableOp�Read_101/DisableCopyOnRead�Read_101/ReadVariableOp�Read_102/DisableCopyOnRead�Read_102/ReadVariableOp�Read_103/DisableCopyOnRead�Read_103/ReadVariableOp�Read_104/DisableCopyOnRead�Read_104/ReadVariableOp�Read_105/DisableCopyOnRead�Read_105/ReadVariableOp�Read_106/DisableCopyOnRead�Read_106/ReadVariableOp�Read_107/DisableCopyOnRead�Read_107/ReadVariableOp�Read_108/DisableCopyOnRead�Read_108/ReadVariableOp�Read_109/DisableCopyOnRead�Read_109/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_110/DisableCopyOnRead�Read_110/ReadVariableOp�Read_111/DisableCopyOnRead�Read_111/ReadVariableOp�Read_112/DisableCopyOnRead�Read_112/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_68/DisableCopyOnRead�Read_68/ReadVariableOp�Read_69/DisableCopyOnRead�Read_69/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_70/DisableCopyOnRead�Read_70/ReadVariableOp�Read_71/DisableCopyOnRead�Read_71/ReadVariableOp�Read_72/DisableCopyOnRead�Read_72/ReadVariableOp�Read_73/DisableCopyOnRead�Read_73/ReadVariableOp�Read_74/DisableCopyOnRead�Read_74/ReadVariableOp�Read_75/DisableCopyOnRead�Read_75/ReadVariableOp�Read_76/DisableCopyOnRead�Read_76/ReadVariableOp�Read_77/DisableCopyOnRead�Read_77/ReadVariableOp�Read_78/DisableCopyOnRead�Read_78/ReadVariableOp�Read_79/DisableCopyOnRead�Read_79/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_80/DisableCopyOnRead�Read_80/ReadVariableOp�Read_81/DisableCopyOnRead�Read_81/ReadVariableOp�Read_82/DisableCopyOnRead�Read_82/ReadVariableOp�Read_83/DisableCopyOnRead�Read_83/ReadVariableOp�Read_84/DisableCopyOnRead�Read_84/ReadVariableOp�Read_85/DisableCopyOnRead�Read_85/ReadVariableOp�Read_86/DisableCopyOnRead�Read_86/ReadVariableOp�Read_87/DisableCopyOnRead�Read_87/ReadVariableOp�Read_88/DisableCopyOnRead�Read_88/ReadVariableOp�Read_89/DisableCopyOnRead�Read_89/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOp�Read_90/DisableCopyOnRead�Read_90/ReadVariableOp�Read_91/DisableCopyOnRead�Read_91/ReadVariableOp�Read_92/DisableCopyOnRead�Read_92/ReadVariableOp�Read_93/DisableCopyOnRead�Read_93/ReadVariableOp�Read_94/DisableCopyOnRead�Read_94/ReadVariableOp�Read_95/DisableCopyOnRead�Read_95/ReadVariableOp�Read_96/DisableCopyOnRead�Read_96/ReadVariableOp�Read_97/DisableCopyOnRead�Read_97/ReadVariableOp�Read_98/DisableCopyOnRead�Read_98/ReadVariableOp�Read_99/DisableCopyOnRead�Read_99/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: z
Read/DisableCopyOnReadDisableCopyOnRead(read_disablecopyonread_b0_conv2d1_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp(read_disablecopyonread_b0_conv2d1_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:|
Read_1/DisableCopyOnReadDisableCopyOnRead(read_1_disablecopyonread_b0_conv2d1_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp(read_1_disablecopyonread_b0_conv2d1_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:y
Read_2/DisableCopyOnReadDisableCopyOnRead%read_2_disablecopyonread_b0_bn1_gamma"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp%read_2_disablecopyonread_b0_bn1_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_3/DisableCopyOnReadDisableCopyOnRead$read_3_disablecopyonread_b0_bn1_beta"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp$read_3_disablecopyonread_b0_bn1_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_4/DisableCopyOnReadDisableCopyOnRead+read_4_disablecopyonread_b0_bn1_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp+read_4_disablecopyonread_b0_bn1_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_5/DisableCopyOnReadDisableCopyOnRead/read_5_disablecopyonread_b0_bn1_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp/read_5_disablecopyonread_b0_bn1_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_6/DisableCopyOnReadDisableCopyOnRead*read_6_disablecopyonread_b0_conv2d2_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp*read_6_disablecopyonread_b0_conv2d2_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
:|
Read_7/DisableCopyOnReadDisableCopyOnRead(read_7_disablecopyonread_b0_conv2d2_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp(read_7_disablecopyonread_b0_conv2d2_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:y
Read_8/DisableCopyOnReadDisableCopyOnRead%read_8_disablecopyonread_b0_bn2_gamma"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp%read_8_disablecopyonread_b0_bn2_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_9/DisableCopyOnReadDisableCopyOnRead$read_9_disablecopyonread_b0_bn2_beta"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp$read_9_disablecopyonread_b0_bn2_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_10/DisableCopyOnReadDisableCopyOnRead,read_10_disablecopyonread_b0_bn2_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp,read_10_disablecopyonread_b0_bn2_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_11/DisableCopyOnReadDisableCopyOnRead0read_11_disablecopyonread_b0_bn2_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp0read_11_disablecopyonread_b0_bn2_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_12/DisableCopyOnReadDisableCopyOnRead+read_12_disablecopyonread_b1_conv2d1_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp+read_12_disablecopyonread_b1_conv2d1_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*&
_output_shapes
: ~
Read_13/DisableCopyOnReadDisableCopyOnRead)read_13_disablecopyonread_b1_conv2d1_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp)read_13_disablecopyonread_b1_conv2d1_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: {
Read_14/DisableCopyOnReadDisableCopyOnRead&read_14_disablecopyonread_b1_bn1_gamma"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp&read_14_disablecopyonread_b1_bn1_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
: z
Read_15/DisableCopyOnReadDisableCopyOnRead%read_15_disablecopyonread_b1_bn1_beta"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp%read_15_disablecopyonread_b1_bn1_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_16/DisableCopyOnReadDisableCopyOnRead,read_16_disablecopyonread_b1_bn1_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp,read_16_disablecopyonread_b1_bn1_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_17/DisableCopyOnReadDisableCopyOnRead0read_17_disablecopyonread_b1_bn1_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp0read_17_disablecopyonread_b1_bn1_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_18/DisableCopyOnReadDisableCopyOnRead+read_18_disablecopyonread_b1_conv2d2_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp+read_18_disablecopyonread_b1_conv2d2_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
:  ~
Read_19/DisableCopyOnReadDisableCopyOnRead)read_19_disablecopyonread_b1_conv2d2_bias"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp)read_19_disablecopyonread_b1_conv2d2_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
: {
Read_20/DisableCopyOnReadDisableCopyOnRead&read_20_disablecopyonread_b1_bn2_gamma"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp&read_20_disablecopyonread_b1_bn2_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: z
Read_21/DisableCopyOnReadDisableCopyOnRead%read_21_disablecopyonread_b1_bn2_beta"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp%read_21_disablecopyonread_b1_bn2_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_22/DisableCopyOnReadDisableCopyOnRead,read_22_disablecopyonread_b1_bn2_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp,read_22_disablecopyonread_b1_bn2_moving_mean^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_23/DisableCopyOnReadDisableCopyOnRead0read_23_disablecopyonread_b1_bn2_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp0read_23_disablecopyonread_b1_bn2_moving_variance^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_24/DisableCopyOnReadDisableCopyOnRead+read_24_disablecopyonread_b2_conv2d1_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp+read_24_disablecopyonread_b2_conv2d1_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*&
_output_shapes
: @~
Read_25/DisableCopyOnReadDisableCopyOnRead)read_25_disablecopyonread_b2_conv2d1_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp)read_25_disablecopyonread_b2_conv2d1_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:@{
Read_26/DisableCopyOnReadDisableCopyOnRead&read_26_disablecopyonread_b2_bn1_gamma"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp&read_26_disablecopyonread_b2_bn1_gamma^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:@z
Read_27/DisableCopyOnReadDisableCopyOnRead%read_27_disablecopyonread_b2_bn1_beta"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp%read_27_disablecopyonread_b2_bn1_beta^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_28/DisableCopyOnReadDisableCopyOnRead,read_28_disablecopyonread_b2_bn1_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp,read_28_disablecopyonread_b2_bn1_moving_mean^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_29/DisableCopyOnReadDisableCopyOnRead0read_29_disablecopyonread_b2_bn1_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp0read_29_disablecopyonread_b2_bn1_moving_variance^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_30/DisableCopyOnReadDisableCopyOnRead+read_30_disablecopyonread_b2_conv2d2_kernel"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp+read_30_disablecopyonread_b2_conv2d2_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@~
Read_31/DisableCopyOnReadDisableCopyOnRead)read_31_disablecopyonread_b2_conv2d2_bias"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp)read_31_disablecopyonread_b2_conv2d2_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:@{
Read_32/DisableCopyOnReadDisableCopyOnRead&read_32_disablecopyonread_b2_bn2_gamma"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp&read_32_disablecopyonread_b2_bn2_gamma^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:@z
Read_33/DisableCopyOnReadDisableCopyOnRead%read_33_disablecopyonread_b2_bn2_beta"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp%read_33_disablecopyonread_b2_bn2_beta^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_34/DisableCopyOnReadDisableCopyOnRead,read_34_disablecopyonread_b2_bn2_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp,read_34_disablecopyonread_b2_bn2_moving_mean^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_35/DisableCopyOnReadDisableCopyOnRead0read_35_disablecopyonread_b2_bn2_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp0read_35_disablecopyonread_b2_bn2_moving_variance^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_36/DisableCopyOnReadDisableCopyOnRead-read_36_disablecopyonread_final_dense1_kernel"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp-read_36_disablecopyonread_final_dense1_kernel^Read_36/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_37/DisableCopyOnReadDisableCopyOnRead+read_37_disablecopyonread_final_dense1_bias"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp+read_37_disablecopyonread_final_dense1_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_38/DisableCopyOnReadDisableCopyOnRead(read_38_disablecopyonread_final_bn_gamma"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp(read_38_disablecopyonread_final_bn_gamma^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_39/DisableCopyOnReadDisableCopyOnRead'read_39_disablecopyonread_final_bn_beta"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp'read_39_disablecopyonread_final_bn_beta^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_40/DisableCopyOnReadDisableCopyOnRead.read_40_disablecopyonread_final_bn_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp.read_40_disablecopyonread_final_bn_moving_mean^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_41/DisableCopyOnReadDisableCopyOnRead2read_41_disablecopyonread_final_bn_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp2read_41_disablecopyonread_final_bn_moving_variance^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_42/DisableCopyOnReadDisableCopyOnRead-read_42_disablecopyonread_final_dense2_kernel"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp-read_42_disablecopyonread_final_dense2_kernel^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_43/DisableCopyOnReadDisableCopyOnRead+read_43_disablecopyonread_final_dense2_bias"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp+read_43_disablecopyonread_final_dense2_bias^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_44/DisableCopyOnReadDisableCopyOnRead#read_44_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp#read_44_disablecopyonread_iteration^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_45/DisableCopyOnReadDisableCopyOnRead'read_45_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp'read_45_disablecopyonread_learning_rate^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_46/DisableCopyOnReadDisableCopyOnRead2read_46_disablecopyonread_adam_m_b0_conv2d1_kernel"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp2read_46_disablecopyonread_adam_m_b0_conv2d1_kernel^Read_46/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_47/DisableCopyOnReadDisableCopyOnRead2read_47_disablecopyonread_adam_v_b0_conv2d1_kernel"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp2read_47_disablecopyonread_adam_v_b0_conv2d1_kernel^Read_47/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_48/DisableCopyOnReadDisableCopyOnRead0read_48_disablecopyonread_adam_m_b0_conv2d1_bias"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp0read_48_disablecopyonread_adam_m_b0_conv2d1_bias^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_49/DisableCopyOnReadDisableCopyOnRead0read_49_disablecopyonread_adam_v_b0_conv2d1_bias"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp0read_49_disablecopyonread_adam_v_b0_conv2d1_bias^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_50/DisableCopyOnReadDisableCopyOnRead-read_50_disablecopyonread_adam_m_b0_bn1_gamma"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp-read_50_disablecopyonread_adam_m_b0_bn1_gamma^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_51/DisableCopyOnReadDisableCopyOnRead-read_51_disablecopyonread_adam_v_b0_bn1_gamma"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp-read_51_disablecopyonread_adam_v_b0_bn1_gamma^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_52/DisableCopyOnReadDisableCopyOnRead,read_52_disablecopyonread_adam_m_b0_bn1_beta"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp,read_52_disablecopyonread_adam_m_b0_bn1_beta^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_53/DisableCopyOnReadDisableCopyOnRead,read_53_disablecopyonread_adam_v_b0_bn1_beta"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp,read_53_disablecopyonread_adam_v_b0_bn1_beta^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_54/DisableCopyOnReadDisableCopyOnRead2read_54_disablecopyonread_adam_m_b0_conv2d2_kernel"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp2read_54_disablecopyonread_adam_m_b0_conv2d2_kernel^Read_54/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_55/DisableCopyOnReadDisableCopyOnRead2read_55_disablecopyonread_adam_v_b0_conv2d2_kernel"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp2read_55_disablecopyonread_adam_v_b0_conv2d2_kernel^Read_55/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*&
_output_shapes
:�
Read_56/DisableCopyOnReadDisableCopyOnRead0read_56_disablecopyonread_adam_m_b0_conv2d2_bias"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp0read_56_disablecopyonread_adam_m_b0_conv2d2_bias^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_57/DisableCopyOnReadDisableCopyOnRead0read_57_disablecopyonread_adam_v_b0_conv2d2_bias"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp0read_57_disablecopyonread_adam_v_b0_conv2d2_bias^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_58/DisableCopyOnReadDisableCopyOnRead-read_58_disablecopyonread_adam_m_b0_bn2_gamma"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp-read_58_disablecopyonread_adam_m_b0_bn2_gamma^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_59/DisableCopyOnReadDisableCopyOnRead-read_59_disablecopyonread_adam_v_b0_bn2_gamma"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOp-read_59_disablecopyonread_adam_v_b0_bn2_gamma^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_60/DisableCopyOnReadDisableCopyOnRead,read_60_disablecopyonread_adam_m_b0_bn2_beta"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOp,read_60_disablecopyonread_adam_m_b0_bn2_beta^Read_60/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_61/DisableCopyOnReadDisableCopyOnRead,read_61_disablecopyonread_adam_v_b0_bn2_beta"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp,read_61_disablecopyonread_adam_v_b0_bn2_beta^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_62/DisableCopyOnReadDisableCopyOnRead2read_62_disablecopyonread_adam_m_b1_conv2d1_kernel"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp2read_62_disablecopyonread_adam_m_b1_conv2d1_kernel^Read_62/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0x
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: o
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_63/DisableCopyOnReadDisableCopyOnRead2read_63_disablecopyonread_adam_v_b1_conv2d1_kernel"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOp2read_63_disablecopyonread_adam_v_b1_conv2d1_kernel^Read_63/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0x
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: o
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_64/DisableCopyOnReadDisableCopyOnRead0read_64_disablecopyonread_adam_m_b1_conv2d1_bias"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOp0read_64_disablecopyonread_adam_m_b1_conv2d1_bias^Read_64/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_65/DisableCopyOnReadDisableCopyOnRead0read_65_disablecopyonread_adam_v_b1_conv2d1_bias"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOp0read_65_disablecopyonread_adam_v_b1_conv2d1_bias^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_66/DisableCopyOnReadDisableCopyOnRead-read_66_disablecopyonread_adam_m_b1_bn1_gamma"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOp-read_66_disablecopyonread_adam_m_b1_bn1_gamma^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_67/DisableCopyOnReadDisableCopyOnRead-read_67_disablecopyonread_adam_v_b1_bn1_gamma"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp-read_67_disablecopyonread_adam_v_b1_bn1_gamma^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_68/DisableCopyOnReadDisableCopyOnRead,read_68_disablecopyonread_adam_m_b1_bn1_beta"/device:CPU:0*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp,read_68_disablecopyonread_adam_m_b1_bn1_beta^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_69/DisableCopyOnReadDisableCopyOnRead,read_69_disablecopyonread_adam_v_b1_bn1_beta"/device:CPU:0*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp,read_69_disablecopyonread_adam_v_b1_bn1_beta^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_70/DisableCopyOnReadDisableCopyOnRead2read_70_disablecopyonread_adam_m_b1_conv2d2_kernel"/device:CPU:0*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOp2read_70_disablecopyonread_adam_m_b1_conv2d2_kernel^Read_70/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0x
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  o
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*&
_output_shapes
:  �
Read_71/DisableCopyOnReadDisableCopyOnRead2read_71_disablecopyonread_adam_v_b1_conv2d2_kernel"/device:CPU:0*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOp2read_71_disablecopyonread_adam_v_b1_conv2d2_kernel^Read_71/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0x
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  o
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*&
_output_shapes
:  �
Read_72/DisableCopyOnReadDisableCopyOnRead0read_72_disablecopyonread_adam_m_b1_conv2d2_bias"/device:CPU:0*
_output_shapes
 �
Read_72/ReadVariableOpReadVariableOp0read_72_disablecopyonread_adam_m_b1_conv2d2_bias^Read_72/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_73/DisableCopyOnReadDisableCopyOnRead0read_73_disablecopyonread_adam_v_b1_conv2d2_bias"/device:CPU:0*
_output_shapes
 �
Read_73/ReadVariableOpReadVariableOp0read_73_disablecopyonread_adam_v_b1_conv2d2_bias^Read_73/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_74/DisableCopyOnReadDisableCopyOnRead-read_74_disablecopyonread_adam_m_b1_bn2_gamma"/device:CPU:0*
_output_shapes
 �
Read_74/ReadVariableOpReadVariableOp-read_74_disablecopyonread_adam_m_b1_bn2_gamma^Read_74/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_75/DisableCopyOnReadDisableCopyOnRead-read_75_disablecopyonread_adam_v_b1_bn2_gamma"/device:CPU:0*
_output_shapes
 �
Read_75/ReadVariableOpReadVariableOp-read_75_disablecopyonread_adam_v_b1_bn2_gamma^Read_75/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_76/DisableCopyOnReadDisableCopyOnRead,read_76_disablecopyonread_adam_m_b1_bn2_beta"/device:CPU:0*
_output_shapes
 �
Read_76/ReadVariableOpReadVariableOp,read_76_disablecopyonread_adam_m_b1_bn2_beta^Read_76/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_77/DisableCopyOnReadDisableCopyOnRead,read_77_disablecopyonread_adam_v_b1_bn2_beta"/device:CPU:0*
_output_shapes
 �
Read_77/ReadVariableOpReadVariableOp,read_77_disablecopyonread_adam_v_b1_bn2_beta^Read_77/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0l
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: c
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_78/DisableCopyOnReadDisableCopyOnRead2read_78_disablecopyonread_adam_m_b2_conv2d1_kernel"/device:CPU:0*
_output_shapes
 �
Read_78/ReadVariableOpReadVariableOp2read_78_disablecopyonread_adam_m_b2_conv2d1_kernel^Read_78/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0x
Identity_156IdentityRead_78/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @o
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_79/DisableCopyOnReadDisableCopyOnRead2read_79_disablecopyonread_adam_v_b2_conv2d1_kernel"/device:CPU:0*
_output_shapes
 �
Read_79/ReadVariableOpReadVariableOp2read_79_disablecopyonread_adam_v_b2_conv2d1_kernel^Read_79/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0x
Identity_158IdentityRead_79/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @o
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_80/DisableCopyOnReadDisableCopyOnRead0read_80_disablecopyonread_adam_m_b2_conv2d1_bias"/device:CPU:0*
_output_shapes
 �
Read_80/ReadVariableOpReadVariableOp0read_80_disablecopyonread_adam_m_b2_conv2d1_bias^Read_80/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_160IdentityRead_80/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_161IdentityIdentity_160:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_81/DisableCopyOnReadDisableCopyOnRead0read_81_disablecopyonread_adam_v_b2_conv2d1_bias"/device:CPU:0*
_output_shapes
 �
Read_81/ReadVariableOpReadVariableOp0read_81_disablecopyonread_adam_v_b2_conv2d1_bias^Read_81/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_162IdentityRead_81/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_163IdentityIdentity_162:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_82/DisableCopyOnReadDisableCopyOnRead-read_82_disablecopyonread_adam_m_b2_bn1_gamma"/device:CPU:0*
_output_shapes
 �
Read_82/ReadVariableOpReadVariableOp-read_82_disablecopyonread_adam_m_b2_bn1_gamma^Read_82/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_164IdentityRead_82/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_165IdentityIdentity_164:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_83/DisableCopyOnReadDisableCopyOnRead-read_83_disablecopyonread_adam_v_b2_bn1_gamma"/device:CPU:0*
_output_shapes
 �
Read_83/ReadVariableOpReadVariableOp-read_83_disablecopyonread_adam_v_b2_bn1_gamma^Read_83/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_166IdentityRead_83/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_167IdentityIdentity_166:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_84/DisableCopyOnReadDisableCopyOnRead,read_84_disablecopyonread_adam_m_b2_bn1_beta"/device:CPU:0*
_output_shapes
 �
Read_84/ReadVariableOpReadVariableOp,read_84_disablecopyonread_adam_m_b2_bn1_beta^Read_84/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_168IdentityRead_84/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_169IdentityIdentity_168:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_85/DisableCopyOnReadDisableCopyOnRead,read_85_disablecopyonread_adam_v_b2_bn1_beta"/device:CPU:0*
_output_shapes
 �
Read_85/ReadVariableOpReadVariableOp,read_85_disablecopyonread_adam_v_b2_bn1_beta^Read_85/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_170IdentityRead_85/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_171IdentityIdentity_170:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_86/DisableCopyOnReadDisableCopyOnRead2read_86_disablecopyonread_adam_m_b2_conv2d2_kernel"/device:CPU:0*
_output_shapes
 �
Read_86/ReadVariableOpReadVariableOp2read_86_disablecopyonread_adam_m_b2_conv2d2_kernel^Read_86/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_172IdentityRead_86/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_173IdentityIdentity_172:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_87/DisableCopyOnReadDisableCopyOnRead2read_87_disablecopyonread_adam_v_b2_conv2d2_kernel"/device:CPU:0*
_output_shapes
 �
Read_87/ReadVariableOpReadVariableOp2read_87_disablecopyonread_adam_v_b2_conv2d2_kernel^Read_87/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_174IdentityRead_87/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_175IdentityIdentity_174:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_88/DisableCopyOnReadDisableCopyOnRead0read_88_disablecopyonread_adam_m_b2_conv2d2_bias"/device:CPU:0*
_output_shapes
 �
Read_88/ReadVariableOpReadVariableOp0read_88_disablecopyonread_adam_m_b2_conv2d2_bias^Read_88/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_176IdentityRead_88/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_177IdentityIdentity_176:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_89/DisableCopyOnReadDisableCopyOnRead0read_89_disablecopyonread_adam_v_b2_conv2d2_bias"/device:CPU:0*
_output_shapes
 �
Read_89/ReadVariableOpReadVariableOp0read_89_disablecopyonread_adam_v_b2_conv2d2_bias^Read_89/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_178IdentityRead_89/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_179IdentityIdentity_178:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_90/DisableCopyOnReadDisableCopyOnRead-read_90_disablecopyonread_adam_m_b2_bn2_gamma"/device:CPU:0*
_output_shapes
 �
Read_90/ReadVariableOpReadVariableOp-read_90_disablecopyonread_adam_m_b2_bn2_gamma^Read_90/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_180IdentityRead_90/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_181IdentityIdentity_180:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_91/DisableCopyOnReadDisableCopyOnRead-read_91_disablecopyonread_adam_v_b2_bn2_gamma"/device:CPU:0*
_output_shapes
 �
Read_91/ReadVariableOpReadVariableOp-read_91_disablecopyonread_adam_v_b2_bn2_gamma^Read_91/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_182IdentityRead_91/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_183IdentityIdentity_182:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_92/DisableCopyOnReadDisableCopyOnRead,read_92_disablecopyonread_adam_m_b2_bn2_beta"/device:CPU:0*
_output_shapes
 �
Read_92/ReadVariableOpReadVariableOp,read_92_disablecopyonread_adam_m_b2_bn2_beta^Read_92/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_184IdentityRead_92/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_185IdentityIdentity_184:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_93/DisableCopyOnReadDisableCopyOnRead,read_93_disablecopyonread_adam_v_b2_bn2_beta"/device:CPU:0*
_output_shapes
 �
Read_93/ReadVariableOpReadVariableOp,read_93_disablecopyonread_adam_v_b2_bn2_beta^Read_93/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_186IdentityRead_93/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_187IdentityIdentity_186:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_94/DisableCopyOnReadDisableCopyOnRead4read_94_disablecopyonread_adam_m_final_dense1_kernel"/device:CPU:0*
_output_shapes
 �
Read_94/ReadVariableOpReadVariableOp4read_94_disablecopyonread_adam_m_final_dense1_kernel^Read_94/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0r
Identity_188IdentityRead_94/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_189IdentityIdentity_188:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_95/DisableCopyOnReadDisableCopyOnRead4read_95_disablecopyonread_adam_v_final_dense1_kernel"/device:CPU:0*
_output_shapes
 �
Read_95/ReadVariableOpReadVariableOp4read_95_disablecopyonread_adam_v_final_dense1_kernel^Read_95/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0r
Identity_190IdentityRead_95/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��i
Identity_191IdentityIdentity_190:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_96/DisableCopyOnReadDisableCopyOnRead2read_96_disablecopyonread_adam_m_final_dense1_bias"/device:CPU:0*
_output_shapes
 �
Read_96/ReadVariableOpReadVariableOp2read_96_disablecopyonread_adam_m_final_dense1_bias^Read_96/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_192IdentityRead_96/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_193IdentityIdentity_192:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_97/DisableCopyOnReadDisableCopyOnRead2read_97_disablecopyonread_adam_v_final_dense1_bias"/device:CPU:0*
_output_shapes
 �
Read_97/ReadVariableOpReadVariableOp2read_97_disablecopyonread_adam_v_final_dense1_bias^Read_97/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_194IdentityRead_97/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_195IdentityIdentity_194:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_98/DisableCopyOnReadDisableCopyOnRead/read_98_disablecopyonread_adam_m_final_bn_gamma"/device:CPU:0*
_output_shapes
 �
Read_98/ReadVariableOpReadVariableOp/read_98_disablecopyonread_adam_m_final_bn_gamma^Read_98/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_196IdentityRead_98/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_197IdentityIdentity_196:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_99/DisableCopyOnReadDisableCopyOnRead/read_99_disablecopyonread_adam_v_final_bn_gamma"/device:CPU:0*
_output_shapes
 �
Read_99/ReadVariableOpReadVariableOp/read_99_disablecopyonread_adam_v_final_bn_gamma^Read_99/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_198IdentityRead_99/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_199IdentityIdentity_198:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_100/DisableCopyOnReadDisableCopyOnRead/read_100_disablecopyonread_adam_m_final_bn_beta"/device:CPU:0*
_output_shapes
 �
Read_100/ReadVariableOpReadVariableOp/read_100_disablecopyonread_adam_m_final_bn_beta^Read_100/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_200IdentityRead_100/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_201IdentityIdentity_200:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_101/DisableCopyOnReadDisableCopyOnRead/read_101_disablecopyonread_adam_v_final_bn_beta"/device:CPU:0*
_output_shapes
 �
Read_101/ReadVariableOpReadVariableOp/read_101_disablecopyonread_adam_v_final_bn_beta^Read_101/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_202IdentityRead_101/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_203IdentityIdentity_202:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_102/DisableCopyOnReadDisableCopyOnRead5read_102_disablecopyonread_adam_m_final_dense2_kernel"/device:CPU:0*
_output_shapes
 �
Read_102/ReadVariableOpReadVariableOp5read_102_disablecopyonread_adam_m_final_dense2_kernel^Read_102/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0q
Identity_204IdentityRead_102/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_205IdentityIdentity_204:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_103/DisableCopyOnReadDisableCopyOnRead5read_103_disablecopyonread_adam_v_final_dense2_kernel"/device:CPU:0*
_output_shapes
 �
Read_103/ReadVariableOpReadVariableOp5read_103_disablecopyonread_adam_v_final_dense2_kernel^Read_103/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0q
Identity_206IdentityRead_103/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_207IdentityIdentity_206:output:0"/device:CPU:0*
T0*
_output_shapes

:�
Read_104/DisableCopyOnReadDisableCopyOnRead3read_104_disablecopyonread_adam_m_final_dense2_bias"/device:CPU:0*
_output_shapes
 �
Read_104/ReadVariableOpReadVariableOp3read_104_disablecopyonread_adam_m_final_dense2_bias^Read_104/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_208IdentityRead_104/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_209IdentityIdentity_208:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_105/DisableCopyOnReadDisableCopyOnRead3read_105_disablecopyonread_adam_v_final_dense2_bias"/device:CPU:0*
_output_shapes
 �
Read_105/ReadVariableOpReadVariableOp3read_105_disablecopyonread_adam_v_final_dense2_bias^Read_105/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_210IdentityRead_105/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_211IdentityIdentity_210:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_106/DisableCopyOnReadDisableCopyOnRead"read_106_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_106/ReadVariableOpReadVariableOp"read_106_disablecopyonread_total_1^Read_106/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_212IdentityRead_106/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_213IdentityIdentity_212:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_107/DisableCopyOnReadDisableCopyOnRead"read_107_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_107/ReadVariableOpReadVariableOp"read_107_disablecopyonread_count_1^Read_107/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_214IdentityRead_107/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_215IdentityIdentity_214:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_108/DisableCopyOnReadDisableCopyOnRead read_108_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_108/ReadVariableOpReadVariableOp read_108_disablecopyonread_total^Read_108/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_216IdentityRead_108/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_217IdentityIdentity_216:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_109/DisableCopyOnReadDisableCopyOnRead read_109_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_109/ReadVariableOpReadVariableOp read_109_disablecopyonread_count^Read_109/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_218IdentityRead_109/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_219IdentityIdentity_218:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_110/DisableCopyOnReadDisableCopyOnRead1read_110_disablecopyonread_random_flip_2_statevar"/device:CPU:0*
_output_shapes
 �
Read_110/ReadVariableOpReadVariableOp1read_110_disablecopyonread_random_flip_2_statevar^Read_110/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	m
Identity_220IdentityRead_110/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:c
Identity_221IdentityIdentity_220:output:0"/device:CPU:0*
T0	*
_output_shapes
:�
Read_111/DisableCopyOnReadDisableCopyOnRead5read_111_disablecopyonread_random_rotation_2_statevar"/device:CPU:0*
_output_shapes
 �
Read_111/ReadVariableOpReadVariableOp5read_111_disablecopyonread_random_rotation_2_statevar^Read_111/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	m
Identity_222IdentityRead_111/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:c
Identity_223IdentityIdentity_222:output:0"/device:CPU:0*
T0	*
_output_shapes
:�
Read_112/DisableCopyOnReadDisableCopyOnRead1read_112_disablecopyonread_random_zoom_2_statevar"/device:CPU:0*
_output_shapes
 �
Read_112/ReadVariableOpReadVariableOp1read_112_disablecopyonread_random_zoom_2_statevar^Read_112/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	m
Identity_224IdentityRead_112/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:c
Identity_225IdentityIdentity_224:output:0"/device:CPU:0*
T0	*
_output_shapes
:�+
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:r*
dtype0*�+
value�+B�+rB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-3/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:r*
dtype0*�
value�B�rB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0Identity_161:output:0Identity_163:output:0Identity_165:output:0Identity_167:output:0Identity_169:output:0Identity_171:output:0Identity_173:output:0Identity_175:output:0Identity_177:output:0Identity_179:output:0Identity_181:output:0Identity_183:output:0Identity_185:output:0Identity_187:output:0Identity_189:output:0Identity_191:output:0Identity_193:output:0Identity_195:output:0Identity_197:output:0Identity_199:output:0Identity_201:output:0Identity_203:output:0Identity_205:output:0Identity_207:output:0Identity_209:output:0Identity_211:output:0Identity_213:output:0Identity_215:output:0Identity_217:output:0Identity_219:output:0Identity_221:output:0Identity_223:output:0Identity_225:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *�
dtypesv
t2r				�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_226Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_227IdentityIdentity_226:output:0^NoOp*
T0*
_output_shapes
: �/
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_100/DisableCopyOnRead^Read_100/ReadVariableOp^Read_101/DisableCopyOnRead^Read_101/ReadVariableOp^Read_102/DisableCopyOnRead^Read_102/ReadVariableOp^Read_103/DisableCopyOnRead^Read_103/ReadVariableOp^Read_104/DisableCopyOnRead^Read_104/ReadVariableOp^Read_105/DisableCopyOnRead^Read_105/ReadVariableOp^Read_106/DisableCopyOnRead^Read_106/ReadVariableOp^Read_107/DisableCopyOnRead^Read_107/ReadVariableOp^Read_108/DisableCopyOnRead^Read_108/ReadVariableOp^Read_109/DisableCopyOnRead^Read_109/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_110/DisableCopyOnRead^Read_110/ReadVariableOp^Read_111/DisableCopyOnRead^Read_111/ReadVariableOp^Read_112/DisableCopyOnRead^Read_112/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_80/DisableCopyOnRead^Read_80/ReadVariableOp^Read_81/DisableCopyOnRead^Read_81/ReadVariableOp^Read_82/DisableCopyOnRead^Read_82/ReadVariableOp^Read_83/DisableCopyOnRead^Read_83/ReadVariableOp^Read_84/DisableCopyOnRead^Read_84/ReadVariableOp^Read_85/DisableCopyOnRead^Read_85/ReadVariableOp^Read_86/DisableCopyOnRead^Read_86/ReadVariableOp^Read_87/DisableCopyOnRead^Read_87/ReadVariableOp^Read_88/DisableCopyOnRead^Read_88/ReadVariableOp^Read_89/DisableCopyOnRead^Read_89/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp^Read_90/DisableCopyOnRead^Read_90/ReadVariableOp^Read_91/DisableCopyOnRead^Read_91/ReadVariableOp^Read_92/DisableCopyOnRead^Read_92/ReadVariableOp^Read_93/DisableCopyOnRead^Read_93/ReadVariableOp^Read_94/DisableCopyOnRead^Read_94/ReadVariableOp^Read_95/DisableCopyOnRead^Read_95/ReadVariableOp^Read_96/DisableCopyOnRead^Read_96/ReadVariableOp^Read_97/DisableCopyOnRead^Read_97/ReadVariableOp^Read_98/DisableCopyOnRead^Read_98/ReadVariableOp^Read_99/DisableCopyOnRead^Read_99/ReadVariableOp*
_output_shapes
 "%
identity_227Identity_227:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp28
Read_100/DisableCopyOnReadRead_100/DisableCopyOnRead22
Read_100/ReadVariableOpRead_100/ReadVariableOp28
Read_101/DisableCopyOnReadRead_101/DisableCopyOnRead22
Read_101/ReadVariableOpRead_101/ReadVariableOp28
Read_102/DisableCopyOnReadRead_102/DisableCopyOnRead22
Read_102/ReadVariableOpRead_102/ReadVariableOp28
Read_103/DisableCopyOnReadRead_103/DisableCopyOnRead22
Read_103/ReadVariableOpRead_103/ReadVariableOp28
Read_104/DisableCopyOnReadRead_104/DisableCopyOnRead22
Read_104/ReadVariableOpRead_104/ReadVariableOp28
Read_105/DisableCopyOnReadRead_105/DisableCopyOnRead22
Read_105/ReadVariableOpRead_105/ReadVariableOp28
Read_106/DisableCopyOnReadRead_106/DisableCopyOnRead22
Read_106/ReadVariableOpRead_106/ReadVariableOp28
Read_107/DisableCopyOnReadRead_107/DisableCopyOnRead22
Read_107/ReadVariableOpRead_107/ReadVariableOp28
Read_108/DisableCopyOnReadRead_108/DisableCopyOnRead22
Read_108/ReadVariableOpRead_108/ReadVariableOp28
Read_109/DisableCopyOnReadRead_109/DisableCopyOnRead22
Read_109/ReadVariableOpRead_109/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp28
Read_110/DisableCopyOnReadRead_110/DisableCopyOnRead22
Read_110/ReadVariableOpRead_110/ReadVariableOp28
Read_111/DisableCopyOnReadRead_111/DisableCopyOnRead22
Read_111/ReadVariableOpRead_111/ReadVariableOp28
Read_112/DisableCopyOnReadRead_112/DisableCopyOnRead22
Read_112/ReadVariableOpRead_112/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp26
Read_80/DisableCopyOnReadRead_80/DisableCopyOnRead20
Read_80/ReadVariableOpRead_80/ReadVariableOp26
Read_81/DisableCopyOnReadRead_81/DisableCopyOnRead20
Read_81/ReadVariableOpRead_81/ReadVariableOp26
Read_82/DisableCopyOnReadRead_82/DisableCopyOnRead20
Read_82/ReadVariableOpRead_82/ReadVariableOp26
Read_83/DisableCopyOnReadRead_83/DisableCopyOnRead20
Read_83/ReadVariableOpRead_83/ReadVariableOp26
Read_84/DisableCopyOnReadRead_84/DisableCopyOnRead20
Read_84/ReadVariableOpRead_84/ReadVariableOp26
Read_85/DisableCopyOnReadRead_85/DisableCopyOnRead20
Read_85/ReadVariableOpRead_85/ReadVariableOp26
Read_86/DisableCopyOnReadRead_86/DisableCopyOnRead20
Read_86/ReadVariableOpRead_86/ReadVariableOp26
Read_87/DisableCopyOnReadRead_87/DisableCopyOnRead20
Read_87/ReadVariableOpRead_87/ReadVariableOp26
Read_88/DisableCopyOnReadRead_88/DisableCopyOnRead20
Read_88/ReadVariableOpRead_88/ReadVariableOp26
Read_89/DisableCopyOnReadRead_89/DisableCopyOnRead20
Read_89/ReadVariableOpRead_89/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp26
Read_90/DisableCopyOnReadRead_90/DisableCopyOnRead20
Read_90/ReadVariableOpRead_90/ReadVariableOp26
Read_91/DisableCopyOnReadRead_91/DisableCopyOnRead20
Read_91/ReadVariableOpRead_91/ReadVariableOp26
Read_92/DisableCopyOnReadRead_92/DisableCopyOnRead20
Read_92/ReadVariableOpRead_92/ReadVariableOp26
Read_93/DisableCopyOnReadRead_93/DisableCopyOnRead20
Read_93/ReadVariableOpRead_93/ReadVariableOp26
Read_94/DisableCopyOnReadRead_94/DisableCopyOnRead20
Read_94/ReadVariableOpRead_94/ReadVariableOp26
Read_95/DisableCopyOnReadRead_95/DisableCopyOnRead20
Read_95/ReadVariableOpRead_95/ReadVariableOp26
Read_96/DisableCopyOnReadRead_96/DisableCopyOnRead20
Read_96/ReadVariableOpRead_96/ReadVariableOp26
Read_97/DisableCopyOnReadRead_97/DisableCopyOnRead20
Read_97/ReadVariableOpRead_97/ReadVariableOp26
Read_98/DisableCopyOnReadRead_98/DisableCopyOnRead20
Read_98/ReadVariableOpRead_98/ReadVariableOp26
Read_99/DisableCopyOnReadRead_99/DisableCopyOnRead20
Read_99/ReadVariableOpRead_99/ReadVariableOp:=r9

_output_shapes
: 

_user_specified_nameConst:6q2
0
_user_specified_namerandom_zoom_2/StateVar::p6
4
_user_specified_namerandom_rotation_2/StateVar:6o2
0
_user_specified_namerandom_flip_2/StateVar:%n!

_user_specified_namecount:%m!

_user_specified_nametotal:'l#
!
_user_specified_name	count_1:'k#
!
_user_specified_name	total_1:8j4
2
_user_specified_nameAdam/v/Final_Dense2/bias:8i4
2
_user_specified_nameAdam/m/Final_Dense2/bias::h6
4
_user_specified_nameAdam/v/Final_Dense2/kernel::g6
4
_user_specified_nameAdam/m/Final_Dense2/kernel:4f0
.
_user_specified_nameAdam/v/Final_BN/beta:4e0
.
_user_specified_nameAdam/m/Final_BN/beta:5d1
/
_user_specified_nameAdam/v/Final_BN/gamma:5c1
/
_user_specified_nameAdam/m/Final_BN/gamma:8b4
2
_user_specified_nameAdam/v/Final_Dense1/bias:8a4
2
_user_specified_nameAdam/m/Final_Dense1/bias::`6
4
_user_specified_nameAdam/v/Final_Dense1/kernel::_6
4
_user_specified_nameAdam/m/Final_Dense1/kernel:2^.
,
_user_specified_nameAdam/v/B2_BN2/beta:2].
,
_user_specified_nameAdam/m/B2_BN2/beta:3\/
-
_user_specified_nameAdam/v/B2_BN2/gamma:3[/
-
_user_specified_nameAdam/m/B2_BN2/gamma:6Z2
0
_user_specified_nameAdam/v/B2_Conv2d2/bias:6Y2
0
_user_specified_nameAdam/m/B2_Conv2d2/bias:8X4
2
_user_specified_nameAdam/v/B2_Conv2d2/kernel:8W4
2
_user_specified_nameAdam/m/B2_Conv2d2/kernel:2V.
,
_user_specified_nameAdam/v/B2_BN1/beta:2U.
,
_user_specified_nameAdam/m/B2_BN1/beta:3T/
-
_user_specified_nameAdam/v/B2_BN1/gamma:3S/
-
_user_specified_nameAdam/m/B2_BN1/gamma:6R2
0
_user_specified_nameAdam/v/B2_Conv2d1/bias:6Q2
0
_user_specified_nameAdam/m/B2_Conv2d1/bias:8P4
2
_user_specified_nameAdam/v/B2_Conv2d1/kernel:8O4
2
_user_specified_nameAdam/m/B2_Conv2d1/kernel:2N.
,
_user_specified_nameAdam/v/B1_BN2/beta:2M.
,
_user_specified_nameAdam/m/B1_BN2/beta:3L/
-
_user_specified_nameAdam/v/B1_BN2/gamma:3K/
-
_user_specified_nameAdam/m/B1_BN2/gamma:6J2
0
_user_specified_nameAdam/v/B1_Conv2d2/bias:6I2
0
_user_specified_nameAdam/m/B1_Conv2d2/bias:8H4
2
_user_specified_nameAdam/v/B1_Conv2d2/kernel:8G4
2
_user_specified_nameAdam/m/B1_Conv2d2/kernel:2F.
,
_user_specified_nameAdam/v/B1_BN1/beta:2E.
,
_user_specified_nameAdam/m/B1_BN1/beta:3D/
-
_user_specified_nameAdam/v/B1_BN1/gamma:3C/
-
_user_specified_nameAdam/m/B1_BN1/gamma:6B2
0
_user_specified_nameAdam/v/B1_Conv2d1/bias:6A2
0
_user_specified_nameAdam/m/B1_Conv2d1/bias:8@4
2
_user_specified_nameAdam/v/B1_Conv2d1/kernel:8?4
2
_user_specified_nameAdam/m/B1_Conv2d1/kernel:2>.
,
_user_specified_nameAdam/v/B0_BN2/beta:2=.
,
_user_specified_nameAdam/m/B0_BN2/beta:3</
-
_user_specified_nameAdam/v/B0_BN2/gamma:3;/
-
_user_specified_nameAdam/m/B0_BN2/gamma:6:2
0
_user_specified_nameAdam/v/B0_Conv2d2/bias:692
0
_user_specified_nameAdam/m/B0_Conv2d2/bias:884
2
_user_specified_nameAdam/v/B0_Conv2d2/kernel:874
2
_user_specified_nameAdam/m/B0_Conv2d2/kernel:26.
,
_user_specified_nameAdam/v/B0_BN1/beta:25.
,
_user_specified_nameAdam/m/B0_BN1/beta:34/
-
_user_specified_nameAdam/v/B0_BN1/gamma:33/
-
_user_specified_nameAdam/m/B0_BN1/gamma:622
0
_user_specified_nameAdam/v/B0_Conv2d1/bias:612
0
_user_specified_nameAdam/m/B0_Conv2d1/bias:804
2
_user_specified_nameAdam/v/B0_Conv2d1/kernel:8/4
2
_user_specified_nameAdam/m/B0_Conv2d1/kernel:-.)
'
_user_specified_namelearning_rate:)-%
#
_user_specified_name	iteration:1,-
+
_user_specified_nameFinal_Dense2/bias:3+/
-
_user_specified_nameFinal_Dense2/kernel:8*4
2
_user_specified_nameFinal_BN/moving_variance:4)0
.
_user_specified_nameFinal_BN/moving_mean:-()
'
_user_specified_nameFinal_BN/beta:.'*
(
_user_specified_nameFinal_BN/gamma:1&-
+
_user_specified_nameFinal_Dense1/bias:3%/
-
_user_specified_nameFinal_Dense1/kernel:6$2
0
_user_specified_nameB2_BN2/moving_variance:2#.
,
_user_specified_nameB2_BN2/moving_mean:+"'
%
_user_specified_nameB2_BN2/beta:,!(
&
_user_specified_nameB2_BN2/gamma:/ +
)
_user_specified_nameB2_Conv2d2/bias:1-
+
_user_specified_nameB2_Conv2d2/kernel:62
0
_user_specified_nameB2_BN1/moving_variance:2.
,
_user_specified_nameB2_BN1/moving_mean:+'
%
_user_specified_nameB2_BN1/beta:,(
&
_user_specified_nameB2_BN1/gamma:/+
)
_user_specified_nameB2_Conv2d1/bias:1-
+
_user_specified_nameB2_Conv2d1/kernel:62
0
_user_specified_nameB1_BN2/moving_variance:2.
,
_user_specified_nameB1_BN2/moving_mean:+'
%
_user_specified_nameB1_BN2/beta:,(
&
_user_specified_nameB1_BN2/gamma:/+
)
_user_specified_nameB1_Conv2d2/bias:1-
+
_user_specified_nameB1_Conv2d2/kernel:62
0
_user_specified_nameB1_BN1/moving_variance:2.
,
_user_specified_nameB1_BN1/moving_mean:+'
%
_user_specified_nameB1_BN1/beta:,(
&
_user_specified_nameB1_BN1/gamma:/+
)
_user_specified_nameB1_Conv2d1/bias:1-
+
_user_specified_nameB1_Conv2d1/kernel:62
0
_user_specified_nameB0_BN2/moving_variance:2.
,
_user_specified_nameB0_BN2/moving_mean:+
'
%
_user_specified_nameB0_BN2/beta:,	(
&
_user_specified_nameB0_BN2/gamma:/+
)
_user_specified_nameB0_Conv2d2/bias:1-
+
_user_specified_nameB0_Conv2d2/kernel:62
0
_user_specified_nameB0_BN1/moving_variance:2.
,
_user_specified_nameB0_BN1/moving_mean:+'
%
_user_specified_nameB0_BN1/beta:,(
&
_user_specified_nameB0_BN1/gamma:/+
)
_user_specified_nameB0_Conv2d1/bias:1-
+
_user_specified_nameB0_Conv2d1/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
J
"__inference__update_step_xla_34004
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
: 
"
_user_specified_name
gradient
�
d
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4793811

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:�����������d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
@__inference_CNN_layer_call_and_return_conditional_losses_4792999
data_augmentation_input'
data_augmentation_4792797:	'
data_augmentation_4792799:	'
data_augmentation_4792801:	+
cnn_model_4792804:
cnn_model_4792806:
cnn_model_4792808:
cnn_model_4792810:
cnn_model_4792812:
cnn_model_4792814:+
cnn_model_4792816:
cnn_model_4792818:
cnn_model_4792820:
cnn_model_4792822:
cnn_model_4792824:
cnn_model_4792826:+
cnn_model_4792828: 
cnn_model_4792830: 
cnn_model_4792832: 
cnn_model_4792834: 
cnn_model_4792836: 
cnn_model_4792838: +
cnn_model_4792840:  
cnn_model_4792842: 
cnn_model_4792844: 
cnn_model_4792846: 
cnn_model_4792848: 
cnn_model_4792850: +
cnn_model_4792852: @
cnn_model_4792854:@
cnn_model_4792856:@
cnn_model_4792858:@
cnn_model_4792860:@
cnn_model_4792862:@+
cnn_model_4792864:@@
cnn_model_4792866:@
cnn_model_4792868:@
cnn_model_4792870:@
cnn_model_4792872:@
cnn_model_4792874:@(
dense_layers_4792877:
��"
dense_layers_4792879:"
dense_layers_4792881:"
dense_layers_4792883:"
dense_layers_4792885:"
dense_layers_4792887:&
dense_layers_4792889:"
dense_layers_4792891:
identity��0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp�3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp�0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp�3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp�0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp�3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp�0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp�3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp�0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp�3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp�0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp�3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp�!CNN_Model/StatefulPartitionedCall�2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp�5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp�2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp�5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp�)data_augmentation/StatefulPartitionedCall�$dense_layers/StatefulPartitionedCall�
)data_augmentation/StatefulPartitionedCallStatefulPartitionedCalldata_augmentation_inputdata_augmentation_4792797data_augmentation_4792799data_augmentation_4792801*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_data_augmentation_layer_call_and_return_conditional_losses_4791123�
!CNN_Model/StatefulPartitionedCallStatefulPartitionedCall2data_augmentation/StatefulPartitionedCall:output:0cnn_model_4792804cnn_model_4792806cnn_model_4792808cnn_model_4792810cnn_model_4792812cnn_model_4792814cnn_model_4792816cnn_model_4792818cnn_model_4792820cnn_model_4792822cnn_model_4792824cnn_model_4792826cnn_model_4792828cnn_model_4792830cnn_model_4792832cnn_model_4792834cnn_model_4792836cnn_model_4792838cnn_model_4792840cnn_model_4792842cnn_model_4792844cnn_model_4792846cnn_model_4792848cnn_model_4792850cnn_model_4792852cnn_model_4792854cnn_model_4792856cnn_model_4792858cnn_model_4792860cnn_model_4792862cnn_model_4792864cnn_model_4792866cnn_model_4792868cnn_model_4792870cnn_model_4792872cnn_model_4792874*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<@*:
_read_only_resource_inputs
	
 !"*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_CNN_Model_layer_call_and_return_conditional_losses_4791993�
$dense_layers/StatefulPartitionedCallStatefulPartitionedCall*CNN_Model/StatefulPartitionedCall:output:0dense_layers_4792877dense_layers_4792879dense_layers_4792881dense_layers_4792883dense_layers_4792885dense_layers_4792887dense_layers_4792889dense_layers_4792891*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_dense_layers_layer_call_and_return_conditional_losses_4792663h
#B0_Conv2d1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpcnn_model_4792804*&
_output_shapes
:*
dtype0�
!B0_Conv2d1/kernel/Regularizer/AbsAbs8B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:~
%B0_Conv2d1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B0_Conv2d1/kernel/Regularizer/SumSum%B0_Conv2d1/kernel/Regularizer/Abs:y:0.B0_Conv2d1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B0_Conv2d1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B0_Conv2d1/kernel/Regularizer/mulMul,B0_Conv2d1/kernel/Regularizer/mul/x:output:0*B0_Conv2d1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B0_Conv2d1/kernel/Regularizer/addAddV2,B0_Conv2d1/kernel/Regularizer/Const:output:0%B0_Conv2d1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpcnn_model_4792804*&
_output_shapes
:*
dtype0�
$B0_Conv2d1/kernel/Regularizer/L2LossL2Loss;B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B0_Conv2d1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B0_Conv2d1/kernel/Regularizer/mul_1Mul.B0_Conv2d1/kernel/Regularizer/mul_1/x:output:0-B0_Conv2d1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B0_Conv2d1/kernel/Regularizer/add_1AddV2%B0_Conv2d1/kernel/Regularizer/add:z:0'B0_Conv2d1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
#B0_Conv2d2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpcnn_model_4792816*&
_output_shapes
:*
dtype0�
!B0_Conv2d2/kernel/Regularizer/AbsAbs8B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:~
%B0_Conv2d2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B0_Conv2d2/kernel/Regularizer/SumSum%B0_Conv2d2/kernel/Regularizer/Abs:y:0.B0_Conv2d2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B0_Conv2d2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B0_Conv2d2/kernel/Regularizer/mulMul,B0_Conv2d2/kernel/Regularizer/mul/x:output:0*B0_Conv2d2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B0_Conv2d2/kernel/Regularizer/addAddV2,B0_Conv2d2/kernel/Regularizer/Const:output:0%B0_Conv2d2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpcnn_model_4792816*&
_output_shapes
:*
dtype0�
$B0_Conv2d2/kernel/Regularizer/L2LossL2Loss;B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B0_Conv2d2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B0_Conv2d2/kernel/Regularizer/mul_1Mul.B0_Conv2d2/kernel/Regularizer/mul_1/x:output:0-B0_Conv2d2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B0_Conv2d2/kernel/Regularizer/add_1AddV2%B0_Conv2d2/kernel/Regularizer/add:z:0'B0_Conv2d2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
#B1_Conv2d1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpcnn_model_4792828*&
_output_shapes
: *
dtype0�
!B1_Conv2d1/kernel/Regularizer/AbsAbs8B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: ~
%B1_Conv2d1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B1_Conv2d1/kernel/Regularizer/SumSum%B1_Conv2d1/kernel/Regularizer/Abs:y:0.B1_Conv2d1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B1_Conv2d1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B1_Conv2d1/kernel/Regularizer/mulMul,B1_Conv2d1/kernel/Regularizer/mul/x:output:0*B1_Conv2d1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B1_Conv2d1/kernel/Regularizer/addAddV2,B1_Conv2d1/kernel/Regularizer/Const:output:0%B1_Conv2d1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpcnn_model_4792828*&
_output_shapes
: *
dtype0�
$B1_Conv2d1/kernel/Regularizer/L2LossL2Loss;B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B1_Conv2d1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B1_Conv2d1/kernel/Regularizer/mul_1Mul.B1_Conv2d1/kernel/Regularizer/mul_1/x:output:0-B1_Conv2d1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B1_Conv2d1/kernel/Regularizer/add_1AddV2%B1_Conv2d1/kernel/Regularizer/add:z:0'B1_Conv2d1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
#B1_Conv2d2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpcnn_model_4792840*&
_output_shapes
:  *
dtype0�
!B1_Conv2d2/kernel/Regularizer/AbsAbs8B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:  ~
%B1_Conv2d2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B1_Conv2d2/kernel/Regularizer/SumSum%B1_Conv2d2/kernel/Regularizer/Abs:y:0.B1_Conv2d2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B1_Conv2d2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B1_Conv2d2/kernel/Regularizer/mulMul,B1_Conv2d2/kernel/Regularizer/mul/x:output:0*B1_Conv2d2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B1_Conv2d2/kernel/Regularizer/addAddV2,B1_Conv2d2/kernel/Regularizer/Const:output:0%B1_Conv2d2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpcnn_model_4792840*&
_output_shapes
:  *
dtype0�
$B1_Conv2d2/kernel/Regularizer/L2LossL2Loss;B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B1_Conv2d2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B1_Conv2d2/kernel/Regularizer/mul_1Mul.B1_Conv2d2/kernel/Regularizer/mul_1/x:output:0-B1_Conv2d2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B1_Conv2d2/kernel/Regularizer/add_1AddV2%B1_Conv2d2/kernel/Regularizer/add:z:0'B1_Conv2d2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
#B2_Conv2d1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpcnn_model_4792852*&
_output_shapes
: @*
dtype0�
!B2_Conv2d1/kernel/Regularizer/AbsAbs8B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: @~
%B2_Conv2d1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B2_Conv2d1/kernel/Regularizer/SumSum%B2_Conv2d1/kernel/Regularizer/Abs:y:0.B2_Conv2d1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B2_Conv2d1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B2_Conv2d1/kernel/Regularizer/mulMul,B2_Conv2d1/kernel/Regularizer/mul/x:output:0*B2_Conv2d1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B2_Conv2d1/kernel/Regularizer/addAddV2,B2_Conv2d1/kernel/Regularizer/Const:output:0%B2_Conv2d1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpcnn_model_4792852*&
_output_shapes
: @*
dtype0�
$B2_Conv2d1/kernel/Regularizer/L2LossL2Loss;B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B2_Conv2d1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B2_Conv2d1/kernel/Regularizer/mul_1Mul.B2_Conv2d1/kernel/Regularizer/mul_1/x:output:0-B2_Conv2d1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B2_Conv2d1/kernel/Regularizer/add_1AddV2%B2_Conv2d1/kernel/Regularizer/add:z:0'B2_Conv2d1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
#B2_Conv2d2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpcnn_model_4792864*&
_output_shapes
:@@*
dtype0�
!B2_Conv2d2/kernel/Regularizer/AbsAbs8B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@~
%B2_Conv2d2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B2_Conv2d2/kernel/Regularizer/SumSum%B2_Conv2d2/kernel/Regularizer/Abs:y:0.B2_Conv2d2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B2_Conv2d2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B2_Conv2d2/kernel/Regularizer/mulMul,B2_Conv2d2/kernel/Regularizer/mul/x:output:0*B2_Conv2d2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B2_Conv2d2/kernel/Regularizer/addAddV2,B2_Conv2d2/kernel/Regularizer/Const:output:0%B2_Conv2d2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpcnn_model_4792864*&
_output_shapes
:@@*
dtype0�
$B2_Conv2d2/kernel/Regularizer/L2LossL2Loss;B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B2_Conv2d2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B2_Conv2d2/kernel/Regularizer/mul_1Mul.B2_Conv2d2/kernel/Regularizer/mul_1/x:output:0-B2_Conv2d2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B2_Conv2d2/kernel/Regularizer/add_1AddV2%B2_Conv2d2/kernel/Regularizer/add:z:0'B2_Conv2d2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: j
%Final_Dense1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_layers_4792877* 
_output_shapes
:
��*
dtype0�
#Final_Dense1/kernel/Regularizer/AbsAbs:Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��x
'Final_Dense1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
#Final_Dense1/kernel/Regularizer/SumSum'Final_Dense1/kernel/Regularizer/Abs:y:00Final_Dense1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: j
%Final_Dense1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#Final_Dense1/kernel/Regularizer/mulMul.Final_Dense1/kernel/Regularizer/mul/x:output:0,Final_Dense1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
#Final_Dense1/kernel/Regularizer/addAddV2.Final_Dense1/kernel/Regularizer/Const:output:0'Final_Dense1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_layers_4792877* 
_output_shapes
:
��*
dtype0�
&Final_Dense1/kernel/Regularizer/L2LossL2Loss=Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'Final_Dense1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
%Final_Dense1/kernel/Regularizer/mul_1Mul0Final_Dense1/kernel/Regularizer/mul_1/x:output:0/Final_Dense1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
%Final_Dense1/kernel/Regularizer/add_1AddV2'Final_Dense1/kernel/Regularizer/add:z:0)Final_Dense1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: j
%Final_Dense2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_layers_4792889*
_output_shapes

:*
dtype0�
#Final_Dense2/kernel/Regularizer/AbsAbs:Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:x
'Final_Dense2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
#Final_Dense2/kernel/Regularizer/SumSum'Final_Dense2/kernel/Regularizer/Abs:y:00Final_Dense2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: j
%Final_Dense2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#Final_Dense2/kernel/Regularizer/mulMul.Final_Dense2/kernel/Regularizer/mul/x:output:0,Final_Dense2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
#Final_Dense2/kernel/Regularizer/addAddV2.Final_Dense2/kernel/Regularizer/Const:output:0'Final_Dense2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_layers_4792889*
_output_shapes

:*
dtype0�
&Final_Dense2/kernel/Regularizer/L2LossL2Loss=Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'Final_Dense2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
%Final_Dense2/kernel/Regularizer/mul_1Mul0Final_Dense2/kernel/Regularizer/mul_1/x:output:0/Final_Dense2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
%Final_Dense2/kernel/Regularizer/add_1AddV2'Final_Dense2/kernel/Regularizer/add:z:0)Final_Dense2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: |
IdentityIdentity-dense_layers/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp1^B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp4^B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp1^B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp4^B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp1^B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp4^B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp1^B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp4^B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp1^B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp4^B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp1^B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp4^B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp"^CNN_Model/StatefulPartitionedCall3^Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp6^Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp3^Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp6^Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp*^data_augmentation/StatefulPartitionedCall%^dense_layers/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes}
{:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2d
0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp2j
3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp2d
0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp2j
3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp2d
0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp2j
3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp2d
0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp2j
3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp2d
0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp2j
3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp2d
0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp2j
3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp2F
!CNN_Model/StatefulPartitionedCall!CNN_Model/StatefulPartitionedCall2h
2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp2n
5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp2h
2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp2n
5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp2V
)data_augmentation/StatefulPartitionedCall)data_augmentation/StatefulPartitionedCall2L
$dense_layers/StatefulPartitionedCall$dense_layers/StatefulPartitionedCall:'/#
!
_user_specified_name	4792891:'.#
!
_user_specified_name	4792889:'-#
!
_user_specified_name	4792887:',#
!
_user_specified_name	4792885:'+#
!
_user_specified_name	4792883:'*#
!
_user_specified_name	4792881:')#
!
_user_specified_name	4792879:'(#
!
_user_specified_name	4792877:''#
!
_user_specified_name	4792874:'&#
!
_user_specified_name	4792872:'%#
!
_user_specified_name	4792870:'$#
!
_user_specified_name	4792868:'##
!
_user_specified_name	4792866:'"#
!
_user_specified_name	4792864:'!#
!
_user_specified_name	4792862:' #
!
_user_specified_name	4792860:'#
!
_user_specified_name	4792858:'#
!
_user_specified_name	4792856:'#
!
_user_specified_name	4792854:'#
!
_user_specified_name	4792852:'#
!
_user_specified_name	4792850:'#
!
_user_specified_name	4792848:'#
!
_user_specified_name	4792846:'#
!
_user_specified_name	4792844:'#
!
_user_specified_name	4792842:'#
!
_user_specified_name	4792840:'#
!
_user_specified_name	4792838:'#
!
_user_specified_name	4792836:'#
!
_user_specified_name	4792834:'#
!
_user_specified_name	4792832:'#
!
_user_specified_name	4792830:'#
!
_user_specified_name	4792828:'#
!
_user_specified_name	4792826:'#
!
_user_specified_name	4792824:'#
!
_user_specified_name	4792822:'#
!
_user_specified_name	4792820:'#
!
_user_specified_name	4792818:'
#
!
_user_specified_name	4792816:'	#
!
_user_specified_name	4792814:'#
!
_user_specified_name	4792812:'#
!
_user_specified_name	4792810:'#
!
_user_specified_name	4792808:'#
!
_user_specified_name	4792806:'#
!
_user_specified_name	4792804:'#
!
_user_specified_name	4792801:'#
!
_user_specified_name	4792799:'#
!
_user_specified_name	4792797:j f
1
_output_shapes
:�����������
1
_user_specified_namedata_augmentation_input
�
�
I__inference_Final_Dense2_layer_call_and_return_conditional_losses_4792630

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp�5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������j
%Final_Dense2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0�
#Final_Dense2/kernel/Regularizer/AbsAbs:Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:x
'Final_Dense2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
#Final_Dense2/kernel/Regularizer/SumSum'Final_Dense2/kernel/Regularizer/Abs:y:00Final_Dense2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: j
%Final_Dense2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#Final_Dense2/kernel/Regularizer/mulMul.Final_Dense2/kernel/Regularizer/mul/x:output:0,Final_Dense2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
#Final_Dense2/kernel/Regularizer/addAddV2.Final_Dense2/kernel/Regularizer/Const:output:0'Final_Dense2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0�
&Final_Dense2/kernel/Regularizer/L2LossL2Loss=Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'Final_Dense2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
%Final_Dense2/kernel/Regularizer/mul_1Mul0Final_Dense2/kernel/Regularizer/mul_1/x:output:0/Final_Dense2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
%Final_Dense2/kernel/Regularizer/add_1AddV2'Final_Dense2/kernel/Regularizer/add:z:0)Final_Dense2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp3^Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp6^Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2h
2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp2n
5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

b
C__inference_B2_DP2_layer_call_and_return_conditional_losses_4791911

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *G�?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������yy@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������yy@*
dtype0*
seed��[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������yy@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:���������yy@i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:���������yy@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������yy@:W S
/
_output_shapes
:���������yy@
 
_user_specified_nameinputs
�

b
C__inference_B0_DP1_layer_call_and_return_conditional_losses_4794307

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *G�?n
dropout/MulMulinputsdropout/Const:output:0*
T0*1
_output_shapes
:�����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0*
seed��[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:�����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentitydropout/SelectV2:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_33934
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
J
"__inference__update_step_xla_33944
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
�
+__inference_CNN_Model_layer_call_fn_4792352
b0_conv2d1_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: $

unknown_17:  

unknown_18: 

unknown_19: 

unknown_20: 

unknown_21: 

unknown_22: $

unknown_23: @

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@$

unknown_29:@@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@

unknown_34:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallb0_conv2d1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<@*F
_read_only_resource_inputs(
&$	
 !"#$*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_CNN_Model_layer_call_and_return_conditional_losses_4792198w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<<@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'$#
!
_user_specified_name	4792348:'##
!
_user_specified_name	4792346:'"#
!
_user_specified_name	4792344:'!#
!
_user_specified_name	4792342:' #
!
_user_specified_name	4792340:'#
!
_user_specified_name	4792338:'#
!
_user_specified_name	4792336:'#
!
_user_specified_name	4792334:'#
!
_user_specified_name	4792332:'#
!
_user_specified_name	4792330:'#
!
_user_specified_name	4792328:'#
!
_user_specified_name	4792326:'#
!
_user_specified_name	4792324:'#
!
_user_specified_name	4792322:'#
!
_user_specified_name	4792320:'#
!
_user_specified_name	4792318:'#
!
_user_specified_name	4792316:'#
!
_user_specified_name	4792314:'#
!
_user_specified_name	4792312:'#
!
_user_specified_name	4792310:'#
!
_user_specified_name	4792308:'#
!
_user_specified_name	4792306:'#
!
_user_specified_name	4792304:'#
!
_user_specified_name	4792302:'#
!
_user_specified_name	4792300:'#
!
_user_specified_name	4792298:'
#
!
_user_specified_name	4792296:'	#
!
_user_specified_name	4792294:'#
!
_user_specified_name	4792292:'#
!
_user_specified_name	4792290:'#
!
_user_specified_name	4792288:'#
!
_user_specified_name	4792286:'#
!
_user_specified_name	4792284:'#
!
_user_specified_name	4792282:'#
!
_user_specified_name	4792280:'#
!
_user_specified_name	4792278:c _
1
_output_shapes
:�����������
*
_user_specified_nameB0_Conv2d1_input
�	
�
3__inference_data_augmentation_layer_call_fn_4791154
rescaling_2_input
unknown:	
	unknown_0:	
	unknown_1:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallrescaling_2_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_data_augmentation_layer_call_and_return_conditional_losses_4791123y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:�����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4791150:'#
!
_user_specified_name	4791148:'#
!
_user_specified_name	4791146:d `
1
_output_shapes
:�����������
+
_user_specified_namerescaling_2_input
�
`
D__inference_flatten_layer_call_and_return_conditional_losses_4792554

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� � ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������<<@:W S
/
_output_shapes
:���������<<@
 
_user_specified_nameinputs
�
f
J__inference_random_flip_2_layer_call_and_return_conditional_losses_4793938

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

b
C__inference_B0_DP2_layer_call_and_return_conditional_losses_4791705

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *G�?n
dropout/MulMulinputsdropout/Const:output:0*
T0*1
_output_shapes
:�����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0*
seed��[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:�����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentitydropout/SelectV2:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
P
"__inference__update_step_xla_34049
gradient
variable:
��*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*!
_input_shapes
:
��: *
	_noinline(:($
"
_user_specified_name
variable:J F
 
_output_shapes
:
��
"
_user_specified_name
gradient
��
�
F__inference_CNN_Model_layer_call_and_return_conditional_losses_4792198
b0_conv2d1_input,
b0_conv2d1_4791996: 
b0_conv2d1_4791998:
b0_bn1_4792001:
b0_bn1_4792003:
b0_bn1_4792005:
b0_bn1_4792007:,
b0_conv2d2_4792016: 
b0_conv2d2_4792018:
b0_bn2_4792021:
b0_bn2_4792023:
b0_bn2_4792025:
b0_bn2_4792027:,
b1_conv2d1_4792037:  
b1_conv2d1_4792039: 
b1_bn1_4792042: 
b1_bn1_4792044: 
b1_bn1_4792046: 
b1_bn1_4792048: ,
b1_conv2d2_4792057:   
b1_conv2d2_4792059: 
b1_bn2_4792062: 
b1_bn2_4792064: 
b1_bn2_4792066: 
b1_bn2_4792068: ,
b2_conv2d1_4792078: @ 
b2_conv2d1_4792080:@
b2_bn1_4792083:@
b2_bn1_4792085:@
b2_bn1_4792087:@
b2_bn1_4792089:@,
b2_conv2d2_4792098:@@ 
b2_conv2d2_4792100:@
b2_bn2_4792103:@
b2_bn2_4792105:@
b2_bn2_4792107:@
b2_bn2_4792109:@
identity��B0_BN1/StatefulPartitionedCall�B0_BN2/StatefulPartitionedCall�"B0_Conv2d1/StatefulPartitionedCall�0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp�3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp�"B0_Conv2d2/StatefulPartitionedCall�0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp�3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp�B1_BN1/StatefulPartitionedCall�B1_BN2/StatefulPartitionedCall�"B1_Conv2d1/StatefulPartitionedCall�0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp�3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp�"B1_Conv2d2/StatefulPartitionedCall�0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp�3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp�B2_BN1/StatefulPartitionedCall�B2_BN2/StatefulPartitionedCall�"B2_Conv2d1/StatefulPartitionedCall�0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp�3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp�"B2_Conv2d2/StatefulPartitionedCall�0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp�3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp�
"B0_Conv2d1/StatefulPartitionedCallStatefulPartitionedCallb0_conv2d1_inputb0_conv2d1_4791996b0_conv2d1_4791998*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_B0_Conv2d1_layer_call_and_return_conditional_losses_4791628�
B0_BN1/StatefulPartitionedCallStatefulPartitionedCall+B0_Conv2d1/StatefulPartitionedCall:output:0b0_bn1_4792001b0_bn1_4792003b0_bn1_4792005b0_bn1_4792007*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B0_BN1_layer_call_and_return_conditional_losses_4791236�
B0_DP1/PartitionedCallPartitionedCall'B0_BN1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B0_DP1_layer_call_and_return_conditional_losses_4792014�
"B0_Conv2d2/StatefulPartitionedCallStatefulPartitionedCallB0_DP1/PartitionedCall:output:0b0_conv2d2_4792016b0_conv2d2_4792018*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_B0_Conv2d2_layer_call_and_return_conditional_losses_4791679�
B0_BN2/StatefulPartitionedCallStatefulPartitionedCall+B0_Conv2d2/StatefulPartitionedCall:output:0b0_bn2_4792021b0_bn2_4792023b0_bn2_4792025b0_bn2_4792027*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B0_BN2_layer_call_and_return_conditional_losses_4791298�
B0_DP2/PartitionedCallPartitionedCall'B0_BN2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B0_DP2_layer_call_and_return_conditional_losses_4792034�
B0_MAX/PartitionedCallPartitionedCallB0_DP2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B0_MAX_layer_call_and_return_conditional_losses_4791329�
"B1_Conv2d1/StatefulPartitionedCallStatefulPartitionedCallB0_MAX/PartitionedCall:output:0b1_conv2d1_4792037b1_conv2d1_4792039*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_B1_Conv2d1_layer_call_and_return_conditional_losses_4791731�
B1_BN1/StatefulPartitionedCallStatefulPartitionedCall+B1_Conv2d1/StatefulPartitionedCall:output:0b1_bn1_4792042b1_bn1_4792044b1_bn1_4792046b1_bn1_4792048*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B1_BN1_layer_call_and_return_conditional_losses_4791370�
B1_DP1/PartitionedCallPartitionedCall'B1_BN1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B1_DP1_layer_call_and_return_conditional_losses_4792055�
"B1_Conv2d2/StatefulPartitionedCallStatefulPartitionedCallB1_DP1/PartitionedCall:output:0b1_conv2d2_4792057b1_conv2d2_4792059*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_B1_Conv2d2_layer_call_and_return_conditional_losses_4791782�
B1_BN2/StatefulPartitionedCallStatefulPartitionedCall+B1_Conv2d2/StatefulPartitionedCall:output:0b1_bn2_4792062b1_bn2_4792064b1_bn2_4792066b1_bn2_4792068*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B1_BN2_layer_call_and_return_conditional_losses_4791432�
B1_DP2/PartitionedCallPartitionedCall'B1_BN2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B1_DP2_layer_call_and_return_conditional_losses_4792075�
B1_MAX/PartitionedCallPartitionedCallB1_DP2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������}} * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B1_MAX_layer_call_and_return_conditional_losses_4791463�
"B2_Conv2d1/StatefulPartitionedCallStatefulPartitionedCallB1_MAX/PartitionedCall:output:0b2_conv2d1_4792078b2_conv2d1_4792080*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������{{@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_B2_Conv2d1_layer_call_and_return_conditional_losses_4791834�
B2_BN1/StatefulPartitionedCallStatefulPartitionedCall+B2_Conv2d1/StatefulPartitionedCall:output:0b2_bn1_4792083b2_bn1_4792085b2_bn1_4792087b2_bn1_4792089*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������{{@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B2_BN1_layer_call_and_return_conditional_losses_4791504�
B2_DP1/PartitionedCallPartitionedCall'B2_BN1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������{{@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B2_DP1_layer_call_and_return_conditional_losses_4792096�
"B2_Conv2d2/StatefulPartitionedCallStatefulPartitionedCallB2_DP1/PartitionedCall:output:0b2_conv2d2_4792098b2_conv2d2_4792100*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������yy@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_B2_Conv2d2_layer_call_and_return_conditional_losses_4791885�
B2_BN2/StatefulPartitionedCallStatefulPartitionedCall+B2_Conv2d2/StatefulPartitionedCall:output:0b2_bn2_4792103b2_bn2_4792105b2_bn2_4792107b2_bn2_4792109*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������yy@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B2_BN2_layer_call_and_return_conditional_losses_4791566�
B2_DP2/PartitionedCallPartitionedCall'B2_BN2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������yy@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B2_DP2_layer_call_and_return_conditional_losses_4792116�
B2_MAX/PartitionedCallPartitionedCallB2_DP2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B2_MAX_layer_call_and_return_conditional_losses_4791597h
#B0_Conv2d1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpb0_conv2d1_4791996*&
_output_shapes
:*
dtype0�
!B0_Conv2d1/kernel/Regularizer/AbsAbs8B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:~
%B0_Conv2d1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B0_Conv2d1/kernel/Regularizer/SumSum%B0_Conv2d1/kernel/Regularizer/Abs:y:0.B0_Conv2d1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B0_Conv2d1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B0_Conv2d1/kernel/Regularizer/mulMul,B0_Conv2d1/kernel/Regularizer/mul/x:output:0*B0_Conv2d1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B0_Conv2d1/kernel/Regularizer/addAddV2,B0_Conv2d1/kernel/Regularizer/Const:output:0%B0_Conv2d1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpb0_conv2d1_4791996*&
_output_shapes
:*
dtype0�
$B0_Conv2d1/kernel/Regularizer/L2LossL2Loss;B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B0_Conv2d1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B0_Conv2d1/kernel/Regularizer/mul_1Mul.B0_Conv2d1/kernel/Regularizer/mul_1/x:output:0-B0_Conv2d1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B0_Conv2d1/kernel/Regularizer/add_1AddV2%B0_Conv2d1/kernel/Regularizer/add:z:0'B0_Conv2d1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
#B0_Conv2d2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpb0_conv2d2_4792016*&
_output_shapes
:*
dtype0�
!B0_Conv2d2/kernel/Regularizer/AbsAbs8B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:~
%B0_Conv2d2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B0_Conv2d2/kernel/Regularizer/SumSum%B0_Conv2d2/kernel/Regularizer/Abs:y:0.B0_Conv2d2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B0_Conv2d2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B0_Conv2d2/kernel/Regularizer/mulMul,B0_Conv2d2/kernel/Regularizer/mul/x:output:0*B0_Conv2d2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B0_Conv2d2/kernel/Regularizer/addAddV2,B0_Conv2d2/kernel/Regularizer/Const:output:0%B0_Conv2d2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpb0_conv2d2_4792016*&
_output_shapes
:*
dtype0�
$B0_Conv2d2/kernel/Regularizer/L2LossL2Loss;B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B0_Conv2d2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B0_Conv2d2/kernel/Regularizer/mul_1Mul.B0_Conv2d2/kernel/Regularizer/mul_1/x:output:0-B0_Conv2d2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B0_Conv2d2/kernel/Regularizer/add_1AddV2%B0_Conv2d2/kernel/Regularizer/add:z:0'B0_Conv2d2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
#B1_Conv2d1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpb1_conv2d1_4792037*&
_output_shapes
: *
dtype0�
!B1_Conv2d1/kernel/Regularizer/AbsAbs8B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: ~
%B1_Conv2d1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B1_Conv2d1/kernel/Regularizer/SumSum%B1_Conv2d1/kernel/Regularizer/Abs:y:0.B1_Conv2d1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B1_Conv2d1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B1_Conv2d1/kernel/Regularizer/mulMul,B1_Conv2d1/kernel/Regularizer/mul/x:output:0*B1_Conv2d1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B1_Conv2d1/kernel/Regularizer/addAddV2,B1_Conv2d1/kernel/Regularizer/Const:output:0%B1_Conv2d1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpb1_conv2d1_4792037*&
_output_shapes
: *
dtype0�
$B1_Conv2d1/kernel/Regularizer/L2LossL2Loss;B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B1_Conv2d1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B1_Conv2d1/kernel/Regularizer/mul_1Mul.B1_Conv2d1/kernel/Regularizer/mul_1/x:output:0-B1_Conv2d1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B1_Conv2d1/kernel/Regularizer/add_1AddV2%B1_Conv2d1/kernel/Regularizer/add:z:0'B1_Conv2d1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
#B1_Conv2d2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpb1_conv2d2_4792057*&
_output_shapes
:  *
dtype0�
!B1_Conv2d2/kernel/Regularizer/AbsAbs8B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:  ~
%B1_Conv2d2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B1_Conv2d2/kernel/Regularizer/SumSum%B1_Conv2d2/kernel/Regularizer/Abs:y:0.B1_Conv2d2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B1_Conv2d2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B1_Conv2d2/kernel/Regularizer/mulMul,B1_Conv2d2/kernel/Regularizer/mul/x:output:0*B1_Conv2d2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B1_Conv2d2/kernel/Regularizer/addAddV2,B1_Conv2d2/kernel/Regularizer/Const:output:0%B1_Conv2d2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpb1_conv2d2_4792057*&
_output_shapes
:  *
dtype0�
$B1_Conv2d2/kernel/Regularizer/L2LossL2Loss;B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B1_Conv2d2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B1_Conv2d2/kernel/Regularizer/mul_1Mul.B1_Conv2d2/kernel/Regularizer/mul_1/x:output:0-B1_Conv2d2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B1_Conv2d2/kernel/Regularizer/add_1AddV2%B1_Conv2d2/kernel/Regularizer/add:z:0'B1_Conv2d2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
#B2_Conv2d1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpb2_conv2d1_4792078*&
_output_shapes
: @*
dtype0�
!B2_Conv2d1/kernel/Regularizer/AbsAbs8B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: @~
%B2_Conv2d1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B2_Conv2d1/kernel/Regularizer/SumSum%B2_Conv2d1/kernel/Regularizer/Abs:y:0.B2_Conv2d1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B2_Conv2d1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B2_Conv2d1/kernel/Regularizer/mulMul,B2_Conv2d1/kernel/Regularizer/mul/x:output:0*B2_Conv2d1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B2_Conv2d1/kernel/Regularizer/addAddV2,B2_Conv2d1/kernel/Regularizer/Const:output:0%B2_Conv2d1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpb2_conv2d1_4792078*&
_output_shapes
: @*
dtype0�
$B2_Conv2d1/kernel/Regularizer/L2LossL2Loss;B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B2_Conv2d1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B2_Conv2d1/kernel/Regularizer/mul_1Mul.B2_Conv2d1/kernel/Regularizer/mul_1/x:output:0-B2_Conv2d1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B2_Conv2d1/kernel/Regularizer/add_1AddV2%B2_Conv2d1/kernel/Regularizer/add:z:0'B2_Conv2d1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
#B2_Conv2d2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpb2_conv2d2_4792098*&
_output_shapes
:@@*
dtype0�
!B2_Conv2d2/kernel/Regularizer/AbsAbs8B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@~
%B2_Conv2d2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B2_Conv2d2/kernel/Regularizer/SumSum%B2_Conv2d2/kernel/Regularizer/Abs:y:0.B2_Conv2d2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B2_Conv2d2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B2_Conv2d2/kernel/Regularizer/mulMul,B2_Conv2d2/kernel/Regularizer/mul/x:output:0*B2_Conv2d2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B2_Conv2d2/kernel/Regularizer/addAddV2,B2_Conv2d2/kernel/Regularizer/Const:output:0%B2_Conv2d2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpb2_conv2d2_4792098*&
_output_shapes
:@@*
dtype0�
$B2_Conv2d2/kernel/Regularizer/L2LossL2Loss;B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B2_Conv2d2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B2_Conv2d2/kernel/Regularizer/mul_1Mul.B2_Conv2d2/kernel/Regularizer/mul_1/x:output:0-B2_Conv2d2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B2_Conv2d2/kernel/Regularizer/add_1AddV2%B2_Conv2d2/kernel/Regularizer/add:z:0'B2_Conv2d2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: v
IdentityIdentityB2_MAX/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<<@�
NoOpNoOp^B0_BN1/StatefulPartitionedCall^B0_BN2/StatefulPartitionedCall#^B0_Conv2d1/StatefulPartitionedCall1^B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp4^B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp#^B0_Conv2d2/StatefulPartitionedCall1^B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp4^B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp^B1_BN1/StatefulPartitionedCall^B1_BN2/StatefulPartitionedCall#^B1_Conv2d1/StatefulPartitionedCall1^B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp4^B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp#^B1_Conv2d2/StatefulPartitionedCall1^B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp4^B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp^B2_BN1/StatefulPartitionedCall^B2_BN2/StatefulPartitionedCall#^B2_Conv2d1/StatefulPartitionedCall1^B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp4^B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp#^B2_Conv2d2/StatefulPartitionedCall1^B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp4^B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2@
B0_BN1/StatefulPartitionedCallB0_BN1/StatefulPartitionedCall2@
B0_BN2/StatefulPartitionedCallB0_BN2/StatefulPartitionedCall2H
"B0_Conv2d1/StatefulPartitionedCall"B0_Conv2d1/StatefulPartitionedCall2d
0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp2j
3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp2H
"B0_Conv2d2/StatefulPartitionedCall"B0_Conv2d2/StatefulPartitionedCall2d
0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp2j
3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp2@
B1_BN1/StatefulPartitionedCallB1_BN1/StatefulPartitionedCall2@
B1_BN2/StatefulPartitionedCallB1_BN2/StatefulPartitionedCall2H
"B1_Conv2d1/StatefulPartitionedCall"B1_Conv2d1/StatefulPartitionedCall2d
0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp2j
3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp2H
"B1_Conv2d2/StatefulPartitionedCall"B1_Conv2d2/StatefulPartitionedCall2d
0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp2j
3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp2@
B2_BN1/StatefulPartitionedCallB2_BN1/StatefulPartitionedCall2@
B2_BN2/StatefulPartitionedCallB2_BN2/StatefulPartitionedCall2H
"B2_Conv2d1/StatefulPartitionedCall"B2_Conv2d1/StatefulPartitionedCall2d
0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp2j
3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp2H
"B2_Conv2d2/StatefulPartitionedCall"B2_Conv2d2/StatefulPartitionedCall2d
0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp2j
3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:'$#
!
_user_specified_name	4792109:'##
!
_user_specified_name	4792107:'"#
!
_user_specified_name	4792105:'!#
!
_user_specified_name	4792103:' #
!
_user_specified_name	4792100:'#
!
_user_specified_name	4792098:'#
!
_user_specified_name	4792089:'#
!
_user_specified_name	4792087:'#
!
_user_specified_name	4792085:'#
!
_user_specified_name	4792083:'#
!
_user_specified_name	4792080:'#
!
_user_specified_name	4792078:'#
!
_user_specified_name	4792068:'#
!
_user_specified_name	4792066:'#
!
_user_specified_name	4792064:'#
!
_user_specified_name	4792062:'#
!
_user_specified_name	4792059:'#
!
_user_specified_name	4792057:'#
!
_user_specified_name	4792048:'#
!
_user_specified_name	4792046:'#
!
_user_specified_name	4792044:'#
!
_user_specified_name	4792042:'#
!
_user_specified_name	4792039:'#
!
_user_specified_name	4792037:'#
!
_user_specified_name	4792027:'#
!
_user_specified_name	4792025:'
#
!
_user_specified_name	4792023:'	#
!
_user_specified_name	4792021:'#
!
_user_specified_name	4792018:'#
!
_user_specified_name	4792016:'#
!
_user_specified_name	4792007:'#
!
_user_specified_name	4792005:'#
!
_user_specified_name	4792003:'#
!
_user_specified_name	4792001:'#
!
_user_specified_name	4791998:'#
!
_user_specified_name	4791996:c _
1
_output_shapes
:�����������
*
_user_specified_nameB0_Conv2d1_input
�
a
C__inference_B1_DP2_layer_call_and_return_conditional_losses_4794688

inputs

identity_1X
IdentityIdentityinputs*
T0*1
_output_shapes
:����������� e

Identity_1IdentityIdentity:output:0*
T0*1
_output_shapes
:����������� "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������� :Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
j
N__inference_random_rotation_2_layer_call_and_return_conditional_losses_4794072

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_33949
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�$
�

%__inference_CNN_layer_call_fn_4793390
data_augmentation_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: $

unknown_17:  

unknown_18: 

unknown_19: 

unknown_20: 

unknown_21: 

unknown_22: $

unknown_23: @

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@$

unknown_29:@@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@

unknown_34:@

unknown_35:
��

unknown_36:

unknown_37:

unknown_38:

unknown_39:

unknown_40:

unknown_41:

unknown_42:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldata_augmentation_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_CNN_layer_call_and_return_conditional_losses_4793198o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesw
u:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:',#
!
_user_specified_name	4793386:'+#
!
_user_specified_name	4793384:'*#
!
_user_specified_name	4793382:')#
!
_user_specified_name	4793380:'(#
!
_user_specified_name	4793378:''#
!
_user_specified_name	4793376:'&#
!
_user_specified_name	4793374:'%#
!
_user_specified_name	4793372:'$#
!
_user_specified_name	4793370:'##
!
_user_specified_name	4793368:'"#
!
_user_specified_name	4793366:'!#
!
_user_specified_name	4793364:' #
!
_user_specified_name	4793362:'#
!
_user_specified_name	4793360:'#
!
_user_specified_name	4793358:'#
!
_user_specified_name	4793356:'#
!
_user_specified_name	4793354:'#
!
_user_specified_name	4793352:'#
!
_user_specified_name	4793350:'#
!
_user_specified_name	4793348:'#
!
_user_specified_name	4793346:'#
!
_user_specified_name	4793344:'#
!
_user_specified_name	4793342:'#
!
_user_specified_name	4793340:'#
!
_user_specified_name	4793338:'#
!
_user_specified_name	4793336:'#
!
_user_specified_name	4793334:'#
!
_user_specified_name	4793332:'#
!
_user_specified_name	4793330:'#
!
_user_specified_name	4793328:'#
!
_user_specified_name	4793326:'#
!
_user_specified_name	4793324:'#
!
_user_specified_name	4793322:'#
!
_user_specified_name	4793320:'
#
!
_user_specified_name	4793318:'	#
!
_user_specified_name	4793316:'#
!
_user_specified_name	4793314:'#
!
_user_specified_name	4793312:'#
!
_user_specified_name	4793310:'#
!
_user_specified_name	4793308:'#
!
_user_specified_name	4793306:'#
!
_user_specified_name	4793304:'#
!
_user_specified_name	4793302:'#
!
_user_specified_name	4793300:j f
1
_output_shapes
:�����������
1
_user_specified_namedata_augmentation_input
�
c
*__inference_Final_DP_layer_call_fn_4795183

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Final_DP_layer_call_and_return_conditional_losses_4792605o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
_
C__inference_B2_MAX_layer_call_and_return_conditional_losses_4794952

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_3_4795020S
9b1_conv2d2_kernel_regularizer_abs_readvariableop_resource:  
identity��0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp�3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOph
#B1_Conv2d2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp9b1_conv2d2_kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
:  *
dtype0�
!B1_Conv2d2/kernel/Regularizer/AbsAbs8B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:  ~
%B1_Conv2d2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B1_Conv2d2/kernel/Regularizer/SumSum%B1_Conv2d2/kernel/Regularizer/Abs:y:0.B1_Conv2d2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B1_Conv2d2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B1_Conv2d2/kernel/Regularizer/mulMul,B1_Conv2d2/kernel/Regularizer/mul/x:output:0*B1_Conv2d2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B1_Conv2d2/kernel/Regularizer/addAddV2,B1_Conv2d2/kernel/Regularizer/Const:output:0%B1_Conv2d2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp9b1_conv2d2_kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
:  *
dtype0�
$B1_Conv2d2/kernel/Regularizer/L2LossL2Loss;B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B1_Conv2d2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B1_Conv2d2/kernel/Regularizer/mul_1Mul.B1_Conv2d2/kernel/Regularizer/mul_1/x:output:0-B1_Conv2d2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B1_Conv2d2/kernel/Regularizer/add_1AddV2%B1_Conv2d2/kernel/Regularizer/add:z:0'B1_Conv2d2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: e
IdentityIdentity'B1_Conv2d2/kernel/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp1^B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp4^B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp2j
3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�A
�
I__inference_dense_layers_layer_call_and_return_conditional_losses_4792663
flatten_input(
final_dense1_4792580:
��"
final_dense1_4792582:
final_bn_4792585:
final_bn_4792587:
final_bn_4792589:
final_bn_4792591:&
final_dense2_4792631:"
final_dense2_4792633:
identity�� Final_BN/StatefulPartitionedCall� Final_DP/StatefulPartitionedCall�$Final_Dense1/StatefulPartitionedCall�2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp�5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp�$Final_Dense2/StatefulPartitionedCall�2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp�5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp�
flatten/PartitionedCallPartitionedCallflatten_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_4792554�
$Final_Dense1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0final_dense1_4792580final_dense1_4792582*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_Final_Dense1_layer_call_and_return_conditional_losses_4792579�
 Final_BN/StatefulPartitionedCallStatefulPartitionedCall-Final_Dense1/StatefulPartitionedCall:output:0final_bn_4792585final_bn_4792587final_bn_4792589final_bn_4792591*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Final_BN_layer_call_and_return_conditional_losses_4792500�
 Final_DP/StatefulPartitionedCallStatefulPartitionedCall)Final_BN/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Final_DP_layer_call_and_return_conditional_losses_4792605�
$Final_Dense2/StatefulPartitionedCallStatefulPartitionedCall)Final_DP/StatefulPartitionedCall:output:0final_dense2_4792631final_dense2_4792633*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_Final_Dense2_layer_call_and_return_conditional_losses_4792630j
%Final_Dense1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpfinal_dense1_4792580* 
_output_shapes
:
��*
dtype0�
#Final_Dense1/kernel/Regularizer/AbsAbs:Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��x
'Final_Dense1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
#Final_Dense1/kernel/Regularizer/SumSum'Final_Dense1/kernel/Regularizer/Abs:y:00Final_Dense1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: j
%Final_Dense1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#Final_Dense1/kernel/Regularizer/mulMul.Final_Dense1/kernel/Regularizer/mul/x:output:0,Final_Dense1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
#Final_Dense1/kernel/Regularizer/addAddV2.Final_Dense1/kernel/Regularizer/Const:output:0'Final_Dense1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpfinal_dense1_4792580* 
_output_shapes
:
��*
dtype0�
&Final_Dense1/kernel/Regularizer/L2LossL2Loss=Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'Final_Dense1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
%Final_Dense1/kernel/Regularizer/mul_1Mul0Final_Dense1/kernel/Regularizer/mul_1/x:output:0/Final_Dense1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
%Final_Dense1/kernel/Regularizer/add_1AddV2'Final_Dense1/kernel/Regularizer/add:z:0)Final_Dense1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: j
%Final_Dense2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpfinal_dense2_4792631*
_output_shapes

:*
dtype0�
#Final_Dense2/kernel/Regularizer/AbsAbs:Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:x
'Final_Dense2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
#Final_Dense2/kernel/Regularizer/SumSum'Final_Dense2/kernel/Regularizer/Abs:y:00Final_Dense2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: j
%Final_Dense2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#Final_Dense2/kernel/Regularizer/mulMul.Final_Dense2/kernel/Regularizer/mul/x:output:0,Final_Dense2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
#Final_Dense2/kernel/Regularizer/addAddV2.Final_Dense2/kernel/Regularizer/Const:output:0'Final_Dense2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpfinal_dense2_4792631*
_output_shapes

:*
dtype0�
&Final_Dense2/kernel/Regularizer/L2LossL2Loss=Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'Final_Dense2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
%Final_Dense2/kernel/Regularizer/mul_1Mul0Final_Dense2/kernel/Regularizer/mul_1/x:output:0/Final_Dense2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
%Final_Dense2/kernel/Regularizer/add_1AddV2'Final_Dense2/kernel/Regularizer/add:z:0)Final_Dense2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: |
IdentityIdentity-Final_Dense2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^Final_BN/StatefulPartitionedCall!^Final_DP/StatefulPartitionedCall%^Final_Dense1/StatefulPartitionedCall3^Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp6^Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp%^Final_Dense2/StatefulPartitionedCall3^Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp6^Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������<<@: : : : : : : : 2D
 Final_BN/StatefulPartitionedCall Final_BN/StatefulPartitionedCall2D
 Final_DP/StatefulPartitionedCall Final_DP/StatefulPartitionedCall2L
$Final_Dense1/StatefulPartitionedCall$Final_Dense1/StatefulPartitionedCall2h
2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp2n
5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp2L
$Final_Dense2/StatefulPartitionedCall$Final_Dense2/StatefulPartitionedCall2h
2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp2n
5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp:'#
!
_user_specified_name	4792633:'#
!
_user_specified_name	4792631:'#
!
_user_specified_name	4792591:'#
!
_user_specified_name	4792589:'#
!
_user_specified_name	4792587:'#
!
_user_specified_name	4792585:'#
!
_user_specified_name	4792582:'#
!
_user_specified_name	4792580:^ Z
/
_output_shapes
:���������<<@
'
_user_specified_nameflatten_input
�
`
D__inference_flatten_layer_call_and_return_conditional_losses_4795065

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� � ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������<<@:W S
/
_output_shapes
:���������<<@
 
_user_specified_nameinputs
�
D
(__inference_B0_DP2_layer_call_fn_4794417

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B0_DP2_layer_call_and_return_conditional_losses_4792034j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
G__inference_B1_Conv2d2_layer_call_and_return_conditional_losses_4794599

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp�3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp�BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� h
#B1_Conv2d2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
!B1_Conv2d2/kernel/Regularizer/AbsAbs8B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:  ~
%B1_Conv2d2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B1_Conv2d2/kernel/Regularizer/SumSum%B1_Conv2d2/kernel/Regularizer/Abs:y:0.B1_Conv2d2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B1_Conv2d2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B1_Conv2d2/kernel/Regularizer/mulMul,B1_Conv2d2/kernel/Regularizer/mul/x:output:0*B1_Conv2d2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B1_Conv2d2/kernel/Regularizer/addAddV2,B1_Conv2d2/kernel/Regularizer/Const:output:0%B1_Conv2d2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
$B1_Conv2d2/kernel/Regularizer/L2LossL2Loss;B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B1_Conv2d2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B1_Conv2d2/kernel/Regularizer/mul_1Mul.B1_Conv2d2/kernel/Regularizer/mul_1/x:output:0-B1_Conv2d2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B1_Conv2d2/kernel/Regularizer/add_1AddV2%B1_Conv2d2/kernel/Regularizer/add:z:0'B1_Conv2d2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� �
NoOpNoOp1^B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp4^B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:����������� : : 2d
0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp2j
3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�	
�
(__inference_B1_BN1_layer_call_fn_4794490

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B1_BN1_layer_call_and_return_conditional_losses_4791352�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4794486:'#
!
_user_specified_name	4794484:'#
!
_user_specified_name	4794482:'#
!
_user_specified_name	4794480:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_33969
gradient"
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: : *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
: 
"
_user_specified_name
gradient
�
Z
3__inference_data_augmentation_layer_call_fn_4791159
rescaling_2_input
identity�
PartitionedCallPartitionedCallrescaling_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_data_augmentation_layer_call_and_return_conditional_losses_4791143j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:d `
1
_output_shapes
:�����������
+
_user_specified_namerescaling_2_input
�	
�
(__inference_B1_BN2_layer_call_fn_4794612

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B1_BN2_layer_call_and_return_conditional_losses_4791414�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4794608:'#
!
_user_specified_name	4794606:'#
!
_user_specified_name	4794604:'#
!
_user_specified_name	4794602:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�	
�
(__inference_B2_BN1_layer_call_fn_4794757

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B2_BN1_layer_call_and_return_conditional_losses_4791504�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4794753:'#
!
_user_specified_name	4794751:'#
!
_user_specified_name	4794749:'#
!
_user_specified_name	4794747:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
__inference_loss_fn_0_4794969S
9b0_conv2d1_kernel_regularizer_abs_readvariableop_resource:
identity��0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp�3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOph
#B0_Conv2d1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp9b0_conv2d1_kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
:*
dtype0�
!B0_Conv2d1/kernel/Regularizer/AbsAbs8B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:~
%B0_Conv2d1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B0_Conv2d1/kernel/Regularizer/SumSum%B0_Conv2d1/kernel/Regularizer/Abs:y:0.B0_Conv2d1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B0_Conv2d1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B0_Conv2d1/kernel/Regularizer/mulMul,B0_Conv2d1/kernel/Regularizer/mul/x:output:0*B0_Conv2d1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B0_Conv2d1/kernel/Regularizer/addAddV2,B0_Conv2d1/kernel/Regularizer/Const:output:0%B0_Conv2d1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp9b0_conv2d1_kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
:*
dtype0�
$B0_Conv2d1/kernel/Regularizer/L2LossL2Loss;B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B0_Conv2d1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B0_Conv2d1/kernel/Regularizer/mul_1Mul.B0_Conv2d1/kernel/Regularizer/mul_1/x:output:0-B0_Conv2d1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B0_Conv2d1/kernel/Regularizer/add_1AddV2%B0_Conv2d1/kernel/Regularizer/add:z:0'B0_Conv2d1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: e
IdentityIdentity'B0_Conv2d1/kernel/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp1^B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp4^B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp2j
3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
I
-__inference_rescaling_2_layer_call_fn_4793803

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4790780j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
j
N__inference_random_rotation_2_layer_call_and_return_conditional_losses_4791135

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
ɀ
�
N__inference_random_rotation_2_layer_call_and_return_conditional_losses_4794068

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|� �Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|� @`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:���������g
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
::��m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������S
transform/ShapeShapeinputs*
T0*
_output_shapes
::��g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:�����������D
NoOpNoOp ^stateful_uniform/RngReadAndSkip*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
.__inference_Final_Dense1_layer_call_fn_4795074

inputs
unknown:
��
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_Final_Dense1_layer_call_and_return_conditional_losses_4792579o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4795070:'#
!
_user_specified_name	4795068:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_34029
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient
�#
�

%__inference_signature_wrapper_4793590
data_augmentation_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: $

unknown_17:  

unknown_18: 

unknown_19: 

unknown_20: 

unknown_21: 

unknown_22: $

unknown_23: @

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@$

unknown_29:@@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@

unknown_34:@

unknown_35:
��

unknown_36:

unknown_37:

unknown_38:

unknown_39:

unknown_40:

unknown_41:

unknown_42:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldata_augmentation_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*N
_read_only_resource_inputs0
.,	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__wrapped_model_4790770o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesw
u:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:',#
!
_user_specified_name	4793586:'+#
!
_user_specified_name	4793584:'*#
!
_user_specified_name	4793582:')#
!
_user_specified_name	4793580:'(#
!
_user_specified_name	4793578:''#
!
_user_specified_name	4793576:'&#
!
_user_specified_name	4793574:'%#
!
_user_specified_name	4793572:'$#
!
_user_specified_name	4793570:'##
!
_user_specified_name	4793568:'"#
!
_user_specified_name	4793566:'!#
!
_user_specified_name	4793564:' #
!
_user_specified_name	4793562:'#
!
_user_specified_name	4793560:'#
!
_user_specified_name	4793558:'#
!
_user_specified_name	4793556:'#
!
_user_specified_name	4793554:'#
!
_user_specified_name	4793552:'#
!
_user_specified_name	4793550:'#
!
_user_specified_name	4793548:'#
!
_user_specified_name	4793546:'#
!
_user_specified_name	4793544:'#
!
_user_specified_name	4793542:'#
!
_user_specified_name	4793540:'#
!
_user_specified_name	4793538:'#
!
_user_specified_name	4793536:'#
!
_user_specified_name	4793534:'#
!
_user_specified_name	4793532:'#
!
_user_specified_name	4793530:'#
!
_user_specified_name	4793528:'#
!
_user_specified_name	4793526:'#
!
_user_specified_name	4793524:'#
!
_user_specified_name	4793522:'#
!
_user_specified_name	4793520:'
#
!
_user_specified_name	4793518:'	#
!
_user_specified_name	4793516:'#
!
_user_specified_name	4793514:'#
!
_user_specified_name	4793512:'#
!
_user_specified_name	4793510:'#
!
_user_specified_name	4793508:'#
!
_user_specified_name	4793506:'#
!
_user_specified_name	4793504:'#
!
_user_specified_name	4793502:'#
!
_user_specified_name	4793500:j f
1
_output_shapes
:�����������
1
_user_specified_namedata_augmentation_input
�
f
J__inference_random_flip_2_layer_call_and_return_conditional_losses_4791130

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
a
C__inference_B2_DP1_layer_call_and_return_conditional_losses_4794820

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������{{@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������{{@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������{{@:W S
/
_output_shapes
:���������{{@
 
_user_specified_nameinputs
�
a
(__inference_B0_DP2_layer_call_fn_4794412

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B0_DP2_layer_call_and_return_conditional_losses_4791705y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
G__inference_B0_Conv2d1_layer_call_and_return_conditional_losses_4791628

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp�3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp�BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������h
#B0_Conv2d1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
!B0_Conv2d1/kernel/Regularizer/AbsAbs8B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:~
%B0_Conv2d1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B0_Conv2d1/kernel/Regularizer/SumSum%B0_Conv2d1/kernel/Regularizer/Abs:y:0.B0_Conv2d1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B0_Conv2d1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B0_Conv2d1/kernel/Regularizer/mulMul,B0_Conv2d1/kernel/Regularizer/mul/x:output:0*B0_Conv2d1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B0_Conv2d1/kernel/Regularizer/addAddV2,B0_Conv2d1/kernel/Regularizer/Const:output:0%B0_Conv2d1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
$B0_Conv2d1/kernel/Regularizer/L2LossL2Loss;B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B0_Conv2d1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B0_Conv2d1/kernel/Regularizer/mul_1Mul.B0_Conv2d1/kernel/Regularizer/mul_1/x:output:0-B0_Conv2d1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B0_Conv2d1/kernel/Regularizer/add_1AddV2%B0_Conv2d1/kernel/Regularizer/add:z:0'B0_Conv2d1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp1^B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp4^B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 2d
0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp2j
3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
,__inference_B1_Conv2d1_layer_call_fn_4794453

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_B1_Conv2d1_layer_call_and_return_conditional_losses_4791731y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:����������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4794449:'#
!
_user_specified_name	4794447:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_6_4795255O
;final_dense1_kernel_regularizer_abs_readvariableop_resource:
��
identity��2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp�5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOpj
%Final_Dense1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp;final_dense1_kernel_regularizer_abs_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
#Final_Dense1/kernel/Regularizer/AbsAbs:Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��x
'Final_Dense1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
#Final_Dense1/kernel/Regularizer/SumSum'Final_Dense1/kernel/Regularizer/Abs:y:00Final_Dense1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: j
%Final_Dense1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#Final_Dense1/kernel/Regularizer/mulMul.Final_Dense1/kernel/Regularizer/mul/x:output:0,Final_Dense1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
#Final_Dense1/kernel/Regularizer/addAddV2.Final_Dense1/kernel/Regularizer/Const:output:0'Final_Dense1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp;final_dense1_kernel_regularizer_abs_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
&Final_Dense1/kernel/Regularizer/L2LossL2Loss=Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'Final_Dense1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
%Final_Dense1/kernel/Regularizer/mul_1Mul0Final_Dense1/kernel/Regularizer/mul_1/x:output:0/Final_Dense1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
%Final_Dense1/kernel/Regularizer/add_1AddV2'Final_Dense1/kernel/Regularizer/add:z:0)Final_Dense1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: g
IdentityIdentity)Final_Dense1/kernel/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp3^Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp6^Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp2n
5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�

b
C__inference_B1_DP1_layer_call_and_return_conditional_losses_4791757

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *G�?n
dropout/MulMulinputsdropout/Const:output:0*
T0*1
_output_shapes
:����������� Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*1
_output_shapes
:����������� *
dtype0*
seed��[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:����������� T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentitydropout/SelectV2:output:0*
T0*1
_output_shapes
:����������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������� :Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
V
"__inference__update_step_xla_33929
gradient"
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:: *
	_noinline(:($
"
_user_specified_name
variable:P L
&
_output_shapes
:
"
_user_specified_name
gradient
�
J
"__inference__update_step_xla_33964
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
J
"__inference__update_step_xla_34024
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�	
�
*__inference_Final_BN_layer_call_fn_4795111

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Final_BN_layer_call_and_return_conditional_losses_4792500o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4795107:'#
!
_user_specified_name	4795105:'#
!
_user_specified_name	4795103:'#
!
_user_specified_name	4795101:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_1_4794986S
9b0_conv2d2_kernel_regularizer_abs_readvariableop_resource:
identity��0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp�3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOph
#B0_Conv2d2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp9b0_conv2d2_kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
:*
dtype0�
!B0_Conv2d2/kernel/Regularizer/AbsAbs8B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:~
%B0_Conv2d2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B0_Conv2d2/kernel/Regularizer/SumSum%B0_Conv2d2/kernel/Regularizer/Abs:y:0.B0_Conv2d2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B0_Conv2d2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B0_Conv2d2/kernel/Regularizer/mulMul,B0_Conv2d2/kernel/Regularizer/mul/x:output:0*B0_Conv2d2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B0_Conv2d2/kernel/Regularizer/addAddV2,B0_Conv2d2/kernel/Regularizer/Const:output:0%B0_Conv2d2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp9b0_conv2d2_kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
:*
dtype0�
$B0_Conv2d2/kernel/Regularizer/L2LossL2Loss;B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B0_Conv2d2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B0_Conv2d2/kernel/Regularizer/mul_1Mul.B0_Conv2d2/kernel/Regularizer/mul_1/x:output:0-B0_Conv2d2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B0_Conv2d2/kernel/Regularizer/add_1AddV2%B0_Conv2d2/kernel/Regularizer/add:z:0'B0_Conv2d2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: e
IdentityIdentity'B0_Conv2d2/kernel/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp1^B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp4^B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp2j
3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
�
G__inference_B1_Conv2d1_layer_call_and_return_conditional_losses_4791731

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp�3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp�BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� h
#B1_Conv2d1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
!B1_Conv2d1/kernel/Regularizer/AbsAbs8B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: ~
%B1_Conv2d1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B1_Conv2d1/kernel/Regularizer/SumSum%B1_Conv2d1/kernel/Regularizer/Abs:y:0.B1_Conv2d1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B1_Conv2d1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B1_Conv2d1/kernel/Regularizer/mulMul,B1_Conv2d1/kernel/Regularizer/mul/x:output:0*B1_Conv2d1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B1_Conv2d1/kernel/Regularizer/addAddV2,B1_Conv2d1/kernel/Regularizer/Const:output:0%B1_Conv2d1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
$B1_Conv2d1/kernel/Regularizer/L2LossL2Loss;B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B1_Conv2d1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B1_Conv2d1/kernel/Regularizer/mul_1Mul.B1_Conv2d1/kernel/Regularizer/mul_1/x:output:0-B1_Conv2d1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B1_Conv2d1/kernel/Regularizer/add_1AddV2%B1_Conv2d1/kernel/Regularizer/add:z:0'B1_Conv2d1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� �
NoOpNoOp1^B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp4^B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 2d
0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp2j
3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
�
*__inference_Final_BN_layer_call_fn_4795124

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Final_BN_layer_call_and_return_conditional_losses_4792520o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4795120:'#
!
_user_specified_name	4795118:'#
!
_user_specified_name	4795116:'#
!
_user_specified_name	4795114:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
C__inference_B0_BN2_layer_call_and_return_conditional_losses_4794389

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
D
(__inference_B1_MAX_layer_call_fn_4794693

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B1_MAX_layer_call_and_return_conditional_losses_4791463�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
I__inference_Final_Dense1_layer_call_and_return_conditional_losses_4795098

inputs2
matmul_readvariableop_resource:
��-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp�5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������j
%Final_Dense1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
#Final_Dense1/kernel/Regularizer/AbsAbs:Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��x
'Final_Dense1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
#Final_Dense1/kernel/Regularizer/SumSum'Final_Dense1/kernel/Regularizer/Abs:y:00Final_Dense1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: j
%Final_Dense1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#Final_Dense1/kernel/Regularizer/mulMul.Final_Dense1/kernel/Regularizer/mul/x:output:0,Final_Dense1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
#Final_Dense1/kernel/Regularizer/addAddV2.Final_Dense1/kernel/Regularizer/Const:output:0'Final_Dense1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
&Final_Dense1/kernel/Regularizer/L2LossL2Loss=Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'Final_Dense1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
%Final_Dense1/kernel/Regularizer/mul_1Mul0Final_Dense1/kernel/Regularizer/mul_1/x:output:0/Final_Dense1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
%Final_Dense1/kernel/Regularizer/add_1AddV2'Final_Dense1/kernel/Regularizer/add:z:0)Final_Dense1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp3^Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp6^Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2h
2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp2n
5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�
D
(__inference_B2_DP2_layer_call_fn_4794925

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������yy@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B2_DP2_layer_call_and_return_conditional_losses_4792116h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������yy@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������yy@:W S
/
_output_shapes
:���������yy@
 
_user_specified_nameinputs
�
a
C__inference_B2_DP2_layer_call_and_return_conditional_losses_4794942

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������yy@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������yy@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������yy@:W S
/
_output_shapes
:���������yy@
 
_user_specified_nameinputs
�

b
C__inference_B0_DP2_layer_call_and_return_conditional_losses_4794429

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *G�?n
dropout/MulMulinputsdropout/Const:output:0*
T0*1
_output_shapes
:�����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0*
seed��[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:�����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentitydropout/SelectV2:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
C__inference_B0_BN2_layer_call_and_return_conditional_losses_4791298

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
a
C__inference_B0_DP2_layer_call_and_return_conditional_losses_4794434

inputs

identity_1X
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������e

Identity_1IdentityIdentity:output:0*
T0*1
_output_shapes
:�����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
C__inference_B2_BN2_layer_call_and_return_conditional_losses_4794915

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�

b
C__inference_B0_DP1_layer_call_and_return_conditional_losses_4791654

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *G�?n
dropout/MulMulinputsdropout/Const:output:0*
T0*1
_output_shapes
:�����������Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0*
seed��[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:�����������T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*1
_output_shapes
:�����������k
IdentityIdentitydropout/SelectV2:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
C__inference_B0_BN1_layer_call_and_return_conditional_losses_4794267

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_33984
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
: 
"
_user_specified_name
gradient
�%
�

%__inference_CNN_layer_call_fn_4793297
data_augmentation_input
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:#
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:$

unknown_14: 

unknown_15: 

unknown_16: 

unknown_17: 

unknown_18: 

unknown_19: $

unknown_20:  

unknown_21: 

unknown_22: 

unknown_23: 

unknown_24: 

unknown_25: $

unknown_26: @

unknown_27:@

unknown_28:@

unknown_29:@

unknown_30:@

unknown_31:@$

unknown_32:@@

unknown_33:@

unknown_34:@

unknown_35:@

unknown_36:@

unknown_37:@

unknown_38:
��

unknown_39:

unknown_40:

unknown_41:

unknown_42:

unknown_43:

unknown_44:

unknown_45:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldata_augmentation_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45*;
Tin4
220*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*@
_read_only_resource_inputs"
 
"#$%(),-./*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_CNN_layer_call_and_return_conditional_losses_4792999o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes}
{:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'/#
!
_user_specified_name	4793293:'.#
!
_user_specified_name	4793291:'-#
!
_user_specified_name	4793289:',#
!
_user_specified_name	4793287:'+#
!
_user_specified_name	4793285:'*#
!
_user_specified_name	4793283:')#
!
_user_specified_name	4793281:'(#
!
_user_specified_name	4793279:''#
!
_user_specified_name	4793277:'&#
!
_user_specified_name	4793275:'%#
!
_user_specified_name	4793273:'$#
!
_user_specified_name	4793271:'##
!
_user_specified_name	4793269:'"#
!
_user_specified_name	4793267:'!#
!
_user_specified_name	4793265:' #
!
_user_specified_name	4793263:'#
!
_user_specified_name	4793261:'#
!
_user_specified_name	4793259:'#
!
_user_specified_name	4793257:'#
!
_user_specified_name	4793255:'#
!
_user_specified_name	4793253:'#
!
_user_specified_name	4793251:'#
!
_user_specified_name	4793249:'#
!
_user_specified_name	4793247:'#
!
_user_specified_name	4793245:'#
!
_user_specified_name	4793243:'#
!
_user_specified_name	4793241:'#
!
_user_specified_name	4793239:'#
!
_user_specified_name	4793237:'#
!
_user_specified_name	4793235:'#
!
_user_specified_name	4793233:'#
!
_user_specified_name	4793231:'#
!
_user_specified_name	4793229:'#
!
_user_specified_name	4793227:'#
!
_user_specified_name	4793225:'#
!
_user_specified_name	4793223:'#
!
_user_specified_name	4793221:'
#
!
_user_specified_name	4793219:'	#
!
_user_specified_name	4793217:'#
!
_user_specified_name	4793215:'#
!
_user_specified_name	4793213:'#
!
_user_specified_name	4793211:'#
!
_user_specified_name	4793209:'#
!
_user_specified_name	4793207:'#
!
_user_specified_name	4793205:'#
!
_user_specified_name	4793203:'#
!
_user_specified_name	4793201:j f
1
_output_shapes
:�����������
1
_user_specified_namedata_augmentation_input
�

b
C__inference_B1_DP2_layer_call_and_return_conditional_losses_4791808

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *G�?n
dropout/MulMulinputsdropout/Const:output:0*
T0*1
_output_shapes
:����������� Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*1
_output_shapes
:����������� *
dtype0*
seed��[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:����������� T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentitydropout/SelectV2:output:0*
T0*1
_output_shapes
:����������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������� :Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
�
__inference_loss_fn_5_4795054S
9b2_conv2d2_kernel_regularizer_abs_readvariableop_resource:@@
identity��0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp�3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOph
#B2_Conv2d2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp9b2_conv2d2_kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
!B2_Conv2d2/kernel/Regularizer/AbsAbs8B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@~
%B2_Conv2d2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B2_Conv2d2/kernel/Regularizer/SumSum%B2_Conv2d2/kernel/Regularizer/Abs:y:0.B2_Conv2d2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B2_Conv2d2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B2_Conv2d2/kernel/Regularizer/mulMul,B2_Conv2d2/kernel/Regularizer/mul/x:output:0*B2_Conv2d2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B2_Conv2d2/kernel/Regularizer/addAddV2,B2_Conv2d2/kernel/Regularizer/Const:output:0%B2_Conv2d2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp9b2_conv2d2_kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
$B2_Conv2d2/kernel/Regularizer/L2LossL2Loss;B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B2_Conv2d2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B2_Conv2d2/kernel/Regularizer/mul_1Mul.B2_Conv2d2/kernel/Regularizer/mul_1/x:output:0-B2_Conv2d2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B2_Conv2d2/kernel/Regularizer/add_1AddV2%B2_Conv2d2/kernel/Regularizer/add:z:0'B2_Conv2d2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: e
IdentityIdentity'B2_Conv2d2/kernel/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp1^B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp4^B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp2j
3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
�
G__inference_B2_Conv2d1_layer_call_and_return_conditional_losses_4794731

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp�3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp�BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������{{@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������{{@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������{{@h
#B2_Conv2d1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
!B2_Conv2d1/kernel/Regularizer/AbsAbs8B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: @~
%B2_Conv2d1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B2_Conv2d1/kernel/Regularizer/SumSum%B2_Conv2d1/kernel/Regularizer/Abs:y:0.B2_Conv2d1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B2_Conv2d1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B2_Conv2d1/kernel/Regularizer/mulMul,B2_Conv2d1/kernel/Regularizer/mul/x:output:0*B2_Conv2d1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B2_Conv2d1/kernel/Regularizer/addAddV2,B2_Conv2d1/kernel/Regularizer/Const:output:0%B2_Conv2d1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
$B2_Conv2d1/kernel/Regularizer/L2LossL2Loss;B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B2_Conv2d1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B2_Conv2d1/kernel/Regularizer/mul_1Mul.B2_Conv2d1/kernel/Regularizer/mul_1/x:output:0-B2_Conv2d1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B2_Conv2d1/kernel/Regularizer/add_1AddV2%B2_Conv2d1/kernel/Regularizer/add:z:0'B2_Conv2d1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������{{@�
NoOpNoOp1^B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp4^B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������}} : : 2d
0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp2j
3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:���������}} 
 
_user_specified_nameinputs
�	
�
(__inference_B1_BN2_layer_call_fn_4794625

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B1_BN2_layer_call_and_return_conditional_losses_4791432�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4794621:'#
!
_user_specified_name	4794619:'#
!
_user_specified_name	4794617:'#
!
_user_specified_name	4794615:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
__inference_loss_fn_4_4795037S
9b2_conv2d1_kernel_regularizer_abs_readvariableop_resource: @
identity��0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp�3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOph
#B2_Conv2d1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOp9b2_conv2d1_kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
: @*
dtype0�
!B2_Conv2d1/kernel/Regularizer/AbsAbs8B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: @~
%B2_Conv2d1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B2_Conv2d1/kernel/Regularizer/SumSum%B2_Conv2d1/kernel/Regularizer/Abs:y:0.B2_Conv2d1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B2_Conv2d1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B2_Conv2d1/kernel/Regularizer/mulMul,B2_Conv2d1/kernel/Regularizer/mul/x:output:0*B2_Conv2d1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B2_Conv2d1/kernel/Regularizer/addAddV2,B2_Conv2d1/kernel/Regularizer/Const:output:0%B2_Conv2d1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOp9b2_conv2d1_kernel_regularizer_abs_readvariableop_resource*&
_output_shapes
: @*
dtype0�
$B2_Conv2d1/kernel/Regularizer/L2LossL2Loss;B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B2_Conv2d1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B2_Conv2d1/kernel/Regularizer/mul_1Mul.B2_Conv2d1/kernel/Regularizer/mul_1/x:output:0-B2_Conv2d1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B2_Conv2d1/kernel/Regularizer/add_1AddV2%B2_Conv2d1/kernel/Regularizer/add:z:0'B2_Conv2d1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: e
IdentityIdentity'B2_Conv2d1/kernel/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp1^B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp4^B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp2j
3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:( $
"
_user_specified_name
resource
�
F
*__inference_Final_DP_layer_call_fn_4795188

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_Final_DP_layer_call_and_return_conditional_losses_4792685`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
a
C__inference_B2_DP1_layer_call_and_return_conditional_losses_4792096

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:���������{{@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������{{@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������{{@:W S
/
_output_shapes
:���������{{@
 
_user_specified_nameinputs
�
�
C__inference_B1_BN2_layer_call_and_return_conditional_losses_4794661

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
C__inference_B0_BN2_layer_call_and_return_conditional_losses_4794407

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
C__inference_B1_BN1_layer_call_and_return_conditional_losses_4794539

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
D
(__inference_B0_DP1_layer_call_fn_4794295

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B0_DP1_layer_call_and_return_conditional_losses_4792014j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
J__inference_random_flip_2_layer_call_and_return_conditional_losses_4793934

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identity��(stateful_uniform_full_int/RngReadAndSkip�*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:������������
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::��~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:�
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:���������y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:�����������k
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:������������
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:�����������k
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
*stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource+stateful_uniform_full_int_1/Cast/x:output:0&stateful_uniform_full_int_1/Cast_1:y:0)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:y
/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
#stateful_uniform_full_int_1/BitcastBitcast2stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0{
1stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_full_int_1StatelessRandomUniformFullIntV2*stateful_uniform_full_int_1/shape:output:0.stateful_uniform_full_int_1/Bitcast_1:output:0,stateful_uniform_full_int_1/Bitcast:output:0(stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	V
zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ~
stack_1Pack$stateful_uniform_full_int_1:output:0zeros_like_1:output:0*
N*
T0	*
_output_shapes

:f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*1
_output_shapes
:������������
#stateless_random_flip_up_down/ShapeShape9stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::��{
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
<stateless_random_flip_up_down/stateless_random_uniform/shapePack4stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
:stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
:stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::�
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������o
-stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:���������v
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:�����������h
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:����������
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:������������
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:�����������~
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:�����������z
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
.__inference_dense_layers_layer_call_fn_4792761
flatten_input
unknown:
��
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallflatten_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_dense_layers_layer_call_and_return_conditional_losses_4792719o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������<<@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4792757:'#
!
_user_specified_name	4792755:'#
!
_user_specified_name	4792753:'#
!
_user_specified_name	4792751:'#
!
_user_specified_name	4792749:'#
!
_user_specified_name	4792747:'#
!
_user_specified_name	4792745:'#
!
_user_specified_name	4792743:^ Z
/
_output_shapes
:���������<<@
'
_user_specified_nameflatten_input
�	
�
(__inference_B0_BN1_layer_call_fn_4794236

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B0_BN1_layer_call_and_return_conditional_losses_4791218�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	4794232:'#
!
_user_specified_name	4794230:'#
!
_user_specified_name	4794228:'#
!
_user_specified_name	4794226:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_34059
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
�
+__inference_CNN_Model_layer_call_fn_4792275
b0_conv2d1_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11: 

unknown_12: 

unknown_13: 

unknown_14: 

unknown_15: 

unknown_16: $

unknown_17:  

unknown_18: 

unknown_19: 

unknown_20: 

unknown_21: 

unknown_22: $

unknown_23: @

unknown_24:@

unknown_25:@

unknown_26:@

unknown_27:@

unknown_28:@$

unknown_29:@@

unknown_30:@

unknown_31:@

unknown_32:@

unknown_33:@

unknown_34:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallb0_conv2d1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<@*:
_read_only_resource_inputs
	
 !"*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_CNN_Model_layer_call_and_return_conditional_losses_4791993w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<<@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'$#
!
_user_specified_name	4792271:'##
!
_user_specified_name	4792269:'"#
!
_user_specified_name	4792267:'!#
!
_user_specified_name	4792265:' #
!
_user_specified_name	4792263:'#
!
_user_specified_name	4792261:'#
!
_user_specified_name	4792259:'#
!
_user_specified_name	4792257:'#
!
_user_specified_name	4792255:'#
!
_user_specified_name	4792253:'#
!
_user_specified_name	4792251:'#
!
_user_specified_name	4792249:'#
!
_user_specified_name	4792247:'#
!
_user_specified_name	4792245:'#
!
_user_specified_name	4792243:'#
!
_user_specified_name	4792241:'#
!
_user_specified_name	4792239:'#
!
_user_specified_name	4792237:'#
!
_user_specified_name	4792235:'#
!
_user_specified_name	4792233:'#
!
_user_specified_name	4792231:'#
!
_user_specified_name	4792229:'#
!
_user_specified_name	4792227:'#
!
_user_specified_name	4792225:'#
!
_user_specified_name	4792223:'#
!
_user_specified_name	4792221:'
#
!
_user_specified_name	4792219:'	#
!
_user_specified_name	4792217:'#
!
_user_specified_name	4792215:'#
!
_user_specified_name	4792213:'#
!
_user_specified_name	4792211:'#
!
_user_specified_name	4792209:'#
!
_user_specified_name	4792207:'#
!
_user_specified_name	4792205:'#
!
_user_specified_name	4792203:'#
!
_user_specified_name	4792201:c _
1
_output_shapes
:�����������
*
_user_specified_nameB0_Conv2d1_input
�
f
J__inference_random_zoom_2_layer_call_and_return_conditional_losses_4794190

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
E__inference_Final_BN_layer_call_and_return_conditional_losses_4792520

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_34014
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�

b
C__inference_B1_DP1_layer_call_and_return_conditional_losses_4794561

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *G�?n
dropout/MulMulinputsdropout/Const:output:0*
T0*1
_output_shapes
:����������� Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*1
_output_shapes
:����������� *
dtype0*
seed��[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:����������� T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentitydropout/SelectV2:output:0*
T0*1
_output_shapes
:����������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������� :Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
��
�
@__inference_CNN_layer_call_and_return_conditional_losses_4793198
data_augmentation_input+
cnn_model_4793003:
cnn_model_4793005:
cnn_model_4793007:
cnn_model_4793009:
cnn_model_4793011:
cnn_model_4793013:+
cnn_model_4793015:
cnn_model_4793017:
cnn_model_4793019:
cnn_model_4793021:
cnn_model_4793023:
cnn_model_4793025:+
cnn_model_4793027: 
cnn_model_4793029: 
cnn_model_4793031: 
cnn_model_4793033: 
cnn_model_4793035: 
cnn_model_4793037: +
cnn_model_4793039:  
cnn_model_4793041: 
cnn_model_4793043: 
cnn_model_4793045: 
cnn_model_4793047: 
cnn_model_4793049: +
cnn_model_4793051: @
cnn_model_4793053:@
cnn_model_4793055:@
cnn_model_4793057:@
cnn_model_4793059:@
cnn_model_4793061:@+
cnn_model_4793063:@@
cnn_model_4793065:@
cnn_model_4793067:@
cnn_model_4793069:@
cnn_model_4793071:@
cnn_model_4793073:@(
dense_layers_4793076:
��"
dense_layers_4793078:"
dense_layers_4793080:"
dense_layers_4793082:"
dense_layers_4793084:"
dense_layers_4793086:&
dense_layers_4793088:"
dense_layers_4793090:
identity��0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp�3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp�0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp�3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp�0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp�3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp�0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp�3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp�0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp�3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp�0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp�3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp�!CNN_Model/StatefulPartitionedCall�2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp�5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp�2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp�5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp�$dense_layers/StatefulPartitionedCall�
!data_augmentation/PartitionedCallPartitionedCalldata_augmentation_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_data_augmentation_layer_call_and_return_conditional_losses_4791143�
!CNN_Model/StatefulPartitionedCallStatefulPartitionedCall*data_augmentation/PartitionedCall:output:0cnn_model_4793003cnn_model_4793005cnn_model_4793007cnn_model_4793009cnn_model_4793011cnn_model_4793013cnn_model_4793015cnn_model_4793017cnn_model_4793019cnn_model_4793021cnn_model_4793023cnn_model_4793025cnn_model_4793027cnn_model_4793029cnn_model_4793031cnn_model_4793033cnn_model_4793035cnn_model_4793037cnn_model_4793039cnn_model_4793041cnn_model_4793043cnn_model_4793045cnn_model_4793047cnn_model_4793049cnn_model_4793051cnn_model_4793053cnn_model_4793055cnn_model_4793057cnn_model_4793059cnn_model_4793061cnn_model_4793063cnn_model_4793065cnn_model_4793067cnn_model_4793069cnn_model_4793071cnn_model_4793073*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<@*F
_read_only_resource_inputs(
&$	
 !"#$*0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_CNN_Model_layer_call_and_return_conditional_losses_4792198�
$dense_layers/StatefulPartitionedCallStatefulPartitionedCall*CNN_Model/StatefulPartitionedCall:output:0dense_layers_4793076dense_layers_4793078dense_layers_4793080dense_layers_4793082dense_layers_4793084dense_layers_4793086dense_layers_4793088dense_layers_4793090*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_dense_layers_layer_call_and_return_conditional_losses_4792719h
#B0_Conv2d1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpcnn_model_4793003*&
_output_shapes
:*
dtype0�
!B0_Conv2d1/kernel/Regularizer/AbsAbs8B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:~
%B0_Conv2d1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B0_Conv2d1/kernel/Regularizer/SumSum%B0_Conv2d1/kernel/Regularizer/Abs:y:0.B0_Conv2d1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B0_Conv2d1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B0_Conv2d1/kernel/Regularizer/mulMul,B0_Conv2d1/kernel/Regularizer/mul/x:output:0*B0_Conv2d1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B0_Conv2d1/kernel/Regularizer/addAddV2,B0_Conv2d1/kernel/Regularizer/Const:output:0%B0_Conv2d1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpcnn_model_4793003*&
_output_shapes
:*
dtype0�
$B0_Conv2d1/kernel/Regularizer/L2LossL2Loss;B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B0_Conv2d1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B0_Conv2d1/kernel/Regularizer/mul_1Mul.B0_Conv2d1/kernel/Regularizer/mul_1/x:output:0-B0_Conv2d1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B0_Conv2d1/kernel/Regularizer/add_1AddV2%B0_Conv2d1/kernel/Regularizer/add:z:0'B0_Conv2d1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
#B0_Conv2d2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpcnn_model_4793015*&
_output_shapes
:*
dtype0�
!B0_Conv2d2/kernel/Regularizer/AbsAbs8B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:~
%B0_Conv2d2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B0_Conv2d2/kernel/Regularizer/SumSum%B0_Conv2d2/kernel/Regularizer/Abs:y:0.B0_Conv2d2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B0_Conv2d2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B0_Conv2d2/kernel/Regularizer/mulMul,B0_Conv2d2/kernel/Regularizer/mul/x:output:0*B0_Conv2d2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B0_Conv2d2/kernel/Regularizer/addAddV2,B0_Conv2d2/kernel/Regularizer/Const:output:0%B0_Conv2d2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpcnn_model_4793015*&
_output_shapes
:*
dtype0�
$B0_Conv2d2/kernel/Regularizer/L2LossL2Loss;B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B0_Conv2d2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B0_Conv2d2/kernel/Regularizer/mul_1Mul.B0_Conv2d2/kernel/Regularizer/mul_1/x:output:0-B0_Conv2d2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B0_Conv2d2/kernel/Regularizer/add_1AddV2%B0_Conv2d2/kernel/Regularizer/add:z:0'B0_Conv2d2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
#B1_Conv2d1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpcnn_model_4793027*&
_output_shapes
: *
dtype0�
!B1_Conv2d1/kernel/Regularizer/AbsAbs8B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: ~
%B1_Conv2d1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B1_Conv2d1/kernel/Regularizer/SumSum%B1_Conv2d1/kernel/Regularizer/Abs:y:0.B1_Conv2d1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B1_Conv2d1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B1_Conv2d1/kernel/Regularizer/mulMul,B1_Conv2d1/kernel/Regularizer/mul/x:output:0*B1_Conv2d1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B1_Conv2d1/kernel/Regularizer/addAddV2,B1_Conv2d1/kernel/Regularizer/Const:output:0%B1_Conv2d1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpcnn_model_4793027*&
_output_shapes
: *
dtype0�
$B1_Conv2d1/kernel/Regularizer/L2LossL2Loss;B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B1_Conv2d1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B1_Conv2d1/kernel/Regularizer/mul_1Mul.B1_Conv2d1/kernel/Regularizer/mul_1/x:output:0-B1_Conv2d1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B1_Conv2d1/kernel/Regularizer/add_1AddV2%B1_Conv2d1/kernel/Regularizer/add:z:0'B1_Conv2d1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
#B1_Conv2d2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpcnn_model_4793039*&
_output_shapes
:  *
dtype0�
!B1_Conv2d2/kernel/Regularizer/AbsAbs8B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:  ~
%B1_Conv2d2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B1_Conv2d2/kernel/Regularizer/SumSum%B1_Conv2d2/kernel/Regularizer/Abs:y:0.B1_Conv2d2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B1_Conv2d2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B1_Conv2d2/kernel/Regularizer/mulMul,B1_Conv2d2/kernel/Regularizer/mul/x:output:0*B1_Conv2d2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B1_Conv2d2/kernel/Regularizer/addAddV2,B1_Conv2d2/kernel/Regularizer/Const:output:0%B1_Conv2d2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpcnn_model_4793039*&
_output_shapes
:  *
dtype0�
$B1_Conv2d2/kernel/Regularizer/L2LossL2Loss;B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B1_Conv2d2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B1_Conv2d2/kernel/Regularizer/mul_1Mul.B1_Conv2d2/kernel/Regularizer/mul_1/x:output:0-B1_Conv2d2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B1_Conv2d2/kernel/Regularizer/add_1AddV2%B1_Conv2d2/kernel/Regularizer/add:z:0'B1_Conv2d2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
#B2_Conv2d1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpcnn_model_4793051*&
_output_shapes
: @*
dtype0�
!B2_Conv2d1/kernel/Regularizer/AbsAbs8B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
: @~
%B2_Conv2d1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B2_Conv2d1/kernel/Regularizer/SumSum%B2_Conv2d1/kernel/Regularizer/Abs:y:0.B2_Conv2d1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B2_Conv2d1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B2_Conv2d1/kernel/Regularizer/mulMul,B2_Conv2d1/kernel/Regularizer/mul/x:output:0*B2_Conv2d1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B2_Conv2d1/kernel/Regularizer/addAddV2,B2_Conv2d1/kernel/Regularizer/Const:output:0%B2_Conv2d1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpcnn_model_4793051*&
_output_shapes
: @*
dtype0�
$B2_Conv2d1/kernel/Regularizer/L2LossL2Loss;B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B2_Conv2d1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B2_Conv2d1/kernel/Regularizer/mul_1Mul.B2_Conv2d1/kernel/Regularizer/mul_1/x:output:0-B2_Conv2d1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B2_Conv2d1/kernel/Regularizer/add_1AddV2%B2_Conv2d1/kernel/Regularizer/add:z:0'B2_Conv2d1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: h
#B2_Conv2d2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpcnn_model_4793063*&
_output_shapes
:@@*
dtype0�
!B2_Conv2d2/kernel/Regularizer/AbsAbs8B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*&
_output_shapes
:@@~
%B2_Conv2d2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             �
!B2_Conv2d2/kernel/Regularizer/SumSum%B2_Conv2d2/kernel/Regularizer/Abs:y:0.B2_Conv2d2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: h
#B2_Conv2d2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
!B2_Conv2d2/kernel/Regularizer/mulMul,B2_Conv2d2/kernel/Regularizer/mul/x:output:0*B2_Conv2d2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
!B2_Conv2d2/kernel/Regularizer/addAddV2,B2_Conv2d2/kernel/Regularizer/Const:output:0%B2_Conv2d2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpcnn_model_4793063*&
_output_shapes
:@@*
dtype0�
$B2_Conv2d2/kernel/Regularizer/L2LossL2Loss;B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: j
%B2_Conv2d2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
#B2_Conv2d2/kernel/Regularizer/mul_1Mul.B2_Conv2d2/kernel/Regularizer/mul_1/x:output:0-B2_Conv2d2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
#B2_Conv2d2/kernel/Regularizer/add_1AddV2%B2_Conv2d2/kernel/Regularizer/add:z:0'B2_Conv2d2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: j
%Final_Dense1/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_layers_4793076* 
_output_shapes
:
��*
dtype0�
#Final_Dense1/kernel/Regularizer/AbsAbs:Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��x
'Final_Dense1/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
#Final_Dense1/kernel/Regularizer/SumSum'Final_Dense1/kernel/Regularizer/Abs:y:00Final_Dense1/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: j
%Final_Dense1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#Final_Dense1/kernel/Regularizer/mulMul.Final_Dense1/kernel/Regularizer/mul/x:output:0,Final_Dense1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
#Final_Dense1/kernel/Regularizer/addAddV2.Final_Dense1/kernel/Regularizer/Const:output:0'Final_Dense1/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_layers_4793076* 
_output_shapes
:
��*
dtype0�
&Final_Dense1/kernel/Regularizer/L2LossL2Loss=Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'Final_Dense1/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
%Final_Dense1/kernel/Regularizer/mul_1Mul0Final_Dense1/kernel/Regularizer/mul_1/x:output:0/Final_Dense1/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
%Final_Dense1/kernel/Regularizer/add_1AddV2'Final_Dense1/kernel/Regularizer/add:z:0)Final_Dense1/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: j
%Final_Dense2/kernel/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOpReadVariableOpdense_layers_4793088*
_output_shapes

:*
dtype0�
#Final_Dense2/kernel/Regularizer/AbsAbs:Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:x
'Final_Dense2/kernel/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
#Final_Dense2/kernel/Regularizer/SumSum'Final_Dense2/kernel/Regularizer/Abs:y:00Final_Dense2/kernel/Regularizer/Const_1:output:0*
T0*
_output_shapes
: j
%Final_Dense2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��'7�
#Final_Dense2/kernel/Regularizer/mulMul.Final_Dense2/kernel/Regularizer/mul/x:output:0,Final_Dense2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
#Final_Dense2/kernel/Regularizer/addAddV2.Final_Dense2/kernel/Regularizer/Const:output:0'Final_Dense2/kernel/Regularizer/mul:z:0*
T0*
_output_shapes
: �
5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOpReadVariableOpdense_layers_4793088*
_output_shapes

:*
dtype0�
&Final_Dense2/kernel/Regularizer/L2LossL2Loss=Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp:value:0*
T0*
_output_shapes
: l
'Final_Dense2/kernel/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *�76�
%Final_Dense2/kernel/Regularizer/mul_1Mul0Final_Dense2/kernel/Regularizer/mul_1/x:output:0/Final_Dense2/kernel/Regularizer/L2Loss:output:0*
T0*
_output_shapes
: �
%Final_Dense2/kernel/Regularizer/add_1AddV2'Final_Dense2/kernel/Regularizer/add:z:0)Final_Dense2/kernel/Regularizer/mul_1:z:0*
T0*
_output_shapes
: |
IdentityIdentity-dense_layers/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp1^B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp4^B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp1^B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp4^B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp1^B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp4^B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp1^B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp4^B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp1^B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp4^B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp1^B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp4^B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp"^CNN_Model/StatefulPartitionedCall3^Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp6^Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp3^Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp6^Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp%^dense_layers/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesw
u:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2d
0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp0B0_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp2j
3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp3B0_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp2d
0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp0B0_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp2j
3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp3B0_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp2d
0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp0B1_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp2j
3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp3B1_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp2d
0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp0B1_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp2j
3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp3B1_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp2d
0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp0B2_Conv2d1/kernel/Regularizer/Abs/ReadVariableOp2j
3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp3B2_Conv2d1/kernel/Regularizer/L2Loss/ReadVariableOp2d
0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp0B2_Conv2d2/kernel/Regularizer/Abs/ReadVariableOp2j
3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp3B2_Conv2d2/kernel/Regularizer/L2Loss/ReadVariableOp2F
!CNN_Model/StatefulPartitionedCall!CNN_Model/StatefulPartitionedCall2h
2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp2Final_Dense1/kernel/Regularizer/Abs/ReadVariableOp2n
5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp5Final_Dense1/kernel/Regularizer/L2Loss/ReadVariableOp2h
2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp2Final_Dense2/kernel/Regularizer/Abs/ReadVariableOp2n
5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp5Final_Dense2/kernel/Regularizer/L2Loss/ReadVariableOp2L
$dense_layers/StatefulPartitionedCall$dense_layers/StatefulPartitionedCall:',#
!
_user_specified_name	4793090:'+#
!
_user_specified_name	4793088:'*#
!
_user_specified_name	4793086:')#
!
_user_specified_name	4793084:'(#
!
_user_specified_name	4793082:''#
!
_user_specified_name	4793080:'&#
!
_user_specified_name	4793078:'%#
!
_user_specified_name	4793076:'$#
!
_user_specified_name	4793073:'##
!
_user_specified_name	4793071:'"#
!
_user_specified_name	4793069:'!#
!
_user_specified_name	4793067:' #
!
_user_specified_name	4793065:'#
!
_user_specified_name	4793063:'#
!
_user_specified_name	4793061:'#
!
_user_specified_name	4793059:'#
!
_user_specified_name	4793057:'#
!
_user_specified_name	4793055:'#
!
_user_specified_name	4793053:'#
!
_user_specified_name	4793051:'#
!
_user_specified_name	4793049:'#
!
_user_specified_name	4793047:'#
!
_user_specified_name	4793045:'#
!
_user_specified_name	4793043:'#
!
_user_specified_name	4793041:'#
!
_user_specified_name	4793039:'#
!
_user_specified_name	4793037:'#
!
_user_specified_name	4793035:'#
!
_user_specified_name	4793033:'#
!
_user_specified_name	4793031:'#
!
_user_specified_name	4793029:'#
!
_user_specified_name	4793027:'#
!
_user_specified_name	4793025:'#
!
_user_specified_name	4793023:'
#
!
_user_specified_name	4793021:'	#
!
_user_specified_name	4793019:'#
!
_user_specified_name	4793017:'#
!
_user_specified_name	4793015:'#
!
_user_specified_name	4793013:'#
!
_user_specified_name	4793011:'#
!
_user_specified_name	4793009:'#
!
_user_specified_name	4793007:'#
!
_user_specified_name	4793005:'#
!
_user_specified_name	4793003:j f
1
_output_shapes
:�����������
1
_user_specified_namedata_augmentation_input
�
a
(__inference_B1_DP1_layer_call_fn_4794544

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B1_DP1_layer_call_and_return_conditional_losses_4791757y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:����������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������� 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_33939
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
�
C__inference_B2_BN2_layer_call_and_return_conditional_losses_4794897

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
C__inference_B2_BN1_layer_call_and_return_conditional_losses_4794775

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_34064
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�n
�
J__inference_random_zoom_2_layer_call_and_return_conditional_losses_4794186

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *�̌?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:���������^
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
::��i
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:���������x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:���������X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:���������v
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:���������v
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:���������Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������S
transform/ShapeShapeinputs*
T0*
_output_shapes
::��g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:�����������D
NoOpNoOp ^stateful_uniform/RngReadAndSkip*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_34054
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:
"
_user_specified_name
gradient
�
J
"__inference__update_step_xla_34034
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
:@
"
_user_specified_name
gradient
�
a
(__inference_B1_DP2_layer_call_fn_4794666

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_B1_DP2_layer_call_and_return_conditional_losses_4791808y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:����������� <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������� 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
�
C__inference_B1_BN2_layer_call_and_return_conditional_losses_4794643

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�

b
C__inference_B1_DP2_layer_call_and_return_conditional_losses_4794683

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *G�?n
dropout/MulMulinputsdropout/Const:output:0*
T0*1
_output_shapes
:����������� Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::���
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*1
_output_shapes
:����������� *
dtype0*
seed��[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:����������� T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentitydropout/SelectV2:output:0*
T0*1
_output_shapes
:����������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������� :Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
E
)__inference_flatten_layer_call_fn_4795059

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_4792554b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������<<@:W S
/
_output_shapes
:���������<<@
 
_user_specified_nameinputs
�
�
C__inference_B1_BN2_layer_call_and_return_conditional_losses_4791432

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
J
"__inference__update_step_xla_33994
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:($
"
_user_specified_name
variable:D @

_output_shapes
: 
"
_user_specified_name
gradient
�
�
C__inference_B1_BN1_layer_call_and_return_conditional_losses_4791352

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
C__inference_B0_BN1_layer_call_and_return_conditional_losses_4794285

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
e
data_augmentation_inputJ
)serving_default_data_augmentation_input:0�����������@
dense_layers0
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
layer-0
layer-1
layer-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer-6
layer_with_weights-4
layer-7
layer_with_weights-5
layer-8
 layer-9
!layer_with_weights-6
!layer-10
"layer_with_weights-7
"layer-11
#layer-12
$layer-13
%layer_with_weights-8
%layer-14
&layer_with_weights-9
&layer-15
'layer-16
(layer_with_weights-10
(layer-17
)layer_with_weights-11
)layer-18
*layer-19
+layer-20
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
2layer-0
3layer_with_weights-0
3layer-1
4layer_with_weights-1
4layer-2
5layer-3
6layer_with_weights-2
6layer-4
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
=0
>1
?2
@3
A4
B5
C6
D7
E8
F9
G10
H11
I12
J13
K14
L15
M16
N17
O18
P19
Q20
R21
S22
T23
U24
V25
W26
X27
Y28
Z29
[30
\31
]32
^33
_34
`35
a36
b37
c38
d39
e40
f41
g42
h43"
trackable_list_wrapper
�
=0
>1
?2
@3
C4
D5
E6
F7
I8
J9
K10
L11
O12
P13
Q14
R15
U16
V17
W18
X19
[20
\21
]22
^23
a24
b25
c26
d27
g28
h29"
trackable_list_wrapper
 "
trackable_list_wrapper
�
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
�
ntrace_0
otrace_12�
%__inference_CNN_layer_call_fn_4793297
%__inference_CNN_layer_call_fn_4793390�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zntrace_0zotrace_1
�
ptrace_0
qtrace_12�
@__inference_CNN_layer_call_and_return_conditional_losses_4792999
@__inference_CNN_layer_call_and_return_conditional_losses_4793198�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zptrace_0zqtrace_1
�B�
"__inference__wrapped_model_4790770data_augmentation_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
r
_variables
s_iterations
t_learning_rate
u_index_dict
v
_momentums
w_velocities
x_update_step_xla"
experimentalOptimizer
,
yserving_default"
signature_map
�
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
3__inference_data_augmentation_layer_call_fn_4791154
3__inference_data_augmentation_layer_call_fn_4791159�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
N__inference_data_augmentation_layer_call_and_return_conditional_losses_4791123
N__inference_data_augmentation_layer_call_and_return_conditional_losses_4791143�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

=kernel
>bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	?gamma
@beta
Amoving_mean
Bmoving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Ckernel
Dbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Egamma
Fbeta
Gmoving_mean
Hmoving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Ikernel
Jbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Kgamma
Lbeta
Mmoving_mean
Nmoving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Okernel
Pbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Qgamma
Rbeta
Smoving_mean
Tmoving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Ukernel
Vbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

[kernel
\bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	]gamma
^beta
_moving_mean
`moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
=0
>1
?2
@3
A4
B5
C6
D7
E8
F9
G10
H11
I12
J13
K14
L15
M16
N17
O18
P19
Q20
R21
S22
T23
U24
V25
W26
X27
Y28
Z29
[30
\31
]32
^33
_34
`35"
trackable_list_wrapper
�
=0
>1
?2
@3
C4
D5
E6
F7
I8
J9
K10
L11
O12
P13
Q14
R15
U16
V17
W18
X19
[20
\21
]22
^23"
trackable_list_wrapper
P
�0
�1
�2
�3
�4
�5"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_CNN_Model_layer_call_fn_4792275
+__inference_CNN_Model_layer_call_fn_4792352�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_CNN_Model_layer_call_and_return_conditional_losses_4791993
F__inference_CNN_Model_layer_call_and_return_conditional_losses_4792198�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

akernel
bbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	cgamma
dbeta
emoving_mean
fmoving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

gkernel
hbias"
_tf_keras_layer
X
a0
b1
c2
d3
e4
f5
g6
h7"
trackable_list_wrapper
J
a0
b1
c2
d3
g4
h5"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
.__inference_dense_layers_layer_call_fn_4792740
.__inference_dense_layers_layer_call_fn_4792761�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
I__inference_dense_layers_layer_call_and_return_conditional_losses_4792663
I__inference_dense_layers_layer_call_and_return_conditional_losses_4792719�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
+:)2B0_Conv2d1/kernel
:2B0_Conv2d1/bias
:2B0_BN1/gamma
:2B0_BN1/beta
":  (2B0_BN1/moving_mean
&:$ (2B0_BN1/moving_variance
+:)2B0_Conv2d2/kernel
:2B0_Conv2d2/bias
:2B0_BN2/gamma
:2B0_BN2/beta
":  (2B0_BN2/moving_mean
&:$ (2B0_BN2/moving_variance
+:) 2B1_Conv2d1/kernel
: 2B1_Conv2d1/bias
: 2B1_BN1/gamma
: 2B1_BN1/beta
":   (2B1_BN1/moving_mean
&:$  (2B1_BN1/moving_variance
+:)  2B1_Conv2d2/kernel
: 2B1_Conv2d2/bias
: 2B1_BN2/gamma
: 2B1_BN2/beta
":   (2B1_BN2/moving_mean
&:$  (2B1_BN2/moving_variance
+:) @2B2_Conv2d1/kernel
:@2B2_Conv2d1/bias
:@2B2_BN1/gamma
:@2B2_BN1/beta
": @ (2B2_BN1/moving_mean
&:$@ (2B2_BN1/moving_variance
+:)@@2B2_Conv2d2/kernel
:@2B2_Conv2d2/bias
:@2B2_BN2/gamma
:@2B2_BN2/beta
": @ (2B2_BN2/moving_mean
&:$@ (2B2_BN2/moving_variance
':%
��2Final_Dense1/kernel
:2Final_Dense1/bias
:2Final_BN/gamma
:2Final_BN/beta
$:" (2Final_BN/moving_mean
(:& (2Final_BN/moving_variance
%:#2Final_Dense2/kernel
:2Final_Dense2/bias
�
A0
B1
G2
H3
M4
N5
S6
T7
Y8
Z9
_10
`11
e12
f13"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_CNN_layer_call_fn_4793297data_augmentation_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_CNN_layer_call_fn_4793390data_augmentation_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_CNN_layer_call_and_return_conditional_losses_4792999data_augmentation_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_CNN_layer_call_and_return_conditional_losses_4793198data_augmentation_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
s0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29"
trackable_list_wrapper
�
�trace_0
�trace_1
�trace_2
�trace_3
�trace_4
�trace_5
�trace_6
�trace_7
�trace_8
�trace_9
�trace_10
�trace_11
�trace_12
�trace_13
�trace_14
�trace_15
�trace_16
�trace_17
�trace_18
�trace_19
�trace_20
�trace_21
�trace_22
�trace_23
�trace_24
�trace_25
�trace_26
�trace_27
�trace_28
�trace_292�	
"__inference__update_step_xla_33929
"__inference__update_step_xla_33934
"__inference__update_step_xla_33939
"__inference__update_step_xla_33944
"__inference__update_step_xla_33949
"__inference__update_step_xla_33954
"__inference__update_step_xla_33959
"__inference__update_step_xla_33964
"__inference__update_step_xla_33969
"__inference__update_step_xla_33974
"__inference__update_step_xla_33979
"__inference__update_step_xla_33984
"__inference__update_step_xla_33989
"__inference__update_step_xla_33994
"__inference__update_step_xla_33999
"__inference__update_step_xla_34004
"__inference__update_step_xla_34009
"__inference__update_step_xla_34014
"__inference__update_step_xla_34019
"__inference__update_step_xla_34024
"__inference__update_step_xla_34029
"__inference__update_step_xla_34034
"__inference__update_step_xla_34039
"__inference__update_step_xla_34044
"__inference__update_step_xla_34049
"__inference__update_step_xla_34054
"__inference__update_step_xla_34059
"__inference__update_step_xla_34064
"__inference__update_step_xla_34069
"__inference__update_step_xla_34074�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0z�trace_0z�trace_1z�trace_2z�trace_3z�trace_4z�trace_5z�trace_6z�trace_7z�trace_8z�trace_9z�trace_10z�trace_11z�trace_12z�trace_13z�trace_14z�trace_15z�trace_16z�trace_17z�trace_18z�trace_19z�trace_20z�trace_21z�trace_22z�trace_23z�trace_24z�trace_25z�trace_26z�trace_27z�trace_28z�trace_29
�B�
%__inference_signature_wrapper_4793590data_augmentation_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
-__inference_rescaling_2_layer_call_fn_4793803�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4793811�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
/__inference_random_flip_2_layer_call_fn_4793818
/__inference_random_flip_2_layer_call_fn_4793823�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
J__inference_random_flip_2_layer_call_and_return_conditional_losses_4793934
J__inference_random_flip_2_layer_call_and_return_conditional_losses_4793938�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
/
�
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
3__inference_random_rotation_2_layer_call_fn_4793945
3__inference_random_rotation_2_layer_call_fn_4793950�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
N__inference_random_rotation_2_layer_call_and_return_conditional_losses_4794068
N__inference_random_rotation_2_layer_call_and_return_conditional_losses_4794072�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
/
�
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
/__inference_random_zoom_2_layer_call_fn_4794079
/__inference_random_zoom_2_layer_call_fn_4794084�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
J__inference_random_zoom_2_layer_call_and_return_conditional_losses_4794186
J__inference_random_zoom_2_layer_call_and_return_conditional_losses_4794190�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
/
�
_generator"
_generic_user_object
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
3__inference_data_augmentation_layer_call_fn_4791154rescaling_2_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
3__inference_data_augmentation_layer_call_fn_4791159rescaling_2_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_data_augmentation_layer_call_and_return_conditional_losses_4791123rescaling_2_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_data_augmentation_layer_call_and_return_conditional_losses_4791143rescaling_2_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_B0_Conv2d1_layer_call_fn_4794199�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_B0_Conv2d1_layer_call_and_return_conditional_losses_4794223�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
?0
@1
A2
B3"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_B0_BN1_layer_call_fn_4794236
(__inference_B0_BN1_layer_call_fn_4794249�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_B0_BN1_layer_call_and_return_conditional_losses_4794267
C__inference_B0_BN1_layer_call_and_return_conditional_losses_4794285�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_B0_DP1_layer_call_fn_4794290
(__inference_B0_DP1_layer_call_fn_4794295�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_B0_DP1_layer_call_and_return_conditional_losses_4794307
C__inference_B0_DP1_layer_call_and_return_conditional_losses_4794312�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_B0_Conv2d2_layer_call_fn_4794321�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_B0_Conv2d2_layer_call_and_return_conditional_losses_4794345�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
E0
F1
G2
H3"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_B0_BN2_layer_call_fn_4794358
(__inference_B0_BN2_layer_call_fn_4794371�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_B0_BN2_layer_call_and_return_conditional_losses_4794389
C__inference_B0_BN2_layer_call_and_return_conditional_losses_4794407�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_B0_DP2_layer_call_fn_4794412
(__inference_B0_DP2_layer_call_fn_4794417�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_B0_DP2_layer_call_and_return_conditional_losses_4794429
C__inference_B0_DP2_layer_call_and_return_conditional_losses_4794434�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_B0_MAX_layer_call_fn_4794439�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_B0_MAX_layer_call_and_return_conditional_losses_4794444�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_B1_Conv2d1_layer_call_fn_4794453�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_B1_Conv2d1_layer_call_and_return_conditional_losses_4794477�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
K0
L1
M2
N3"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_B1_BN1_layer_call_fn_4794490
(__inference_B1_BN1_layer_call_fn_4794503�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_B1_BN1_layer_call_and_return_conditional_losses_4794521
C__inference_B1_BN1_layer_call_and_return_conditional_losses_4794539�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_B1_DP1_layer_call_fn_4794544
(__inference_B1_DP1_layer_call_fn_4794549�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_B1_DP1_layer_call_and_return_conditional_losses_4794561
C__inference_B1_DP1_layer_call_and_return_conditional_losses_4794566�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_B1_Conv2d2_layer_call_fn_4794575�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_B1_Conv2d2_layer_call_and_return_conditional_losses_4794599�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
Q0
R1
S2
T3"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_B1_BN2_layer_call_fn_4794612
(__inference_B1_BN2_layer_call_fn_4794625�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_B1_BN2_layer_call_and_return_conditional_losses_4794643
C__inference_B1_BN2_layer_call_and_return_conditional_losses_4794661�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_B1_DP2_layer_call_fn_4794666
(__inference_B1_DP2_layer_call_fn_4794671�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_B1_DP2_layer_call_and_return_conditional_losses_4794683
C__inference_B1_DP2_layer_call_and_return_conditional_losses_4794688�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_B1_MAX_layer_call_fn_4794693�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_B1_MAX_layer_call_and_return_conditional_losses_4794698�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_B2_Conv2d1_layer_call_fn_4794707�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_B2_Conv2d1_layer_call_and_return_conditional_losses_4794731�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
W0
X1
Y2
Z3"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_B2_BN1_layer_call_fn_4794744
(__inference_B2_BN1_layer_call_fn_4794757�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_B2_BN1_layer_call_and_return_conditional_losses_4794775
C__inference_B2_BN1_layer_call_and_return_conditional_losses_4794793�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_B2_DP1_layer_call_fn_4794798
(__inference_B2_DP1_layer_call_fn_4794803�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_B2_DP1_layer_call_and_return_conditional_losses_4794815
C__inference_B2_DP1_layer_call_and_return_conditional_losses_4794820�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_B2_Conv2d2_layer_call_fn_4794829�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_B2_Conv2d2_layer_call_and_return_conditional_losses_4794853�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
]0
^1
_2
`3"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_B2_BN2_layer_call_fn_4794866
(__inference_B2_BN2_layer_call_fn_4794879�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_B2_BN2_layer_call_and_return_conditional_losses_4794897
C__inference_B2_BN2_layer_call_and_return_conditional_losses_4794915�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_B2_DP2_layer_call_fn_4794920
(__inference_B2_DP2_layer_call_fn_4794925�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_B2_DP2_layer_call_and_return_conditional_losses_4794937
C__inference_B2_DP2_layer_call_and_return_conditional_losses_4794942�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_B2_MAX_layer_call_fn_4794947�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_B2_MAX_layer_call_and_return_conditional_losses_4794952�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
__inference_loss_fn_0_4794969�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_1_4794986�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_2_4795003�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_3_4795020�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_4_4795037�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_5_4795054�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
v
A0
B1
G2
H3
M4
N5
S6
T7
Y8
Z9
_10
`11"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
 9
!10
"11
#12
$13
%14
&15
'16
(17
)18
*19
+20"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_CNN_Model_layer_call_fn_4792275B0_Conv2d1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_CNN_Model_layer_call_fn_4792352B0_Conv2d1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_CNN_Model_layer_call_and_return_conditional_losses_4791993B0_Conv2d1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_CNN_Model_layer_call_and_return_conditional_losses_4792198B0_Conv2d1_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_flatten_layer_call_fn_4795059�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_flatten_layer_call_and_return_conditional_losses_4795065�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
a0
b1"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_Final_Dense1_layer_call_fn_4795074�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
I__inference_Final_Dense1_layer_call_and_return_conditional_losses_4795098�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
<
c0
d1
e2
f3"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
*__inference_Final_BN_layer_call_fn_4795111
*__inference_Final_BN_layer_call_fn_4795124�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
E__inference_Final_BN_layer_call_and_return_conditional_losses_4795158
E__inference_Final_BN_layer_call_and_return_conditional_losses_4795178�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
*__inference_Final_DP_layer_call_fn_4795183
*__inference_Final_DP_layer_call_fn_4795188�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
E__inference_Final_DP_layer_call_and_return_conditional_losses_4795200
E__inference_Final_DP_layer_call_and_return_conditional_losses_4795205�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
g0
h1"
trackable_list_wrapper
.
g0
h1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
.__inference_Final_Dense2_layer_call_fn_4795214�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
I__inference_Final_Dense2_layer_call_and_return_conditional_losses_4795238�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
__inference_loss_fn_6_4795255�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_7_4795272�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
.
e0
f1"
trackable_list_wrapper
C
20
31
42
53
64"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_dense_layers_layer_call_fn_4792740flatten_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_dense_layers_layer_call_fn_4792761flatten_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_dense_layers_layer_call_and_return_conditional_losses_4792663flatten_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_dense_layers_layer_call_and_return_conditional_losses_4792719flatten_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
0:.2Adam/m/B0_Conv2d1/kernel
0:.2Adam/v/B0_Conv2d1/kernel
": 2Adam/m/B0_Conv2d1/bias
": 2Adam/v/B0_Conv2d1/bias
:2Adam/m/B0_BN1/gamma
:2Adam/v/B0_BN1/gamma
:2Adam/m/B0_BN1/beta
:2Adam/v/B0_BN1/beta
0:.2Adam/m/B0_Conv2d2/kernel
0:.2Adam/v/B0_Conv2d2/kernel
": 2Adam/m/B0_Conv2d2/bias
": 2Adam/v/B0_Conv2d2/bias
:2Adam/m/B0_BN2/gamma
:2Adam/v/B0_BN2/gamma
:2Adam/m/B0_BN2/beta
:2Adam/v/B0_BN2/beta
0:. 2Adam/m/B1_Conv2d1/kernel
0:. 2Adam/v/B1_Conv2d1/kernel
":  2Adam/m/B1_Conv2d1/bias
":  2Adam/v/B1_Conv2d1/bias
: 2Adam/m/B1_BN1/gamma
: 2Adam/v/B1_BN1/gamma
: 2Adam/m/B1_BN1/beta
: 2Adam/v/B1_BN1/beta
0:.  2Adam/m/B1_Conv2d2/kernel
0:.  2Adam/v/B1_Conv2d2/kernel
":  2Adam/m/B1_Conv2d2/bias
":  2Adam/v/B1_Conv2d2/bias
: 2Adam/m/B1_BN2/gamma
: 2Adam/v/B1_BN2/gamma
: 2Adam/m/B1_BN2/beta
: 2Adam/v/B1_BN2/beta
0:. @2Adam/m/B2_Conv2d1/kernel
0:. @2Adam/v/B2_Conv2d1/kernel
": @2Adam/m/B2_Conv2d1/bias
": @2Adam/v/B2_Conv2d1/bias
:@2Adam/m/B2_BN1/gamma
:@2Adam/v/B2_BN1/gamma
:@2Adam/m/B2_BN1/beta
:@2Adam/v/B2_BN1/beta
0:.@@2Adam/m/B2_Conv2d2/kernel
0:.@@2Adam/v/B2_Conv2d2/kernel
": @2Adam/m/B2_Conv2d2/bias
": @2Adam/v/B2_Conv2d2/bias
:@2Adam/m/B2_BN2/gamma
:@2Adam/v/B2_BN2/gamma
:@2Adam/m/B2_BN2/beta
:@2Adam/v/B2_BN2/beta
,:*
��2Adam/m/Final_Dense1/kernel
,:*
��2Adam/v/Final_Dense1/kernel
$:"2Adam/m/Final_Dense1/bias
$:"2Adam/v/Final_Dense1/bias
!:2Adam/m/Final_BN/gamma
!:2Adam/v/Final_BN/gamma
 :2Adam/m/Final_BN/beta
 :2Adam/v/Final_BN/beta
*:(2Adam/m/Final_Dense2/kernel
*:(2Adam/v/Final_Dense2/kernel
$:"2Adam/m/Final_Dense2/bias
$:"2Adam/v/Final_Dense2/bias
�B�
"__inference__update_step_xla_33929gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_33934gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_33939gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_33944gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_33949gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_33954gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_33959gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_33964gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_33969gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_33974gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_33979gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_33984gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_33989gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_33994gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_33999gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_34004gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_34009gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_34014gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_34019gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_34024gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_34029gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_34034gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_34039gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_34044gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_34049gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_34054gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_34059gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_34064gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_34069gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference__update_step_xla_34074gradientvariable"�
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_rescaling_2_layer_call_fn_4793803inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4793811inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_random_flip_2_layer_call_fn_4793818inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_random_flip_2_layer_call_fn_4793823inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_random_flip_2_layer_call_and_return_conditional_losses_4793934inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_random_flip_2_layer_call_and_return_conditional_losses_4793938inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
/
�
_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
3__inference_random_rotation_2_layer_call_fn_4793945inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
3__inference_random_rotation_2_layer_call_fn_4793950inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_random_rotation_2_layer_call_and_return_conditional_losses_4794068inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_random_rotation_2_layer_call_and_return_conditional_losses_4794072inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
/
�
_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_random_zoom_2_layer_call_fn_4794079inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_random_zoom_2_layer_call_fn_4794084inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_random_zoom_2_layer_call_and_return_conditional_losses_4794186inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_random_zoom_2_layer_call_and_return_conditional_losses_4794190inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
/
�
_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_B0_Conv2d1_layer_call_fn_4794199inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_B0_Conv2d1_layer_call_and_return_conditional_losses_4794223inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_B0_BN1_layer_call_fn_4794236inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_B0_BN1_layer_call_fn_4794249inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B0_BN1_layer_call_and_return_conditional_losses_4794267inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B0_BN1_layer_call_and_return_conditional_losses_4794285inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_B0_DP1_layer_call_fn_4794290inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_B0_DP1_layer_call_fn_4794295inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B0_DP1_layer_call_and_return_conditional_losses_4794307inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B0_DP1_layer_call_and_return_conditional_losses_4794312inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_B0_Conv2d2_layer_call_fn_4794321inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_B0_Conv2d2_layer_call_and_return_conditional_losses_4794345inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_B0_BN2_layer_call_fn_4794358inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_B0_BN2_layer_call_fn_4794371inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B0_BN2_layer_call_and_return_conditional_losses_4794389inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B0_BN2_layer_call_and_return_conditional_losses_4794407inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_B0_DP2_layer_call_fn_4794412inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_B0_DP2_layer_call_fn_4794417inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B0_DP2_layer_call_and_return_conditional_losses_4794429inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B0_DP2_layer_call_and_return_conditional_losses_4794434inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_B0_MAX_layer_call_fn_4794439inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B0_MAX_layer_call_and_return_conditional_losses_4794444inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_B1_Conv2d1_layer_call_fn_4794453inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_B1_Conv2d1_layer_call_and_return_conditional_losses_4794477inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_B1_BN1_layer_call_fn_4794490inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_B1_BN1_layer_call_fn_4794503inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B1_BN1_layer_call_and_return_conditional_losses_4794521inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B1_BN1_layer_call_and_return_conditional_losses_4794539inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_B1_DP1_layer_call_fn_4794544inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_B1_DP1_layer_call_fn_4794549inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B1_DP1_layer_call_and_return_conditional_losses_4794561inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B1_DP1_layer_call_and_return_conditional_losses_4794566inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_B1_Conv2d2_layer_call_fn_4794575inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_B1_Conv2d2_layer_call_and_return_conditional_losses_4794599inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_B1_BN2_layer_call_fn_4794612inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_B1_BN2_layer_call_fn_4794625inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B1_BN2_layer_call_and_return_conditional_losses_4794643inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B1_BN2_layer_call_and_return_conditional_losses_4794661inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_B1_DP2_layer_call_fn_4794666inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_B1_DP2_layer_call_fn_4794671inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B1_DP2_layer_call_and_return_conditional_losses_4794683inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B1_DP2_layer_call_and_return_conditional_losses_4794688inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_B1_MAX_layer_call_fn_4794693inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B1_MAX_layer_call_and_return_conditional_losses_4794698inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_B2_Conv2d1_layer_call_fn_4794707inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_B2_Conv2d1_layer_call_and_return_conditional_losses_4794731inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_B2_BN1_layer_call_fn_4794744inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_B2_BN1_layer_call_fn_4794757inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B2_BN1_layer_call_and_return_conditional_losses_4794775inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B2_BN1_layer_call_and_return_conditional_losses_4794793inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_B2_DP1_layer_call_fn_4794798inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_B2_DP1_layer_call_fn_4794803inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B2_DP1_layer_call_and_return_conditional_losses_4794815inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B2_DP1_layer_call_and_return_conditional_losses_4794820inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_B2_Conv2d2_layer_call_fn_4794829inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_B2_Conv2d2_layer_call_and_return_conditional_losses_4794853inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_B2_BN2_layer_call_fn_4794866inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_B2_BN2_layer_call_fn_4794879inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B2_BN2_layer_call_and_return_conditional_losses_4794897inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B2_BN2_layer_call_and_return_conditional_losses_4794915inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_B2_DP2_layer_call_fn_4794920inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_B2_DP2_layer_call_fn_4794925inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B2_DP2_layer_call_and_return_conditional_losses_4794937inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B2_DP2_layer_call_and_return_conditional_losses_4794942inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_B2_MAX_layer_call_fn_4794947inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_B2_MAX_layer_call_and_return_conditional_losses_4794952inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_0_4794969"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_1_4794986"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_2_4795003"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_3_4795020"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_4_4795037"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_5_4795054"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_flatten_layer_call_fn_4795059inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_flatten_layer_call_and_return_conditional_losses_4795065inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_Final_Dense1_layer_call_fn_4795074inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_Final_Dense1_layer_call_and_return_conditional_losses_4795098inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_Final_BN_layer_call_fn_4795111inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_Final_BN_layer_call_fn_4795124inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Final_BN_layer_call_and_return_conditional_losses_4795158inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Final_BN_layer_call_and_return_conditional_losses_4795178inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_Final_DP_layer_call_fn_4795183inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_Final_DP_layer_call_fn_4795188inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Final_DP_layer_call_and_return_conditional_losses_4795200inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_Final_DP_layer_call_and_return_conditional_losses_4795205inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_Final_Dense2_layer_call_fn_4795214inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_Final_Dense2_layer_call_and_return_conditional_losses_4795238inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_6_4795255"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_7_4795272"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
": 	2random_flip_2/StateVar
&:$	2random_rotation_2/StateVar
": 	2random_zoom_2/StateVar�
C__inference_B0_BN1_layer_call_and_return_conditional_losses_4794267�?@ABQ�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
C__inference_B0_BN1_layer_call_and_return_conditional_losses_4794285�?@ABQ�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
(__inference_B0_BN1_layer_call_fn_4794236�?@ABQ�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
(__inference_B0_BN1_layer_call_fn_4794249�?@ABQ�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
C__inference_B0_BN2_layer_call_and_return_conditional_losses_4794389�EFGHQ�N
G�D
:�7
inputs+���������������������������
p

 
� "F�C
<�9
tensor_0+���������������������������
� �
C__inference_B0_BN2_layer_call_and_return_conditional_losses_4794407�EFGHQ�N
G�D
:�7
inputs+���������������������������
p 

 
� "F�C
<�9
tensor_0+���������������������������
� �
(__inference_B0_BN2_layer_call_fn_4794358�EFGHQ�N
G�D
:�7
inputs+���������������������������
p

 
� ";�8
unknown+����������������������������
(__inference_B0_BN2_layer_call_fn_4794371�EFGHQ�N
G�D
:�7
inputs+���������������������������
p 

 
� ";�8
unknown+����������������������������
G__inference_B0_Conv2d1_layer_call_and_return_conditional_losses_4794223w=>9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
,__inference_B0_Conv2d1_layer_call_fn_4794199l=>9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
G__inference_B0_Conv2d2_layer_call_and_return_conditional_losses_4794345wCD9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
,__inference_B0_Conv2d2_layer_call_fn_4794321lCD9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
C__inference_B0_DP1_layer_call_and_return_conditional_losses_4794307w=�:
3�0
*�'
inputs�����������
p
� "6�3
,�)
tensor_0�����������
� �
C__inference_B0_DP1_layer_call_and_return_conditional_losses_4794312w=�:
3�0
*�'
inputs�����������
p 
� "6�3
,�)
tensor_0�����������
� �
(__inference_B0_DP1_layer_call_fn_4794290l=�:
3�0
*�'
inputs�����������
p
� "+�(
unknown������������
(__inference_B0_DP1_layer_call_fn_4794295l=�:
3�0
*�'
inputs�����������
p 
� "+�(
unknown������������
C__inference_B0_DP2_layer_call_and_return_conditional_losses_4794429w=�:
3�0
*�'
inputs�����������
p
� "6�3
,�)
tensor_0�����������
� �
C__inference_B0_DP2_layer_call_and_return_conditional_losses_4794434w=�:
3�0
*�'
inputs�����������
p 
� "6�3
,�)
tensor_0�����������
� �
(__inference_B0_DP2_layer_call_fn_4794412l=�:
3�0
*�'
inputs�����������
p
� "+�(
unknown������������
(__inference_B0_DP2_layer_call_fn_4794417l=�:
3�0
*�'
inputs�����������
p 
� "+�(
unknown������������
C__inference_B0_MAX_layer_call_and_return_conditional_losses_4794444�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
(__inference_B0_MAX_layer_call_fn_4794439�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
C__inference_B1_BN1_layer_call_and_return_conditional_losses_4794521�KLMNQ�N
G�D
:�7
inputs+��������������������������� 
p

 
� "F�C
<�9
tensor_0+��������������������������� 
� �
C__inference_B1_BN1_layer_call_and_return_conditional_losses_4794539�KLMNQ�N
G�D
:�7
inputs+��������������������������� 
p 

 
� "F�C
<�9
tensor_0+��������������������������� 
� �
(__inference_B1_BN1_layer_call_fn_4794490�KLMNQ�N
G�D
:�7
inputs+��������������������������� 
p

 
� ";�8
unknown+��������������������������� �
(__inference_B1_BN1_layer_call_fn_4794503�KLMNQ�N
G�D
:�7
inputs+��������������������������� 
p 

 
� ";�8
unknown+��������������������������� �
C__inference_B1_BN2_layer_call_and_return_conditional_losses_4794643�QRSTQ�N
G�D
:�7
inputs+��������������������������� 
p

 
� "F�C
<�9
tensor_0+��������������������������� 
� �
C__inference_B1_BN2_layer_call_and_return_conditional_losses_4794661�QRSTQ�N
G�D
:�7
inputs+��������������������������� 
p 

 
� "F�C
<�9
tensor_0+��������������������������� 
� �
(__inference_B1_BN2_layer_call_fn_4794612�QRSTQ�N
G�D
:�7
inputs+��������������������������� 
p

 
� ";�8
unknown+��������������������������� �
(__inference_B1_BN2_layer_call_fn_4794625�QRSTQ�N
G�D
:�7
inputs+��������������������������� 
p 

 
� ";�8
unknown+��������������������������� �
G__inference_B1_Conv2d1_layer_call_and_return_conditional_losses_4794477wIJ9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0����������� 
� �
,__inference_B1_Conv2d1_layer_call_fn_4794453lIJ9�6
/�,
*�'
inputs�����������
� "+�(
unknown����������� �
G__inference_B1_Conv2d2_layer_call_and_return_conditional_losses_4794599wOP9�6
/�,
*�'
inputs����������� 
� "6�3
,�)
tensor_0����������� 
� �
,__inference_B1_Conv2d2_layer_call_fn_4794575lOP9�6
/�,
*�'
inputs����������� 
� "+�(
unknown����������� �
C__inference_B1_DP1_layer_call_and_return_conditional_losses_4794561w=�:
3�0
*�'
inputs����������� 
p
� "6�3
,�)
tensor_0����������� 
� �
C__inference_B1_DP1_layer_call_and_return_conditional_losses_4794566w=�:
3�0
*�'
inputs����������� 
p 
� "6�3
,�)
tensor_0����������� 
� �
(__inference_B1_DP1_layer_call_fn_4794544l=�:
3�0
*�'
inputs����������� 
p
� "+�(
unknown����������� �
(__inference_B1_DP1_layer_call_fn_4794549l=�:
3�0
*�'
inputs����������� 
p 
� "+�(
unknown����������� �
C__inference_B1_DP2_layer_call_and_return_conditional_losses_4794683w=�:
3�0
*�'
inputs����������� 
p
� "6�3
,�)
tensor_0����������� 
� �
C__inference_B1_DP2_layer_call_and_return_conditional_losses_4794688w=�:
3�0
*�'
inputs����������� 
p 
� "6�3
,�)
tensor_0����������� 
� �
(__inference_B1_DP2_layer_call_fn_4794666l=�:
3�0
*�'
inputs����������� 
p
� "+�(
unknown����������� �
(__inference_B1_DP2_layer_call_fn_4794671l=�:
3�0
*�'
inputs����������� 
p 
� "+�(
unknown����������� �
C__inference_B1_MAX_layer_call_and_return_conditional_losses_4794698�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
(__inference_B1_MAX_layer_call_fn_4794693�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
C__inference_B2_BN1_layer_call_and_return_conditional_losses_4794775�WXYZQ�N
G�D
:�7
inputs+���������������������������@
p

 
� "F�C
<�9
tensor_0+���������������������������@
� �
C__inference_B2_BN1_layer_call_and_return_conditional_losses_4794793�WXYZQ�N
G�D
:�7
inputs+���������������������������@
p 

 
� "F�C
<�9
tensor_0+���������������������������@
� �
(__inference_B2_BN1_layer_call_fn_4794744�WXYZQ�N
G�D
:�7
inputs+���������������������������@
p

 
� ";�8
unknown+���������������������������@�
(__inference_B2_BN1_layer_call_fn_4794757�WXYZQ�N
G�D
:�7
inputs+���������������������������@
p 

 
� ";�8
unknown+���������������������������@�
C__inference_B2_BN2_layer_call_and_return_conditional_losses_4794897�]^_`Q�N
G�D
:�7
inputs+���������������������������@
p

 
� "F�C
<�9
tensor_0+���������������������������@
� �
C__inference_B2_BN2_layer_call_and_return_conditional_losses_4794915�]^_`Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� "F�C
<�9
tensor_0+���������������������������@
� �
(__inference_B2_BN2_layer_call_fn_4794866�]^_`Q�N
G�D
:�7
inputs+���������������������������@
p

 
� ";�8
unknown+���������������������������@�
(__inference_B2_BN2_layer_call_fn_4794879�]^_`Q�N
G�D
:�7
inputs+���������������������������@
p 

 
� ";�8
unknown+���������������������������@�
G__inference_B2_Conv2d1_layer_call_and_return_conditional_losses_4794731sUV7�4
-�*
(�%
inputs���������}} 
� "4�1
*�'
tensor_0���������{{@
� �
,__inference_B2_Conv2d1_layer_call_fn_4794707hUV7�4
-�*
(�%
inputs���������}} 
� ")�&
unknown���������{{@�
G__inference_B2_Conv2d2_layer_call_and_return_conditional_losses_4794853s[\7�4
-�*
(�%
inputs���������{{@
� "4�1
*�'
tensor_0���������yy@
� �
,__inference_B2_Conv2d2_layer_call_fn_4794829h[\7�4
-�*
(�%
inputs���������{{@
� ")�&
unknown���������yy@�
C__inference_B2_DP1_layer_call_and_return_conditional_losses_4794815s;�8
1�.
(�%
inputs���������{{@
p
� "4�1
*�'
tensor_0���������{{@
� �
C__inference_B2_DP1_layer_call_and_return_conditional_losses_4794820s;�8
1�.
(�%
inputs���������{{@
p 
� "4�1
*�'
tensor_0���������{{@
� �
(__inference_B2_DP1_layer_call_fn_4794798h;�8
1�.
(�%
inputs���������{{@
p
� ")�&
unknown���������{{@�
(__inference_B2_DP1_layer_call_fn_4794803h;�8
1�.
(�%
inputs���������{{@
p 
� ")�&
unknown���������{{@�
C__inference_B2_DP2_layer_call_and_return_conditional_losses_4794937s;�8
1�.
(�%
inputs���������yy@
p
� "4�1
*�'
tensor_0���������yy@
� �
C__inference_B2_DP2_layer_call_and_return_conditional_losses_4794942s;�8
1�.
(�%
inputs���������yy@
p 
� "4�1
*�'
tensor_0���������yy@
� �
(__inference_B2_DP2_layer_call_fn_4794920h;�8
1�.
(�%
inputs���������yy@
p
� ")�&
unknown���������yy@�
(__inference_B2_DP2_layer_call_fn_4794925h;�8
1�.
(�%
inputs���������yy@
p 
� ")�&
unknown���������yy@�
C__inference_B2_MAX_layer_call_and_return_conditional_losses_4794952�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
(__inference_B2_MAX_layer_call_fn_4794947�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
F__inference_CNN_Model_layer_call_and_return_conditional_losses_4791993�$=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`K�H
A�>
4�1
B0_Conv2d1_input�����������
p

 
� "4�1
*�'
tensor_0���������<<@
� �
F__inference_CNN_Model_layer_call_and_return_conditional_losses_4792198�$=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`K�H
A�>
4�1
B0_Conv2d1_input�����������
p 

 
� "4�1
*�'
tensor_0���������<<@
� �
+__inference_CNN_Model_layer_call_fn_4792275�$=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`K�H
A�>
4�1
B0_Conv2d1_input�����������
p

 
� ")�&
unknown���������<<@�
+__inference_CNN_Model_layer_call_fn_4792352�$=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`K�H
A�>
4�1
B0_Conv2d1_input�����������
p 

 
� ")�&
unknown���������<<@�
@__inference_CNN_layer_call_and_return_conditional_losses_4792999�2���=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abefcdghR�O
H�E
;�8
data_augmentation_input�����������
p

 
� ",�)
"�
tensor_0���������
� �
@__inference_CNN_layer_call_and_return_conditional_losses_4793198�,=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abfcedghR�O
H�E
;�8
data_augmentation_input�����������
p 

 
� ",�)
"�
tensor_0���������
� �
%__inference_CNN_layer_call_fn_4793297�2���=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abefcdghR�O
H�E
;�8
data_augmentation_input�����������
p

 
� "!�
unknown����������
%__inference_CNN_layer_call_fn_4793390�,=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abfcedghR�O
H�E
;�8
data_augmentation_input�����������
p 

 
� "!�
unknown����������
E__inference_Final_BN_layer_call_and_return_conditional_losses_4795158mefcd7�4
-�*
 �
inputs���������
p

 
� ",�)
"�
tensor_0���������
� �
E__inference_Final_BN_layer_call_and_return_conditional_losses_4795178mfced7�4
-�*
 �
inputs���������
p 

 
� ",�)
"�
tensor_0���������
� �
*__inference_Final_BN_layer_call_fn_4795111befcd7�4
-�*
 �
inputs���������
p

 
� "!�
unknown����������
*__inference_Final_BN_layer_call_fn_4795124bfced7�4
-�*
 �
inputs���������
p 

 
� "!�
unknown����������
E__inference_Final_DP_layer_call_and_return_conditional_losses_4795200c3�0
)�&
 �
inputs���������
p
� ",�)
"�
tensor_0���������
� �
E__inference_Final_DP_layer_call_and_return_conditional_losses_4795205c3�0
)�&
 �
inputs���������
p 
� ",�)
"�
tensor_0���������
� �
*__inference_Final_DP_layer_call_fn_4795183X3�0
)�&
 �
inputs���������
p
� "!�
unknown����������
*__inference_Final_DP_layer_call_fn_4795188X3�0
)�&
 �
inputs���������
p 
� "!�
unknown����������
I__inference_Final_Dense1_layer_call_and_return_conditional_losses_4795098eab1�.
'�$
"�
inputs�����������
� ",�)
"�
tensor_0���������
� �
.__inference_Final_Dense1_layer_call_fn_4795074Zab1�.
'�$
"�
inputs�����������
� "!�
unknown����������
I__inference_Final_Dense2_layer_call_and_return_conditional_losses_4795238cgh/�,
%�"
 �
inputs���������
� ",�)
"�
tensor_0���������
� �
.__inference_Final_Dense2_layer_call_fn_4795214Xgh/�,
%�"
 �
inputs���������
� "!�
unknown����������
"__inference__update_step_xla_33929~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`�ᶔ��?
� "
 �
"__inference__update_step_xla_33934f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`�붔��?
� "
 �
"__inference__update_step_xla_33939f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`�϶���?
� "
 �
"__inference__update_step_xla_33944f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`�Ƕ���?
� "
 �
"__inference__update_step_xla_33949~x�u
n�k
!�
gradient
<�9	%�"
�
�
p
` VariableSpec 
`��Ô��?
� "
 �
"__inference__update_step_xla_33954f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��Ô��?
� "
 �
"__inference__update_step_xla_33959f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��Ô��?
� "
 �
"__inference__update_step_xla_33964f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��Ô��?
� "
 �
"__inference__update_step_xla_33969~x�u
n�k
!�
gradient 
<�9	%�"
� 
�
p
` VariableSpec 
`��ʔ��?
� "
 �
"__inference__update_step_xla_33974f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`��ʔ��?
� "
 �
"__inference__update_step_xla_33979f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`��Д��?
� "
 �
"__inference__update_step_xla_33984f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`��Д��?
� "
 �
"__inference__update_step_xla_33989~x�u
n�k
!�
gradient  
<�9	%�"
�  
�
p
` VariableSpec 
`������?
� "
 �
"__inference__update_step_xla_33994f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`������?
� "
 �
"__inference__update_step_xla_33999f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`�Д��?
� "
 �
"__inference__update_step_xla_34004f`�]
V�S
�
gradient 
0�-	�
� 
�
p
` VariableSpec 
`������?
� "
 �
"__inference__update_step_xla_34009~x�u
n�k
!�
gradient @
<�9	%�"
� @
�
p
` VariableSpec 
`������?
� "
 �
"__inference__update_step_xla_34014f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`������?
� "
 �
"__inference__update_step_xla_34019f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`������?
� "
 �
"__inference__update_step_xla_34024f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`��Ҕ��?
� "
 �
"__inference__update_step_xla_34029~x�u
n�k
!�
gradient@@
<�9	%�"
�@@
�
p
` VariableSpec 
`��ǔ��?
� "
 �
"__inference__update_step_xla_34034f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`��ǔ��?
� "
 �
"__inference__update_step_xla_34039f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`�Ŀ���?
� "
 �
"__inference__update_step_xla_34044f`�]
V�S
�
gradient@
0�-	�
�@
�
p
` VariableSpec 
`������?
� "
 �
"__inference__update_step_xla_34049rl�i
b�_
�
gradient
��
6�3	�
�
��
�
p
` VariableSpec 
`�ٰ���?
� "
 �
"__inference__update_step_xla_34054f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`�Ȱ���?
� "
 �
"__inference__update_step_xla_34059f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��֕��?
� "
 �
"__inference__update_step_xla_34064f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��֕��?
� "
 �
"__inference__update_step_xla_34069nh�e
^�[
�
gradient
4�1	�
�
�
p
` VariableSpec 
`��ؕ��?
� "
 �
"__inference__update_step_xla_34074f`�]
V�S
�
gradient
0�-	�
�
�
p
` VariableSpec 
`��ە��?
� "
 �
"__inference__wrapped_model_4790770�,=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abfcedghJ�G
@�=
;�8
data_augmentation_input�����������
� ";�8
6
dense_layers&�#
dense_layers����������
N__inference_data_augmentation_layer_call_and_return_conditional_losses_4791123����L�I
B�?
5�2
rescaling_2_input�����������
p

 
� "6�3
,�)
tensor_0�����������
� �
N__inference_data_augmentation_layer_call_and_return_conditional_losses_4791143�L�I
B�?
5�2
rescaling_2_input�����������
p 

 
� "6�3
,�)
tensor_0�����������
� �
3__inference_data_augmentation_layer_call_fn_4791154����L�I
B�?
5�2
rescaling_2_input�����������
p

 
� "+�(
unknown������������
3__inference_data_augmentation_layer_call_fn_4791159{L�I
B�?
5�2
rescaling_2_input�����������
p 

 
� "+�(
unknown������������
I__inference_dense_layers_layer_call_and_return_conditional_losses_4792663�abefcdghF�C
<�9
/�,
flatten_input���������<<@
p

 
� ",�)
"�
tensor_0���������
� �
I__inference_dense_layers_layer_call_and_return_conditional_losses_4792719�abfcedghF�C
<�9
/�,
flatten_input���������<<@
p 

 
� ",�)
"�
tensor_0���������
� �
.__inference_dense_layers_layer_call_fn_4792740uabefcdghF�C
<�9
/�,
flatten_input���������<<@
p

 
� "!�
unknown����������
.__inference_dense_layers_layer_call_fn_4792761uabfcedghF�C
<�9
/�,
flatten_input���������<<@
p 

 
� "!�
unknown����������
D__inference_flatten_layer_call_and_return_conditional_losses_4795065i7�4
-�*
(�%
inputs���������<<@
� ".�+
$�!
tensor_0�����������
� �
)__inference_flatten_layer_call_fn_4795059^7�4
-�*
(�%
inputs���������<<@
� "#� 
unknown�����������E
__inference_loss_fn_0_4794969$=�

� 
� "�
unknown E
__inference_loss_fn_1_4794986$C�

� 
� "�
unknown E
__inference_loss_fn_2_4795003$I�

� 
� "�
unknown E
__inference_loss_fn_3_4795020$O�

� 
� "�
unknown E
__inference_loss_fn_4_4795037$U�

� 
� "�
unknown E
__inference_loss_fn_5_4795054$[�

� 
� "�
unknown E
__inference_loss_fn_6_4795255$a�

� 
� "�
unknown E
__inference_loss_fn_7_4795272$g�

� 
� "�
unknown �
J__inference_random_flip_2_layer_call_and_return_conditional_losses_4793934{�=�:
3�0
*�'
inputs�����������
p
� "6�3
,�)
tensor_0�����������
� �
J__inference_random_flip_2_layer_call_and_return_conditional_losses_4793938w=�:
3�0
*�'
inputs�����������
p 
� "6�3
,�)
tensor_0�����������
� �
/__inference_random_flip_2_layer_call_fn_4793818p�=�:
3�0
*�'
inputs�����������
p
� "+�(
unknown������������
/__inference_random_flip_2_layer_call_fn_4793823l=�:
3�0
*�'
inputs�����������
p 
� "+�(
unknown������������
N__inference_random_rotation_2_layer_call_and_return_conditional_losses_4794068{�=�:
3�0
*�'
inputs�����������
p
� "6�3
,�)
tensor_0�����������
� �
N__inference_random_rotation_2_layer_call_and_return_conditional_losses_4794072w=�:
3�0
*�'
inputs�����������
p 
� "6�3
,�)
tensor_0�����������
� �
3__inference_random_rotation_2_layer_call_fn_4793945p�=�:
3�0
*�'
inputs�����������
p
� "+�(
unknown������������
3__inference_random_rotation_2_layer_call_fn_4793950l=�:
3�0
*�'
inputs�����������
p 
� "+�(
unknown������������
J__inference_random_zoom_2_layer_call_and_return_conditional_losses_4794186{�=�:
3�0
*�'
inputs�����������
p
� "6�3
,�)
tensor_0�����������
� �
J__inference_random_zoom_2_layer_call_and_return_conditional_losses_4794190w=�:
3�0
*�'
inputs�����������
p 
� "6�3
,�)
tensor_0�����������
� �
/__inference_random_zoom_2_layer_call_fn_4794079p�=�:
3�0
*�'
inputs�����������
p
� "+�(
unknown������������
/__inference_random_zoom_2_layer_call_fn_4794084l=�:
3�0
*�'
inputs�����������
p 
� "+�(
unknown������������
H__inference_rescaling_2_layer_call_and_return_conditional_losses_4793811s9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������
� �
-__inference_rescaling_2_layer_call_fn_4793803h9�6
/�,
*�'
inputs�����������
� "+�(
unknown������������
%__inference_signature_wrapper_4793590�,=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abfcedghe�b
� 
[�X
V
data_augmentation_input;�8
data_augmentation_input�����������";�8
6
dense_layers&�#
dense_layers���������