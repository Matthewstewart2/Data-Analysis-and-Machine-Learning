??

??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02unknown8??	
?
conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_22/kernel
}
$conv2d_22/kernel/Read/ReadVariableOpReadVariableOpconv2d_22/kernel*&
_output_shapes
:*
dtype0
t
conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_22/bias
m
"conv2d_22/bias/Read/ReadVariableOpReadVariableOpconv2d_22/bias*
_output_shapes
:*
dtype0
?
conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_23/kernel
}
$conv2d_23/kernel/Read/ReadVariableOpReadVariableOpconv2d_23/kernel*&
_output_shapes
:*
dtype0
t
conv2d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_23/bias
m
"conv2d_23/bias/Read/ReadVariableOpReadVariableOpconv2d_23/bias*
_output_shapes
:*
dtype0
?
conv2d_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_24/kernel
}
$conv2d_24/kernel/Read/ReadVariableOpReadVariableOpconv2d_24/kernel*&
_output_shapes
:*
dtype0
t
conv2d_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_24/bias
m
"conv2d_24/bias/Read/ReadVariableOpReadVariableOpconv2d_24/bias*
_output_shapes
:*
dtype0
|
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_14/kernel
u
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel* 
_output_shapes
:
??*
dtype0
r
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_14/bias
k
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes
:*
dtype0
z
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_15/kernel
s
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*
_output_shapes

:*
dtype0
r
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_15/bias
k
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes
:*
dtype0
~
training_10/Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *&
shared_nametraining_10/Adam/iter
w
)training_10/Adam/iter/Read/ReadVariableOpReadVariableOptraining_10/Adam/iter*
_output_shapes
: *
dtype0	
?
training_10/Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nametraining_10/Adam/beta_1
{
+training_10/Adam/beta_1/Read/ReadVariableOpReadVariableOptraining_10/Adam/beta_1*
_output_shapes
: *
dtype0
?
training_10/Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nametraining_10/Adam/beta_2
{
+training_10/Adam/beta_2/Read/ReadVariableOpReadVariableOptraining_10/Adam/beta_2*
_output_shapes
: *
dtype0
?
training_10/Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nametraining_10/Adam/decay
y
*training_10/Adam/decay/Read/ReadVariableOpReadVariableOptraining_10/Adam/decay*
_output_shapes
: *
dtype0
?
training_10/Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name training_10/Adam/learning_rate
?
2training_10/Adam/learning_rate/Read/ReadVariableOpReadVariableOptraining_10/Adam/learning_rate*
_output_shapes
: *
dtype0
b
total_7VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_7
[
total_7/Read/ReadVariableOpReadVariableOptotal_7*
_output_shapes
: *
dtype0
b
count_7VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_7
[
count_7/Read/ReadVariableOpReadVariableOpcount_7*
_output_shapes
: *
dtype0
?
#training_10/Adam/conv2d_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#training_10/Adam/conv2d_22/kernel/m
?
7training_10/Adam/conv2d_22/kernel/m/Read/ReadVariableOpReadVariableOp#training_10/Adam/conv2d_22/kernel/m*&
_output_shapes
:*
dtype0
?
!training_10/Adam/conv2d_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!training_10/Adam/conv2d_22/bias/m
?
5training_10/Adam/conv2d_22/bias/m/Read/ReadVariableOpReadVariableOp!training_10/Adam/conv2d_22/bias/m*
_output_shapes
:*
dtype0
?
#training_10/Adam/conv2d_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#training_10/Adam/conv2d_23/kernel/m
?
7training_10/Adam/conv2d_23/kernel/m/Read/ReadVariableOpReadVariableOp#training_10/Adam/conv2d_23/kernel/m*&
_output_shapes
:*
dtype0
?
!training_10/Adam/conv2d_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!training_10/Adam/conv2d_23/bias/m
?
5training_10/Adam/conv2d_23/bias/m/Read/ReadVariableOpReadVariableOp!training_10/Adam/conv2d_23/bias/m*
_output_shapes
:*
dtype0
?
#training_10/Adam/conv2d_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#training_10/Adam/conv2d_24/kernel/m
?
7training_10/Adam/conv2d_24/kernel/m/Read/ReadVariableOpReadVariableOp#training_10/Adam/conv2d_24/kernel/m*&
_output_shapes
:*
dtype0
?
!training_10/Adam/conv2d_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!training_10/Adam/conv2d_24/bias/m
?
5training_10/Adam/conv2d_24/bias/m/Read/ReadVariableOpReadVariableOp!training_10/Adam/conv2d_24/bias/m*
_output_shapes
:*
dtype0
?
"training_10/Adam/dense_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*3
shared_name$"training_10/Adam/dense_14/kernel/m
?
6training_10/Adam/dense_14/kernel/m/Read/ReadVariableOpReadVariableOp"training_10/Adam/dense_14/kernel/m* 
_output_shapes
:
??*
dtype0
?
 training_10/Adam/dense_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" training_10/Adam/dense_14/bias/m
?
4training_10/Adam/dense_14/bias/m/Read/ReadVariableOpReadVariableOp training_10/Adam/dense_14/bias/m*
_output_shapes
:*
dtype0
?
"training_10/Adam/dense_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"training_10/Adam/dense_15/kernel/m
?
6training_10/Adam/dense_15/kernel/m/Read/ReadVariableOpReadVariableOp"training_10/Adam/dense_15/kernel/m*
_output_shapes

:*
dtype0
?
 training_10/Adam/dense_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" training_10/Adam/dense_15/bias/m
?
4training_10/Adam/dense_15/bias/m/Read/ReadVariableOpReadVariableOp training_10/Adam/dense_15/bias/m*
_output_shapes
:*
dtype0
?
#training_10/Adam/conv2d_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#training_10/Adam/conv2d_22/kernel/v
?
7training_10/Adam/conv2d_22/kernel/v/Read/ReadVariableOpReadVariableOp#training_10/Adam/conv2d_22/kernel/v*&
_output_shapes
:*
dtype0
?
!training_10/Adam/conv2d_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!training_10/Adam/conv2d_22/bias/v
?
5training_10/Adam/conv2d_22/bias/v/Read/ReadVariableOpReadVariableOp!training_10/Adam/conv2d_22/bias/v*
_output_shapes
:*
dtype0
?
#training_10/Adam/conv2d_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#training_10/Adam/conv2d_23/kernel/v
?
7training_10/Adam/conv2d_23/kernel/v/Read/ReadVariableOpReadVariableOp#training_10/Adam/conv2d_23/kernel/v*&
_output_shapes
:*
dtype0
?
!training_10/Adam/conv2d_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!training_10/Adam/conv2d_23/bias/v
?
5training_10/Adam/conv2d_23/bias/v/Read/ReadVariableOpReadVariableOp!training_10/Adam/conv2d_23/bias/v*
_output_shapes
:*
dtype0
?
#training_10/Adam/conv2d_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#training_10/Adam/conv2d_24/kernel/v
?
7training_10/Adam/conv2d_24/kernel/v/Read/ReadVariableOpReadVariableOp#training_10/Adam/conv2d_24/kernel/v*&
_output_shapes
:*
dtype0
?
!training_10/Adam/conv2d_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!training_10/Adam/conv2d_24/bias/v
?
5training_10/Adam/conv2d_24/bias/v/Read/ReadVariableOpReadVariableOp!training_10/Adam/conv2d_24/bias/v*
_output_shapes
:*
dtype0
?
"training_10/Adam/dense_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*3
shared_name$"training_10/Adam/dense_14/kernel/v
?
6training_10/Adam/dense_14/kernel/v/Read/ReadVariableOpReadVariableOp"training_10/Adam/dense_14/kernel/v* 
_output_shapes
:
??*
dtype0
?
 training_10/Adam/dense_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" training_10/Adam/dense_14/bias/v
?
4training_10/Adam/dense_14/bias/v/Read/ReadVariableOpReadVariableOp training_10/Adam/dense_14/bias/v*
_output_shapes
:*
dtype0
?
"training_10/Adam/dense_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"training_10/Adam/dense_15/kernel/v
?
6training_10/Adam/dense_15/kernel/v/Read/ReadVariableOpReadVariableOp"training_10/Adam/dense_15/kernel/v*
_output_shapes

:*
dtype0
?
 training_10/Adam/dense_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" training_10/Adam/dense_15/bias/v
?
4training_10/Adam/dense_15/bias/v/Read/ReadVariableOpReadVariableOp training_10/Adam/dense_15/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?C
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?B
value?BB?B B?B
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
R
&	variables
'trainable_variables
(regularization_losses
)	keras_api
h

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
R
0	variables
1trainable_variables
2regularization_losses
3	keras_api
h

4kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
R
:	variables
;trainable_variables
<regularization_losses
=	keras_api
h

>kernel
?bias
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
?
Diter

Ebeta_1

Fbeta_2
	Gdecay
Hlearning_ratem?m? m?!m?*m?+m?4m?5m?>m??m?v?v? v?!v?*v?+v?4v?5v?>v??v?
F
0
1
 2
!3
*4
+5
46
57
>8
?9
F
0
1
 2
!3
*4
+5
46
57
>8
?9
 
?
Inon_trainable_variables

Jlayers
Klayer_metrics
Lmetrics
Mlayer_regularization_losses
	variables
trainable_variables
regularization_losses
 
 
 
 
?
Nnon_trainable_variables
Olayer_metrics

Players
Qmetrics
Rlayer_regularization_losses
	variables
trainable_variables
regularization_losses
\Z
VARIABLE_VALUEconv2d_22/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_22/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Snon_trainable_variables
Tlayer_metrics

Ulayers
Vmetrics
Wlayer_regularization_losses
	variables
trainable_variables
regularization_losses
 
 
 
?
Xnon_trainable_variables
Ylayer_metrics

Zlayers
[metrics
\layer_regularization_losses
	variables
trainable_variables
regularization_losses
\Z
VARIABLE_VALUEconv2d_23/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_23/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

 0
!1

 0
!1
 
?
]non_trainable_variables
^layer_metrics

_layers
`metrics
alayer_regularization_losses
"	variables
#trainable_variables
$regularization_losses
 
 
 
?
bnon_trainable_variables
clayer_metrics

dlayers
emetrics
flayer_regularization_losses
&	variables
'trainable_variables
(regularization_losses
\Z
VARIABLE_VALUEconv2d_24/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_24/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1

*0
+1
 
?
gnon_trainable_variables
hlayer_metrics

ilayers
jmetrics
klayer_regularization_losses
,	variables
-trainable_variables
.regularization_losses
 
 
 
?
lnon_trainable_variables
mlayer_metrics

nlayers
ometrics
player_regularization_losses
0	variables
1trainable_variables
2regularization_losses
[Y
VARIABLE_VALUEdense_14/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_14/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

40
51

40
51
 
?
qnon_trainable_variables
rlayer_metrics

slayers
tmetrics
ulayer_regularization_losses
6	variables
7trainable_variables
8regularization_losses
 
 
 
?
vnon_trainable_variables
wlayer_metrics

xlayers
ymetrics
zlayer_regularization_losses
:	variables
;trainable_variables
<regularization_losses
[Y
VARIABLE_VALUEdense_15/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_15/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

>0
?1

>0
?1
 
?
{non_trainable_variables
|layer_metrics

}layers
~metrics
layer_regularization_losses
@	variables
Atrainable_variables
Bregularization_losses
TR
VARIABLE_VALUEtraining_10/Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEtraining_10/Adam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEtraining_10/Adam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEtraining_10/Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEtraining_10/Adam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
N
0
1
2
3
4
5
6
7
	8

9
10
 

?0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
QO
VARIABLE_VALUEtotal_74keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_74keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
??
VARIABLE_VALUE#training_10/Adam/conv2d_22/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!training_10/Adam/conv2d_22/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#training_10/Adam/conv2d_23/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!training_10/Adam/conv2d_23/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#training_10/Adam/conv2d_24/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!training_10/Adam/conv2d_24/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"training_10/Adam/dense_14/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE training_10/Adam/dense_14/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"training_10/Adam/dense_15/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE training_10/Adam/dense_15/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#training_10/Adam/conv2d_22/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!training_10/Adam/conv2d_22/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#training_10/Adam/conv2d_23/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!training_10/Adam/conv2d_23/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#training_10/Adam/conv2d_24/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE!training_10/Adam/conv2d_24/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"training_10/Adam/dense_14/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE training_10/Adam/dense_14/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"training_10/Adam/dense_15/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE training_10/Adam/dense_15/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
serving_default_input_9Placeholder*)
_output_shapes
:???????????*
dtype0*
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_9conv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasconv2d_24/kernelconv2d_24/biasdense_14/kerneldense_14/biasdense_15/kerneldense_15/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference_signature_wrapper_3463
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_22/kernel/Read/ReadVariableOp"conv2d_22/bias/Read/ReadVariableOp$conv2d_23/kernel/Read/ReadVariableOp"conv2d_23/bias/Read/ReadVariableOp$conv2d_24/kernel/Read/ReadVariableOp"conv2d_24/bias/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOp)training_10/Adam/iter/Read/ReadVariableOp+training_10/Adam/beta_1/Read/ReadVariableOp+training_10/Adam/beta_2/Read/ReadVariableOp*training_10/Adam/decay/Read/ReadVariableOp2training_10/Adam/learning_rate/Read/ReadVariableOptotal_7/Read/ReadVariableOpcount_7/Read/ReadVariableOp7training_10/Adam/conv2d_22/kernel/m/Read/ReadVariableOp5training_10/Adam/conv2d_22/bias/m/Read/ReadVariableOp7training_10/Adam/conv2d_23/kernel/m/Read/ReadVariableOp5training_10/Adam/conv2d_23/bias/m/Read/ReadVariableOp7training_10/Adam/conv2d_24/kernel/m/Read/ReadVariableOp5training_10/Adam/conv2d_24/bias/m/Read/ReadVariableOp6training_10/Adam/dense_14/kernel/m/Read/ReadVariableOp4training_10/Adam/dense_14/bias/m/Read/ReadVariableOp6training_10/Adam/dense_15/kernel/m/Read/ReadVariableOp4training_10/Adam/dense_15/bias/m/Read/ReadVariableOp7training_10/Adam/conv2d_22/kernel/v/Read/ReadVariableOp5training_10/Adam/conv2d_22/bias/v/Read/ReadVariableOp7training_10/Adam/conv2d_23/kernel/v/Read/ReadVariableOp5training_10/Adam/conv2d_23/bias/v/Read/ReadVariableOp7training_10/Adam/conv2d_24/kernel/v/Read/ReadVariableOp5training_10/Adam/conv2d_24/bias/v/Read/ReadVariableOp6training_10/Adam/dense_14/kernel/v/Read/ReadVariableOp4training_10/Adam/dense_14/bias/v/Read/ReadVariableOp6training_10/Adam/dense_15/kernel/v/Read/ReadVariableOp4training_10/Adam/dense_15/bias/v/Read/ReadVariableOpConst*2
Tin+
)2'	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *&
f!R
__inference__traced_save_3889
?

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasconv2d_24/kernelconv2d_24/biasdense_14/kerneldense_14/biasdense_15/kerneldense_15/biastraining_10/Adam/itertraining_10/Adam/beta_1training_10/Adam/beta_2training_10/Adam/decaytraining_10/Adam/learning_ratetotal_7count_7#training_10/Adam/conv2d_22/kernel/m!training_10/Adam/conv2d_22/bias/m#training_10/Adam/conv2d_23/kernel/m!training_10/Adam/conv2d_23/bias/m#training_10/Adam/conv2d_24/kernel/m!training_10/Adam/conv2d_24/bias/m"training_10/Adam/dense_14/kernel/m training_10/Adam/dense_14/bias/m"training_10/Adam/dense_15/kernel/m training_10/Adam/dense_15/bias/m#training_10/Adam/conv2d_22/kernel/v!training_10/Adam/conv2d_22/bias/v#training_10/Adam/conv2d_23/kernel/v!training_10/Adam/conv2d_23/bias/v#training_10/Adam/conv2d_24/kernel/v!training_10/Adam/conv2d_24/bias/v"training_10/Adam/dense_14/kernel/v training_10/Adam/dense_14/bias/v"training_10/Adam/dense_15/kernel/v training_10/Adam/dense_15/bias/v*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_restore_4010??
?
?
"__inference_CNN_layer_call_fn_3114
input_9*
conv2d_22_kernel:
conv2d_22_bias:*
conv2d_23_kernel:
conv2d_23_bias:*
conv2d_24_kernel:
conv2d_24_bias:#
dense_14_kernel:
??
dense_14_bias:!
dense_15_kernel:
dense_15_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_9conv2d_22_kernelconv2d_22_biasconv2d_23_kernelconv2d_23_biasconv2d_24_kernelconv2d_24_biasdense_14_kerneldense_14_biasdense_15_kerneldense_15_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_CNN_layer_call_and_return_conditional_losses_31012
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*<
_input_shapes+
):???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
)
_output_shapes
:???????????
!
_user_specified_name	input_9
?
?
C__inference_conv2d_23_layer_call_and_return_conditional_losses_3035

inputs@
&conv2d_readvariableop_conv2d_23_kernel:3
%biasadd_readvariableop_conv2d_23_bias:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOp&conv2d_readvariableop_conv2d_23_kernel*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOp%biasadd_readvariableop_conv2d_23_bias*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
B__inference_dense_15_layer_call_and_return_conditional_losses_3096

inputs7
%matmul_readvariableop_dense_15_kernel:2
$biasadd_readvariableop_dense_15_bias:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOp%matmul_readvariableop_dense_15_kernel*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_dense_15_bias*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
D
(__inference_flatten_7_layer_call_fn_3686

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_flatten_7_layer_call_and_return_conditional_losses_30612
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@@:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
"__inference_signature_wrapper_3463
input_9*
conv2d_22_kernel:
conv2d_22_bias:*
conv2d_23_kernel:
conv2d_23_bias:*
conv2d_24_kernel:
conv2d_24_bias:#
dense_14_kernel:
??
dense_14_bias:!
dense_15_kernel:
dense_15_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_9conv2d_22_kernelconv2d_22_biasconv2d_23_kernelconv2d_23_biasconv2d_24_kernelconv2d_24_biasdense_14_kerneldense_14_biasdense_15_kerneldense_15_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__wrapped_model_29512
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*<
_input_shapes+
):???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
)
_output_shapes
:???????????
!
_user_specified_name	input_9
?
_
C__inference_flatten_7_layer_call_and_return_conditional_losses_3061

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ? 2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@@:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
'__inference_dense_15_layer_call_fn_3744

inputs!
dense_15_kernel:
dense_15_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsdense_15_kerneldense_15_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_15_layer_call_and_return_conditional_losses_30962
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?.
?
=__inference_CNN_layer_call_and_return_conditional_losses_3101

inputs4
conv2d_22_conv2d_22_kernel:&
conv2d_22_conv2d_22_bias:4
conv2d_23_conv2d_23_kernel:&
conv2d_23_conv2d_23_bias:4
conv2d_24_conv2d_24_kernel:&
conv2d_24_conv2d_24_bias:,
dense_14_dense_14_kernel:
??$
dense_14_dense_14_bias:*
dense_15_dense_15_kernel:$
dense_15_dense_15_bias:
identity??!conv2d_22/StatefulPartitionedCall?!conv2d_23/StatefulPartitionedCall?!conv2d_24/StatefulPartitionedCall? dense_14/StatefulPartitionedCall? dense_15/StatefulPartitionedCall?
reshape_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_2_layer_call_and_return_conditional_losses_30062
reshape_2/PartitionedCall?
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0conv2d_22_conv2d_22_kernelconv2d_22_conv2d_22_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_22_layer_call_and_return_conditional_losses_30192#
!conv2d_22/StatefulPartitionedCall?
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_29652"
 max_pooling2d_14/PartitionedCall?
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_23_conv2d_23_kernelconv2d_23_conv2d_23_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_23_layer_call_and_return_conditional_losses_30352#
!conv2d_23/StatefulPartitionedCall?
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_29822"
 max_pooling2d_15/PartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_24_conv2d_24_kernelconv2d_24_conv2d_24_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_24_layer_call_and_return_conditional_losses_30512#
!conv2d_24/StatefulPartitionedCall?
flatten_7/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_flatten_7_layer_call_and_return_conditional_losses_30612
flatten_7/PartitionedCall?
 dense_14/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_14_dense_14_kerneldense_14_dense_14_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_14_layer_call_and_return_conditional_losses_30742"
 dense_14/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_30832
dropout/PartitionedCall?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_15_dense_15_kerneldense_15_dense_15_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_15_layer_call_and_return_conditional_losses_30962"
 dense_15/StatefulPartitionedCall?
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : : : : : 2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?/
?
=__inference_CNN_layer_call_and_return_conditional_losses_3322

inputs4
conv2d_22_conv2d_22_kernel:&
conv2d_22_conv2d_22_bias:4
conv2d_23_conv2d_23_kernel:&
conv2d_23_conv2d_23_bias:4
conv2d_24_conv2d_24_kernel:&
conv2d_24_conv2d_24_bias:,
dense_14_dense_14_kernel:
??$
dense_14_dense_14_bias:*
dense_15_dense_15_kernel:$
dense_15_dense_15_bias:
identity??!conv2d_22/StatefulPartitionedCall?!conv2d_23/StatefulPartitionedCall?!conv2d_24/StatefulPartitionedCall? dense_14/StatefulPartitionedCall? dense_15/StatefulPartitionedCall?dropout/StatefulPartitionedCall?
reshape_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_2_layer_call_and_return_conditional_losses_30062
reshape_2/PartitionedCall?
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0conv2d_22_conv2d_22_kernelconv2d_22_conv2d_22_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_22_layer_call_and_return_conditional_losses_30192#
!conv2d_22/StatefulPartitionedCall?
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_29652"
 max_pooling2d_14/PartitionedCall?
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_23_conv2d_23_kernelconv2d_23_conv2d_23_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_23_layer_call_and_return_conditional_losses_30352#
!conv2d_23/StatefulPartitionedCall?
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_29822"
 max_pooling2d_15/PartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_24_conv2d_24_kernelconv2d_24_conv2d_24_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_24_layer_call_and_return_conditional_losses_30512#
!conv2d_24/StatefulPartitionedCall?
flatten_7/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_flatten_7_layer_call_and_return_conditional_losses_30612
flatten_7/PartitionedCall?
 dense_14/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_14_dense_14_kerneldense_14_dense_14_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_14_layer_call_and_return_conditional_losses_30742"
 dense_14/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_31532!
dropout/StatefulPartitionedCall?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_15_dense_15_kerneldense_15_dense_15_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_15_layer_call_and_return_conditional_losses_30962"
 dense_15/StatefulPartitionedCall?
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):???????????: : : : : : : : : : 2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
(__inference_conv2d_23_layer_call_fn_3652

inputs*
conv2d_23_kernel:
conv2d_23_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_23_kernelconv2d_23_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_23_layer_call_and_return_conditional_losses_30352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
_
C__inference_flatten_7_layer_call_and_return_conditional_losses_3692

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ? 2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????@@:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_2974

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
B__inference_dense_15_layer_call_and_return_conditional_losses_3755

inputs7
%matmul_readvariableop_dense_15_kernel:2
$biasadd_readvariableop_dense_15_bias:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOp%matmul_readvariableop_dense_15_kernel*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_dense_15_bias*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
K
/__inference_max_pooling2d_14_layer_call_fn_2968

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_29652
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
??
?
 __inference__traced_restore_4010
file_prefix;
!assignvariableop_conv2d_22_kernel:/
!assignvariableop_1_conv2d_22_bias:=
#assignvariableop_2_conv2d_23_kernel:/
!assignvariableop_3_conv2d_23_bias:=
#assignvariableop_4_conv2d_24_kernel:/
!assignvariableop_5_conv2d_24_bias:6
"assignvariableop_6_dense_14_kernel:
??.
 assignvariableop_7_dense_14_bias:4
"assignvariableop_8_dense_15_kernel:.
 assignvariableop_9_dense_15_bias:3
)assignvariableop_10_training_10_adam_iter:	 5
+assignvariableop_11_training_10_adam_beta_1: 5
+assignvariableop_12_training_10_adam_beta_2: 4
*assignvariableop_13_training_10_adam_decay: <
2assignvariableop_14_training_10_adam_learning_rate: %
assignvariableop_15_total_7: %
assignvariableop_16_count_7: Q
7assignvariableop_17_training_10_adam_conv2d_22_kernel_m:C
5assignvariableop_18_training_10_adam_conv2d_22_bias_m:Q
7assignvariableop_19_training_10_adam_conv2d_23_kernel_m:C
5assignvariableop_20_training_10_adam_conv2d_23_bias_m:Q
7assignvariableop_21_training_10_adam_conv2d_24_kernel_m:C
5assignvariableop_22_training_10_adam_conv2d_24_bias_m:J
6assignvariableop_23_training_10_adam_dense_14_kernel_m:
??B
4assignvariableop_24_training_10_adam_dense_14_bias_m:H
6assignvariableop_25_training_10_adam_dense_15_kernel_m:B
4assignvariableop_26_training_10_adam_dense_15_bias_m:Q
7assignvariableop_27_training_10_adam_conv2d_22_kernel_v:C
5assignvariableop_28_training_10_adam_conv2d_22_bias_v:Q
7assignvariableop_29_training_10_adam_conv2d_23_kernel_v:C
5assignvariableop_30_training_10_adam_conv2d_23_bias_v:Q
7assignvariableop_31_training_10_adam_conv2d_24_kernel_v:C
5assignvariableop_32_training_10_adam_conv2d_24_bias_v:J
6assignvariableop_33_training_10_adam_dense_14_kernel_v:
??B
4assignvariableop_34_training_10_adam_dense_14_bias_v:H
6assignvariableop_35_training_10_adam_dense_15_kernel_v:B
4assignvariableop_36_training_10_adam_dense_15_bias_v:
identity_38??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*?
value?B?&B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::*4
dtypes*
(2&	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_22_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_22_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_23_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_23_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_24_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_24_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_14_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_14_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_15_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_15_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp)assignvariableop_10_training_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp+assignvariableop_11_training_10_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp+assignvariableop_12_training_10_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp*assignvariableop_13_training_10_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp2assignvariableop_14_training_10_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_7Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_7Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp7assignvariableop_17_training_10_adam_conv2d_22_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp5assignvariableop_18_training_10_adam_conv2d_22_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp7assignvariableop_19_training_10_adam_conv2d_23_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp5assignvariableop_20_training_10_adam_conv2d_23_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp7assignvariableop_21_training_10_adam_conv2d_24_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp5assignvariableop_22_training_10_adam_conv2d_24_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp6assignvariableop_23_training_10_adam_dense_14_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp4assignvariableop_24_training_10_adam_dense_14_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_training_10_adam_dense_15_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp4assignvariableop_26_training_10_adam_dense_15_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp7assignvariableop_27_training_10_adam_conv2d_22_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp5assignvariableop_28_training_10_adam_conv2d_22_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp7assignvariableop_29_training_10_adam_conv2d_23_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp5assignvariableop_30_training_10_adam_conv2d_23_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp7assignvariableop_31_training_10_adam_conv2d_24_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp5assignvariableop_32_training_10_adam_conv2d_24_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp6assignvariableop_33_training_10_adam_dense_14_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp4assignvariableop_34_training_10_adam_dense_14_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp6assignvariableop_35_training_10_adam_dense_15_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp4assignvariableop_36_training_10_adam_dense_15_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_369
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_37Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_37f
Identity_38IdentityIdentity_37:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_38?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_38Identity_38:output:0*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
_
A__inference_dropout_layer_call_and_return_conditional_losses_3083

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
_
A__inference_dropout_layer_call_and_return_conditional_losses_3725

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?H
?
=__inference_CNN_layer_call_and_return_conditional_losses_3547

inputsJ
0conv2d_22_conv2d_readvariableop_conv2d_22_kernel:=
/conv2d_22_biasadd_readvariableop_conv2d_22_bias:J
0conv2d_23_conv2d_readvariableop_conv2d_23_kernel:=
/conv2d_23_biasadd_readvariableop_conv2d_23_bias:J
0conv2d_24_conv2d_readvariableop_conv2d_24_kernel:=
/conv2d_24_biasadd_readvariableop_conv2d_24_bias:B
.dense_14_matmul_readvariableop_dense_14_kernel:
??;
-dense_14_biasadd_readvariableop_dense_14_bias:@
.dense_15_matmul_readvariableop_dense_15_kernel:;
-dense_15_biasadd_readvariableop_dense_15_bias:
identity?? conv2d_22/BiasAdd/ReadVariableOp?conv2d_22/Conv2D/ReadVariableOp? conv2d_23/BiasAdd/ReadVariableOp?conv2d_23/Conv2D/ReadVariableOp? conv2d_24/BiasAdd/ReadVariableOp?conv2d_24/Conv2D/ReadVariableOp?dense_14/BiasAdd/ReadVariableOp?dense_14/MatMul/ReadVariableOp?dense_15/BiasAdd/ReadVariableOp?dense_15/MatMul/ReadVariableOpX
reshape_2/ShapeShapeinputs*
T0*
_output_shapes
:2
reshape_2/Shape?
reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_2/strided_slice/stack?
reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_2/strided_slice/stack_1?
reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_2/strided_slice/stack_2?
reshape_2/strided_sliceStridedSlicereshape_2/Shape:output:0&reshape_2/strided_slice/stack:output:0(reshape_2/strided_slice/stack_1:output:0(reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_2/strided_slicey
reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_2/Reshape/shape/1y
reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_2/Reshape/shape/2x
reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_2/Reshape/shape/3?
reshape_2/Reshape/shapePack reshape_2/strided_slice:output:0"reshape_2/Reshape/shape/1:output:0"reshape_2/Reshape/shape/2:output:0"reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_2/Reshape/shape?
reshape_2/ReshapeReshapeinputs reshape_2/Reshape/shape:output:0*
T0*1
_output_shapes
:???????????2
reshape_2/Reshape?
conv2d_22/Conv2D/ReadVariableOpReadVariableOp0conv2d_22_conv2d_readvariableop_conv2d_22_kernel*&
_output_shapes
:*
dtype02!
conv2d_22/Conv2D/ReadVariableOp?
conv2d_22/Conv2DConv2Dreshape_2/Reshape:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
conv2d_22/Conv2D?
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp/conv2d_22_biasadd_readvariableop_conv2d_22_bias*
_output_shapes
:*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOp?
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_22/BiasAdd?
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
conv2d_22/Relu?
max_pooling2d_14/MaxPoolMaxPoolconv2d_22/Relu:activations:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_14/MaxPool?
conv2d_23/Conv2D/ReadVariableOpReadVariableOp0conv2d_23_conv2d_readvariableop_conv2d_23_kernel*&
_output_shapes
:*
dtype02!
conv2d_23/Conv2D/ReadVariableOp?
conv2d_23/Conv2DConv2D!max_pooling2d_14/MaxPool:output:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
conv2d_23/Conv2D?
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp/conv2d_23_biasadd_readvariableop_conv2d_23_bias*
_output_shapes
:*
dtype02"
 conv2d_23/BiasAdd/ReadVariableOp?
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_23/BiasAdd?
conv2d_23/ReluReluconv2d_23/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
conv2d_23/Relu?
max_pooling2d_15/MaxPoolMaxPoolconv2d_23/Relu:activations:0*/
_output_shapes
:?????????@@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_15/MaxPool?
conv2d_24/Conv2D/ReadVariableOpReadVariableOp0conv2d_24_conv2d_readvariableop_conv2d_24_kernel*&
_output_shapes
:*
dtype02!
conv2d_24/Conv2D/ReadVariableOp?
conv2d_24/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
2
conv2d_24/Conv2D?
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp/conv2d_24_biasadd_readvariableop_conv2d_24_bias*
_output_shapes
:*
dtype02"
 conv2d_24/BiasAdd/ReadVariableOp?
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@2
conv2d_24/BiasAdd~
conv2d_24/ReluReluconv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@2
conv2d_24/Relus
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ? 2
flatten_7/Const?
flatten_7/ReshapeReshapeconv2d_24/Relu:activations:0flatten_7/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_7/Reshape?
dense_14/MatMul/ReadVariableOpReadVariableOp.dense_14_matmul_readvariableop_dense_14_kernel* 
_output_shapes
:
??*
dtype02 
dense_14/MatMul/ReadVariableOp?
dense_14/MatMulMatMulflatten_7/Reshape:output:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_14/MatMul?
dense_14/BiasAdd/ReadVariableOpReadVariableOp-dense_14_biasadd_readvariableop_dense_14_bias*
_output_shapes
:*
dtype02!
dense_14/BiasAdd/ReadVariableOp?
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_14/BiasAdds
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_14/Relu
dropout/IdentityIdentitydense_14/Relu:activations:0*
T0*'
_output_shapes
:?????????2
dropout/Identity?
dense_15/MatMul/ReadVariableOpReadVariableOp.dense_15_matmul_readvariableop_dense_15_kernel*
_output_shapes

:*
dtype02 
dense_15/MatMul/ReadVariableOp?
dense_15/MatMulMatMuldropout/Identity:output:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_15/MatMul?
dense_15/BiasAdd/ReadVariableOpReadVariableOp-dense_15_biasadd_readvariableop_dense_15_bias*
_output_shapes
:*
dtype02!
dense_15/BiasAdd/ReadVariableOp?
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_15/BiasAdd|
dense_15/SoftmaxSoftmaxdense_15/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_15/Softmaxu
IdentityIdentitydense_15/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*<
_input_shapes+
):???????????: : : : : : : : : : 2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?

`
A__inference_dropout_layer_call_and_return_conditional_losses_3737

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
D
(__inference_reshape_2_layer_call_fn_3613

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_2_layer_call_and_return_conditional_losses_30062
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_input_shapes
:???????????:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_2957

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
`
A__inference_dropout_layer_call_and_return_conditional_losses_3153

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
_
C__inference_reshape_2_layer_call_and_return_conditional_losses_3627

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicee
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/1e
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapey
ReshapeReshapeinputsReshape/shape:output:0*
T0*1
_output_shapes
:???????????2	
Reshapen
IdentityIdentityReshape:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_input_shapes
:???????????:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
C__inference_conv2d_23_layer_call_and_return_conditional_losses_3663

inputs@
&conv2d_readvariableop_conv2d_23_kernel:3
%biasadd_readvariableop_conv2d_23_bias:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOp&conv2d_readvariableop_conv2d_23_kernel*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOp%biasadd_readvariableop_conv2d_23_bias*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
(__inference_conv2d_24_layer_call_fn_3670

inputs*
conv2d_24_kernel:
conv2d_24_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_24_kernelconv2d_24_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_24_layer_call_and_return_conditional_losses_30512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*2
_input_shapes!
:?????????@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
B__inference_dense_14_layer_call_and_return_conditional_losses_3074

inputs9
%matmul_readvariableop_dense_14_kernel:
??2
$biasadd_readvariableop_dense_14_bias:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOp%matmul_readvariableop_dense_14_kernel* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_dense_14_bias*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
_
&__inference_dropout_layer_call_fn_3720

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_31532
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
C__inference_conv2d_22_layer_call_and_return_conditional_losses_3645

inputs@
&conv2d_readvariableop_conv2d_22_kernel:3
%biasadd_readvariableop_conv2d_22_bias:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOp&conv2d_readvariableop_conv2d_22_kernel*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOp%biasadd_readvariableop_conv2d_22_bias*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
f
J__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_2982

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
C__inference_conv2d_22_layer_call_and_return_conditional_losses_3019

inputs@
&conv2d_readvariableop_conv2d_22_kernel:3
%biasadd_readvariableop_conv2d_22_bias:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOp&conv2d_readvariableop_conv2d_22_kernel*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOp%biasadd_readvariableop_conv2d_22_bias*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?M
?	
__inference__wrapped_model_2951
input_9N
4cnn_conv2d_22_conv2d_readvariableop_conv2d_22_kernel:A
3cnn_conv2d_22_biasadd_readvariableop_conv2d_22_bias:N
4cnn_conv2d_23_conv2d_readvariableop_conv2d_23_kernel:A
3cnn_conv2d_23_biasadd_readvariableop_conv2d_23_bias:N
4cnn_conv2d_24_conv2d_readvariableop_conv2d_24_kernel:A
3cnn_conv2d_24_biasadd_readvariableop_conv2d_24_bias:F
2cnn_dense_14_matmul_readvariableop_dense_14_kernel:
???
1cnn_dense_14_biasadd_readvariableop_dense_14_bias:D
2cnn_dense_15_matmul_readvariableop_dense_15_kernel:?
1cnn_dense_15_biasadd_readvariableop_dense_15_bias:
identity??$CNN/conv2d_22/BiasAdd/ReadVariableOp?#CNN/conv2d_22/Conv2D/ReadVariableOp?$CNN/conv2d_23/BiasAdd/ReadVariableOp?#CNN/conv2d_23/Conv2D/ReadVariableOp?$CNN/conv2d_24/BiasAdd/ReadVariableOp?#CNN/conv2d_24/Conv2D/ReadVariableOp?#CNN/dense_14/BiasAdd/ReadVariableOp?"CNN/dense_14/MatMul/ReadVariableOp?#CNN/dense_15/BiasAdd/ReadVariableOp?"CNN/dense_15/MatMul/ReadVariableOpa
CNN/reshape_2/ShapeShapeinput_9*
T0*
_output_shapes
:2
CNN/reshape_2/Shape?
!CNN/reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2#
!CNN/reshape_2/strided_slice/stack?
#CNN/reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2%
#CNN/reshape_2/strided_slice/stack_1?
#CNN/reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2%
#CNN/reshape_2/strided_slice/stack_2?
CNN/reshape_2/strided_sliceStridedSliceCNN/reshape_2/Shape:output:0*CNN/reshape_2/strided_slice/stack:output:0,CNN/reshape_2/strided_slice/stack_1:output:0,CNN/reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
CNN/reshape_2/strided_slice?
CNN/reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
CNN/reshape_2/Reshape/shape/1?
CNN/reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
CNN/reshape_2/Reshape/shape/2?
CNN/reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
CNN/reshape_2/Reshape/shape/3?
CNN/reshape_2/Reshape/shapePack$CNN/reshape_2/strided_slice:output:0&CNN/reshape_2/Reshape/shape/1:output:0&CNN/reshape_2/Reshape/shape/2:output:0&CNN/reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
CNN/reshape_2/Reshape/shape?
CNN/reshape_2/ReshapeReshapeinput_9$CNN/reshape_2/Reshape/shape:output:0*
T0*1
_output_shapes
:???????????2
CNN/reshape_2/Reshape?
#CNN/conv2d_22/Conv2D/ReadVariableOpReadVariableOp4cnn_conv2d_22_conv2d_readvariableop_conv2d_22_kernel*&
_output_shapes
:*
dtype02%
#CNN/conv2d_22/Conv2D/ReadVariableOp?
CNN/conv2d_22/Conv2DConv2DCNN/reshape_2/Reshape:output:0+CNN/conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
CNN/conv2d_22/Conv2D?
$CNN/conv2d_22/BiasAdd/ReadVariableOpReadVariableOp3cnn_conv2d_22_biasadd_readvariableop_conv2d_22_bias*
_output_shapes
:*
dtype02&
$CNN/conv2d_22/BiasAdd/ReadVariableOp?
CNN/conv2d_22/BiasAddBiasAddCNN/conv2d_22/Conv2D:output:0,CNN/conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
CNN/conv2d_22/BiasAdd?
CNN/conv2d_22/ReluReluCNN/conv2d_22/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
CNN/conv2d_22/Relu?
CNN/max_pooling2d_14/MaxPoolMaxPool CNN/conv2d_22/Relu:activations:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
2
CNN/max_pooling2d_14/MaxPool?
#CNN/conv2d_23/Conv2D/ReadVariableOpReadVariableOp4cnn_conv2d_23_conv2d_readvariableop_conv2d_23_kernel*&
_output_shapes
:*
dtype02%
#CNN/conv2d_23/Conv2D/ReadVariableOp?
CNN/conv2d_23/Conv2DConv2D%CNN/max_pooling2d_14/MaxPool:output:0+CNN/conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
CNN/conv2d_23/Conv2D?
$CNN/conv2d_23/BiasAdd/ReadVariableOpReadVariableOp3cnn_conv2d_23_biasadd_readvariableop_conv2d_23_bias*
_output_shapes
:*
dtype02&
$CNN/conv2d_23/BiasAdd/ReadVariableOp?
CNN/conv2d_23/BiasAddBiasAddCNN/conv2d_23/Conv2D:output:0,CNN/conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
CNN/conv2d_23/BiasAdd?
CNN/conv2d_23/ReluReluCNN/conv2d_23/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
CNN/conv2d_23/Relu?
CNN/max_pooling2d_15/MaxPoolMaxPool CNN/conv2d_23/Relu:activations:0*/
_output_shapes
:?????????@@*
ksize
*
paddingVALID*
strides
2
CNN/max_pooling2d_15/MaxPool?
#CNN/conv2d_24/Conv2D/ReadVariableOpReadVariableOp4cnn_conv2d_24_conv2d_readvariableop_conv2d_24_kernel*&
_output_shapes
:*
dtype02%
#CNN/conv2d_24/Conv2D/ReadVariableOp?
CNN/conv2d_24/Conv2DConv2D%CNN/max_pooling2d_15/MaxPool:output:0+CNN/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
2
CNN/conv2d_24/Conv2D?
$CNN/conv2d_24/BiasAdd/ReadVariableOpReadVariableOp3cnn_conv2d_24_biasadd_readvariableop_conv2d_24_bias*
_output_shapes
:*
dtype02&
$CNN/conv2d_24/BiasAdd/ReadVariableOp?
CNN/conv2d_24/BiasAddBiasAddCNN/conv2d_24/Conv2D:output:0,CNN/conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@2
CNN/conv2d_24/BiasAdd?
CNN/conv2d_24/ReluReluCNN/conv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@2
CNN/conv2d_24/Relu{
CNN/flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ? 2
CNN/flatten_7/Const?
CNN/flatten_7/ReshapeReshape CNN/conv2d_24/Relu:activations:0CNN/flatten_7/Const:output:0*
T0*)
_output_shapes
:???????????2
CNN/flatten_7/Reshape?
"CNN/dense_14/MatMul/ReadVariableOpReadVariableOp2cnn_dense_14_matmul_readvariableop_dense_14_kernel* 
_output_shapes
:
??*
dtype02$
"CNN/dense_14/MatMul/ReadVariableOp?
CNN/dense_14/MatMulMatMulCNN/flatten_7/Reshape:output:0*CNN/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
CNN/dense_14/MatMul?
#CNN/dense_14/BiasAdd/ReadVariableOpReadVariableOp1cnn_dense_14_biasadd_readvariableop_dense_14_bias*
_output_shapes
:*
dtype02%
#CNN/dense_14/BiasAdd/ReadVariableOp?
CNN/dense_14/BiasAddBiasAddCNN/dense_14/MatMul:product:0+CNN/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
CNN/dense_14/BiasAdd
CNN/dense_14/ReluReluCNN/dense_14/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
CNN/dense_14/Relu?
CNN/dropout/IdentityIdentityCNN/dense_14/Relu:activations:0*
T0*'
_output_shapes
:?????????2
CNN/dropout/Identity?
"CNN/dense_15/MatMul/ReadVariableOpReadVariableOp2cnn_dense_15_matmul_readvariableop_dense_15_kernel*
_output_shapes

:*
dtype02$
"CNN/dense_15/MatMul/ReadVariableOp?
CNN/dense_15/MatMulMatMulCNN/dropout/Identity:output:0*CNN/dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
CNN/dense_15/MatMul?
#CNN/dense_15/BiasAdd/ReadVariableOpReadVariableOp1cnn_dense_15_biasadd_readvariableop_dense_15_bias*
_output_shapes
:*
dtype02%
#CNN/dense_15/BiasAdd/ReadVariableOp?
CNN/dense_15/BiasAddBiasAddCNN/dense_15/MatMul:product:0+CNN/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
CNN/dense_15/BiasAdd?
CNN/dense_15/SoftmaxSoftmaxCNN/dense_15/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
CNN/dense_15/Softmaxy
IdentityIdentityCNN/dense_15/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp%^CNN/conv2d_22/BiasAdd/ReadVariableOp$^CNN/conv2d_22/Conv2D/ReadVariableOp%^CNN/conv2d_23/BiasAdd/ReadVariableOp$^CNN/conv2d_23/Conv2D/ReadVariableOp%^CNN/conv2d_24/BiasAdd/ReadVariableOp$^CNN/conv2d_24/Conv2D/ReadVariableOp$^CNN/dense_14/BiasAdd/ReadVariableOp#^CNN/dense_14/MatMul/ReadVariableOp$^CNN/dense_15/BiasAdd/ReadVariableOp#^CNN/dense_15/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*<
_input_shapes+
):???????????: : : : : : : : : : 2L
$CNN/conv2d_22/BiasAdd/ReadVariableOp$CNN/conv2d_22/BiasAdd/ReadVariableOp2J
#CNN/conv2d_22/Conv2D/ReadVariableOp#CNN/conv2d_22/Conv2D/ReadVariableOp2L
$CNN/conv2d_23/BiasAdd/ReadVariableOp$CNN/conv2d_23/BiasAdd/ReadVariableOp2J
#CNN/conv2d_23/Conv2D/ReadVariableOp#CNN/conv2d_23/Conv2D/ReadVariableOp2L
$CNN/conv2d_24/BiasAdd/ReadVariableOp$CNN/conv2d_24/BiasAdd/ReadVariableOp2J
#CNN/conv2d_24/Conv2D/ReadVariableOp#CNN/conv2d_24/Conv2D/ReadVariableOp2J
#CNN/dense_14/BiasAdd/ReadVariableOp#CNN/dense_14/BiasAdd/ReadVariableOp2H
"CNN/dense_14/MatMul/ReadVariableOp"CNN/dense_14/MatMul/ReadVariableOp2J
#CNN/dense_15/BiasAdd/ReadVariableOp#CNN/dense_15/BiasAdd/ReadVariableOp2H
"CNN/dense_15/MatMul/ReadVariableOp"CNN/dense_15/MatMul/ReadVariableOp:R N
)
_output_shapes
:???????????
!
_user_specified_name	input_9
?
f
J__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_2965

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
K
/__inference_max_pooling2d_15_layer_call_fn_2985

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_29822
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
C__inference_conv2d_24_layer_call_and_return_conditional_losses_3051

inputs@
&conv2d_readvariableop_conv2d_24_kernel:3
%biasadd_readvariableop_conv2d_24_bias:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOp&conv2d_readvariableop_conv2d_24_kernel*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOp%biasadd_readvariableop_conv2d_24_bias*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
"__inference_CNN_layer_call_fn_3493

inputs*
conv2d_22_kernel:
conv2d_22_bias:*
conv2d_23_kernel:
conv2d_23_bias:*
conv2d_24_kernel:
conv2d_24_bias:#
dense_14_kernel:
??
dense_14_bias:!
dense_15_kernel:
dense_15_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_22_kernelconv2d_22_biasconv2d_23_kernelconv2d_23_biasconv2d_24_kernelconv2d_24_biasdense_14_kerneldense_14_biasdense_15_kerneldense_15_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_CNN_layer_call_and_return_conditional_losses_33222
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*<
_input_shapes+
):???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
B__inference_dense_14_layer_call_and_return_conditional_losses_3710

inputs9
%matmul_readvariableop_dense_14_kernel:
??2
$biasadd_readvariableop_dense_14_bias:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOp%matmul_readvariableop_dense_14_kernel* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOp$biasadd_readvariableop_dense_14_bias*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
B
&__inference_dropout_layer_call_fn_3715

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_30832
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?Q
?
=__inference_CNN_layer_call_and_return_conditional_losses_3608

inputsJ
0conv2d_22_conv2d_readvariableop_conv2d_22_kernel:=
/conv2d_22_biasadd_readvariableop_conv2d_22_bias:J
0conv2d_23_conv2d_readvariableop_conv2d_23_kernel:=
/conv2d_23_biasadd_readvariableop_conv2d_23_bias:J
0conv2d_24_conv2d_readvariableop_conv2d_24_kernel:=
/conv2d_24_biasadd_readvariableop_conv2d_24_bias:B
.dense_14_matmul_readvariableop_dense_14_kernel:
??;
-dense_14_biasadd_readvariableop_dense_14_bias:@
.dense_15_matmul_readvariableop_dense_15_kernel:;
-dense_15_biasadd_readvariableop_dense_15_bias:
identity?? conv2d_22/BiasAdd/ReadVariableOp?conv2d_22/Conv2D/ReadVariableOp? conv2d_23/BiasAdd/ReadVariableOp?conv2d_23/Conv2D/ReadVariableOp? conv2d_24/BiasAdd/ReadVariableOp?conv2d_24/Conv2D/ReadVariableOp?dense_14/BiasAdd/ReadVariableOp?dense_14/MatMul/ReadVariableOp?dense_15/BiasAdd/ReadVariableOp?dense_15/MatMul/ReadVariableOpX
reshape_2/ShapeShapeinputs*
T0*
_output_shapes
:2
reshape_2/Shape?
reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_2/strided_slice/stack?
reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_2/strided_slice/stack_1?
reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_2/strided_slice/stack_2?
reshape_2/strided_sliceStridedSlicereshape_2/Shape:output:0&reshape_2/strided_slice/stack:output:0(reshape_2/strided_slice/stack_1:output:0(reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_2/strided_slicey
reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_2/Reshape/shape/1y
reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
reshape_2/Reshape/shape/2x
reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_2/Reshape/shape/3?
reshape_2/Reshape/shapePack reshape_2/strided_slice:output:0"reshape_2/Reshape/shape/1:output:0"reshape_2/Reshape/shape/2:output:0"reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_2/Reshape/shape?
reshape_2/ReshapeReshapeinputs reshape_2/Reshape/shape:output:0*
T0*1
_output_shapes
:???????????2
reshape_2/Reshape?
conv2d_22/Conv2D/ReadVariableOpReadVariableOp0conv2d_22_conv2d_readvariableop_conv2d_22_kernel*&
_output_shapes
:*
dtype02!
conv2d_22/Conv2D/ReadVariableOp?
conv2d_22/Conv2DConv2Dreshape_2/Reshape:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
conv2d_22/Conv2D?
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp/conv2d_22_biasadd_readvariableop_conv2d_22_bias*
_output_shapes
:*
dtype02"
 conv2d_22/BiasAdd/ReadVariableOp?
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_22/BiasAdd?
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
conv2d_22/Relu?
max_pooling2d_14/MaxPoolMaxPoolconv2d_22/Relu:activations:0*1
_output_shapes
:???????????*
ksize
*
paddingVALID*
strides
2
max_pooling2d_14/MaxPool?
conv2d_23/Conv2D/ReadVariableOpReadVariableOp0conv2d_23_conv2d_readvariableop_conv2d_23_kernel*&
_output_shapes
:*
dtype02!
conv2d_23/Conv2D/ReadVariableOp?
conv2d_23/Conv2DConv2D!max_pooling2d_14/MaxPool:output:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
conv2d_23/Conv2D?
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp/conv2d_23_biasadd_readvariableop_conv2d_23_bias*
_output_shapes
:*
dtype02"
 conv2d_23/BiasAdd/ReadVariableOp?
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
conv2d_23/BiasAdd?
conv2d_23/ReluReluconv2d_23/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
conv2d_23/Relu?
max_pooling2d_15/MaxPoolMaxPoolconv2d_23/Relu:activations:0*/
_output_shapes
:?????????@@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_15/MaxPool?
conv2d_24/Conv2D/ReadVariableOpReadVariableOp0conv2d_24_conv2d_readvariableop_conv2d_24_kernel*&
_output_shapes
:*
dtype02!
conv2d_24/Conv2D/ReadVariableOp?
conv2d_24/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
2
conv2d_24/Conv2D?
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp/conv2d_24_biasadd_readvariableop_conv2d_24_bias*
_output_shapes
:*
dtype02"
 conv2d_24/BiasAdd/ReadVariableOp?
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@2
conv2d_24/BiasAdd~
conv2d_24/ReluReluconv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@2
conv2d_24/Relus
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? ? 2
flatten_7/Const?
flatten_7/ReshapeReshapeconv2d_24/Relu:activations:0flatten_7/Const:output:0*
T0*)
_output_shapes
:???????????2
flatten_7/Reshape?
dense_14/MatMul/ReadVariableOpReadVariableOp.dense_14_matmul_readvariableop_dense_14_kernel* 
_output_shapes
:
??*
dtype02 
dense_14/MatMul/ReadVariableOp?
dense_14/MatMulMatMulflatten_7/Reshape:output:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_14/MatMul?
dense_14/BiasAdd/ReadVariableOpReadVariableOp-dense_14_biasadd_readvariableop_dense_14_bias*
_output_shapes
:*
dtype02!
dense_14/BiasAdd/ReadVariableOp?
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_14/BiasAdds
dense_14/ReluReludense_14/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_14/Relus
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/dropout/Const?
dropout/dropout/MulMuldense_14/Relu:activations:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:?????????2
dropout/dropout/Muly
dropout/dropout/ShapeShapedense_14/Relu:activations:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????2
dropout/dropout/Mul_1?
dense_15/MatMul/ReadVariableOpReadVariableOp.dense_15_matmul_readvariableop_dense_15_kernel*
_output_shapes

:*
dtype02 
dense_15/MatMul/ReadVariableOp?
dense_15/MatMulMatMuldropout/dropout/Mul_1:z:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_15/MatMul?
dense_15/BiasAdd/ReadVariableOpReadVariableOp-dense_15_biasadd_readvariableop_dense_15_bias*
_output_shapes
:*
dtype02!
dense_15/BiasAdd/ReadVariableOp?
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_15/BiasAdd|
dense_15/SoftmaxSoftmaxdense_15/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_15/Softmaxu
IdentityIdentitydense_15/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*<
_input_shapes+
):???????????: : : : : : : : : : 2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
(__inference_conv2d_22_layer_call_fn_3634

inputs*
conv2d_22_kernel:
conv2d_22_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_22_kernelconv2d_22_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_22_layer_call_and_return_conditional_losses_30192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
'__inference_dense_14_layer_call_fn_3699

inputs#
dense_14_kernel:
??
dense_14_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsdense_14_kerneldense_14_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_14_layer_call_and_return_conditional_losses_30742
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
"__inference_CNN_layer_call_fn_3478

inputs*
conv2d_22_kernel:
conv2d_22_bias:*
conv2d_23_kernel:
conv2d_23_bias:*
conv2d_24_kernel:
conv2d_24_bias:#
dense_14_kernel:
??
dense_14_bias:!
dense_15_kernel:
dense_15_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_22_kernelconv2d_22_biasconv2d_23_kernelconv2d_23_biasconv2d_24_kernelconv2d_24_biasdense_14_kerneldense_14_biasdense_15_kerneldense_15_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_CNN_layer_call_and_return_conditional_losses_31012
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*<
_input_shapes+
):???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
C__inference_conv2d_24_layer_call_and_return_conditional_losses_3681

inputs@
&conv2d_readvariableop_conv2d_24_kernel:3
%biasadd_readvariableop_conv2d_24_bias:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOp&conv2d_readvariableop_conv2d_24_kernel*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOp%biasadd_readvariableop_conv2d_24_bias*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*2
_input_shapes!
:?????????@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?/
?
=__inference_CNN_layer_call_and_return_conditional_losses_3446
input_94
conv2d_22_conv2d_22_kernel:&
conv2d_22_conv2d_22_bias:4
conv2d_23_conv2d_23_kernel:&
conv2d_23_conv2d_23_bias:4
conv2d_24_conv2d_24_kernel:&
conv2d_24_conv2d_24_bias:,
dense_14_dense_14_kernel:
??$
dense_14_dense_14_bias:*
dense_15_dense_15_kernel:$
dense_15_dense_15_bias:
identity??!conv2d_22/StatefulPartitionedCall?!conv2d_23/StatefulPartitionedCall?!conv2d_24/StatefulPartitionedCall? dense_14/StatefulPartitionedCall? dense_15/StatefulPartitionedCall?dropout/StatefulPartitionedCall?
reshape_2/PartitionedCallPartitionedCallinput_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_2_layer_call_and_return_conditional_losses_30062
reshape_2/PartitionedCall?
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0conv2d_22_conv2d_22_kernelconv2d_22_conv2d_22_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_22_layer_call_and_return_conditional_losses_30192#
!conv2d_22/StatefulPartitionedCall?
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_29652"
 max_pooling2d_14/PartitionedCall?
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_23_conv2d_23_kernelconv2d_23_conv2d_23_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_23_layer_call_and_return_conditional_losses_30352#
!conv2d_23/StatefulPartitionedCall?
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_29822"
 max_pooling2d_15/PartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_24_conv2d_24_kernelconv2d_24_conv2d_24_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_24_layer_call_and_return_conditional_losses_30512#
!conv2d_24/StatefulPartitionedCall?
flatten_7/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_flatten_7_layer_call_and_return_conditional_losses_30612
flatten_7/PartitionedCall?
 dense_14/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_14_dense_14_kerneldense_14_dense_14_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_14_layer_call_and_return_conditional_losses_30742"
 dense_14/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_31532!
dropout/StatefulPartitionedCall?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_15_dense_15_kerneldense_15_dense_15_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_15_layer_call_and_return_conditional_losses_30962"
 dense_15/StatefulPartitionedCall?
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*<
_input_shapes+
):???????????: : : : : : : : : : 2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:R N
)
_output_shapes
:???????????
!
_user_specified_name	input_9
?-
?
=__inference_CNN_layer_call_and_return_conditional_losses_3422
input_94
conv2d_22_conv2d_22_kernel:&
conv2d_22_conv2d_22_bias:4
conv2d_23_conv2d_23_kernel:&
conv2d_23_conv2d_23_bias:4
conv2d_24_conv2d_24_kernel:&
conv2d_24_conv2d_24_bias:,
dense_14_dense_14_kernel:
??$
dense_14_dense_14_bias:*
dense_15_dense_15_kernel:$
dense_15_dense_15_bias:
identity??!conv2d_22/StatefulPartitionedCall?!conv2d_23/StatefulPartitionedCall?!conv2d_24/StatefulPartitionedCall? dense_14/StatefulPartitionedCall? dense_15/StatefulPartitionedCall?
reshape_2/PartitionedCallPartitionedCallinput_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_reshape_2_layer_call_and_return_conditional_losses_30062
reshape_2/PartitionedCall?
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0conv2d_22_conv2d_22_kernelconv2d_22_conv2d_22_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_22_layer_call_and_return_conditional_losses_30192#
!conv2d_22/StatefulPartitionedCall?
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_29652"
 max_pooling2d_14/PartitionedCall?
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_23_conv2d_23_kernelconv2d_23_conv2d_23_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_23_layer_call_and_return_conditional_losses_30352#
!conv2d_23/StatefulPartitionedCall?
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_29822"
 max_pooling2d_15/PartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_24_conv2d_24_kernelconv2d_24_conv2d_24_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_conv2d_24_layer_call_and_return_conditional_losses_30512#
!conv2d_24/StatefulPartitionedCall?
flatten_7/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_flatten_7_layer_call_and_return_conditional_losses_30612
flatten_7/PartitionedCall?
 dense_14/StatefulPartitionedCallStatefulPartitionedCall"flatten_7/PartitionedCall:output:0dense_14_dense_14_kerneldense_14_dense_14_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_14_layer_call_and_return_conditional_losses_30742"
 dense_14/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_30832
dropout/PartitionedCall?
 dense_15/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_15_dense_15_kerneldense_15_dense_15_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_15_layer_call_and_return_conditional_losses_30962"
 dense_15/StatefulPartitionedCall?
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*<
_input_shapes+
):???????????: : : : : : : : : : 2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall:R N
)
_output_shapes
:???????????
!
_user_specified_name	input_9
?V
?
__inference__traced_save_3889
file_prefix/
+savev2_conv2d_22_kernel_read_readvariableop-
)savev2_conv2d_22_bias_read_readvariableop/
+savev2_conv2d_23_kernel_read_readvariableop-
)savev2_conv2d_23_bias_read_readvariableop/
+savev2_conv2d_24_kernel_read_readvariableop-
)savev2_conv2d_24_bias_read_readvariableop.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop4
0savev2_training_10_adam_iter_read_readvariableop	6
2savev2_training_10_adam_beta_1_read_readvariableop6
2savev2_training_10_adam_beta_2_read_readvariableop5
1savev2_training_10_adam_decay_read_readvariableop=
9savev2_training_10_adam_learning_rate_read_readvariableop&
"savev2_total_7_read_readvariableop&
"savev2_count_7_read_readvariableopB
>savev2_training_10_adam_conv2d_22_kernel_m_read_readvariableop@
<savev2_training_10_adam_conv2d_22_bias_m_read_readvariableopB
>savev2_training_10_adam_conv2d_23_kernel_m_read_readvariableop@
<savev2_training_10_adam_conv2d_23_bias_m_read_readvariableopB
>savev2_training_10_adam_conv2d_24_kernel_m_read_readvariableop@
<savev2_training_10_adam_conv2d_24_bias_m_read_readvariableopA
=savev2_training_10_adam_dense_14_kernel_m_read_readvariableop?
;savev2_training_10_adam_dense_14_bias_m_read_readvariableopA
=savev2_training_10_adam_dense_15_kernel_m_read_readvariableop?
;savev2_training_10_adam_dense_15_bias_m_read_readvariableopB
>savev2_training_10_adam_conv2d_22_kernel_v_read_readvariableop@
<savev2_training_10_adam_conv2d_22_bias_v_read_readvariableopB
>savev2_training_10_adam_conv2d_23_kernel_v_read_readvariableop@
<savev2_training_10_adam_conv2d_23_bias_v_read_readvariableopB
>savev2_training_10_adam_conv2d_24_kernel_v_read_readvariableop@
<savev2_training_10_adam_conv2d_24_bias_v_read_readvariableopA
=savev2_training_10_adam_dense_14_kernel_v_read_readvariableop?
;savev2_training_10_adam_dense_14_bias_v_read_readvariableopA
=savev2_training_10_adam_dense_15_kernel_v_read_readvariableop?
;savev2_training_10_adam_dense_15_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*?
value?B?&B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:&*
dtype0*_
valueVBT&B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_22_kernel_read_readvariableop)savev2_conv2d_22_bias_read_readvariableop+savev2_conv2d_23_kernel_read_readvariableop)savev2_conv2d_23_bias_read_readvariableop+savev2_conv2d_24_kernel_read_readvariableop)savev2_conv2d_24_bias_read_readvariableop*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableop0savev2_training_10_adam_iter_read_readvariableop2savev2_training_10_adam_beta_1_read_readvariableop2savev2_training_10_adam_beta_2_read_readvariableop1savev2_training_10_adam_decay_read_readvariableop9savev2_training_10_adam_learning_rate_read_readvariableop"savev2_total_7_read_readvariableop"savev2_count_7_read_readvariableop>savev2_training_10_adam_conv2d_22_kernel_m_read_readvariableop<savev2_training_10_adam_conv2d_22_bias_m_read_readvariableop>savev2_training_10_adam_conv2d_23_kernel_m_read_readvariableop<savev2_training_10_adam_conv2d_23_bias_m_read_readvariableop>savev2_training_10_adam_conv2d_24_kernel_m_read_readvariableop<savev2_training_10_adam_conv2d_24_bias_m_read_readvariableop=savev2_training_10_adam_dense_14_kernel_m_read_readvariableop;savev2_training_10_adam_dense_14_bias_m_read_readvariableop=savev2_training_10_adam_dense_15_kernel_m_read_readvariableop;savev2_training_10_adam_dense_15_bias_m_read_readvariableop>savev2_training_10_adam_conv2d_22_kernel_v_read_readvariableop<savev2_training_10_adam_conv2d_22_bias_v_read_readvariableop>savev2_training_10_adam_conv2d_23_kernel_v_read_readvariableop<savev2_training_10_adam_conv2d_23_bias_v_read_readvariableop>savev2_training_10_adam_conv2d_24_kernel_v_read_readvariableop<savev2_training_10_adam_conv2d_24_bias_v_read_readvariableop=savev2_training_10_adam_dense_14_kernel_v_read_readvariableop;savev2_training_10_adam_dense_14_bias_v_read_readvariableop=savev2_training_10_adam_dense_15_kernel_v_read_readvariableop;savev2_training_10_adam_dense_15_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *4
dtypes*
(2&	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :::::::
??:::: : : : : : : :::::::
??::::::::::
??:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
??: 

_output_shapes
::$	 

_output_shapes

:: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
??: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::, (
&
_output_shapes
:: !

_output_shapes
::&""
 
_output_shapes
:
??: #

_output_shapes
::$$ 

_output_shapes

:: %

_output_shapes
::&

_output_shapes
: 
?
?
"__inference_CNN_layer_call_fn_3398
input_9*
conv2d_22_kernel:
conv2d_22_bias:*
conv2d_23_kernel:
conv2d_23_bias:*
conv2d_24_kernel:
conv2d_24_bias:#
dense_14_kernel:
??
dense_14_bias:!
dense_15_kernel:
dense_15_bias:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_9conv2d_22_kernelconv2d_22_biasconv2d_23_kernelconv2d_23_biasconv2d_24_kernelconv2d_24_biasdense_14_kerneldense_14_biasdense_15_kerneldense_15_bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *F
fAR?
=__inference_CNN_layer_call_and_return_conditional_losses_33222
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*<
_input_shapes+
):???????????: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
)
_output_shapes
:???????????
!
_user_specified_name	input_9
?
_
C__inference_reshape_2_layer_call_and_return_conditional_losses_3006

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicee
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/1e
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :?2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/3?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapey
ReshapeReshapeinputsReshape/shape:output:0*
T0*1
_output_shapes
:???????????2	
Reshapen
IdentityIdentityReshape:output:0*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:???????????:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
=
input_92
serving_default_input_9:0???????????<
dense_150
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

 kernel
!bias
"	variables
#trainable_variables
$regularization_losses
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
&	variables
'trainable_variables
(regularization_losses
)	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
0	variables
1trainable_variables
2regularization_losses
3	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

4kernel
5bias
6	variables
7trainable_variables
8regularization_losses
9	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
:	variables
;trainable_variables
<regularization_losses
=	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

>kernel
?bias
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Diter

Ebeta_1

Fbeta_2
	Gdecay
Hlearning_ratem?m? m?!m?*m?+m?4m?5m?>m??m?v?v? v?!v?*v?+v?4v?5v?>v??v?"
tf_deprecated_optimizer
f
0
1
 2
!3
*4
+5
46
57
>8
?9"
trackable_list_wrapper
f
0
1
 2
!3
*4
+5
46
57
>8
?9"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Inon_trainable_variables

Jlayers
Klayer_metrics
Lmetrics
Mlayer_regularization_losses
	variables
trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Nnon_trainable_variables
Olayer_metrics

Players
Qmetrics
Rlayer_regularization_losses
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(2conv2d_22/kernel
:2conv2d_22/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Snon_trainable_variables
Tlayer_metrics

Ulayers
Vmetrics
Wlayer_regularization_losses
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Xnon_trainable_variables
Ylayer_metrics

Zlayers
[metrics
\layer_regularization_losses
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(2conv2d_23/kernel
:2conv2d_23/bias
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
]non_trainable_variables
^layer_metrics

_layers
`metrics
alayer_regularization_losses
"	variables
#trainable_variables
$regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
bnon_trainable_variables
clayer_metrics

dlayers
emetrics
flayer_regularization_losses
&	variables
'trainable_variables
(regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(2conv2d_24/kernel
:2conv2d_24/bias
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
gnon_trainable_variables
hlayer_metrics

ilayers
jmetrics
klayer_regularization_losses
,	variables
-trainable_variables
.regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
lnon_trainable_variables
mlayer_metrics

nlayers
ometrics
player_regularization_losses
0	variables
1trainable_variables
2regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!
??2dense_14/kernel
:2dense_14/bias
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
?
qnon_trainable_variables
rlayer_metrics

slayers
tmetrics
ulayer_regularization_losses
6	variables
7trainable_variables
8regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
vnon_trainable_variables
wlayer_metrics

xlayers
ymetrics
zlayer_regularization_losses
:	variables
;trainable_variables
<regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:2dense_15/kernel
:2dense_15/bias
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
{non_trainable_variables
|layer_metrics

}layers
~metrics
layer_regularization_losses
@	variables
Atrainable_variables
Bregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2training_10/Adam/iter
!: (2training_10/Adam/beta_1
!: (2training_10/Adam/beta_2
 : (2training_10/Adam/decay
(:& (2training_10/Adam/learning_rate
 "
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
 "
trackable_dict_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total_7
:  (2count_7
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
;:92#training_10/Adam/conv2d_22/kernel/m
-:+2!training_10/Adam/conv2d_22/bias/m
;:92#training_10/Adam/conv2d_23/kernel/m
-:+2!training_10/Adam/conv2d_23/bias/m
;:92#training_10/Adam/conv2d_24/kernel/m
-:+2!training_10/Adam/conv2d_24/bias/m
4:2
??2"training_10/Adam/dense_14/kernel/m
,:*2 training_10/Adam/dense_14/bias/m
2:02"training_10/Adam/dense_15/kernel/m
,:*2 training_10/Adam/dense_15/bias/m
;:92#training_10/Adam/conv2d_22/kernel/v
-:+2!training_10/Adam/conv2d_22/bias/v
;:92#training_10/Adam/conv2d_23/kernel/v
-:+2!training_10/Adam/conv2d_23/bias/v
;:92#training_10/Adam/conv2d_24/kernel/v
-:+2!training_10/Adam/conv2d_24/bias/v
4:2
??2"training_10/Adam/dense_14/kernel/v
,:*2 training_10/Adam/dense_14/bias/v
2:02"training_10/Adam/dense_15/kernel/v
,:*2 training_10/Adam/dense_15/bias/v
?2?
"__inference_CNN_layer_call_fn_3114
"__inference_CNN_layer_call_fn_3478
"__inference_CNN_layer_call_fn_3493
"__inference_CNN_layer_call_fn_3398?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
__inference__wrapped_model_2951?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *(?%
#? 
input_9???????????
?2?
=__inference_CNN_layer_call_and_return_conditional_losses_3547
=__inference_CNN_layer_call_and_return_conditional_losses_3608
=__inference_CNN_layer_call_and_return_conditional_losses_3422
=__inference_CNN_layer_call_and_return_conditional_losses_3446?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_reshape_2_layer_call_fn_3613?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_reshape_2_layer_call_and_return_conditional_losses_3627?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv2d_22_layer_call_fn_3634?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv2d_22_layer_call_and_return_conditional_losses_3645?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_max_pooling2d_14_layer_call_fn_2968?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
J__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_2957?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
(__inference_conv2d_23_layer_call_fn_3652?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv2d_23_layer_call_and_return_conditional_losses_3663?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_max_pooling2d_15_layer_call_fn_2985?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
J__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_2974?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
(__inference_conv2d_24_layer_call_fn_3670?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv2d_24_layer_call_and_return_conditional_losses_3681?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_flatten_7_layer_call_fn_3686?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_flatten_7_layer_call_and_return_conditional_losses_3692?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_14_layer_call_fn_3699?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_14_layer_call_and_return_conditional_losses_3710?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_dropout_layer_call_fn_3715
&__inference_dropout_layer_call_fn_3720?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
A__inference_dropout_layer_call_and_return_conditional_losses_3725
A__inference_dropout_layer_call_and_return_conditional_losses_3737?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_dense_15_layer_call_fn_3744?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_15_layer_call_and_return_conditional_losses_3755?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
"__inference_signature_wrapper_3463input_9"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
=__inference_CNN_layer_call_and_return_conditional_losses_3422o
 !*+45>?:?7
0?-
#? 
input_9???????????
p 

 
? "%?"
?
0?????????
? ?
=__inference_CNN_layer_call_and_return_conditional_losses_3446o
 !*+45>?:?7
0?-
#? 
input_9???????????
p

 
? "%?"
?
0?????????
? ?
=__inference_CNN_layer_call_and_return_conditional_losses_3547n
 !*+45>?9?6
/?,
"?
inputs???????????
p 

 
? "%?"
?
0?????????
? ?
=__inference_CNN_layer_call_and_return_conditional_losses_3608n
 !*+45>?9?6
/?,
"?
inputs???????????
p

 
? "%?"
?
0?????????
? ?
"__inference_CNN_layer_call_fn_3114b
 !*+45>?:?7
0?-
#? 
input_9???????????
p 

 
? "???????????
"__inference_CNN_layer_call_fn_3398b
 !*+45>?:?7
0?-
#? 
input_9???????????
p

 
? "???????????
"__inference_CNN_layer_call_fn_3478a
 !*+45>?9?6
/?,
"?
inputs???????????
p 

 
? "???????????
"__inference_CNN_layer_call_fn_3493a
 !*+45>?9?6
/?,
"?
inputs???????????
p

 
? "???????????
__inference__wrapped_model_2951u
 !*+45>?2?/
(?%
#? 
input_9???????????
? "3?0
.
dense_15"?
dense_15??????????
C__inference_conv2d_22_layer_call_and_return_conditional_losses_3645p9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
(__inference_conv2d_22_layer_call_fn_3634c9?6
/?,
*?'
inputs???????????
? ""?????????????
C__inference_conv2d_23_layer_call_and_return_conditional_losses_3663p !9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
(__inference_conv2d_23_layer_call_fn_3652c !9?6
/?,
*?'
inputs???????????
? ""?????????????
C__inference_conv2d_24_layer_call_and_return_conditional_losses_3681l*+7?4
-?*
(?%
inputs?????????@@
? "-?*
#? 
0?????????@@
? ?
(__inference_conv2d_24_layer_call_fn_3670_*+7?4
-?*
(?%
inputs?????????@@
? " ??????????@@?
B__inference_dense_14_layer_call_and_return_conditional_losses_3710^451?.
'?$
"?
inputs???????????
? "%?"
?
0?????????
? |
'__inference_dense_14_layer_call_fn_3699Q451?.
'?$
"?
inputs???????????
? "???????????
B__inference_dense_15_layer_call_and_return_conditional_losses_3755\>?/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? z
'__inference_dense_15_layer_call_fn_3744O>?/?,
%?"
 ?
inputs?????????
? "???????????
A__inference_dropout_layer_call_and_return_conditional_losses_3725\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
A__inference_dropout_layer_call_and_return_conditional_losses_3737\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? y
&__inference_dropout_layer_call_fn_3715O3?0
)?&
 ?
inputs?????????
p 
? "??????????y
&__inference_dropout_layer_call_fn_3720O3?0
)?&
 ?
inputs?????????
p
? "???????????
C__inference_flatten_7_layer_call_and_return_conditional_losses_3692b7?4
-?*
(?%
inputs?????????@@
? "'?$
?
0???????????
? ?
(__inference_flatten_7_layer_call_fn_3686U7?4
-?*
(?%
inputs?????????@@
? "?????????????
J__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_2957?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_14_layer_call_fn_2968?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_2974?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
/__inference_max_pooling2d_15_layer_call_fn_2985?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
C__inference_reshape_2_layer_call_and_return_conditional_losses_3627d1?.
'?$
"?
inputs???????????
? "/?,
%?"
0???????????
? ?
(__inference_reshape_2_layer_call_fn_3613W1?.
'?$
"?
inputs???????????
? ""?????????????
"__inference_signature_wrapper_3463?
 !*+45>?=?:
? 
3?0
.
input_9#? 
input_9???????????"3?0
.
dense_15"?
dense_15?????????