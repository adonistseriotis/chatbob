ïÎ
­
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
¾
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12v2.4.1-0-g85c8b2a817f8ê
}
dense_109/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	#@*!
shared_namedense_109/kernel
v
$dense_109/kernel/Read/ReadVariableOpReadVariableOpdense_109/kernel*
_output_shapes
:	#@*
dtype0
t
dense_109/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_109/bias
m
"dense_109/bias/Read/ReadVariableOpReadVariableOpdense_109/bias*
_output_shapes
:@*
dtype0
}
dense_110/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*!
shared_namedense_110/kernel
v
$dense_110/kernel/Read/ReadVariableOpReadVariableOpdense_110/kernel*
_output_shapes
:	@*
dtype0
u
dense_110/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_110/bias
n
"dense_110/bias/Read/ReadVariableOpReadVariableOpdense_110/bias*
_output_shapes	
:*
dtype0
}
dense_111/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*!
shared_namedense_111/kernel
v
$dense_111/kernel/Read/ReadVariableOpReadVariableOpdense_111/kernel*
_output_shapes
:	@*
dtype0
t
dense_111/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_111/bias
m
"dense_111/bias/Read/ReadVariableOpReadVariableOpdense_111/bias*
_output_shapes
:@*
dtype0
|
dense_112/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *!
shared_namedense_112/kernel
u
$dense_112/kernel/Read/ReadVariableOpReadVariableOpdense_112/kernel*
_output_shapes

:@ *
dtype0
t
dense_112/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_112/bias
m
"dense_112/bias/Read/ReadVariableOpReadVariableOpdense_112/bias*
_output_shapes
: *
dtype0
|
dense_113/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_namedense_113/kernel
u
$dense_113/kernel/Read/ReadVariableOpReadVariableOpdense_113/kernel*
_output_shapes

: *
dtype0
t
dense_113/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_113/bias
m
"dense_113/bias/Read/ReadVariableOpReadVariableOpdense_113/bias*
_output_shapes
:*
dtype0
|
dense_114/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_114/kernel
u
$dense_114/kernel/Read/ReadVariableOpReadVariableOpdense_114/kernel*
_output_shapes

:*
dtype0
t
dense_114/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_114/bias
m
"dense_114/bias/Read/ReadVariableOpReadVariableOpdense_114/bias*
_output_shapes
:*
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
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

RMSprop/dense_109/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	#@*-
shared_nameRMSprop/dense_109/kernel/rms

0RMSprop/dense_109/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_109/kernel/rms*
_output_shapes
:	#@*
dtype0

RMSprop/dense_109/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameRMSprop/dense_109/bias/rms

.RMSprop/dense_109/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_109/bias/rms*
_output_shapes
:@*
dtype0

RMSprop/dense_110/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*-
shared_nameRMSprop/dense_110/kernel/rms

0RMSprop/dense_110/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_110/kernel/rms*
_output_shapes
:	@*
dtype0

RMSprop/dense_110/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameRMSprop/dense_110/bias/rms

.RMSprop/dense_110/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_110/bias/rms*
_output_shapes	
:*
dtype0

RMSprop/dense_111/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*-
shared_nameRMSprop/dense_111/kernel/rms

0RMSprop/dense_111/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_111/kernel/rms*
_output_shapes
:	@*
dtype0

RMSprop/dense_111/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameRMSprop/dense_111/bias/rms

.RMSprop/dense_111/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_111/bias/rms*
_output_shapes
:@*
dtype0

RMSprop/dense_112/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *-
shared_nameRMSprop/dense_112/kernel/rms

0RMSprop/dense_112/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_112/kernel/rms*
_output_shapes

:@ *
dtype0

RMSprop/dense_112/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameRMSprop/dense_112/bias/rms

.RMSprop/dense_112/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_112/bias/rms*
_output_shapes
: *
dtype0

RMSprop/dense_113/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *-
shared_nameRMSprop/dense_113/kernel/rms

0RMSprop/dense_113/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_113/kernel/rms*
_output_shapes

: *
dtype0

RMSprop/dense_113/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameRMSprop/dense_113/bias/rms

.RMSprop/dense_113/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_113/bias/rms*
_output_shapes
:*
dtype0

RMSprop/dense_114/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nameRMSprop/dense_114/kernel/rms

0RMSprop/dense_114/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_114/kernel/rms*
_output_shapes

:*
dtype0

RMSprop/dense_114/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameRMSprop/dense_114/bias/rms

.RMSprop/dense_114/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_114/bias/rms*
_output_shapes
:*
dtype0

NoOpNoOp
4
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Õ3
valueË3BÈ3 BÁ3
Û
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
	optimizer
regularization_losses
		variables

trainable_variables
	keras_api

signatures
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
 bias
!regularization_losses
"	variables
#trainable_variables
$	keras_api
h

%kernel
&bias
'regularization_losses
(	variables
)trainable_variables
*	keras_api
h

+kernel
,bias
-regularization_losses
.	variables
/trainable_variables
0	keras_api
Ã
1iter
	2decay
3learning_rate
4momentum
5rho	rmsd	rmse	rmsf	rmsg	rmsh	rmsi	rmsj	 rmsk	%rmsl	&rmsm	+rmsn	,rmso
 
V
0
1
2
3
4
5
6
 7
%8
&9
+10
,11
V
0
1
2
3
4
5
6
 7
%8
&9
+10
,11
­

6layers
7non_trainable_variables
regularization_losses
8layer_metrics
9layer_regularization_losses
		variables

trainable_variables
:metrics
 
\Z
VARIABLE_VALUEdense_109/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_109/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­

;layers
<non_trainable_variables
regularization_losses
=layer_metrics
>layer_regularization_losses
	variables
trainable_variables
?metrics
\Z
VARIABLE_VALUEdense_110/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_110/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­

@layers
Anon_trainable_variables
regularization_losses
Blayer_metrics
Clayer_regularization_losses
	variables
trainable_variables
Dmetrics
\Z
VARIABLE_VALUEdense_111/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_111/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­

Elayers
Fnon_trainable_variables
regularization_losses
Glayer_metrics
Hlayer_regularization_losses
	variables
trainable_variables
Imetrics
\Z
VARIABLE_VALUEdense_112/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_112/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
 1

0
 1
­

Jlayers
Knon_trainable_variables
!regularization_losses
Llayer_metrics
Mlayer_regularization_losses
"	variables
#trainable_variables
Nmetrics
\Z
VARIABLE_VALUEdense_113/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_113/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

%0
&1

%0
&1
­

Olayers
Pnon_trainable_variables
'regularization_losses
Qlayer_metrics
Rlayer_regularization_losses
(	variables
)trainable_variables
Smetrics
\Z
VARIABLE_VALUEdense_114/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_114/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

+0
,1

+0
,1
­

Tlayers
Unon_trainable_variables
-regularization_losses
Vlayer_metrics
Wlayer_regularization_losses
.	variables
/trainable_variables
Xmetrics
KI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
*
0
1
2
3
4
5
 
 
 

Y0
Z1
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
4
	[total
	\count
]	variables
^	keras_api
D
	_total
	`count
a
_fn_kwargs
b	variables
c	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

[0
\1

]	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

_0
`1

b	variables

VARIABLE_VALUERMSprop/dense_109/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUERMSprop/dense_109/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUERMSprop/dense_110/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUERMSprop/dense_110/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUERMSprop/dense_111/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUERMSprop/dense_111/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUERMSprop/dense_112/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUERMSprop/dense_112/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUERMSprop/dense_113/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUERMSprop/dense_113/bias/rmsRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUERMSprop/dense_114/kernel/rmsTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUERMSprop/dense_114/bias/rmsRlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE

serving_default_dense_109_inputPlaceholder*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ#

StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_109_inputdense_109/kerneldense_109/biasdense_110/kerneldense_110/biasdense_111/kerneldense_111/biasdense_112/kerneldense_112/biasdense_113/kerneldense_113/biasdense_114/kerneldense_114/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_341042
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ë
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_109/kernel/Read/ReadVariableOp"dense_109/bias/Read/ReadVariableOp$dense_110/kernel/Read/ReadVariableOp"dense_110/bias/Read/ReadVariableOp$dense_111/kernel/Read/ReadVariableOp"dense_111/bias/Read/ReadVariableOp$dense_112/kernel/Read/ReadVariableOp"dense_112/bias/Read/ReadVariableOp$dense_113/kernel/Read/ReadVariableOp"dense_113/bias/Read/ReadVariableOp$dense_114/kernel/Read/ReadVariableOp"dense_114/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp0RMSprop/dense_109/kernel/rms/Read/ReadVariableOp.RMSprop/dense_109/bias/rms/Read/ReadVariableOp0RMSprop/dense_110/kernel/rms/Read/ReadVariableOp.RMSprop/dense_110/bias/rms/Read/ReadVariableOp0RMSprop/dense_111/kernel/rms/Read/ReadVariableOp.RMSprop/dense_111/bias/rms/Read/ReadVariableOp0RMSprop/dense_112/kernel/rms/Read/ReadVariableOp.RMSprop/dense_112/bias/rms/Read/ReadVariableOp0RMSprop/dense_113/kernel/rms/Read/ReadVariableOp.RMSprop/dense_113/bias/rms/Read/ReadVariableOp0RMSprop/dense_114/kernel/rms/Read/ReadVariableOp.RMSprop/dense_114/bias/rms/Read/ReadVariableOpConst*.
Tin'
%2#	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_341431
Ò
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_109/kerneldense_109/biasdense_110/kerneldense_110/biasdense_111/kerneldense_111/biasdense_112/kerneldense_112/biasdense_113/kerneldense_113/biasdense_114/kerneldense_114/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototalcounttotal_1count_1RMSprop/dense_109/kernel/rmsRMSprop/dense_109/bias/rmsRMSprop/dense_110/kernel/rmsRMSprop/dense_110/bias/rmsRMSprop/dense_111/kernel/rmsRMSprop/dense_111/bias/rmsRMSprop/dense_112/kernel/rmsRMSprop/dense_112/bias/rmsRMSprop/dense_113/kernel/rmsRMSprop/dense_113/bias/rmsRMSprop/dense_114/kernel/rmsRMSprop/dense_114/bias/rms*-
Tin&
$2"*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_341540°Û
º	

(__inference_zuccbot_layer_call_fn_341003
dense_109_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCalldense_109_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_zuccbot_layer_call_and_return_conditional_losses_3409762
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ#::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
)
_user_specified_namedense_109_input
õ 
Â
C__inference_zuccbot_layer_call_and_return_conditional_losses_340976

inputs
dense_109_340945
dense_109_340947
dense_110_340950
dense_110_340952
dense_111_340955
dense_111_340957
dense_112_340960
dense_112_340962
dense_113_340965
dense_113_340967
dense_114_340970
dense_114_340972
identity¢!dense_109/StatefulPartitionedCall¢!dense_110/StatefulPartitionedCall¢!dense_111/StatefulPartitionedCall¢!dense_112/StatefulPartitionedCall¢!dense_113/StatefulPartitionedCall¢!dense_114/StatefulPartitionedCall
!dense_109/StatefulPartitionedCallStatefulPartitionedCallinputsdense_109_340945dense_109_340947*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_109_layer_call_and_return_conditional_losses_3406912#
!dense_109/StatefulPartitionedCall¾
!dense_110/StatefulPartitionedCallStatefulPartitionedCall*dense_109/StatefulPartitionedCall:output:0dense_110_340950dense_110_340952*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_110_layer_call_and_return_conditional_losses_3407182#
!dense_110/StatefulPartitionedCall½
!dense_111/StatefulPartitionedCallStatefulPartitionedCall*dense_110/StatefulPartitionedCall:output:0dense_111_340955dense_111_340957*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_111_layer_call_and_return_conditional_losses_3407452#
!dense_111/StatefulPartitionedCall½
!dense_112/StatefulPartitionedCallStatefulPartitionedCall*dense_111/StatefulPartitionedCall:output:0dense_112_340960dense_112_340962*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_112_layer_call_and_return_conditional_losses_3407722#
!dense_112/StatefulPartitionedCall½
!dense_113/StatefulPartitionedCallStatefulPartitionedCall*dense_112/StatefulPartitionedCall:output:0dense_113_340965dense_113_340967*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_113_layer_call_and_return_conditional_losses_3407992#
!dense_113/StatefulPartitionedCall½
!dense_114/StatefulPartitionedCallStatefulPartitionedCall*dense_113/StatefulPartitionedCall:output:0dense_114_340970dense_114_340972*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_114_layer_call_and_return_conditional_losses_3408252#
!dense_114/StatefulPartitionedCallÖ
IdentityIdentity*dense_114/StatefulPartitionedCall:output:0"^dense_109/StatefulPartitionedCall"^dense_110/StatefulPartitionedCall"^dense_111/StatefulPartitionedCall"^dense_112/StatefulPartitionedCall"^dense_113/StatefulPartitionedCall"^dense_114/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ#::::::::::::2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2F
!dense_111/StatefulPartitionedCall!dense_111/StatefulPartitionedCall2F
!dense_112/StatefulPartitionedCall!dense_112/StatefulPartitionedCall2F
!dense_113/StatefulPartitionedCall!dense_113/StatefulPartitionedCall2F
!dense_114/StatefulPartitionedCall!dense_114/StatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs
ï	
Þ
E__inference_dense_112_layer_call_and_return_conditional_losses_341261

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
à

*__inference_dense_109_layer_call_fn_341210

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_109_layer_call_and_return_conditional_losses_3406912
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ#::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs

º
"__inference__traced_restore_341540
file_prefix%
!assignvariableop_dense_109_kernel%
!assignvariableop_1_dense_109_bias'
#assignvariableop_2_dense_110_kernel%
!assignvariableop_3_dense_110_bias'
#assignvariableop_4_dense_111_kernel%
!assignvariableop_5_dense_111_bias'
#assignvariableop_6_dense_112_kernel%
!assignvariableop_7_dense_112_bias'
#assignvariableop_8_dense_113_kernel%
!assignvariableop_9_dense_113_bias(
$assignvariableop_10_dense_114_kernel&
"assignvariableop_11_dense_114_bias$
 assignvariableop_12_rmsprop_iter%
!assignvariableop_13_rmsprop_decay-
)assignvariableop_14_rmsprop_learning_rate(
$assignvariableop_15_rmsprop_momentum#
assignvariableop_16_rmsprop_rho
assignvariableop_17_total
assignvariableop_18_count
assignvariableop_19_total_1
assignvariableop_20_count_14
0assignvariableop_21_rmsprop_dense_109_kernel_rms2
.assignvariableop_22_rmsprop_dense_109_bias_rms4
0assignvariableop_23_rmsprop_dense_110_kernel_rms2
.assignvariableop_24_rmsprop_dense_110_bias_rms4
0assignvariableop_25_rmsprop_dense_111_kernel_rms2
.assignvariableop_26_rmsprop_dense_111_bias_rms4
0assignvariableop_27_rmsprop_dense_112_kernel_rms2
.assignvariableop_28_rmsprop_dense_112_bias_rms4
0assignvariableop_29_rmsprop_dense_113_kernel_rms2
.assignvariableop_30_rmsprop_dense_113_bias_rms4
0assignvariableop_31_rmsprop_dense_114_kernel_rms2
.assignvariableop_32_rmsprop_dense_114_bias_rms
identity_34¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ó
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*ÿ
valueõBò"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÒ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesØ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity 
AssignVariableOpAssignVariableOp!assignvariableop_dense_109_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_109_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¨
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_110_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¦
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_110_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4¨
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_111_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¦
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_111_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¨
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_112_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¦
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_112_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8¨
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_113_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¦
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_113_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10¬
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_114_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11ª
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_114_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_12¨
AssignVariableOp_12AssignVariableOp assignvariableop_12_rmsprop_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13©
AssignVariableOp_13AssignVariableOp!assignvariableop_13_rmsprop_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14±
AssignVariableOp_14AssignVariableOp)assignvariableop_14_rmsprop_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¬
AssignVariableOp_15AssignVariableOp$assignvariableop_15_rmsprop_momentumIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16§
AssignVariableOp_16AssignVariableOpassignvariableop_16_rmsprop_rhoIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17¡
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¡
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19£
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20£
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21¸
AssignVariableOp_21AssignVariableOp0assignvariableop_21_rmsprop_dense_109_kernel_rmsIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22¶
AssignVariableOp_22AssignVariableOp.assignvariableop_22_rmsprop_dense_109_bias_rmsIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23¸
AssignVariableOp_23AssignVariableOp0assignvariableop_23_rmsprop_dense_110_kernel_rmsIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24¶
AssignVariableOp_24AssignVariableOp.assignvariableop_24_rmsprop_dense_110_bias_rmsIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¸
AssignVariableOp_25AssignVariableOp0assignvariableop_25_rmsprop_dense_111_kernel_rmsIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26¶
AssignVariableOp_26AssignVariableOp.assignvariableop_26_rmsprop_dense_111_bias_rmsIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¸
AssignVariableOp_27AssignVariableOp0assignvariableop_27_rmsprop_dense_112_kernel_rmsIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28¶
AssignVariableOp_28AssignVariableOp.assignvariableop_28_rmsprop_dense_112_bias_rmsIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29¸
AssignVariableOp_29AssignVariableOp0assignvariableop_29_rmsprop_dense_113_kernel_rmsIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30¶
AssignVariableOp_30AssignVariableOp.assignvariableop_30_rmsprop_dense_113_bias_rmsIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31¸
AssignVariableOp_31AssignVariableOp0assignvariableop_31_rmsprop_dense_114_kernel_rmsIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32¶
AssignVariableOp_32AssignVariableOp.assignvariableop_32_rmsprop_dense_114_bias_rmsIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_329
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp´
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_33§
Identity_34IdentityIdentity_33:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_34"#
identity_34Identity_34:output:0*
_input_shapes
: :::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_32AssignVariableOp_322(
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
	

(__inference_zuccbot_layer_call_fn_341161

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_zuccbot_layer_call_and_return_conditional_losses_3409132
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ#::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs
õ	
Þ
E__inference_dense_110_layer_call_and_return_conditional_losses_341221

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Þ

*__inference_dense_112_layer_call_fn_341270

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_112_layer_call_and_return_conditional_losses_3407722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ò	
Þ
E__inference_dense_111_layer_call_and_return_conditional_losses_341241

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ9
®
C__inference_zuccbot_layer_call_and_return_conditional_losses_341087

inputs,
(dense_109_matmul_readvariableop_resource-
)dense_109_biasadd_readvariableop_resource,
(dense_110_matmul_readvariableop_resource-
)dense_110_biasadd_readvariableop_resource,
(dense_111_matmul_readvariableop_resource-
)dense_111_biasadd_readvariableop_resource,
(dense_112_matmul_readvariableop_resource-
)dense_112_biasadd_readvariableop_resource,
(dense_113_matmul_readvariableop_resource-
)dense_113_biasadd_readvariableop_resource,
(dense_114_matmul_readvariableop_resource-
)dense_114_biasadd_readvariableop_resource
identity¢ dense_109/BiasAdd/ReadVariableOp¢dense_109/MatMul/ReadVariableOp¢ dense_110/BiasAdd/ReadVariableOp¢dense_110/MatMul/ReadVariableOp¢ dense_111/BiasAdd/ReadVariableOp¢dense_111/MatMul/ReadVariableOp¢ dense_112/BiasAdd/ReadVariableOp¢dense_112/MatMul/ReadVariableOp¢ dense_113/BiasAdd/ReadVariableOp¢dense_113/MatMul/ReadVariableOp¢ dense_114/BiasAdd/ReadVariableOp¢dense_114/MatMul/ReadVariableOp¬
dense_109/MatMul/ReadVariableOpReadVariableOp(dense_109_matmul_readvariableop_resource*
_output_shapes
:	#@*
dtype02!
dense_109/MatMul/ReadVariableOp
dense_109/MatMulMatMulinputs'dense_109/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_109/MatMulª
 dense_109/BiasAdd/ReadVariableOpReadVariableOp)dense_109_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_109/BiasAdd/ReadVariableOp©
dense_109/BiasAddBiasAdddense_109/MatMul:product:0(dense_109/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_109/BiasAddv
dense_109/ReluReludense_109/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_109/Relu¬
dense_110/MatMul/ReadVariableOpReadVariableOp(dense_110_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02!
dense_110/MatMul/ReadVariableOp¨
dense_110/MatMulMatMuldense_109/Relu:activations:0'dense_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_110/MatMul«
 dense_110/BiasAdd/ReadVariableOpReadVariableOp)dense_110_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 dense_110/BiasAdd/ReadVariableOpª
dense_110/BiasAddBiasAdddense_110/MatMul:product:0(dense_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_110/BiasAddw
dense_110/ReluReludense_110/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_110/Relu¬
dense_111/MatMul/ReadVariableOpReadVariableOp(dense_111_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02!
dense_111/MatMul/ReadVariableOp§
dense_111/MatMulMatMuldense_110/Relu:activations:0'dense_111/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_111/MatMulª
 dense_111/BiasAdd/ReadVariableOpReadVariableOp)dense_111_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_111/BiasAdd/ReadVariableOp©
dense_111/BiasAddBiasAdddense_111/MatMul:product:0(dense_111/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_111/BiasAddv
dense_111/ReluReludense_111/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_111/Relu«
dense_112/MatMul/ReadVariableOpReadVariableOp(dense_112_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02!
dense_112/MatMul/ReadVariableOp§
dense_112/MatMulMatMuldense_111/Relu:activations:0'dense_112/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_112/MatMulª
 dense_112/BiasAdd/ReadVariableOpReadVariableOp)dense_112_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 dense_112/BiasAdd/ReadVariableOp©
dense_112/BiasAddBiasAdddense_112/MatMul:product:0(dense_112/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_112/BiasAddv
dense_112/ReluReludense_112/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_112/Relu«
dense_113/MatMul/ReadVariableOpReadVariableOp(dense_113_matmul_readvariableop_resource*
_output_shapes

: *
dtype02!
dense_113/MatMul/ReadVariableOp§
dense_113/MatMulMatMuldense_112/Relu:activations:0'dense_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_113/MatMulª
 dense_113/BiasAdd/ReadVariableOpReadVariableOp)dense_113_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_113/BiasAdd/ReadVariableOp©
dense_113/BiasAddBiasAdddense_113/MatMul:product:0(dense_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_113/BiasAddv
dense_113/ReluReludense_113/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_113/Relu«
dense_114/MatMul/ReadVariableOpReadVariableOp(dense_114_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_114/MatMul/ReadVariableOp§
dense_114/MatMulMatMuldense_113/Relu:activations:0'dense_114/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_114/MatMulª
 dense_114/BiasAdd/ReadVariableOpReadVariableOp)dense_114_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_114/BiasAdd/ReadVariableOp©
dense_114/BiasAddBiasAdddense_114/MatMul:product:0(dense_114/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_114/BiasAdd
IdentityIdentitydense_114/BiasAdd:output:0!^dense_109/BiasAdd/ReadVariableOp ^dense_109/MatMul/ReadVariableOp!^dense_110/BiasAdd/ReadVariableOp ^dense_110/MatMul/ReadVariableOp!^dense_111/BiasAdd/ReadVariableOp ^dense_111/MatMul/ReadVariableOp!^dense_112/BiasAdd/ReadVariableOp ^dense_112/MatMul/ReadVariableOp!^dense_113/BiasAdd/ReadVariableOp ^dense_113/MatMul/ReadVariableOp!^dense_114/BiasAdd/ReadVariableOp ^dense_114/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ#::::::::::::2D
 dense_109/BiasAdd/ReadVariableOp dense_109/BiasAdd/ReadVariableOp2B
dense_109/MatMul/ReadVariableOpdense_109/MatMul/ReadVariableOp2D
 dense_110/BiasAdd/ReadVariableOp dense_110/BiasAdd/ReadVariableOp2B
dense_110/MatMul/ReadVariableOpdense_110/MatMul/ReadVariableOp2D
 dense_111/BiasAdd/ReadVariableOp dense_111/BiasAdd/ReadVariableOp2B
dense_111/MatMul/ReadVariableOpdense_111/MatMul/ReadVariableOp2D
 dense_112/BiasAdd/ReadVariableOp dense_112/BiasAdd/ReadVariableOp2B
dense_112/MatMul/ReadVariableOpdense_112/MatMul/ReadVariableOp2D
 dense_113/BiasAdd/ReadVariableOp dense_113/BiasAdd/ReadVariableOp2B
dense_113/MatMul/ReadVariableOpdense_113/MatMul/ReadVariableOp2D
 dense_114/BiasAdd/ReadVariableOp dense_114/BiasAdd/ReadVariableOp2B
dense_114/MatMul/ReadVariableOpdense_114/MatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs
	
Þ
E__inference_dense_114_layer_call_and_return_conditional_losses_341300

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«C
Õ	
!__inference__wrapped_model_340676
dense_109_input4
0zuccbot_dense_109_matmul_readvariableop_resource5
1zuccbot_dense_109_biasadd_readvariableop_resource4
0zuccbot_dense_110_matmul_readvariableop_resource5
1zuccbot_dense_110_biasadd_readvariableop_resource4
0zuccbot_dense_111_matmul_readvariableop_resource5
1zuccbot_dense_111_biasadd_readvariableop_resource4
0zuccbot_dense_112_matmul_readvariableop_resource5
1zuccbot_dense_112_biasadd_readvariableop_resource4
0zuccbot_dense_113_matmul_readvariableop_resource5
1zuccbot_dense_113_biasadd_readvariableop_resource4
0zuccbot_dense_114_matmul_readvariableop_resource5
1zuccbot_dense_114_biasadd_readvariableop_resource
identity¢(zuccbot/dense_109/BiasAdd/ReadVariableOp¢'zuccbot/dense_109/MatMul/ReadVariableOp¢(zuccbot/dense_110/BiasAdd/ReadVariableOp¢'zuccbot/dense_110/MatMul/ReadVariableOp¢(zuccbot/dense_111/BiasAdd/ReadVariableOp¢'zuccbot/dense_111/MatMul/ReadVariableOp¢(zuccbot/dense_112/BiasAdd/ReadVariableOp¢'zuccbot/dense_112/MatMul/ReadVariableOp¢(zuccbot/dense_113/BiasAdd/ReadVariableOp¢'zuccbot/dense_113/MatMul/ReadVariableOp¢(zuccbot/dense_114/BiasAdd/ReadVariableOp¢'zuccbot/dense_114/MatMul/ReadVariableOpÄ
'zuccbot/dense_109/MatMul/ReadVariableOpReadVariableOp0zuccbot_dense_109_matmul_readvariableop_resource*
_output_shapes
:	#@*
dtype02)
'zuccbot/dense_109/MatMul/ReadVariableOp²
zuccbot/dense_109/MatMulMatMuldense_109_input/zuccbot/dense_109/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zuccbot/dense_109/MatMulÂ
(zuccbot/dense_109/BiasAdd/ReadVariableOpReadVariableOp1zuccbot_dense_109_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(zuccbot/dense_109/BiasAdd/ReadVariableOpÉ
zuccbot/dense_109/BiasAddBiasAdd"zuccbot/dense_109/MatMul:product:00zuccbot/dense_109/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zuccbot/dense_109/BiasAdd
zuccbot/dense_109/ReluRelu"zuccbot/dense_109/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zuccbot/dense_109/ReluÄ
'zuccbot/dense_110/MatMul/ReadVariableOpReadVariableOp0zuccbot_dense_110_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02)
'zuccbot/dense_110/MatMul/ReadVariableOpÈ
zuccbot/dense_110/MatMulMatMul$zuccbot/dense_109/Relu:activations:0/zuccbot/dense_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zuccbot/dense_110/MatMulÃ
(zuccbot/dense_110/BiasAdd/ReadVariableOpReadVariableOp1zuccbot_dense_110_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02*
(zuccbot/dense_110/BiasAdd/ReadVariableOpÊ
zuccbot/dense_110/BiasAddBiasAdd"zuccbot/dense_110/MatMul:product:00zuccbot/dense_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zuccbot/dense_110/BiasAdd
zuccbot/dense_110/ReluRelu"zuccbot/dense_110/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zuccbot/dense_110/ReluÄ
'zuccbot/dense_111/MatMul/ReadVariableOpReadVariableOp0zuccbot_dense_111_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02)
'zuccbot/dense_111/MatMul/ReadVariableOpÇ
zuccbot/dense_111/MatMulMatMul$zuccbot/dense_110/Relu:activations:0/zuccbot/dense_111/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zuccbot/dense_111/MatMulÂ
(zuccbot/dense_111/BiasAdd/ReadVariableOpReadVariableOp1zuccbot_dense_111_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(zuccbot/dense_111/BiasAdd/ReadVariableOpÉ
zuccbot/dense_111/BiasAddBiasAdd"zuccbot/dense_111/MatMul:product:00zuccbot/dense_111/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zuccbot/dense_111/BiasAdd
zuccbot/dense_111/ReluRelu"zuccbot/dense_111/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
zuccbot/dense_111/ReluÃ
'zuccbot/dense_112/MatMul/ReadVariableOpReadVariableOp0zuccbot_dense_112_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02)
'zuccbot/dense_112/MatMul/ReadVariableOpÇ
zuccbot/dense_112/MatMulMatMul$zuccbot/dense_111/Relu:activations:0/zuccbot/dense_112/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
zuccbot/dense_112/MatMulÂ
(zuccbot/dense_112/BiasAdd/ReadVariableOpReadVariableOp1zuccbot_dense_112_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(zuccbot/dense_112/BiasAdd/ReadVariableOpÉ
zuccbot/dense_112/BiasAddBiasAdd"zuccbot/dense_112/MatMul:product:00zuccbot/dense_112/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
zuccbot/dense_112/BiasAdd
zuccbot/dense_112/ReluRelu"zuccbot/dense_112/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
zuccbot/dense_112/ReluÃ
'zuccbot/dense_113/MatMul/ReadVariableOpReadVariableOp0zuccbot_dense_113_matmul_readvariableop_resource*
_output_shapes

: *
dtype02)
'zuccbot/dense_113/MatMul/ReadVariableOpÇ
zuccbot/dense_113/MatMulMatMul$zuccbot/dense_112/Relu:activations:0/zuccbot/dense_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zuccbot/dense_113/MatMulÂ
(zuccbot/dense_113/BiasAdd/ReadVariableOpReadVariableOp1zuccbot_dense_113_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(zuccbot/dense_113/BiasAdd/ReadVariableOpÉ
zuccbot/dense_113/BiasAddBiasAdd"zuccbot/dense_113/MatMul:product:00zuccbot/dense_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zuccbot/dense_113/BiasAdd
zuccbot/dense_113/ReluRelu"zuccbot/dense_113/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zuccbot/dense_113/ReluÃ
'zuccbot/dense_114/MatMul/ReadVariableOpReadVariableOp0zuccbot_dense_114_matmul_readvariableop_resource*
_output_shapes

:*
dtype02)
'zuccbot/dense_114/MatMul/ReadVariableOpÇ
zuccbot/dense_114/MatMulMatMul$zuccbot/dense_113/Relu:activations:0/zuccbot/dense_114/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zuccbot/dense_114/MatMulÂ
(zuccbot/dense_114/BiasAdd/ReadVariableOpReadVariableOp1zuccbot_dense_114_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(zuccbot/dense_114/BiasAdd/ReadVariableOpÉ
zuccbot/dense_114/BiasAddBiasAdd"zuccbot/dense_114/MatMul:product:00zuccbot/dense_114/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
zuccbot/dense_114/BiasAddô
IdentityIdentity"zuccbot/dense_114/BiasAdd:output:0)^zuccbot/dense_109/BiasAdd/ReadVariableOp(^zuccbot/dense_109/MatMul/ReadVariableOp)^zuccbot/dense_110/BiasAdd/ReadVariableOp(^zuccbot/dense_110/MatMul/ReadVariableOp)^zuccbot/dense_111/BiasAdd/ReadVariableOp(^zuccbot/dense_111/MatMul/ReadVariableOp)^zuccbot/dense_112/BiasAdd/ReadVariableOp(^zuccbot/dense_112/MatMul/ReadVariableOp)^zuccbot/dense_113/BiasAdd/ReadVariableOp(^zuccbot/dense_113/MatMul/ReadVariableOp)^zuccbot/dense_114/BiasAdd/ReadVariableOp(^zuccbot/dense_114/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ#::::::::::::2T
(zuccbot/dense_109/BiasAdd/ReadVariableOp(zuccbot/dense_109/BiasAdd/ReadVariableOp2R
'zuccbot/dense_109/MatMul/ReadVariableOp'zuccbot/dense_109/MatMul/ReadVariableOp2T
(zuccbot/dense_110/BiasAdd/ReadVariableOp(zuccbot/dense_110/BiasAdd/ReadVariableOp2R
'zuccbot/dense_110/MatMul/ReadVariableOp'zuccbot/dense_110/MatMul/ReadVariableOp2T
(zuccbot/dense_111/BiasAdd/ReadVariableOp(zuccbot/dense_111/BiasAdd/ReadVariableOp2R
'zuccbot/dense_111/MatMul/ReadVariableOp'zuccbot/dense_111/MatMul/ReadVariableOp2T
(zuccbot/dense_112/BiasAdd/ReadVariableOp(zuccbot/dense_112/BiasAdd/ReadVariableOp2R
'zuccbot/dense_112/MatMul/ReadVariableOp'zuccbot/dense_112/MatMul/ReadVariableOp2T
(zuccbot/dense_113/BiasAdd/ReadVariableOp(zuccbot/dense_113/BiasAdd/ReadVariableOp2R
'zuccbot/dense_113/MatMul/ReadVariableOp'zuccbot/dense_113/MatMul/ReadVariableOp2T
(zuccbot/dense_114/BiasAdd/ReadVariableOp(zuccbot/dense_114/BiasAdd/ReadVariableOp2R
'zuccbot/dense_114/MatMul/ReadVariableOp'zuccbot/dense_114/MatMul/ReadVariableOp:Y U
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
)
_user_specified_namedense_109_input
µ9
®
C__inference_zuccbot_layer_call_and_return_conditional_losses_341132

inputs,
(dense_109_matmul_readvariableop_resource-
)dense_109_biasadd_readvariableop_resource,
(dense_110_matmul_readvariableop_resource-
)dense_110_biasadd_readvariableop_resource,
(dense_111_matmul_readvariableop_resource-
)dense_111_biasadd_readvariableop_resource,
(dense_112_matmul_readvariableop_resource-
)dense_112_biasadd_readvariableop_resource,
(dense_113_matmul_readvariableop_resource-
)dense_113_biasadd_readvariableop_resource,
(dense_114_matmul_readvariableop_resource-
)dense_114_biasadd_readvariableop_resource
identity¢ dense_109/BiasAdd/ReadVariableOp¢dense_109/MatMul/ReadVariableOp¢ dense_110/BiasAdd/ReadVariableOp¢dense_110/MatMul/ReadVariableOp¢ dense_111/BiasAdd/ReadVariableOp¢dense_111/MatMul/ReadVariableOp¢ dense_112/BiasAdd/ReadVariableOp¢dense_112/MatMul/ReadVariableOp¢ dense_113/BiasAdd/ReadVariableOp¢dense_113/MatMul/ReadVariableOp¢ dense_114/BiasAdd/ReadVariableOp¢dense_114/MatMul/ReadVariableOp¬
dense_109/MatMul/ReadVariableOpReadVariableOp(dense_109_matmul_readvariableop_resource*
_output_shapes
:	#@*
dtype02!
dense_109/MatMul/ReadVariableOp
dense_109/MatMulMatMulinputs'dense_109/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_109/MatMulª
 dense_109/BiasAdd/ReadVariableOpReadVariableOp)dense_109_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_109/BiasAdd/ReadVariableOp©
dense_109/BiasAddBiasAdddense_109/MatMul:product:0(dense_109/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_109/BiasAddv
dense_109/ReluReludense_109/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_109/Relu¬
dense_110/MatMul/ReadVariableOpReadVariableOp(dense_110_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02!
dense_110/MatMul/ReadVariableOp¨
dense_110/MatMulMatMuldense_109/Relu:activations:0'dense_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_110/MatMul«
 dense_110/BiasAdd/ReadVariableOpReadVariableOp)dense_110_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 dense_110/BiasAdd/ReadVariableOpª
dense_110/BiasAddBiasAdddense_110/MatMul:product:0(dense_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_110/BiasAddw
dense_110/ReluReludense_110/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_110/Relu¬
dense_111/MatMul/ReadVariableOpReadVariableOp(dense_111_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02!
dense_111/MatMul/ReadVariableOp§
dense_111/MatMulMatMuldense_110/Relu:activations:0'dense_111/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_111/MatMulª
 dense_111/BiasAdd/ReadVariableOpReadVariableOp)dense_111_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_111/BiasAdd/ReadVariableOp©
dense_111/BiasAddBiasAdddense_111/MatMul:product:0(dense_111/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_111/BiasAddv
dense_111/ReluReludense_111/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_111/Relu«
dense_112/MatMul/ReadVariableOpReadVariableOp(dense_112_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02!
dense_112/MatMul/ReadVariableOp§
dense_112/MatMulMatMuldense_111/Relu:activations:0'dense_112/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_112/MatMulª
 dense_112/BiasAdd/ReadVariableOpReadVariableOp)dense_112_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 dense_112/BiasAdd/ReadVariableOp©
dense_112/BiasAddBiasAdddense_112/MatMul:product:0(dense_112/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_112/BiasAddv
dense_112/ReluReludense_112/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
dense_112/Relu«
dense_113/MatMul/ReadVariableOpReadVariableOp(dense_113_matmul_readvariableop_resource*
_output_shapes

: *
dtype02!
dense_113/MatMul/ReadVariableOp§
dense_113/MatMulMatMuldense_112/Relu:activations:0'dense_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_113/MatMulª
 dense_113/BiasAdd/ReadVariableOpReadVariableOp)dense_113_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_113/BiasAdd/ReadVariableOp©
dense_113/BiasAddBiasAdddense_113/MatMul:product:0(dense_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_113/BiasAddv
dense_113/ReluReludense_113/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_113/Relu«
dense_114/MatMul/ReadVariableOpReadVariableOp(dense_114_matmul_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_114/MatMul/ReadVariableOp§
dense_114/MatMulMatMuldense_113/Relu:activations:0'dense_114/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_114/MatMulª
 dense_114/BiasAdd/ReadVariableOpReadVariableOp)dense_114_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_114/BiasAdd/ReadVariableOp©
dense_114/BiasAddBiasAdddense_114/MatMul:product:0(dense_114/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_114/BiasAdd
IdentityIdentitydense_114/BiasAdd:output:0!^dense_109/BiasAdd/ReadVariableOp ^dense_109/MatMul/ReadVariableOp!^dense_110/BiasAdd/ReadVariableOp ^dense_110/MatMul/ReadVariableOp!^dense_111/BiasAdd/ReadVariableOp ^dense_111/MatMul/ReadVariableOp!^dense_112/BiasAdd/ReadVariableOp ^dense_112/MatMul/ReadVariableOp!^dense_113/BiasAdd/ReadVariableOp ^dense_113/MatMul/ReadVariableOp!^dense_114/BiasAdd/ReadVariableOp ^dense_114/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ#::::::::::::2D
 dense_109/BiasAdd/ReadVariableOp dense_109/BiasAdd/ReadVariableOp2B
dense_109/MatMul/ReadVariableOpdense_109/MatMul/ReadVariableOp2D
 dense_110/BiasAdd/ReadVariableOp dense_110/BiasAdd/ReadVariableOp2B
dense_110/MatMul/ReadVariableOpdense_110/MatMul/ReadVariableOp2D
 dense_111/BiasAdd/ReadVariableOp dense_111/BiasAdd/ReadVariableOp2B
dense_111/MatMul/ReadVariableOpdense_111/MatMul/ReadVariableOp2D
 dense_112/BiasAdd/ReadVariableOp dense_112/BiasAdd/ReadVariableOp2B
dense_112/MatMul/ReadVariableOpdense_112/MatMul/ReadVariableOp2D
 dense_113/BiasAdd/ReadVariableOp dense_113/BiasAdd/ReadVariableOp2B
dense_113/MatMul/ReadVariableOpdense_113/MatMul/ReadVariableOp2D
 dense_114/BiasAdd/ReadVariableOp dense_114/BiasAdd/ReadVariableOp2B
dense_114/MatMul/ReadVariableOpdense_114/MatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs
	
Þ
E__inference_dense_114_layer_call_and_return_conditional_losses_340825

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à

*__inference_dense_111_layer_call_fn_341250

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_111_layer_call_and_return_conditional_losses_3407452
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò	
Þ
E__inference_dense_109_layer_call_and_return_conditional_losses_340691

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	#@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ#::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs
	

$__inference_signature_wrapper_341042
dense_109_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCalldense_109_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_3406762
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ#::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
)
_user_specified_namedense_109_input
õ	
Þ
E__inference_dense_110_layer_call_and_return_conditional_losses_340718

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
	

(__inference_zuccbot_layer_call_fn_341190

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_zuccbot_layer_call_and_return_conditional_losses_3409762
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ#::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs
ò	
Þ
E__inference_dense_109_layer_call_and_return_conditional_losses_341201

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	#@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ#::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs
º	

(__inference_zuccbot_layer_call_fn_340940
dense_109_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCalldense_109_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_zuccbot_layer_call_and_return_conditional_losses_3409132
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ#::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
)
_user_specified_namedense_109_input
ï	
Þ
E__inference_dense_113_layer_call_and_return_conditional_losses_341281

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ï	
Þ
E__inference_dense_112_layer_call_and_return_conditional_losses_340772

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
à

*__inference_dense_110_layer_call_fn_341230

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_110_layer_call_and_return_conditional_losses_3407182
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Þ

*__inference_dense_113_layer_call_fn_341290

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_113_layer_call_and_return_conditional_losses_3407992
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Þ

*__inference_dense_114_layer_call_fn_341309

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_114_layer_call_and_return_conditional_losses_3408252
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò	
Þ
E__inference_dense_111_layer_call_and_return_conditional_losses_340745

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
!
Ë
C__inference_zuccbot_layer_call_and_return_conditional_losses_340842
dense_109_input
dense_109_340702
dense_109_340704
dense_110_340729
dense_110_340731
dense_111_340756
dense_111_340758
dense_112_340783
dense_112_340785
dense_113_340810
dense_113_340812
dense_114_340836
dense_114_340838
identity¢!dense_109/StatefulPartitionedCall¢!dense_110/StatefulPartitionedCall¢!dense_111/StatefulPartitionedCall¢!dense_112/StatefulPartitionedCall¢!dense_113/StatefulPartitionedCall¢!dense_114/StatefulPartitionedCall¢
!dense_109/StatefulPartitionedCallStatefulPartitionedCalldense_109_inputdense_109_340702dense_109_340704*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_109_layer_call_and_return_conditional_losses_3406912#
!dense_109/StatefulPartitionedCall¾
!dense_110/StatefulPartitionedCallStatefulPartitionedCall*dense_109/StatefulPartitionedCall:output:0dense_110_340729dense_110_340731*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_110_layer_call_and_return_conditional_losses_3407182#
!dense_110/StatefulPartitionedCall½
!dense_111/StatefulPartitionedCallStatefulPartitionedCall*dense_110/StatefulPartitionedCall:output:0dense_111_340756dense_111_340758*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_111_layer_call_and_return_conditional_losses_3407452#
!dense_111/StatefulPartitionedCall½
!dense_112/StatefulPartitionedCallStatefulPartitionedCall*dense_111/StatefulPartitionedCall:output:0dense_112_340783dense_112_340785*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_112_layer_call_and_return_conditional_losses_3407722#
!dense_112/StatefulPartitionedCall½
!dense_113/StatefulPartitionedCallStatefulPartitionedCall*dense_112/StatefulPartitionedCall:output:0dense_113_340810dense_113_340812*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_113_layer_call_and_return_conditional_losses_3407992#
!dense_113/StatefulPartitionedCall½
!dense_114/StatefulPartitionedCallStatefulPartitionedCall*dense_113/StatefulPartitionedCall:output:0dense_114_340836dense_114_340838*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_114_layer_call_and_return_conditional_losses_3408252#
!dense_114/StatefulPartitionedCallÖ
IdentityIdentity*dense_114/StatefulPartitionedCall:output:0"^dense_109/StatefulPartitionedCall"^dense_110/StatefulPartitionedCall"^dense_111/StatefulPartitionedCall"^dense_112/StatefulPartitionedCall"^dense_113/StatefulPartitionedCall"^dense_114/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ#::::::::::::2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2F
!dense_111/StatefulPartitionedCall!dense_111/StatefulPartitionedCall2F
!dense_112/StatefulPartitionedCall!dense_112/StatefulPartitionedCall2F
!dense_113/StatefulPartitionedCall!dense_113/StatefulPartitionedCall2F
!dense_114/StatefulPartitionedCall!dense_114/StatefulPartitionedCall:Y U
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
)
_user_specified_namedense_109_input
H

__inference__traced_save_341431
file_prefix/
+savev2_dense_109_kernel_read_readvariableop-
)savev2_dense_109_bias_read_readvariableop/
+savev2_dense_110_kernel_read_readvariableop-
)savev2_dense_110_bias_read_readvariableop/
+savev2_dense_111_kernel_read_readvariableop-
)savev2_dense_111_bias_read_readvariableop/
+savev2_dense_112_kernel_read_readvariableop-
)savev2_dense_112_bias_read_readvariableop/
+savev2_dense_113_kernel_read_readvariableop-
)savev2_dense_113_bias_read_readvariableop/
+savev2_dense_114_kernel_read_readvariableop-
)savev2_dense_114_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop;
7savev2_rmsprop_dense_109_kernel_rms_read_readvariableop9
5savev2_rmsprop_dense_109_bias_rms_read_readvariableop;
7savev2_rmsprop_dense_110_kernel_rms_read_readvariableop9
5savev2_rmsprop_dense_110_bias_rms_read_readvariableop;
7savev2_rmsprop_dense_111_kernel_rms_read_readvariableop9
5savev2_rmsprop_dense_111_bias_rms_read_readvariableop;
7savev2_rmsprop_dense_112_kernel_rms_read_readvariableop9
5savev2_rmsprop_dense_112_bias_rms_read_readvariableop;
7savev2_rmsprop_dense_113_kernel_rms_read_readvariableop9
5savev2_rmsprop_dense_113_bias_rms_read_readvariableop;
7savev2_rmsprop_dense_114_kernel_rms_read_readvariableop9
5savev2_rmsprop_dense_114_bias_rms_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
Const_1
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameí
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*ÿ
valueõBò"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÌ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesñ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_109_kernel_read_readvariableop)savev2_dense_109_bias_read_readvariableop+savev2_dense_110_kernel_read_readvariableop)savev2_dense_110_bias_read_readvariableop+savev2_dense_111_kernel_read_readvariableop)savev2_dense_111_bias_read_readvariableop+savev2_dense_112_kernel_read_readvariableop)savev2_dense_112_bias_read_readvariableop+savev2_dense_113_kernel_read_readvariableop)savev2_dense_113_bias_read_readvariableop+savev2_dense_114_kernel_read_readvariableop)savev2_dense_114_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop7savev2_rmsprop_dense_109_kernel_rms_read_readvariableop5savev2_rmsprop_dense_109_bias_rms_read_readvariableop7savev2_rmsprop_dense_110_kernel_rms_read_readvariableop5savev2_rmsprop_dense_110_bias_rms_read_readvariableop7savev2_rmsprop_dense_111_kernel_rms_read_readvariableop5savev2_rmsprop_dense_111_bias_rms_read_readvariableop7savev2_rmsprop_dense_112_kernel_rms_read_readvariableop5savev2_rmsprop_dense_112_bias_rms_read_readvariableop7savev2_rmsprop_dense_113_kernel_rms_read_readvariableop5savev2_rmsprop_dense_113_bias_rms_read_readvariableop7savev2_rmsprop_dense_114_kernel_rms_read_readvariableop5savev2_rmsprop_dense_114_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*ó
_input_shapesá
Þ: :	#@:@:	@::	@:@:@ : : :::: : : : : : : : : :	#@:@:	@::	@:@:@ : : :::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	#@: 

_output_shapes
:@:%!

_output_shapes
:	@:!

_output_shapes	
::%!

_output_shapes
:	@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$	 

_output_shapes

: : 


_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	#@: 

_output_shapes
:@:%!

_output_shapes
:	@:!

_output_shapes	
::%!

_output_shapes
:	@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$  

_output_shapes

:: !

_output_shapes
::"

_output_shapes
: 
!
Ë
C__inference_zuccbot_layer_call_and_return_conditional_losses_340876
dense_109_input
dense_109_340845
dense_109_340847
dense_110_340850
dense_110_340852
dense_111_340855
dense_111_340857
dense_112_340860
dense_112_340862
dense_113_340865
dense_113_340867
dense_114_340870
dense_114_340872
identity¢!dense_109/StatefulPartitionedCall¢!dense_110/StatefulPartitionedCall¢!dense_111/StatefulPartitionedCall¢!dense_112/StatefulPartitionedCall¢!dense_113/StatefulPartitionedCall¢!dense_114/StatefulPartitionedCall¢
!dense_109/StatefulPartitionedCallStatefulPartitionedCalldense_109_inputdense_109_340845dense_109_340847*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_109_layer_call_and_return_conditional_losses_3406912#
!dense_109/StatefulPartitionedCall¾
!dense_110/StatefulPartitionedCallStatefulPartitionedCall*dense_109/StatefulPartitionedCall:output:0dense_110_340850dense_110_340852*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_110_layer_call_and_return_conditional_losses_3407182#
!dense_110/StatefulPartitionedCall½
!dense_111/StatefulPartitionedCallStatefulPartitionedCall*dense_110/StatefulPartitionedCall:output:0dense_111_340855dense_111_340857*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_111_layer_call_and_return_conditional_losses_3407452#
!dense_111/StatefulPartitionedCall½
!dense_112/StatefulPartitionedCallStatefulPartitionedCall*dense_111/StatefulPartitionedCall:output:0dense_112_340860dense_112_340862*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_112_layer_call_and_return_conditional_losses_3407722#
!dense_112/StatefulPartitionedCall½
!dense_113/StatefulPartitionedCallStatefulPartitionedCall*dense_112/StatefulPartitionedCall:output:0dense_113_340865dense_113_340867*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_113_layer_call_and_return_conditional_losses_3407992#
!dense_113/StatefulPartitionedCall½
!dense_114/StatefulPartitionedCallStatefulPartitionedCall*dense_113/StatefulPartitionedCall:output:0dense_114_340870dense_114_340872*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_114_layer_call_and_return_conditional_losses_3408252#
!dense_114/StatefulPartitionedCallÖ
IdentityIdentity*dense_114/StatefulPartitionedCall:output:0"^dense_109/StatefulPartitionedCall"^dense_110/StatefulPartitionedCall"^dense_111/StatefulPartitionedCall"^dense_112/StatefulPartitionedCall"^dense_113/StatefulPartitionedCall"^dense_114/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ#::::::::::::2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2F
!dense_111/StatefulPartitionedCall!dense_111/StatefulPartitionedCall2F
!dense_112/StatefulPartitionedCall!dense_112/StatefulPartitionedCall2F
!dense_113/StatefulPartitionedCall!dense_113/StatefulPartitionedCall2F
!dense_114/StatefulPartitionedCall!dense_114/StatefulPartitionedCall:Y U
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
)
_user_specified_namedense_109_input
ï	
Þ
E__inference_dense_113_layer_call_and_return_conditional_losses_340799

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
õ 
Â
C__inference_zuccbot_layer_call_and_return_conditional_losses_340913

inputs
dense_109_340882
dense_109_340884
dense_110_340887
dense_110_340889
dense_111_340892
dense_111_340894
dense_112_340897
dense_112_340899
dense_113_340902
dense_113_340904
dense_114_340907
dense_114_340909
identity¢!dense_109/StatefulPartitionedCall¢!dense_110/StatefulPartitionedCall¢!dense_111/StatefulPartitionedCall¢!dense_112/StatefulPartitionedCall¢!dense_113/StatefulPartitionedCall¢!dense_114/StatefulPartitionedCall
!dense_109/StatefulPartitionedCallStatefulPartitionedCallinputsdense_109_340882dense_109_340884*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_109_layer_call_and_return_conditional_losses_3406912#
!dense_109/StatefulPartitionedCall¾
!dense_110/StatefulPartitionedCallStatefulPartitionedCall*dense_109/StatefulPartitionedCall:output:0dense_110_340887dense_110_340889*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_110_layer_call_and_return_conditional_losses_3407182#
!dense_110/StatefulPartitionedCall½
!dense_111/StatefulPartitionedCallStatefulPartitionedCall*dense_110/StatefulPartitionedCall:output:0dense_111_340892dense_111_340894*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_111_layer_call_and_return_conditional_losses_3407452#
!dense_111/StatefulPartitionedCall½
!dense_112/StatefulPartitionedCallStatefulPartitionedCall*dense_111/StatefulPartitionedCall:output:0dense_112_340897dense_112_340899*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_112_layer_call_and_return_conditional_losses_3407722#
!dense_112/StatefulPartitionedCall½
!dense_113/StatefulPartitionedCallStatefulPartitionedCall*dense_112/StatefulPartitionedCall:output:0dense_113_340902dense_113_340904*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_113_layer_call_and_return_conditional_losses_3407992#
!dense_113/StatefulPartitionedCall½
!dense_114/StatefulPartitionedCallStatefulPartitionedCall*dense_113/StatefulPartitionedCall:output:0dense_114_340907dense_114_340909*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_114_layer_call_and_return_conditional_losses_3408252#
!dense_114/StatefulPartitionedCallÖ
IdentityIdentity*dense_114/StatefulPartitionedCall:output:0"^dense_109/StatefulPartitionedCall"^dense_110/StatefulPartitionedCall"^dense_111/StatefulPartitionedCall"^dense_112/StatefulPartitionedCall"^dense_113/StatefulPartitionedCall"^dense_114/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*W
_input_shapesF
D:ÿÿÿÿÿÿÿÿÿ#::::::::::::2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2F
!dense_111/StatefulPartitionedCall!dense_111/StatefulPartitionedCall2F
!dense_112/StatefulPartitionedCall!dense_112/StatefulPartitionedCall2F
!dense_113/StatefulPartitionedCall!dense_113/StatefulPartitionedCall2F
!dense_114/StatefulPartitionedCall!dense_114/StatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ#
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*½
serving_default©
L
dense_109_input9
!serving_default_dense_109_input:0ÿÿÿÿÿÿÿÿÿ#=
	dense_1140
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:µÔ
þ6
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
	optimizer
regularization_losses
		variables

trainable_variables
	keras_api

signatures
*p&call_and_return_all_conditional_losses
q__call__
r_default_save_signature"É3
_tf_keras_sequentialª3{"class_name": "Sequential", "name": "zuccbot", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "zuccbot", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4494]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_109_input"}}, {"class_name": "Dense", "config": {"name": "dense_109", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_110", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_111", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_112", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_113", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_114", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4494}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4494]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "zuccbot", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 4494]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_109_input"}}, {"class_name": "Dense", "config": {"name": "dense_109", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_110", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_111", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_112", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_113", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_114", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "mean_squared_error", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.0010000000474974513, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}
ø

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
*s&call_and_return_all_conditional_losses
t__call__"Ó
_tf_keras_layer¹{"class_name": "Dense", "name": "dense_109", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_109", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4494}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4494]}}
õ

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
*u&call_and_return_all_conditional_losses
v__call__"Ð
_tf_keras_layer¶{"class_name": "Dense", "name": "dense_110", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_110", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
ö

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
*w&call_and_return_all_conditional_losses
x__call__"Ñ
_tf_keras_layer·{"class_name": "Dense", "name": "dense_111", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_111", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
ô

kernel
 bias
!regularization_losses
"	variables
#trainable_variables
$	keras_api
*y&call_and_return_all_conditional_losses
z__call__"Ï
_tf_keras_layerµ{"class_name": "Dense", "name": "dense_112", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_112", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
ô

%kernel
&bias
'regularization_losses
(	variables
)trainable_variables
*	keras_api
*{&call_and_return_all_conditional_losses
|__call__"Ï
_tf_keras_layerµ{"class_name": "Dense", "name": "dense_113", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_113", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
õ

+kernel
,bias
-regularization_losses
.	variables
/trainable_variables
0	keras_api
*}&call_and_return_all_conditional_losses
~__call__"Ð
_tf_keras_layer¶{"class_name": "Dense", "name": "dense_114", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_114", "trainable": true, "dtype": "float32", "units": 3, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
Ö
1iter
	2decay
3learning_rate
4momentum
5rho	rmsd	rmse	rmsf	rmsg	rmsh	rmsi	rmsj	 rmsk	%rmsl	&rmsm	+rmsn	,rmso"
	optimizer
 "
trackable_list_wrapper
v
0
1
2
3
4
5
6
 7
%8
&9
+10
,11"
trackable_list_wrapper
v
0
1
2
3
4
5
6
 7
%8
&9
+10
,11"
trackable_list_wrapper
Ê

6layers
7non_trainable_variables
regularization_losses
8layer_metrics
9layer_regularization_losses
		variables

trainable_variables
:metrics
q__call__
r_default_save_signature
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
,
serving_default"
signature_map
#:!	#@2dense_109/kernel
:@2dense_109/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­

;layers
<non_trainable_variables
regularization_losses
=layer_metrics
>layer_regularization_losses
	variables
trainable_variables
?metrics
t__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
#:!	@2dense_110/kernel
:2dense_110/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­

@layers
Anon_trainable_variables
regularization_losses
Blayer_metrics
Clayer_regularization_losses
	variables
trainable_variables
Dmetrics
v__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
#:!	@2dense_111/kernel
:@2dense_111/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­

Elayers
Fnon_trainable_variables
regularization_losses
Glayer_metrics
Hlayer_regularization_losses
	variables
trainable_variables
Imetrics
x__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
": @ 2dense_112/kernel
: 2dense_112/bias
 "
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
­

Jlayers
Knon_trainable_variables
!regularization_losses
Llayer_metrics
Mlayer_regularization_losses
"	variables
#trainable_variables
Nmetrics
z__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
":  2dense_113/kernel
:2dense_113/bias
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
­

Olayers
Pnon_trainable_variables
'regularization_losses
Qlayer_metrics
Rlayer_regularization_losses
(	variables
)trainable_variables
Smetrics
|__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
": 2dense_114/kernel
:2dense_114/bias
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
­

Tlayers
Unon_trainable_variables
-regularization_losses
Vlayer_metrics
Wlayer_regularization_losses
.	variables
/trainable_variables
Xmetrics
~__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
Y0
Z1"
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
»
	[total
	\count
]	variables
^	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
ÿ
	_total
	`count
a
_fn_kwargs
b	variables
c	keras_api"¸
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
.
[0
\1"
trackable_list_wrapper
-
]	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
_0
`1"
trackable_list_wrapper
-
b	variables"
_generic_user_object
-:+	#@2RMSprop/dense_109/kernel/rms
&:$@2RMSprop/dense_109/bias/rms
-:+	@2RMSprop/dense_110/kernel/rms
':%2RMSprop/dense_110/bias/rms
-:+	@2RMSprop/dense_111/kernel/rms
&:$@2RMSprop/dense_111/bias/rms
,:*@ 2RMSprop/dense_112/kernel/rms
&:$ 2RMSprop/dense_112/bias/rms
,:* 2RMSprop/dense_113/kernel/rms
&:$2RMSprop/dense_113/bias/rms
,:*2RMSprop/dense_114/kernel/rms
&:$2RMSprop/dense_114/bias/rms
Ú2×
C__inference_zuccbot_layer_call_and_return_conditional_losses_341087
C__inference_zuccbot_layer_call_and_return_conditional_losses_341132
C__inference_zuccbot_layer_call_and_return_conditional_losses_340876
C__inference_zuccbot_layer_call_and_return_conditional_losses_340842À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
(__inference_zuccbot_layer_call_fn_341161
(__inference_zuccbot_layer_call_fn_341003
(__inference_zuccbot_layer_call_fn_340940
(__inference_zuccbot_layer_call_fn_341190À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
è2å
!__inference__wrapped_model_340676¿
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª */¢,
*'
dense_109_inputÿÿÿÿÿÿÿÿÿ#
ï2ì
E__inference_dense_109_layer_call_and_return_conditional_losses_341201¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ô2Ñ
*__inference_dense_109_layer_call_fn_341210¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_dense_110_layer_call_and_return_conditional_losses_341221¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ô2Ñ
*__inference_dense_110_layer_call_fn_341230¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_dense_111_layer_call_and_return_conditional_losses_341241¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ô2Ñ
*__inference_dense_111_layer_call_fn_341250¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_dense_112_layer_call_and_return_conditional_losses_341261¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ô2Ñ
*__inference_dense_112_layer_call_fn_341270¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_dense_113_layer_call_and_return_conditional_losses_341281¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ô2Ñ
*__inference_dense_113_layer_call_fn_341290¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_dense_114_layer_call_and_return_conditional_losses_341300¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ô2Ñ
*__inference_dense_114_layer_call_fn_341309¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÓBÐ
$__inference_signature_wrapper_341042dense_109_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ¦
!__inference__wrapped_model_340676 %&+,9¢6
/¢,
*'
dense_109_inputÿÿÿÿÿÿÿÿÿ#
ª "5ª2
0
	dense_114# 
	dense_114ÿÿÿÿÿÿÿÿÿ¦
E__inference_dense_109_layer_call_and_return_conditional_losses_341201]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ#
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ~
*__inference_dense_109_layer_call_fn_341210P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ#
ª "ÿÿÿÿÿÿÿÿÿ@¦
E__inference_dense_110_layer_call_and_return_conditional_losses_341221]/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ~
*__inference_dense_110_layer_call_fn_341230P/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ¦
E__inference_dense_111_layer_call_and_return_conditional_losses_341241]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ~
*__inference_dense_111_layer_call_fn_341250P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@¥
E__inference_dense_112_layer_call_and_return_conditional_losses_341261\ /¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 }
*__inference_dense_112_layer_call_fn_341270O /¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ ¥
E__inference_dense_113_layer_call_and_return_conditional_losses_341281\%&/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_113_layer_call_fn_341290O%&/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ¥
E__inference_dense_114_layer_call_and_return_conditional_losses_341300\+,/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_114_layer_call_fn_341309O+,/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¼
$__inference_signature_wrapper_341042 %&+,L¢I
¢ 
Bª?
=
dense_109_input*'
dense_109_inputÿÿÿÿÿÿÿÿÿ#"5ª2
0
	dense_114# 
	dense_114ÿÿÿÿÿÿÿÿÿ¿
C__inference_zuccbot_layer_call_and_return_conditional_losses_340842x %&+,A¢>
7¢4
*'
dense_109_inputÿÿÿÿÿÿÿÿÿ#
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¿
C__inference_zuccbot_layer_call_and_return_conditional_losses_340876x %&+,A¢>
7¢4
*'
dense_109_inputÿÿÿÿÿÿÿÿÿ#
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¶
C__inference_zuccbot_layer_call_and_return_conditional_losses_341087o %&+,8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ#
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¶
C__inference_zuccbot_layer_call_and_return_conditional_losses_341132o %&+,8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ#
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
(__inference_zuccbot_layer_call_fn_340940k %&+,A¢>
7¢4
*'
dense_109_inputÿÿÿÿÿÿÿÿÿ#
p

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_zuccbot_layer_call_fn_341003k %&+,A¢>
7¢4
*'
dense_109_inputÿÿÿÿÿÿÿÿÿ#
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_zuccbot_layer_call_fn_341161b %&+,8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ#
p

 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_zuccbot_layer_call_fn_341190b %&+,8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ#
p 

 
ª "ÿÿÿÿÿÿÿÿÿ