лЪ
Хф
.
Abs
x"T
y"T"
Ttype:

2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
Ы
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
В
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
0
Sigmoid
x"T
y"T"
Ttype:

2
┴
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
executor_typestring Ии
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58 ┤
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
~
Adam/v/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_2/bias
w
'Adam/v/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_2/bias
w
'Adam/m/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/bias*
_output_shapes
:*
dtype0
З
Adam/v/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/v/dense_2/kernel
А
)Adam/v/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/kernel*
_output_shapes
:	А*
dtype0
З
Adam/m/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/m/dense_2/kernel
А
)Adam/m/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/kernel*
_output_shapes
:	А*
dtype0

Adam/v/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/v/dense_1/bias
x
'Adam/v/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/bias*
_output_shapes	
:А*
dtype0

Adam/m/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/m/dense_1/bias
x
'Adam/m/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/bias*
_output_shapes	
:А*
dtype0
И
Adam/v/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*&
shared_nameAdam/v/dense_1/kernel
Б
)Adam/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/kernel* 
_output_shapes
:
АА*
dtype0
И
Adam/m/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*&
shared_nameAdam/m/dense_1/kernel
Б
)Adam/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/kernel* 
_output_shapes
:
АА*
dtype0
{
Adam/v/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameAdam/v/dense/bias
t
%Adam/v/dense/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense/bias*
_output_shapes	
:А*
dtype0
{
Adam/m/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*"
shared_nameAdam/m/dense/bias
t
%Adam/m/dense/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense/bias*
_output_shapes	
:А*
dtype0
Д
Adam/v/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*$
shared_nameAdam/v/dense/kernel
}
'Adam/v/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense/kernel* 
_output_shapes
:
АА*
dtype0
Д
Adam/m/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*$
shared_nameAdam/m/dense/kernel
}
'Adam/m/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense/kernel* 
_output_shapes
:
АА*
dtype0
Б
Adam/v/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/v/conv2d_3/bias
z
(Adam/v/conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_3/bias*
_output_shapes	
:А*
dtype0
Б
Adam/m/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/m/conv2d_3/bias
z
(Adam/m/conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_3/bias*
_output_shapes	
:А*
dtype0
С
Adam/v/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*'
shared_nameAdam/v/conv2d_3/kernel
К
*Adam/v/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_3/kernel*'
_output_shapes
:@А*
dtype0
С
Adam/m/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*'
shared_nameAdam/m/conv2d_3/kernel
К
*Adam/m/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_3/kernel*'
_output_shapes
:@А*
dtype0
А
Adam/v/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_2/bias
y
(Adam/v/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/bias*
_output_shapes
:@*
dtype0
А
Adam/m/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_2/bias
y
(Adam/m/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/bias*
_output_shapes
:@*
dtype0
Р
Adam/v/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/v/conv2d_2/kernel
Й
*Adam/v/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/kernel*&
_output_shapes
: @*
dtype0
Р
Adam/m/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/m/conv2d_2/kernel
Й
*Adam/m/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/kernel*&
_output_shapes
: @*
dtype0
А
Adam/v/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/conv2d_1/bias
y
(Adam/v/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/bias*
_output_shapes
: *
dtype0
А
Adam/m/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/conv2d_1/bias
y
(Adam/m/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/bias*
_output_shapes
: *
dtype0
Р
Adam/v/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/v/conv2d_1/kernel
Й
*Adam/v/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/kernel*&
_output_shapes
: *
dtype0
Р
Adam/m/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/m/conv2d_1/kernel
Й
*Adam/m/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/kernel*&
_output_shapes
: *
dtype0
|
Adam/v/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/v/conv2d/bias
u
&Adam/v/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d/bias*
_output_shapes
:*
dtype0
|
Adam/m/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/m/conv2d/bias
u
&Adam/m/conv2d/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d/bias*
_output_shapes
:*
dtype0
М
Adam/v/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/conv2d/kernel
Е
(Adam/v/conv2d/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d/kernel*&
_output_shapes
:*
dtype0
М
Adam/m/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/conv2d/kernel
Е
(Adam/m/conv2d/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d/kernel*&
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
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:А*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
АА*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:А*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
АА*
dtype0
s
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:А*
dtype0
Г
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А* 
shared_nameconv2d_3/kernel
|
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*'
_output_shapes
:@А*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0
В
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0
В
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
: *
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	А*
dtype0
К
serving_default_input_1Placeholder*/
_output_shapes
:         pp*
dtype0*$
shape:         pp
К
serving_default_input_2Placeholder*/
_output_shapes
:         pp*
dtype0*$
shape:         pp
╕
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2conv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference_signature_wrapper_8186

NoOpNoOp
╜Ж
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ўЕ
valueьЕBшЕ BрЕ
┴
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
* 
Ї
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
layer-8
layer_with_weights-3
layer-9
layer-10
layer-11
layer-12
layer_with_weights-4
layer-13
layer_with_weights-5
layer-14
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses*
О
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses* 
ж
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias*
j
20
31
42
53
64
75
86
97
:8
;9
<10
=11
012
113*
j
20
31
42
53
64
75
86
97
:8
;9
<10
=11
012
113*
* 
░
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ctrace_0
Dtrace_1
Etrace_2
Ftrace_3* 
6
Gtrace_0
Htrace_1
Itrace_2
Jtrace_3* 
* 
Б
K
_variables
L_iterations
M_learning_rate
N_index_dict
O
_momentums
P_velocities
Q_update_step_xla*

Rserving_default* 
╚
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses

2kernel
3bias
 Y_jit_compiled_convolution_op*
О
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses* 
е
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses
f_random_generator* 
╚
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses

4kernel
5bias
 m_jit_compiled_convolution_op*
О
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses* 
е
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses
z_random_generator* 
╩
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+А&call_and_return_all_conditional_losses

6kernel
7bias
!Б_jit_compiled_convolution_op*
Ф
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses* 
м
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses
О_random_generator* 
╧
П	variables
Рtrainable_variables
Сregularization_losses
Т	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses

8kernel
9bias
!Х_jit_compiled_convolution_op*
Ф
Ц	variables
Чtrainable_variables
Шregularization_losses
Щ	keras_api
Ъ__call__
+Ы&call_and_return_all_conditional_losses* 
м
Ь	variables
Эtrainable_variables
Юregularization_losses
Я	keras_api
а__call__
+б&call_and_return_all_conditional_losses
в_random_generator* 
Ф
г	variables
дtrainable_variables
еregularization_losses
ж	keras_api
з__call__
+и&call_and_return_all_conditional_losses* 
м
й	variables
кtrainable_variables
лregularization_losses
м	keras_api
н__call__
+о&call_and_return_all_conditional_losses

:kernel
;bias*
м
п	variables
░trainable_variables
▒regularization_losses
▓	keras_api
│__call__
+┤&call_and_return_all_conditional_losses

<kernel
=bias*
Z
20
31
42
53
64
75
86
97
:8
;9
<10
=11*
Z
20
31
42
53
64
75
86
97
:8
;9
<10
=11*
* 
Ш
╡non_trainable_variables
╢layers
╖metrics
 ╕layer_regularization_losses
╣layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*
:
║trace_0
╗trace_1
╝trace_2
╜trace_3* 
:
╛trace_0
┐trace_1
└trace_2
┴trace_3* 
* 
* 
* 
Ц
┬non_trainable_variables
├layers
─metrics
 ┼layer_regularization_losses
╞layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses* 

╟trace_0
╚trace_1* 

╔trace_0
╩trace_1* 

00
11*

00
11*
* 
Ш
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
╧layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

╨trace_0* 

╤trace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEconv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_3/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEconv2d_3/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEdense/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
dense/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_1/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_1/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

╥0
╙1*
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
■
L0
╘1
╒2
╓3
╫4
╪5
┘6
┌7
█8
▄9
▌10
▐11
▀12
р13
с14
т15
у16
ф17
х18
ц19
ч20
ш21
щ22
ъ23
ы24
ь25
э26
ю27
я28*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
x
╘0
╓1
╪2
┌3
▄4
▐5
р6
т7
ф8
ц9
ш10
ъ11
ь12
ю13*
x
╒0
╫1
┘2
█3
▌4
▀5
с6
у7
х8
ч9
щ10
ы11
э12
я13*
* 
* 

20
31*

20
31*
* 
Ш
Ёnon_trainable_variables
ёlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*

їtrace_0* 

Ўtrace_0* 
* 
* 
* 
* 
Ц
ўnon_trainable_variables
°layers
∙metrics
 ·layer_regularization_losses
√layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses* 

№trace_0* 

¤trace_0* 
* 
* 
* 
Ц
■non_trainable_variables
 layers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses* 

Гtrace_0
Дtrace_1* 

Еtrace_0
Жtrace_1* 
* 

40
51*

40
51*
* 
Ш
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses*

Мtrace_0* 

Нtrace_0* 
* 
* 
* 
* 
Ц
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses* 

Уtrace_0* 

Фtrace_0* 
* 
* 
* 
Ц
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses* 

Ъtrace_0
Ыtrace_1* 

Ьtrace_0
Эtrace_1* 
* 

60
71*

60
71*
* 
Ъ
Юnon_trainable_variables
Яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses*

гtrace_0* 

дtrace_0* 
* 
* 
* 
* 
Ь
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses* 

кtrace_0* 

лtrace_0* 
* 
* 
* 
Ь
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
░layer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses* 

▒trace_0
▓trace_1* 

│trace_0
┤trace_1* 
* 

80
91*

80
91*
* 
Ю
╡non_trainable_variables
╢layers
╖metrics
 ╕layer_regularization_losses
╣layer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses*

║trace_0* 

╗trace_0* 
* 
* 
* 
* 
Ь
╝non_trainable_variables
╜layers
╛metrics
 ┐layer_regularization_losses
└layer_metrics
Ц	variables
Чtrainable_variables
Шregularization_losses
Ъ__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses* 

┴trace_0* 

┬trace_0* 
* 
* 
* 
Ь
├non_trainable_variables
─layers
┼metrics
 ╞layer_regularization_losses
╟layer_metrics
Ь	variables
Эtrainable_variables
Юregularization_losses
а__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses* 

╚trace_0
╔trace_1* 

╩trace_0
╦trace_1* 
* 
* 
* 
* 
Ь
╠non_trainable_variables
═layers
╬metrics
 ╧layer_regularization_losses
╨layer_metrics
г	variables
дtrainable_variables
еregularization_losses
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses* 

╤trace_0* 

╥trace_0* 

:0
;1*

:0
;1*
* 
Ю
╙non_trainable_variables
╘layers
╒metrics
 ╓layer_regularization_losses
╫layer_metrics
й	variables
кtrainable_variables
лregularization_losses
н__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses*

╪trace_0* 

┘trace_0* 

<0
=1*

<0
=1*
* 
Ю
┌non_trainable_variables
█layers
▄metrics
 ▌layer_regularization_losses
▐layer_metrics
п	variables
░trainable_variables
▒regularization_losses
│__call__
+┤&call_and_return_all_conditional_losses
'┤"call_and_return_conditional_losses*

▀trace_0* 

рtrace_0* 
* 
r
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14*
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
<
с	variables
т	keras_api

уtotal

фcount*
M
х	variables
ц	keras_api

чtotal

шcount
щ
_fn_kwargs*
_Y
VARIABLE_VALUEAdam/m/conv2d/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/conv2d/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/conv2d/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_1/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_1/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv2d_1/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d_1/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_2/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_2/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_2/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_2/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_3/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_3/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_3/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_3/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/dense/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/dense/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_1/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_1/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_1/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_1/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_2/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_2/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_2/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_2/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
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

у0
ф1*

с	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

ч0
ш1*

х	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¤
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp(Adam/m/conv2d/kernel/Read/ReadVariableOp(Adam/v/conv2d/kernel/Read/ReadVariableOp&Adam/m/conv2d/bias/Read/ReadVariableOp&Adam/v/conv2d/bias/Read/ReadVariableOp*Adam/m/conv2d_1/kernel/Read/ReadVariableOp*Adam/v/conv2d_1/kernel/Read/ReadVariableOp(Adam/m/conv2d_1/bias/Read/ReadVariableOp(Adam/v/conv2d_1/bias/Read/ReadVariableOp*Adam/m/conv2d_2/kernel/Read/ReadVariableOp*Adam/v/conv2d_2/kernel/Read/ReadVariableOp(Adam/m/conv2d_2/bias/Read/ReadVariableOp(Adam/v/conv2d_2/bias/Read/ReadVariableOp*Adam/m/conv2d_3/kernel/Read/ReadVariableOp*Adam/v/conv2d_3/kernel/Read/ReadVariableOp(Adam/m/conv2d_3/bias/Read/ReadVariableOp(Adam/v/conv2d_3/bias/Read/ReadVariableOp'Adam/m/dense/kernel/Read/ReadVariableOp'Adam/v/dense/kernel/Read/ReadVariableOp%Adam/m/dense/bias/Read/ReadVariableOp%Adam/v/dense/bias/Read/ReadVariableOp)Adam/m/dense_1/kernel/Read/ReadVariableOp)Adam/v/dense_1/kernel/Read/ReadVariableOp'Adam/m/dense_1/bias/Read/ReadVariableOp'Adam/v/dense_1/bias/Read/ReadVariableOp)Adam/m/dense_2/kernel/Read/ReadVariableOp)Adam/v/dense_2/kernel/Read/ReadVariableOp'Adam/m/dense_2/bias/Read/ReadVariableOp'Adam/v/dense_2/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*=
Tin6
422	*
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
GPU 2J 8В *&
f!R
__inference__traced_save_9213
╕	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_2/kerneldense_2/biasconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias	iterationlearning_rateAdam/m/conv2d/kernelAdam/v/conv2d/kernelAdam/m/conv2d/biasAdam/v/conv2d/biasAdam/m/conv2d_1/kernelAdam/v/conv2d_1/kernelAdam/m/conv2d_1/biasAdam/v/conv2d_1/biasAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/biasAdam/m/conv2d_3/kernelAdam/v/conv2d_3/kernelAdam/m/conv2d_3/biasAdam/v/conv2d_3/biasAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biasAdam/m/dense_2/kernelAdam/v/dense_2/kernelAdam/m/dense_2/biasAdam/v/dense_2/biastotal_1count_1totalcount*<
Tin5
321*
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
GPU 2J 8В *)
f$R"
 __inference__traced_restore_9367єп
Ў
a
C__inference_dropout_2_layer_call_and_return_conditional_losses_7293

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         @c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
В
√
B__inference_conv2d_2_layer_call_and_return_conditional_losses_7281

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
┴

b
C__inference_dropout_2_layer_call_and_return_conditional_losses_8937

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
в
═
)__inference_sequential_layer_call_fn_8551

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А
identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7363p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         pp: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         pp
 
_user_specified_nameinputs
Б
j
@__inference_lambda_layer_call_and_return_conditional_losses_7896

inputs
inputs_1
identityO
subSubinputsinputs_1*
T0*(
_output_shapes
:         АF
AbsAbssub:z:0*
T0*(
_output_shapes
:         АP
IdentityIdentityAbs:y:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:         А:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinputs
В
√
B__inference_conv2d_1_layer_call_and_return_conditional_losses_8843

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         55 *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         55 X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         55 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         55 w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         77: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         77
 
_user_specified_nameinputs
┴

b
C__inference_dropout_2_layer_call_and_return_conditional_losses_7469

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
а
Q
%__inference_lambda_layer_call_fn_8726
inputs_0
inputs_1
identity╣
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_lambda_layer_call_and_return_conditional_losses_7818a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:         А:         А:R N
(
_output_shapes
:         А
"
_user_specified_name
inputs_0:RN
(
_output_shapes
:         А
"
_user_specified_name
inputs_1
ц
Ь
'__inference_conv2d_1_layer_call_fn_8832

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         55 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_7256w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         55 `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         77: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         77
 
_user_specified_nameinputs
кa
╖	
D__inference_sequential_layer_call_and_return_conditional_losses_8720

inputs?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:A
'conv2d_1_conv2d_readvariableop_resource: 6
(conv2d_1_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@B
'conv2d_3_conv2d_readvariableop_resource:@А7
(conv2d_3_biasadd_readvariableop_resource:	А8
$dense_matmul_readvariableop_resource:
АА4
%dense_biasadd_readvariableop_resource:	А:
&dense_1_matmul_readvariableop_resource:
АА6
'dense_1_biasadd_readvariableop_resource:	А
identityИвconv2d/BiasAdd/ReadVariableOpвconv2d/Conv2D/ReadVariableOpвconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOpвconv2d_2/BiasAdd/ReadVariableOpвconv2d_2/Conv2D/ReadVariableOpвconv2d_3/BiasAdd/ReadVariableOpвconv2d_3/Conv2D/ReadVariableOpвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpК
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0и
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         nn*
paddingVALID*
strides
А
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Т
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         nnf
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         nnи
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:         77*
ksize
*
paddingVALID*
strides
Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Ф
dropout/dropout/MulMulmax_pooling2d/MaxPool:output:0dropout/dropout/Const:output:0*
T0*/
_output_shapes
:         77c
dropout/dropout/ShapeShapemax_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:д
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*/
_output_shapes
:         77*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╞
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         77\
dropout/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╗
dropout/dropout/SelectV2SelectV2 dropout/dropout/GreaterEqual:z:0dropout/dropout/Mul:z:0 dropout/dropout/Const_1:output:0*
T0*/
_output_shapes
:         77О
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0╟
conv2d_1/Conv2DConv2D!dropout/dropout/SelectV2:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         55 *
paddingVALID*
strides
Д
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ш
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         55 j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         55 м
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Ъ
dropout_1/dropout/MulMul max_pooling2d_1/MaxPool:output:0 dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:          g
dropout_1/dropout/ShapeShape max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:и
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:          *
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╠
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:          ^
dropout_1/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
dropout_1/dropout/SelectV2SelectV2"dropout_1/dropout/GreaterEqual:z:0dropout_1/dropout/Mul:z:0"dropout_1/dropout/Const_1:output:0*
T0*/
_output_shapes
:          О
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0╔
conv2d_2/Conv2DConv2D#dropout_1/dropout/SelectV2:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
Д
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @j
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:         @м
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Ъ
dropout_2/dropout/MulMul max_pooling2d_2/MaxPool:output:0 dropout_2/dropout/Const:output:0*
T0*/
_output_shapes
:         @g
dropout_2/dropout/ShapeShape max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:и
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>╠
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @^
dropout_2/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
dropout_2/dropout/SelectV2SelectV2"dropout_2/dropout/GreaterEqual:z:0dropout_2/dropout/Mul:z:0"dropout_2/dropout/Const_1:output:0*
T0*/
_output_shapes
:         @П
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0╩
conv2d_3/Conv2DConv2D#dropout_2/dropout/SelectV2:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

А*
paddingVALID*
strides
Е
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

Аk
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:         

Ан
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?Ы
dropout_3/dropout/MulMul max_pooling2d_3/MaxPool:output:0 dropout_3/dropout/Const:output:0*
T0*0
_output_shapes
:         Аg
dropout_3/dropout/ShapeShape max_pooling2d_3/MaxPool:output:0*
T0*
_output_shapes
:й
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>═
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А^
dropout_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
dropout_3/dropout/SelectV2SelectV2"dropout_3/dropout/GreaterEqual:z:0dropout_3/dropout/Mul:z:0"dropout_3/dropout/Const_1:output:0*
T0*0
_output_shapes
:         А^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    А  К
flatten/ReshapeReshape#dropout_3/dropout/SelectV2:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         АВ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0И
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:         АЖ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0М
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аa
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         Аj
IdentityIdentitydense_1/Relu:activations:0^NoOp*
T0*(
_output_shapes
:         А╠
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         pp: : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:         pp
 
_user_specified_nameinputs
л
B
&__inference_flatten_layer_call_fn_8999

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_7326a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
в

є
?__inference_dense_layer_call_and_return_conditional_losses_7339

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
А
∙
@__inference_conv2d_layer_call_and_return_conditional_losses_8786

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         nn*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         nnX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         nni
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         nnw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         pp: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         pp
 
_user_specified_nameinputs
┐

`
A__inference_dropout_layer_call_and_return_conditional_losses_7535

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         77C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         77*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         77T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:         77i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:         77"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         77:W S
/
_output_shapes
:         77
 
_user_specified_nameinputs
┤
J
.__inference_max_pooling2d_3_layer_call_fn_8962

inputs
identity╫
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_7210Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
░9
┼
D__inference_sequential_layer_call_and_return_conditional_losses_7721
conv2d_input%
conv2d_7681:
conv2d_7683:'
conv2d_1_7688: 
conv2d_1_7690: '
conv2d_2_7695: @
conv2d_2_7697:@(
conv2d_3_7702:@А
conv2d_3_7704:	А

dense_7710:
АА

dense_7712:	А 
dense_1_7715:
АА
dense_1_7717:	А
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallЁ
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_7681conv2d_7683*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         nn*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_7231щ
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         77* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7174▄
dropout/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         77* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_7243М
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv2d_1_7688conv2d_1_7690*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         55 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_7256я
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7186т
dropout_1/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_7268О
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv2d_2_7695conv2d_2_7697*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_7281я
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_7198т
dropout_2/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_7293П
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0conv2d_3_7702conv2d_3_7704*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         

А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_7306Ё
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_7210у
dropout_3/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_7318╤
flatten/PartitionedCallPartitionedCall"dropout_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_7326∙
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_7710
dense_7712*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_7339З
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_7715dense_1_7717*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_7356x
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         АТ
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         pp: : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:] Y
/
_output_shapes
:         pp
&
_user_specified_nameconv2d_input
┐
Ф
$__inference_dense_layer_call_fn_9014

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCall╒
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_7339p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
С
e
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_7210

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┐
Ф
&__inference_dense_2_layer_call_fn_8755

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCall╓
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_7831o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
┐
D
(__inference_dropout_3_layer_call_fn_8972

inputs
identity╖
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_7318i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╡
╦
?__inference_model_layer_call_and_return_conditional_losses_7838

inputs
inputs_1)
sequential_7773:
sequential_7775:)
sequential_7777: 
sequential_7779: )
sequential_7781: @
sequential_7783:@*
sequential_7785:@А
sequential_7787:	А#
sequential_7789:
АА
sequential_7791:	А#
sequential_7793:
АА
sequential_7795:	А
dense_2_7832:	А
dense_2_7834:
identityИвdense_2/StatefulPartitionedCallв"sequential/StatefulPartitionedCallв$sequential/StatefulPartitionedCall_1▒
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputssequential_7773sequential_7775sequential_7777sequential_7779sequential_7781sequential_7783sequential_7785sequential_7787sequential_7789sequential_7791sequential_7793sequential_7795*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7363╡
$sequential/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1sequential_7773sequential_7775sequential_7777sequential_7779sequential_7781sequential_7783sequential_7785sequential_7787sequential_7789sequential_7791sequential_7793sequential_7795*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7363И
lambda/PartitionedCallPartitionedCall+sequential/StatefulPartitionedCall:output:0-sequential/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_lambda_layer_call_and_return_conditional_losses_7818 
dense_2/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:0dense_2_7832dense_2_7834*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_7831w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┤
NoOpNoOp ^dense_2/StatefulPartitionedCall#^sequential/StatefulPartitionedCall%^sequential/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         pp:         pp: : : : : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential/StatefulPartitionedCall_1$sequential/StatefulPartitionedCall_1:W S
/
_output_shapes
:         pp
 
_user_specified_nameinputs:WS
/
_output_shapes
:         pp
 
_user_specified_nameinputs
т
Ъ
%__inference_conv2d_layer_call_fn_8775

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         nn*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_7231w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         nn`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         pp: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         pp
 
_user_specified_nameinputs
■
П
$__inference_model_layer_call_fn_7869
input_1
input_2!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:	А

unknown_12:
identityИвStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_7838o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         pp:         pp: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         pp
!
_user_specified_name	input_1:XT
/
_output_shapes
:         pp
!
_user_specified_name	input_2
├
Ц
&__inference_dense_1_layer_call_fn_9034

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCall╫
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_7356p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Н
a
(__inference_dropout_2_layer_call_fn_8920

inputs
identityИвStatefulPartitionedCall╞
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_7469w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┴

b
C__inference_dropout_1_layer_call_and_return_conditional_losses_8880

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:          C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:          *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:          T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:          i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
в

є
?__inference_dense_layer_call_and_return_conditional_losses_9025

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
С
e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_8910

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
В
√
B__inference_conv2d_2_layer_call_and_return_conditional_losses_8900

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
д

ї
A__inference_dense_1_layer_call_and_return_conditional_losses_7356

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
┼
]
A__inference_flatten_layer_call_and_return_conditional_losses_7326

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    А  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
й╟
┌
 __inference__traced_restore_9367
file_prefix2
assignvariableop_dense_2_kernel:	А-
assignvariableop_1_dense_2_bias::
 assignvariableop_2_conv2d_kernel:,
assignvariableop_3_conv2d_bias:<
"assignvariableop_4_conv2d_1_kernel: .
 assignvariableop_5_conv2d_1_bias: <
"assignvariableop_6_conv2d_2_kernel: @.
 assignvariableop_7_conv2d_2_bias:@=
"assignvariableop_8_conv2d_3_kernel:@А/
 assignvariableop_9_conv2d_3_bias:	А4
 assignvariableop_10_dense_kernel:
АА-
assignvariableop_11_dense_bias:	А6
"assignvariableop_12_dense_1_kernel:
АА/
 assignvariableop_13_dense_1_bias:	А'
assignvariableop_14_iteration:	 +
!assignvariableop_15_learning_rate: B
(assignvariableop_16_adam_m_conv2d_kernel:B
(assignvariableop_17_adam_v_conv2d_kernel:4
&assignvariableop_18_adam_m_conv2d_bias:4
&assignvariableop_19_adam_v_conv2d_bias:D
*assignvariableop_20_adam_m_conv2d_1_kernel: D
*assignvariableop_21_adam_v_conv2d_1_kernel: 6
(assignvariableop_22_adam_m_conv2d_1_bias: 6
(assignvariableop_23_adam_v_conv2d_1_bias: D
*assignvariableop_24_adam_m_conv2d_2_kernel: @D
*assignvariableop_25_adam_v_conv2d_2_kernel: @6
(assignvariableop_26_adam_m_conv2d_2_bias:@6
(assignvariableop_27_adam_v_conv2d_2_bias:@E
*assignvariableop_28_adam_m_conv2d_3_kernel:@АE
*assignvariableop_29_adam_v_conv2d_3_kernel:@А7
(assignvariableop_30_adam_m_conv2d_3_bias:	А7
(assignvariableop_31_adam_v_conv2d_3_bias:	А;
'assignvariableop_32_adam_m_dense_kernel:
АА;
'assignvariableop_33_adam_v_dense_kernel:
АА4
%assignvariableop_34_adam_m_dense_bias:	А4
%assignvariableop_35_adam_v_dense_bias:	А=
)assignvariableop_36_adam_m_dense_1_kernel:
АА=
)assignvariableop_37_adam_v_dense_1_kernel:
АА6
'assignvariableop_38_adam_m_dense_1_bias:	А6
'assignvariableop_39_adam_v_dense_1_bias:	А<
)assignvariableop_40_adam_m_dense_2_kernel:	А<
)assignvariableop_41_adam_v_dense_2_kernel:	А5
'assignvariableop_42_adam_m_dense_2_bias:5
'assignvariableop_43_adam_v_dense_2_bias:%
assignvariableop_44_total_1: %
assignvariableop_45_count_1: #
assignvariableop_46_total: #
assignvariableop_47_count: 
identity_49ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9├
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*щ
value▀B▄1B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╥
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ц
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*┌
_output_shapes╟
─:::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes5
321	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOpAssignVariableOpassignvariableop_dense_2_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:╢
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_2_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_2AssignVariableOp assignvariableop_2_conv2d_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:╡
AssignVariableOp_3AssignVariableOpassignvariableop_3_conv2d_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_1_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_1_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_2_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_2_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_3_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_3_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_10AssignVariableOp assignvariableop_10_dense_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_11AssignVariableOpassignvariableop_11_dense_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_1_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_1_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:╢
AssignVariableOp_14AssignVariableOpassignvariableop_14_iterationIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_15AssignVariableOp!assignvariableop_15_learning_rateIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_m_conv2d_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_v_conv2d_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_m_conv2d_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_19AssignVariableOp&assignvariableop_19_adam_v_conv2d_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_m_conv2d_1_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_v_conv2d_1_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_m_conv2d_1_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_23AssignVariableOp(assignvariableop_23_adam_v_conv2d_1_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_m_conv2d_2_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_v_conv2d_2_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_m_conv2d_2_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_v_conv2d_2_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_m_conv2d_3_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_v_conv2d_3_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_m_conv2d_3_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_v_conv2d_3_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_m_dense_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_v_dense_kernelIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_34AssignVariableOp%assignvariableop_34_adam_m_dense_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_35AssignVariableOp%assignvariableop_35_adam_v_dense_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_m_dense_1_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_v_dense_1_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_m_dense_1_biasIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_v_dense_1_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_m_dense_2_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_v_dense_2_kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_m_dense_2_biasIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_43AssignVariableOp'assignvariableop_43_adam_v_dense_2_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_44AssignVariableOpassignvariableop_44_total_1Identity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_45AssignVariableOpassignvariableop_45_count_1Identity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_46AssignVariableOpassignvariableop_46_totalIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_47AssignVariableOpassignvariableop_47_countIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 я
Identity_48Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_49IdentityIdentity_48:output:0^NoOp_1*
T0*
_output_shapes
: ▄
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_49Identity_49:output:0*u
_input_shapesd
b: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472(
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
Н
a
(__inference_dropout_1_layer_call_fn_8863

inputs
identityИвStatefulPartitionedCall╞
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_7502w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
╗
D
(__inference_dropout_1_layer_call_fn_8858

inputs
identity╢
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_7268h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
а
Q
%__inference_lambda_layer_call_fn_8732
inputs_0
inputs_1
identity╣
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_lambda_layer_call_and_return_conditional_losses_7896a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:         А:         А:R N
(
_output_shapes
:         А
"
_user_specified_name
inputs_0:RN
(
_output_shapes
:         А
"
_user_specified_name
inputs_1
Ї
_
A__inference_dropout_layer_call_and_return_conditional_losses_8811

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         77c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         77"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         77:W S
/
_output_shapes
:         77
 
_user_specified_nameinputs
в
═
)__inference_sequential_layer_call_fn_8580

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А
identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7622p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         pp: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         pp
 
_user_specified_nameinputs
ЇЯ
Я
?__inference_model_layer_call_and_return_conditional_losses_8360
inputs_0
inputs_1J
0sequential_conv2d_conv2d_readvariableop_resource:?
1sequential_conv2d_biasadd_readvariableop_resource:L
2sequential_conv2d_1_conv2d_readvariableop_resource: A
3sequential_conv2d_1_biasadd_readvariableop_resource: L
2sequential_conv2d_2_conv2d_readvariableop_resource: @A
3sequential_conv2d_2_biasadd_readvariableop_resource:@M
2sequential_conv2d_3_conv2d_readvariableop_resource:@АB
3sequential_conv2d_3_biasadd_readvariableop_resource:	АC
/sequential_dense_matmul_readvariableop_resource:
АА?
0sequential_dense_biasadd_readvariableop_resource:	АE
1sequential_dense_1_matmul_readvariableop_resource:
ААA
2sequential_dense_1_biasadd_readvariableop_resource:	А9
&dense_2_matmul_readvariableop_resource:	А5
'dense_2_biasadd_readvariableop_resource:
identityИвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOpв(sequential/conv2d/BiasAdd/ReadVariableOpв*sequential/conv2d/BiasAdd_1/ReadVariableOpв'sequential/conv2d/Conv2D/ReadVariableOpв)sequential/conv2d/Conv2D_1/ReadVariableOpв*sequential/conv2d_1/BiasAdd/ReadVariableOpв,sequential/conv2d_1/BiasAdd_1/ReadVariableOpв)sequential/conv2d_1/Conv2D/ReadVariableOpв+sequential/conv2d_1/Conv2D_1/ReadVariableOpв*sequential/conv2d_2/BiasAdd/ReadVariableOpв,sequential/conv2d_2/BiasAdd_1/ReadVariableOpв)sequential/conv2d_2/Conv2D/ReadVariableOpв+sequential/conv2d_2/Conv2D_1/ReadVariableOpв*sequential/conv2d_3/BiasAdd/ReadVariableOpв,sequential/conv2d_3/BiasAdd_1/ReadVariableOpв)sequential/conv2d_3/Conv2D/ReadVariableOpв+sequential/conv2d_3/Conv2D_1/ReadVariableOpв'sequential/dense/BiasAdd/ReadVariableOpв)sequential/dense/BiasAdd_1/ReadVariableOpв&sequential/dense/MatMul/ReadVariableOpв(sequential/dense/MatMul_1/ReadVariableOpв)sequential/dense_1/BiasAdd/ReadVariableOpв+sequential/dense_1/BiasAdd_1/ReadVariableOpв(sequential/dense_1/MatMul/ReadVariableOpв*sequential/dense_1/MatMul_1/ReadVariableOpа
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0└
sequential/conv2d/Conv2DConv2Dinputs_0/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         nn*
paddingVALID*
strides
Ц
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0│
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         nn|
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         nn╛
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*/
_output_shapes
:         77*
ksize
*
paddingVALID*
strides
М
sequential/dropout/IdentityIdentity)sequential/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:         77д
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0р
sequential/conv2d_1/Conv2DConv2D$sequential/dropout/Identity:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         55 *
paddingVALID*
strides
Ъ
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╣
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         55 А
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         55 ┬
"sequential/max_pooling2d_1/MaxPoolMaxPool&sequential/conv2d_1/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
Р
sequential/dropout_1/IdentityIdentity+sequential/max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:          д
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0т
sequential/conv2d_2/Conv2DConv2D&sequential/dropout_1/Identity:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
Ъ
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╣
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @А
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:         @┬
"sequential/max_pooling2d_2/MaxPoolMaxPool&sequential/conv2d_2/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Р
sequential/dropout_2/IdentityIdentity+sequential/max_pooling2d_2/MaxPool:output:0*
T0*/
_output_shapes
:         @е
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0у
sequential/conv2d_3/Conv2DConv2D&sequential/dropout_2/Identity:output:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

А*
paddingVALID*
strides
Ы
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

АБ
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:         

А├
"sequential/max_pooling2d_3/MaxPoolMaxPool&sequential/conv2d_3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
С
sequential/dropout_3/IdentityIdentity+sequential/max_pooling2d_3/MaxPool:output:0*
T0*0
_output_shapes
:         Аi
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    А  г
sequential/flatten/ReshapeReshape&sequential/dropout_3/Identity:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:         АШ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0й
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АХ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0к
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:         АЬ
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0н
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЩ
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0░
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аw
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         Ав
)sequential/conv2d/Conv2D_1/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0─
sequential/conv2d/Conv2D_1Conv2Dinputs_11sequential/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         nn*
paddingVALID*
strides
Ш
*sequential/conv2d/BiasAdd_1/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╣
sequential/conv2d/BiasAdd_1BiasAdd#sequential/conv2d/Conv2D_1:output:02sequential/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         nnА
sequential/conv2d/Relu_1Relu$sequential/conv2d/BiasAdd_1:output:0*
T0*/
_output_shapes
:         nn┬
"sequential/max_pooling2d/MaxPool_1MaxPool&sequential/conv2d/Relu_1:activations:0*/
_output_shapes
:         77*
ksize
*
paddingVALID*
strides
Р
sequential/dropout/Identity_1Identity+sequential/max_pooling2d/MaxPool_1:output:0*
T0*/
_output_shapes
:         77ж
+sequential/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ц
sequential/conv2d_1/Conv2D_1Conv2D&sequential/dropout/Identity_1:output:03sequential/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         55 *
paddingVALID*
strides
Ь
,sequential/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0┐
sequential/conv2d_1/BiasAdd_1BiasAdd%sequential/conv2d_1/Conv2D_1:output:04sequential/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         55 Д
sequential/conv2d_1/Relu_1Relu&sequential/conv2d_1/BiasAdd_1:output:0*
T0*/
_output_shapes
:         55 ╞
$sequential/max_pooling2d_1/MaxPool_1MaxPool(sequential/conv2d_1/Relu_1:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
Ф
sequential/dropout_1/Identity_1Identity-sequential/max_pooling2d_1/MaxPool_1:output:0*
T0*/
_output_shapes
:          ж
+sequential/conv2d_2/Conv2D_1/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ш
sequential/conv2d_2/Conv2D_1Conv2D(sequential/dropout_1/Identity_1:output:03sequential/conv2d_2/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
Ь
,sequential/conv2d_2/BiasAdd_1/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┐
sequential/conv2d_2/BiasAdd_1BiasAdd%sequential/conv2d_2/Conv2D_1:output:04sequential/conv2d_2/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @Д
sequential/conv2d_2/Relu_1Relu&sequential/conv2d_2/BiasAdd_1:output:0*
T0*/
_output_shapes
:         @╞
$sequential/max_pooling2d_2/MaxPool_1MaxPool(sequential/conv2d_2/Relu_1:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Ф
sequential/dropout_2/Identity_1Identity-sequential/max_pooling2d_2/MaxPool_1:output:0*
T0*/
_output_shapes
:         @з
+sequential/conv2d_3/Conv2D_1/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0щ
sequential/conv2d_3/Conv2D_1Conv2D(sequential/dropout_2/Identity_1:output:03sequential/conv2d_3/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

А*
paddingVALID*
strides
Э
,sequential/conv2d_3/BiasAdd_1/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0└
sequential/conv2d_3/BiasAdd_1BiasAdd%sequential/conv2d_3/Conv2D_1:output:04sequential/conv2d_3/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

АЕ
sequential/conv2d_3/Relu_1Relu&sequential/conv2d_3/BiasAdd_1:output:0*
T0*0
_output_shapes
:         

А╟
$sequential/max_pooling2d_3/MaxPool_1MaxPool(sequential/conv2d_3/Relu_1:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Х
sequential/dropout_3/Identity_1Identity-sequential/max_pooling2d_3/MaxPool_1:output:0*
T0*0
_output_shapes
:         Аk
sequential/flatten/Const_1Const*
_output_shapes
:*
dtype0*
valueB"    А  й
sequential/flatten/Reshape_1Reshape(sequential/dropout_3/Identity_1:output:0#sequential/flatten/Const_1:output:0*
T0*(
_output_shapes
:         АЪ
(sequential/dense/MatMul_1/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0п
sequential/dense/MatMul_1MatMul%sequential/flatten/Reshape_1:output:00sequential/dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЧ
)sequential/dense/BiasAdd_1/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0░
sequential/dense/BiasAdd_1BiasAdd#sequential/dense/MatMul_1:product:01sequential/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аw
sequential/dense/Relu_1Relu#sequential/dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:         АЮ
*sequential/dense_1/MatMul_1/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0│
sequential/dense_1/MatMul_1MatMul%sequential/dense/Relu_1:activations:02sequential/dense_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЫ
+sequential/dense_1/BiasAdd_1/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╢
sequential/dense_1/BiasAdd_1BiasAdd%sequential/dense_1/MatMul_1:product:03sequential/dense_1/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А{
sequential/dense_1/Relu_1Relu%sequential/dense_1/BiasAdd_1:output:0*
T0*(
_output_shapes
:         АФ

lambda/subSub%sequential/dense_1/Relu:activations:0'sequential/dense_1/Relu_1:activations:0*
T0*(
_output_shapes
:         АT

lambda/AbsAbslambda/sub:z:0*
T0*(
_output_shapes
:         АЕ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Б
dense_2/MatMulMatMullambda/Abs:y:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         │	
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp)^sequential/conv2d/BiasAdd/ReadVariableOp+^sequential/conv2d/BiasAdd_1/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp*^sequential/conv2d/Conv2D_1/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp-^sequential/conv2d_1/BiasAdd_1/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp,^sequential/conv2d_1/Conv2D_1/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp-^sequential/conv2d_2/BiasAdd_1/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp,^sequential/conv2d_2/Conv2D_1/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp-^sequential/conv2d_3/BiasAdd_1/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp,^sequential/conv2d_3/Conv2D_1/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/BiasAdd_1/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp)^sequential/dense/MatMul_1/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp,^sequential/dense_1/BiasAdd_1/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp+^sequential/dense_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         pp:         pp: : : : : : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2X
*sequential/conv2d/BiasAdd_1/ReadVariableOp*sequential/conv2d/BiasAdd_1/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2V
)sequential/conv2d/Conv2D_1/ReadVariableOp)sequential/conv2d/Conv2D_1/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2\
,sequential/conv2d_1/BiasAdd_1/ReadVariableOp,sequential/conv2d_1/BiasAdd_1/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2Z
+sequential/conv2d_1/Conv2D_1/ReadVariableOp+sequential/conv2d_1/Conv2D_1/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2\
,sequential/conv2d_2/BiasAdd_1/ReadVariableOp,sequential/conv2d_2/BiasAdd_1/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2Z
+sequential/conv2d_2/Conv2D_1/ReadVariableOp+sequential/conv2d_2/Conv2D_1/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2\
,sequential/conv2d_3/BiasAdd_1/ReadVariableOp,sequential/conv2d_3/BiasAdd_1/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2Z
+sequential/conv2d_3/Conv2D_1/ReadVariableOp+sequential/conv2d_3/Conv2D_1/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/BiasAdd_1/ReadVariableOp)sequential/dense/BiasAdd_1/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2T
(sequential/dense/MatMul_1/ReadVariableOp(sequential/dense/MatMul_1/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2Z
+sequential/dense_1/BiasAdd_1/ReadVariableOp+sequential/dense_1/BiasAdd_1/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2X
*sequential/dense_1/MatMul_1/ReadVariableOp*sequential/dense_1/MatMul_1/ReadVariableOp:Y U
/
_output_shapes
:         pp
"
_user_specified_name
inputs_0:YU
/
_output_shapes
:         pp
"
_user_specified_name
inputs_1
А
∙
@__inference_conv2d_layer_call_and_return_conditional_losses_7231

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         nn*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         nnX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         nni
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         nnw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         pp: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         pp
 
_user_specified_nameinputs
▄
Н
"__inference_signature_wrapper_8186
input_1
input_2!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:	А

unknown_12:
identityИвStatefulPartitionedCall▐
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__wrapped_model_7165o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         pp:         pp: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         pp
!
_user_specified_name	input_1:XT
/
_output_shapes
:         pp
!
_user_specified_name	input_2
а?
═
D__inference_sequential_layer_call_and_return_conditional_losses_7622

inputs%
conv2d_7582:
conv2d_7584:'
conv2d_1_7589: 
conv2d_1_7591: '
conv2d_2_7596: @
conv2d_2_7598:@(
conv2d_3_7603:@А
conv2d_3_7605:	А

dense_7611:
АА

dense_7613:	А 
dense_1_7616:
АА
dense_1_7618:	А
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdropout/StatefulPartitionedCallв!dropout_1/StatefulPartitionedCallв!dropout_2/StatefulPartitionedCallв!dropout_3/StatefulPartitionedCallъ
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_7582conv2d_7584*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         nn*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_7231щ
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         77* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7174ь
dropout/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         77* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_7535Ф
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv2d_1_7589conv2d_1_7591*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         55 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_7256я
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7186Ф
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_7502Ц
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv2d_2_7596conv2d_2_7598*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_7281я
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_7198Ц
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_7469Ч
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0conv2d_3_7603conv2d_3_7605*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         

А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_7306Ё
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_7210Ч
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_7436┘
flatten/PartitionedCallPartitionedCall*dropout_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_7326∙
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_7611
dense_7613*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_7339З
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_7616dense_1_7618*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_7356x
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Аа
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         pp: : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:W S
/
_output_shapes
:         pp
 
_user_specified_nameinputs
Съ
Я
?__inference_model_layer_call_and_return_conditional_losses_8522
inputs_0
inputs_1J
0sequential_conv2d_conv2d_readvariableop_resource:?
1sequential_conv2d_biasadd_readvariableop_resource:L
2sequential_conv2d_1_conv2d_readvariableop_resource: A
3sequential_conv2d_1_biasadd_readvariableop_resource: L
2sequential_conv2d_2_conv2d_readvariableop_resource: @A
3sequential_conv2d_2_biasadd_readvariableop_resource:@M
2sequential_conv2d_3_conv2d_readvariableop_resource:@АB
3sequential_conv2d_3_biasadd_readvariableop_resource:	АC
/sequential_dense_matmul_readvariableop_resource:
АА?
0sequential_dense_biasadd_readvariableop_resource:	АE
1sequential_dense_1_matmul_readvariableop_resource:
ААA
2sequential_dense_1_biasadd_readvariableop_resource:	А9
&dense_2_matmul_readvariableop_resource:	А5
'dense_2_biasadd_readvariableop_resource:
identityИвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOpв(sequential/conv2d/BiasAdd/ReadVariableOpв*sequential/conv2d/BiasAdd_1/ReadVariableOpв'sequential/conv2d/Conv2D/ReadVariableOpв)sequential/conv2d/Conv2D_1/ReadVariableOpв*sequential/conv2d_1/BiasAdd/ReadVariableOpв,sequential/conv2d_1/BiasAdd_1/ReadVariableOpв)sequential/conv2d_1/Conv2D/ReadVariableOpв+sequential/conv2d_1/Conv2D_1/ReadVariableOpв*sequential/conv2d_2/BiasAdd/ReadVariableOpв,sequential/conv2d_2/BiasAdd_1/ReadVariableOpв)sequential/conv2d_2/Conv2D/ReadVariableOpв+sequential/conv2d_2/Conv2D_1/ReadVariableOpв*sequential/conv2d_3/BiasAdd/ReadVariableOpв,sequential/conv2d_3/BiasAdd_1/ReadVariableOpв)sequential/conv2d_3/Conv2D/ReadVariableOpв+sequential/conv2d_3/Conv2D_1/ReadVariableOpв'sequential/dense/BiasAdd/ReadVariableOpв)sequential/dense/BiasAdd_1/ReadVariableOpв&sequential/dense/MatMul/ReadVariableOpв(sequential/dense/MatMul_1/ReadVariableOpв)sequential/dense_1/BiasAdd/ReadVariableOpв+sequential/dense_1/BiasAdd_1/ReadVariableOpв(sequential/dense_1/MatMul/ReadVariableOpв*sequential/dense_1/MatMul_1/ReadVariableOpа
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0└
sequential/conv2d/Conv2DConv2Dinputs_0/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         nn*
paddingVALID*
strides
Ц
(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0│
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         nn|
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         nn╛
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*/
_output_shapes
:         77*
ksize
*
paddingVALID*
strides
e
 sequential/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?╡
sequential/dropout/dropout/MulMul)sequential/max_pooling2d/MaxPool:output:0)sequential/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:         77y
 sequential/dropout/dropout/ShapeShape)sequential/max_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:║
7sequential/dropout/dropout/random_uniform/RandomUniformRandomUniform)sequential/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:         77*
dtype0n
)sequential/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>ч
'sequential/dropout/dropout/GreaterEqualGreaterEqual@sequential/dropout/dropout/random_uniform/RandomUniform:output:02sequential/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         77g
"sequential/dropout/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ч
#sequential/dropout/dropout/SelectV2SelectV2+sequential/dropout/dropout/GreaterEqual:z:0"sequential/dropout/dropout/Mul:z:0+sequential/dropout/dropout/Const_1:output:0*
T0*/
_output_shapes
:         77д
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ш
sequential/conv2d_1/Conv2DConv2D,sequential/dropout/dropout/SelectV2:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         55 *
paddingVALID*
strides
Ъ
*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╣
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         55 А
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         55 ┬
"sequential/max_pooling2d_1/MaxPoolMaxPool&sequential/conv2d_1/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
g
"sequential/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?╗
 sequential/dropout_1/dropout/MulMul+sequential/max_pooling2d_1/MaxPool:output:0+sequential/dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:          }
"sequential/dropout_1/dropout/ShapeShape+sequential/max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:╛
9sequential/dropout_1/dropout/random_uniform/RandomUniformRandomUniform+sequential/dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:          *
dtype0p
+sequential/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>э
)sequential/dropout_1/dropout/GreaterEqualGreaterEqualBsequential/dropout_1/dropout/random_uniform/RandomUniform:output:04sequential/dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:          i
$sequential/dropout_1/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    я
%sequential/dropout_1/dropout/SelectV2SelectV2-sequential/dropout_1/dropout/GreaterEqual:z:0$sequential/dropout_1/dropout/Mul:z:0-sequential/dropout_1/dropout/Const_1:output:0*
T0*/
_output_shapes
:          д
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ъ
sequential/conv2d_2/Conv2DConv2D.sequential/dropout_1/dropout/SelectV2:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
Ъ
*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╣
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @А
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:         @┬
"sequential/max_pooling2d_2/MaxPoolMaxPool&sequential/conv2d_2/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
g
"sequential/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?╗
 sequential/dropout_2/dropout/MulMul+sequential/max_pooling2d_2/MaxPool:output:0+sequential/dropout_2/dropout/Const:output:0*
T0*/
_output_shapes
:         @}
"sequential/dropout_2/dropout/ShapeShape+sequential/max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:╛
9sequential/dropout_2/dropout/random_uniform/RandomUniformRandomUniform+sequential/dropout_2/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0p
+sequential/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>э
)sequential/dropout_2/dropout/GreaterEqualGreaterEqualBsequential/dropout_2/dropout/random_uniform/RandomUniform:output:04sequential/dropout_2/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @i
$sequential/dropout_2/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    я
%sequential/dropout_2/dropout/SelectV2SelectV2-sequential/dropout_2/dropout/GreaterEqual:z:0$sequential/dropout_2/dropout/Mul:z:0-sequential/dropout_2/dropout/Const_1:output:0*
T0*/
_output_shapes
:         @е
)sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0ы
sequential/conv2d_3/Conv2DConv2D.sequential/dropout_2/dropout/SelectV2:output:01sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

А*
paddingVALID*
strides
Ы
*sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
sequential/conv2d_3/BiasAddBiasAdd#sequential/conv2d_3/Conv2D:output:02sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

АБ
sequential/conv2d_3/ReluRelu$sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:         

А├
"sequential/max_pooling2d_3/MaxPoolMaxPool&sequential/conv2d_3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
g
"sequential/dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?╝
 sequential/dropout_3/dropout/MulMul+sequential/max_pooling2d_3/MaxPool:output:0+sequential/dropout_3/dropout/Const:output:0*
T0*0
_output_shapes
:         А}
"sequential/dropout_3/dropout/ShapeShape+sequential/max_pooling2d_3/MaxPool:output:0*
T0*
_output_shapes
:┐
9sequential/dropout_3/dropout/random_uniform/RandomUniformRandomUniform+sequential/dropout_3/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0p
+sequential/dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>ю
)sequential/dropout_3/dropout/GreaterEqualGreaterEqualBsequential/dropout_3/dropout/random_uniform/RandomUniform:output:04sequential/dropout_3/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         Аi
$sequential/dropout_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ё
%sequential/dropout_3/dropout/SelectV2SelectV2-sequential/dropout_3/dropout/GreaterEqual:z:0$sequential/dropout_3/dropout/Mul:z:0-sequential/dropout_3/dropout/Const_1:output:0*
T0*0
_output_shapes
:         Аi
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    А  л
sequential/flatten/ReshapeReshape.sequential/dropout_3/dropout/SelectV2:output:0!sequential/flatten/Const:output:0*
T0*(
_output_shapes
:         АШ
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0й
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АХ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0к
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:         АЬ
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0н
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЩ
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0░
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аw
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         Ав
)sequential/conv2d/Conv2D_1/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0─
sequential/conv2d/Conv2D_1Conv2Dinputs_11sequential/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         nn*
paddingVALID*
strides
Ш
*sequential/conv2d/BiasAdd_1/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╣
sequential/conv2d/BiasAdd_1BiasAdd#sequential/conv2d/Conv2D_1:output:02sequential/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         nnА
sequential/conv2d/Relu_1Relu$sequential/conv2d/BiasAdd_1:output:0*
T0*/
_output_shapes
:         nn┬
"sequential/max_pooling2d/MaxPool_1MaxPool&sequential/conv2d/Relu_1:activations:0*/
_output_shapes
:         77*
ksize
*
paddingVALID*
strides
g
"sequential/dropout/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?╗
 sequential/dropout/dropout_1/MulMul+sequential/max_pooling2d/MaxPool_1:output:0+sequential/dropout/dropout_1/Const:output:0*
T0*/
_output_shapes
:         77}
"sequential/dropout/dropout_1/ShapeShape+sequential/max_pooling2d/MaxPool_1:output:0*
T0*
_output_shapes
:╛
9sequential/dropout/dropout_1/random_uniform/RandomUniformRandomUniform+sequential/dropout/dropout_1/Shape:output:0*
T0*/
_output_shapes
:         77*
dtype0p
+sequential/dropout/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>э
)sequential/dropout/dropout_1/GreaterEqualGreaterEqualBsequential/dropout/dropout_1/random_uniform/RandomUniform:output:04sequential/dropout/dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         77i
$sequential/dropout/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    я
%sequential/dropout/dropout_1/SelectV2SelectV2-sequential/dropout/dropout_1/GreaterEqual:z:0$sequential/dropout/dropout_1/Mul:z:0-sequential/dropout/dropout_1/Const_1:output:0*
T0*/
_output_shapes
:         77ж
+sequential/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ю
sequential/conv2d_1/Conv2D_1Conv2D.sequential/dropout/dropout_1/SelectV2:output:03sequential/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         55 *
paddingVALID*
strides
Ь
,sequential/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0┐
sequential/conv2d_1/BiasAdd_1BiasAdd%sequential/conv2d_1/Conv2D_1:output:04sequential/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         55 Д
sequential/conv2d_1/Relu_1Relu&sequential/conv2d_1/BiasAdd_1:output:0*
T0*/
_output_shapes
:         55 ╞
$sequential/max_pooling2d_1/MaxPool_1MaxPool(sequential/conv2d_1/Relu_1:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
i
$sequential/dropout_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?┴
"sequential/dropout_1/dropout_1/MulMul-sequential/max_pooling2d_1/MaxPool_1:output:0-sequential/dropout_1/dropout_1/Const:output:0*
T0*/
_output_shapes
:          Б
$sequential/dropout_1/dropout_1/ShapeShape-sequential/max_pooling2d_1/MaxPool_1:output:0*
T0*
_output_shapes
:┬
;sequential/dropout_1/dropout_1/random_uniform/RandomUniformRandomUniform-sequential/dropout_1/dropout_1/Shape:output:0*
T0*/
_output_shapes
:          *
dtype0r
-sequential/dropout_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>є
+sequential/dropout_1/dropout_1/GreaterEqualGreaterEqualDsequential/dropout_1/dropout_1/random_uniform/RandomUniform:output:06sequential/dropout_1/dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:          k
&sequential/dropout_1/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ў
'sequential/dropout_1/dropout_1/SelectV2SelectV2/sequential/dropout_1/dropout_1/GreaterEqual:z:0&sequential/dropout_1/dropout_1/Mul:z:0/sequential/dropout_1/dropout_1/Const_1:output:0*
T0*/
_output_shapes
:          ж
+sequential/conv2d_2/Conv2D_1/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ё
sequential/conv2d_2/Conv2D_1Conv2D0sequential/dropout_1/dropout_1/SelectV2:output:03sequential/conv2d_2/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
Ь
,sequential/conv2d_2/BiasAdd_1/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┐
sequential/conv2d_2/BiasAdd_1BiasAdd%sequential/conv2d_2/Conv2D_1:output:04sequential/conv2d_2/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @Д
sequential/conv2d_2/Relu_1Relu&sequential/conv2d_2/BiasAdd_1:output:0*
T0*/
_output_shapes
:         @╞
$sequential/max_pooling2d_2/MaxPool_1MaxPool(sequential/conv2d_2/Relu_1:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
i
$sequential/dropout_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?┴
"sequential/dropout_2/dropout_1/MulMul-sequential/max_pooling2d_2/MaxPool_1:output:0-sequential/dropout_2/dropout_1/Const:output:0*
T0*/
_output_shapes
:         @Б
$sequential/dropout_2/dropout_1/ShapeShape-sequential/max_pooling2d_2/MaxPool_1:output:0*
T0*
_output_shapes
:┬
;sequential/dropout_2/dropout_1/random_uniform/RandomUniformRandomUniform-sequential/dropout_2/dropout_1/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0r
-sequential/dropout_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>є
+sequential/dropout_2/dropout_1/GreaterEqualGreaterEqualDsequential/dropout_2/dropout_1/random_uniform/RandomUniform:output:06sequential/dropout_2/dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @k
&sequential/dropout_2/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ў
'sequential/dropout_2/dropout_1/SelectV2SelectV2/sequential/dropout_2/dropout_1/GreaterEqual:z:0&sequential/dropout_2/dropout_1/Mul:z:0/sequential/dropout_2/dropout_1/Const_1:output:0*
T0*/
_output_shapes
:         @з
+sequential/conv2d_3/Conv2D_1/ReadVariableOpReadVariableOp2sequential_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0ё
sequential/conv2d_3/Conv2D_1Conv2D0sequential/dropout_2/dropout_1/SelectV2:output:03sequential/conv2d_3/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

А*
paddingVALID*
strides
Э
,sequential/conv2d_3/BiasAdd_1/ReadVariableOpReadVariableOp3sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0└
sequential/conv2d_3/BiasAdd_1BiasAdd%sequential/conv2d_3/Conv2D_1:output:04sequential/conv2d_3/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

АЕ
sequential/conv2d_3/Relu_1Relu&sequential/conv2d_3/BiasAdd_1:output:0*
T0*0
_output_shapes
:         

А╟
$sequential/max_pooling2d_3/MaxPool_1MaxPool(sequential/conv2d_3/Relu_1:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
i
$sequential/dropout_3/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?┬
"sequential/dropout_3/dropout_1/MulMul-sequential/max_pooling2d_3/MaxPool_1:output:0-sequential/dropout_3/dropout_1/Const:output:0*
T0*0
_output_shapes
:         АБ
$sequential/dropout_3/dropout_1/ShapeShape-sequential/max_pooling2d_3/MaxPool_1:output:0*
T0*
_output_shapes
:├
;sequential/dropout_3/dropout_1/random_uniform/RandomUniformRandomUniform-sequential/dropout_3/dropout_1/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0r
-sequential/dropout_3/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>Ї
+sequential/dropout_3/dropout_1/GreaterEqualGreaterEqualDsequential/dropout_3/dropout_1/random_uniform/RandomUniform:output:06sequential/dropout_3/dropout_1/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         Аk
&sequential/dropout_3/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    °
'sequential/dropout_3/dropout_1/SelectV2SelectV2/sequential/dropout_3/dropout_1/GreaterEqual:z:0&sequential/dropout_3/dropout_1/Mul:z:0/sequential/dropout_3/dropout_1/Const_1:output:0*
T0*0
_output_shapes
:         Аk
sequential/flatten/Const_1Const*
_output_shapes
:*
dtype0*
valueB"    А  ▒
sequential/flatten/Reshape_1Reshape0sequential/dropout_3/dropout_1/SelectV2:output:0#sequential/flatten/Const_1:output:0*
T0*(
_output_shapes
:         АЪ
(sequential/dense/MatMul_1/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0п
sequential/dense/MatMul_1MatMul%sequential/flatten/Reshape_1:output:00sequential/dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЧ
)sequential/dense/BiasAdd_1/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0░
sequential/dense/BiasAdd_1BiasAdd#sequential/dense/MatMul_1:product:01sequential/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аw
sequential/dense/Relu_1Relu#sequential/dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:         АЮ
*sequential/dense_1/MatMul_1/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0│
sequential/dense_1/MatMul_1MatMul%sequential/dense/Relu_1:activations:02sequential/dense_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЫ
+sequential/dense_1/BiasAdd_1/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╢
sequential/dense_1/BiasAdd_1BiasAdd%sequential/dense_1/MatMul_1:product:03sequential/dense_1/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А{
sequential/dense_1/Relu_1Relu%sequential/dense_1/BiasAdd_1:output:0*
T0*(
_output_shapes
:         АФ

lambda/subSub%sequential/dense_1/Relu:activations:0'sequential/dense_1/Relu_1:activations:0*
T0*(
_output_shapes
:         АT

lambda/AbsAbslambda/sub:z:0*
T0*(
_output_shapes
:         АЕ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Б
dense_2/MatMulMatMullambda/Abs:y:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         │	
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp)^sequential/conv2d/BiasAdd/ReadVariableOp+^sequential/conv2d/BiasAdd_1/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp*^sequential/conv2d/Conv2D_1/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp-^sequential/conv2d_1/BiasAdd_1/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp,^sequential/conv2d_1/Conv2D_1/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp-^sequential/conv2d_2/BiasAdd_1/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp,^sequential/conv2d_2/Conv2D_1/ReadVariableOp+^sequential/conv2d_3/BiasAdd/ReadVariableOp-^sequential/conv2d_3/BiasAdd_1/ReadVariableOp*^sequential/conv2d_3/Conv2D/ReadVariableOp,^sequential/conv2d_3/Conv2D_1/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/BiasAdd_1/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp)^sequential/dense/MatMul_1/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp,^sequential/dense_1/BiasAdd_1/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp+^sequential/dense_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         pp:         pp: : : : : : : : : : : : : : 2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2X
*sequential/conv2d/BiasAdd_1/ReadVariableOp*sequential/conv2d/BiasAdd_1/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2V
)sequential/conv2d/Conv2D_1/ReadVariableOp)sequential/conv2d/Conv2D_1/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2\
,sequential/conv2d_1/BiasAdd_1/ReadVariableOp,sequential/conv2d_1/BiasAdd_1/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2Z
+sequential/conv2d_1/Conv2D_1/ReadVariableOp+sequential/conv2d_1/Conv2D_1/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2\
,sequential/conv2d_2/BiasAdd_1/ReadVariableOp,sequential/conv2d_2/BiasAdd_1/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2Z
+sequential/conv2d_2/Conv2D_1/ReadVariableOp+sequential/conv2d_2/Conv2D_1/ReadVariableOp2X
*sequential/conv2d_3/BiasAdd/ReadVariableOp*sequential/conv2d_3/BiasAdd/ReadVariableOp2\
,sequential/conv2d_3/BiasAdd_1/ReadVariableOp,sequential/conv2d_3/BiasAdd_1/ReadVariableOp2V
)sequential/conv2d_3/Conv2D/ReadVariableOp)sequential/conv2d_3/Conv2D/ReadVariableOp2Z
+sequential/conv2d_3/Conv2D_1/ReadVariableOp+sequential/conv2d_3/Conv2D_1/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense/BiasAdd_1/ReadVariableOp)sequential/dense/BiasAdd_1/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2T
(sequential/dense/MatMul_1/ReadVariableOp(sequential/dense/MatMul_1/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2Z
+sequential/dense_1/BiasAdd_1/ReadVariableOp+sequential/dense_1/BiasAdd_1/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2X
*sequential/dense_1/MatMul_1/ReadVariableOp*sequential/dense_1/MatMul_1/ReadVariableOp:Y U
/
_output_shapes
:         pp
"
_user_specified_name
inputs_0:YU
/
_output_shapes
:         pp
"
_user_specified_name
inputs_1
С
e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7186

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▓?
╙
D__inference_sequential_layer_call_and_return_conditional_losses_7764
conv2d_input%
conv2d_7724:
conv2d_7726:'
conv2d_1_7731: 
conv2d_1_7733: '
conv2d_2_7738: @
conv2d_2_7740:@(
conv2d_3_7745:@А
conv2d_3_7747:	А

dense_7753:
АА

dense_7755:	А 
dense_1_7758:
АА
dense_1_7760:	А
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdropout/StatefulPartitionedCallв!dropout_1/StatefulPartitionedCallв!dropout_2/StatefulPartitionedCallв!dropout_3/StatefulPartitionedCallЁ
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_7724conv2d_7726*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         nn*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_7231щ
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         77* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7174ь
dropout/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         77* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_7535Ф
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0conv2d_1_7731conv2d_1_7733*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         55 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_7256я
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7186Ф
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_7502Ц
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv2d_2_7738conv2d_2_7740*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_7281я
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_7198Ц
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_7469Ч
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0conv2d_3_7745conv2d_3_7747*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         

А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_7306Ё
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_7210Ч
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_7436┘
flatten/PartitionedCallPartitionedCall*dropout_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_7326∙
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_7753
dense_7755*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_7339З
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_7758dense_1_7760*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_7356x
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Аа
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         pp: : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:] Y
/
_output_shapes
:         pp
&
_user_specified_nameconv2d_input
┤
╙
)__inference_sequential_layer_call_fn_7390
conv2d_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7363p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         pp: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:         pp
&
_user_specified_nameconv2d_input
·
a
C__inference_dropout_3_layer_call_and_return_conditional_losses_8982

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ї
_
A__inference_dropout_layer_call_and_return_conditional_losses_7243

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         77c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         77"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         77:W S
/
_output_shapes
:         77
 
_user_specified_nameinputs
Ў
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_7268

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:          c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:          "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
·
a
C__inference_dropout_3_layer_call_and_return_conditional_losses_7318

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
П
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7174

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
С
e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_7198

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
д

ї
A__inference_dense_1_layer_call_and_return_conditional_losses_9045

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Й
l
@__inference_lambda_layer_call_and_return_conditional_losses_8739
inputs_0
inputs_1
identityQ
subSubinputs_0inputs_1*
T0*(
_output_shapes
:         АF
AbsAbssub:z:0*
T0*(
_output_shapes
:         АP
IdentityIdentityAbs:y:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:         А:         А:R N
(
_output_shapes
:         А
"
_user_specified_name
inputs_0:RN
(
_output_shapes
:         А
"
_user_specified_name
inputs_1
Б
j
@__inference_lambda_layer_call_and_return_conditional_losses_7818

inputs
inputs_1
identityO
subSubinputsinputs_1*
T0*(
_output_shapes
:         АF
AbsAbssub:z:0*
T0*(
_output_shapes
:         АP
IdentityIdentityAbs:y:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:         А:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         А
 
_user_specified_nameinputs
щA
╖	
D__inference_sequential_layer_call_and_return_conditional_losses_8636

inputs?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:A
'conv2d_1_conv2d_readvariableop_resource: 6
(conv2d_1_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource: @6
(conv2d_2_biasadd_readvariableop_resource:@B
'conv2d_3_conv2d_readvariableop_resource:@А7
(conv2d_3_biasadd_readvariableop_resource:	А8
$dense_matmul_readvariableop_resource:
АА4
%dense_biasadd_readvariableop_resource:	А:
&dense_1_matmul_readvariableop_resource:
АА6
'dense_1_biasadd_readvariableop_resource:	А
identityИвconv2d/BiasAdd/ReadVariableOpвconv2d/Conv2D/ReadVariableOpвconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOpвconv2d_2/BiasAdd/ReadVariableOpвconv2d_2/Conv2D/ReadVariableOpвconv2d_3/BiasAdd/ReadVariableOpвconv2d_3/Conv2D/ReadVariableOpвdense/BiasAdd/ReadVariableOpвdense/MatMul/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpК
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0и
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         nn*
paddingVALID*
strides
А
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Т
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         nnf
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         nnи
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:         77*
ksize
*
paddingVALID*
strides
v
dropout/IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:         77О
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0┐
conv2d_1/Conv2DConv2Ddropout/Identity:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         55 *
paddingVALID*
strides
Д
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ш
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         55 j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         55 м
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
z
dropout_1/IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:          О
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0┴
conv2d_2/Conv2DConv2Ddropout_1/Identity:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
Д
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @j
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:         @м
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
z
dropout_2/IdentityIdentity max_pooling2d_2/MaxPool:output:0*
T0*/
_output_shapes
:         @П
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0┬
conv2d_3/Conv2DConv2Ddropout_2/Identity:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

А*
paddingVALID*
strides
Е
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

Аk
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:         

Ан
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
{
dropout_3/IdentityIdentity max_pooling2d_3/MaxPool:output:0*
T0*0
_output_shapes
:         А^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    А  В
flatten/ReshapeReshapedropout_3/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         АВ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0И
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:         АЖ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0М
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аa
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         Аj
IdentityIdentitydense_1/Relu:activations:0^NoOp*
T0*(
_output_shapes
:         А╠
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         pp: : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:         pp
 
_user_specified_nameinputs
К
¤
B__inference_conv2d_3_layer_call_and_return_conditional_losses_7306

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         

Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         

Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ў
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_8868

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:          c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:          "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
╖
B
&__inference_dropout_layer_call_fn_8801

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         77* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_7243h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         77"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         77:W S
/
_output_shapes
:         77
 
_user_specified_nameinputs
С
e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_8853

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ы

є
A__inference_dense_2_layer_call_and_return_conditional_losses_8766

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Д
С
$__inference_model_layer_call_fn_8220
inputs_0
inputs_1!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:	А

unknown_12:
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_7838o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         pp:         pp: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:         pp
"
_user_specified_name
inputs_0:YU
/
_output_shapes
:         pp
"
_user_specified_name
inputs_1
╖
╦
?__inference_model_layer_call_and_return_conditional_losses_8148
input_1
input_2)
sequential_8103:
sequential_8105:)
sequential_8107: 
sequential_8109: )
sequential_8111: @
sequential_8113:@*
sequential_8115:@А
sequential_8117:	А#
sequential_8119:
АА
sequential_8121:	А#
sequential_8123:
АА
sequential_8125:	А
dense_2_8142:	А
dense_2_8144:
identityИвdense_2/StatefulPartitionedCallв"sequential/StatefulPartitionedCallв$sequential/StatefulPartitionedCall_1▓
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_8103sequential_8105sequential_8107sequential_8109sequential_8111sequential_8113sequential_8115sequential_8117sequential_8119sequential_8121sequential_8123sequential_8125*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7622┤
$sequential/StatefulPartitionedCall_1StatefulPartitionedCallinput_2sequential_8103sequential_8105sequential_8107sequential_8109sequential_8111sequential_8113sequential_8115sequential_8117sequential_8119sequential_8121sequential_8123sequential_8125*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7622И
lambda/PartitionedCallPartitionedCall+sequential/StatefulPartitionedCall:output:0-sequential/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_lambda_layer_call_and_return_conditional_losses_7896 
dense_2/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:0dense_2_8142dense_2_8144*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_7831w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┤
NoOpNoOp ^dense_2/StatefulPartitionedCall#^sequential/StatefulPartitionedCall%^sequential/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         pp:         pp: : : : : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential/StatefulPartitionedCall_1$sequential/StatefulPartitionedCall_1:X T
/
_output_shapes
:         pp
!
_user_specified_name	input_1:XT
/
_output_shapes
:         pp
!
_user_specified_name	input_2
╞о
э
__inference__wrapped_model_7165
input_1
input_2P
6model_sequential_conv2d_conv2d_readvariableop_resource:E
7model_sequential_conv2d_biasadd_readvariableop_resource:R
8model_sequential_conv2d_1_conv2d_readvariableop_resource: G
9model_sequential_conv2d_1_biasadd_readvariableop_resource: R
8model_sequential_conv2d_2_conv2d_readvariableop_resource: @G
9model_sequential_conv2d_2_biasadd_readvariableop_resource:@S
8model_sequential_conv2d_3_conv2d_readvariableop_resource:@АH
9model_sequential_conv2d_3_biasadd_readvariableop_resource:	АI
5model_sequential_dense_matmul_readvariableop_resource:
ААE
6model_sequential_dense_biasadd_readvariableop_resource:	АK
7model_sequential_dense_1_matmul_readvariableop_resource:
ААG
8model_sequential_dense_1_biasadd_readvariableop_resource:	А?
,model_dense_2_matmul_readvariableop_resource:	А;
-model_dense_2_biasadd_readvariableop_resource:
identityИв$model/dense_2/BiasAdd/ReadVariableOpв#model/dense_2/MatMul/ReadVariableOpв.model/sequential/conv2d/BiasAdd/ReadVariableOpв0model/sequential/conv2d/BiasAdd_1/ReadVariableOpв-model/sequential/conv2d/Conv2D/ReadVariableOpв/model/sequential/conv2d/Conv2D_1/ReadVariableOpв0model/sequential/conv2d_1/BiasAdd/ReadVariableOpв2model/sequential/conv2d_1/BiasAdd_1/ReadVariableOpв/model/sequential/conv2d_1/Conv2D/ReadVariableOpв1model/sequential/conv2d_1/Conv2D_1/ReadVariableOpв0model/sequential/conv2d_2/BiasAdd/ReadVariableOpв2model/sequential/conv2d_2/BiasAdd_1/ReadVariableOpв/model/sequential/conv2d_2/Conv2D/ReadVariableOpв1model/sequential/conv2d_2/Conv2D_1/ReadVariableOpв0model/sequential/conv2d_3/BiasAdd/ReadVariableOpв2model/sequential/conv2d_3/BiasAdd_1/ReadVariableOpв/model/sequential/conv2d_3/Conv2D/ReadVariableOpв1model/sequential/conv2d_3/Conv2D_1/ReadVariableOpв-model/sequential/dense/BiasAdd/ReadVariableOpв/model/sequential/dense/BiasAdd_1/ReadVariableOpв,model/sequential/dense/MatMul/ReadVariableOpв.model/sequential/dense/MatMul_1/ReadVariableOpв/model/sequential/dense_1/BiasAdd/ReadVariableOpв1model/sequential/dense_1/BiasAdd_1/ReadVariableOpв.model/sequential/dense_1/MatMul/ReadVariableOpв0model/sequential/dense_1/MatMul_1/ReadVariableOpм
-model/sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp6model_sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╦
model/sequential/conv2d/Conv2DConv2Dinput_15model/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         nn*
paddingVALID*
strides
в
.model/sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp7model_sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0┼
model/sequential/conv2d/BiasAddBiasAdd'model/sequential/conv2d/Conv2D:output:06model/sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         nnИ
model/sequential/conv2d/ReluRelu(model/sequential/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         nn╩
&model/sequential/max_pooling2d/MaxPoolMaxPool*model/sequential/conv2d/Relu:activations:0*/
_output_shapes
:         77*
ksize
*
paddingVALID*
strides
Ш
!model/sequential/dropout/IdentityIdentity/model/sequential/max_pooling2d/MaxPool:output:0*
T0*/
_output_shapes
:         77░
/model/sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp8model_sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Є
 model/sequential/conv2d_1/Conv2DConv2D*model/sequential/dropout/Identity:output:07model/sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         55 *
paddingVALID*
strides
ж
0model/sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp9model_sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╦
!model/sequential/conv2d_1/BiasAddBiasAdd)model/sequential/conv2d_1/Conv2D:output:08model/sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         55 М
model/sequential/conv2d_1/ReluRelu*model/sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         55 ╬
(model/sequential/max_pooling2d_1/MaxPoolMaxPool,model/sequential/conv2d_1/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
Ь
#model/sequential/dropout_1/IdentityIdentity1model/sequential/max_pooling2d_1/MaxPool:output:0*
T0*/
_output_shapes
:          ░
/model/sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp8model_sequential_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ї
 model/sequential/conv2d_2/Conv2DConv2D,model/sequential/dropout_1/Identity:output:07model/sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
ж
0model/sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp9model_sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╦
!model/sequential/conv2d_2/BiasAddBiasAdd)model/sequential/conv2d_2/Conv2D:output:08model/sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @М
model/sequential/conv2d_2/ReluRelu*model/sequential/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:         @╬
(model/sequential/max_pooling2d_2/MaxPoolMaxPool,model/sequential/conv2d_2/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
Ь
#model/sequential/dropout_2/IdentityIdentity1model/sequential/max_pooling2d_2/MaxPool:output:0*
T0*/
_output_shapes
:         @▒
/model/sequential/conv2d_3/Conv2D/ReadVariableOpReadVariableOp8model_sequential_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0ї
 model/sequential/conv2d_3/Conv2DConv2D,model/sequential/dropout_2/Identity:output:07model/sequential/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

А*
paddingVALID*
strides
з
0model/sequential/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp9model_sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╠
!model/sequential/conv2d_3/BiasAddBiasAdd)model/sequential/conv2d_3/Conv2D:output:08model/sequential/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

АН
model/sequential/conv2d_3/ReluRelu*model/sequential/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:         

А╧
(model/sequential/max_pooling2d_3/MaxPoolMaxPool,model/sequential/conv2d_3/Relu:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
Э
#model/sequential/dropout_3/IdentityIdentity1model/sequential/max_pooling2d_3/MaxPool:output:0*
T0*0
_output_shapes
:         Аo
model/sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    А  ╡
 model/sequential/flatten/ReshapeReshape,model/sequential/dropout_3/Identity:output:0'model/sequential/flatten/Const:output:0*
T0*(
_output_shapes
:         Ад
,model/sequential/dense/MatMul/ReadVariableOpReadVariableOp5model_sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╗
model/sequential/dense/MatMulMatMul)model/sequential/flatten/Reshape:output:04model/sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аб
-model/sequential/dense/BiasAdd/ReadVariableOpReadVariableOp6model_sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╝
model/sequential/dense/BiasAddBiasAdd'model/sequential/dense/MatMul:product:05model/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А
model/sequential/dense/ReluRelu'model/sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:         Аи
.model/sequential/dense_1/MatMul/ReadVariableOpReadVariableOp7model_sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0┐
model/sequential/dense_1/MatMulMatMul)model/sequential/dense/Relu:activations:06model/sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ае
/model/sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp8model_sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┬
 model/sequential/dense_1/BiasAddBiasAdd)model/sequential/dense_1/MatMul:product:07model/sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
model/sequential/dense_1/ReluRelu)model/sequential/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         Ао
/model/sequential/conv2d/Conv2D_1/ReadVariableOpReadVariableOp6model_sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0╧
 model/sequential/conv2d/Conv2D_1Conv2Dinput_27model/sequential/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         nn*
paddingVALID*
strides
д
0model/sequential/conv2d/BiasAdd_1/ReadVariableOpReadVariableOp7model_sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╦
!model/sequential/conv2d/BiasAdd_1BiasAdd)model/sequential/conv2d/Conv2D_1:output:08model/sequential/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         nnМ
model/sequential/conv2d/Relu_1Relu*model/sequential/conv2d/BiasAdd_1:output:0*
T0*/
_output_shapes
:         nn╬
(model/sequential/max_pooling2d/MaxPool_1MaxPool,model/sequential/conv2d/Relu_1:activations:0*/
_output_shapes
:         77*
ksize
*
paddingVALID*
strides
Ь
#model/sequential/dropout/Identity_1Identity1model/sequential/max_pooling2d/MaxPool_1:output:0*
T0*/
_output_shapes
:         77▓
1model/sequential/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOp8model_sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0°
"model/sequential/conv2d_1/Conv2D_1Conv2D,model/sequential/dropout/Identity_1:output:09model/sequential/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         55 *
paddingVALID*
strides
и
2model/sequential/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOp9model_sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╤
#model/sequential/conv2d_1/BiasAdd_1BiasAdd+model/sequential/conv2d_1/Conv2D_1:output:0:model/sequential/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         55 Р
 model/sequential/conv2d_1/Relu_1Relu,model/sequential/conv2d_1/BiasAdd_1:output:0*
T0*/
_output_shapes
:         55 ╥
*model/sequential/max_pooling2d_1/MaxPool_1MaxPool.model/sequential/conv2d_1/Relu_1:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
а
%model/sequential/dropout_1/Identity_1Identity3model/sequential/max_pooling2d_1/MaxPool_1:output:0*
T0*/
_output_shapes
:          ▓
1model/sequential/conv2d_2/Conv2D_1/ReadVariableOpReadVariableOp8model_sequential_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0·
"model/sequential/conv2d_2/Conv2D_1Conv2D.model/sequential/dropout_1/Identity_1:output:09model/sequential/conv2d_2/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
и
2model/sequential/conv2d_2/BiasAdd_1/ReadVariableOpReadVariableOp9model_sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╤
#model/sequential/conv2d_2/BiasAdd_1BiasAdd+model/sequential/conv2d_2/Conv2D_1:output:0:model/sequential/conv2d_2/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @Р
 model/sequential/conv2d_2/Relu_1Relu,model/sequential/conv2d_2/BiasAdd_1:output:0*
T0*/
_output_shapes
:         @╥
*model/sequential/max_pooling2d_2/MaxPool_1MaxPool.model/sequential/conv2d_2/Relu_1:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
а
%model/sequential/dropout_2/Identity_1Identity3model/sequential/max_pooling2d_2/MaxPool_1:output:0*
T0*/
_output_shapes
:         @│
1model/sequential/conv2d_3/Conv2D_1/ReadVariableOpReadVariableOp8model_sequential_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0√
"model/sequential/conv2d_3/Conv2D_1Conv2D.model/sequential/dropout_2/Identity_1:output:09model/sequential/conv2d_3/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

А*
paddingVALID*
strides
й
2model/sequential/conv2d_3/BiasAdd_1/ReadVariableOpReadVariableOp9model_sequential_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╥
#model/sequential/conv2d_3/BiasAdd_1BiasAdd+model/sequential/conv2d_3/Conv2D_1:output:0:model/sequential/conv2d_3/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

АС
 model/sequential/conv2d_3/Relu_1Relu,model/sequential/conv2d_3/BiasAdd_1:output:0*
T0*0
_output_shapes
:         

А╙
*model/sequential/max_pooling2d_3/MaxPool_1MaxPool.model/sequential/conv2d_3/Relu_1:activations:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
б
%model/sequential/dropout_3/Identity_1Identity3model/sequential/max_pooling2d_3/MaxPool_1:output:0*
T0*0
_output_shapes
:         Аq
 model/sequential/flatten/Const_1Const*
_output_shapes
:*
dtype0*
valueB"    А  ╗
"model/sequential/flatten/Reshape_1Reshape.model/sequential/dropout_3/Identity_1:output:0)model/sequential/flatten/Const_1:output:0*
T0*(
_output_shapes
:         Аж
.model/sequential/dense/MatMul_1/ReadVariableOpReadVariableOp5model_sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0┴
model/sequential/dense/MatMul_1MatMul+model/sequential/flatten/Reshape_1:output:06model/sequential/dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аг
/model/sequential/dense/BiasAdd_1/ReadVariableOpReadVariableOp6model_sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┬
 model/sequential/dense/BiasAdd_1BiasAdd)model/sequential/dense/MatMul_1:product:07model/sequential/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
model/sequential/dense/Relu_1Relu)model/sequential/dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:         Ак
0model/sequential/dense_1/MatMul_1/ReadVariableOpReadVariableOp7model_sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0┼
!model/sequential/dense_1/MatMul_1MatMul+model/sequential/dense/Relu_1:activations:08model/sequential/dense_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аз
1model/sequential/dense_1/BiasAdd_1/ReadVariableOpReadVariableOp8model_sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╚
"model/sequential/dense_1/BiasAdd_1BiasAdd+model/sequential/dense_1/MatMul_1:product:09model/sequential/dense_1/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЗ
model/sequential/dense_1/Relu_1Relu+model/sequential/dense_1/BiasAdd_1:output:0*
T0*(
_output_shapes
:         Аж
model/lambda/subSub+model/sequential/dense_1/Relu:activations:0-model/sequential/dense_1/Relu_1:activations:0*
T0*(
_output_shapes
:         А`
model/lambda/AbsAbsmodel/lambda/sub:z:0*
T0*(
_output_shapes
:         АС
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0У
model/dense_2/MatMulMatMulmodel/lambda/Abs:y:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         О
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0а
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
model/dense_2/SigmoidSigmoidmodel/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         h
IdentityIdentitymodel/dense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ╧

NoOpNoOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp/^model/sequential/conv2d/BiasAdd/ReadVariableOp1^model/sequential/conv2d/BiasAdd_1/ReadVariableOp.^model/sequential/conv2d/Conv2D/ReadVariableOp0^model/sequential/conv2d/Conv2D_1/ReadVariableOp1^model/sequential/conv2d_1/BiasAdd/ReadVariableOp3^model/sequential/conv2d_1/BiasAdd_1/ReadVariableOp0^model/sequential/conv2d_1/Conv2D/ReadVariableOp2^model/sequential/conv2d_1/Conv2D_1/ReadVariableOp1^model/sequential/conv2d_2/BiasAdd/ReadVariableOp3^model/sequential/conv2d_2/BiasAdd_1/ReadVariableOp0^model/sequential/conv2d_2/Conv2D/ReadVariableOp2^model/sequential/conv2d_2/Conv2D_1/ReadVariableOp1^model/sequential/conv2d_3/BiasAdd/ReadVariableOp3^model/sequential/conv2d_3/BiasAdd_1/ReadVariableOp0^model/sequential/conv2d_3/Conv2D/ReadVariableOp2^model/sequential/conv2d_3/Conv2D_1/ReadVariableOp.^model/sequential/dense/BiasAdd/ReadVariableOp0^model/sequential/dense/BiasAdd_1/ReadVariableOp-^model/sequential/dense/MatMul/ReadVariableOp/^model/sequential/dense/MatMul_1/ReadVariableOp0^model/sequential/dense_1/BiasAdd/ReadVariableOp2^model/sequential/dense_1/BiasAdd_1/ReadVariableOp/^model/sequential/dense_1/MatMul/ReadVariableOp1^model/sequential/dense_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         pp:         pp: : : : : : : : : : : : : : 2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2`
.model/sequential/conv2d/BiasAdd/ReadVariableOp.model/sequential/conv2d/BiasAdd/ReadVariableOp2d
0model/sequential/conv2d/BiasAdd_1/ReadVariableOp0model/sequential/conv2d/BiasAdd_1/ReadVariableOp2^
-model/sequential/conv2d/Conv2D/ReadVariableOp-model/sequential/conv2d/Conv2D/ReadVariableOp2b
/model/sequential/conv2d/Conv2D_1/ReadVariableOp/model/sequential/conv2d/Conv2D_1/ReadVariableOp2d
0model/sequential/conv2d_1/BiasAdd/ReadVariableOp0model/sequential/conv2d_1/BiasAdd/ReadVariableOp2h
2model/sequential/conv2d_1/BiasAdd_1/ReadVariableOp2model/sequential/conv2d_1/BiasAdd_1/ReadVariableOp2b
/model/sequential/conv2d_1/Conv2D/ReadVariableOp/model/sequential/conv2d_1/Conv2D/ReadVariableOp2f
1model/sequential/conv2d_1/Conv2D_1/ReadVariableOp1model/sequential/conv2d_1/Conv2D_1/ReadVariableOp2d
0model/sequential/conv2d_2/BiasAdd/ReadVariableOp0model/sequential/conv2d_2/BiasAdd/ReadVariableOp2h
2model/sequential/conv2d_2/BiasAdd_1/ReadVariableOp2model/sequential/conv2d_2/BiasAdd_1/ReadVariableOp2b
/model/sequential/conv2d_2/Conv2D/ReadVariableOp/model/sequential/conv2d_2/Conv2D/ReadVariableOp2f
1model/sequential/conv2d_2/Conv2D_1/ReadVariableOp1model/sequential/conv2d_2/Conv2D_1/ReadVariableOp2d
0model/sequential/conv2d_3/BiasAdd/ReadVariableOp0model/sequential/conv2d_3/BiasAdd/ReadVariableOp2h
2model/sequential/conv2d_3/BiasAdd_1/ReadVariableOp2model/sequential/conv2d_3/BiasAdd_1/ReadVariableOp2b
/model/sequential/conv2d_3/Conv2D/ReadVariableOp/model/sequential/conv2d_3/Conv2D/ReadVariableOp2f
1model/sequential/conv2d_3/Conv2D_1/ReadVariableOp1model/sequential/conv2d_3/Conv2D_1/ReadVariableOp2^
-model/sequential/dense/BiasAdd/ReadVariableOp-model/sequential/dense/BiasAdd/ReadVariableOp2b
/model/sequential/dense/BiasAdd_1/ReadVariableOp/model/sequential/dense/BiasAdd_1/ReadVariableOp2\
,model/sequential/dense/MatMul/ReadVariableOp,model/sequential/dense/MatMul/ReadVariableOp2`
.model/sequential/dense/MatMul_1/ReadVariableOp.model/sequential/dense/MatMul_1/ReadVariableOp2b
/model/sequential/dense_1/BiasAdd/ReadVariableOp/model/sequential/dense_1/BiasAdd/ReadVariableOp2f
1model/sequential/dense_1/BiasAdd_1/ReadVariableOp1model/sequential/dense_1/BiasAdd_1/ReadVariableOp2`
.model/sequential/dense_1/MatMul/ReadVariableOp.model/sequential/dense_1/MatMul/ReadVariableOp2d
0model/sequential/dense_1/MatMul_1/ReadVariableOp0model/sequential/dense_1/MatMul_1/ReadVariableOp:X T
/
_output_shapes
:         pp
!
_user_specified_name	input_1:XT
/
_output_shapes
:         pp
!
_user_specified_name	input_2
╚

b
C__inference_dropout_3_layer_call_and_return_conditional_losses_8994

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
К
¤
B__inference_conv2d_3_layer_call_and_return_conditional_losses_8957

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

А*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         

Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         

Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Д
С
$__inference_model_layer_call_fn_8254
inputs_0
inputs_1!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:	А

unknown_12:
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_7985o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         pp:         pp: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:         pp
"
_user_specified_name
inputs_0:YU
/
_output_shapes
:         pp
"
_user_specified_name
inputs_1
Ў
a
C__inference_dropout_2_layer_call_and_return_conditional_losses_8925

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         @c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
П
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_8796

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Й
l
@__inference_lambda_layer_call_and_return_conditional_losses_8746
inputs_0
inputs_1
identityQ
subSubinputs_0inputs_1*
T0*(
_output_shapes
:         АF
AbsAbssub:z:0*
T0*(
_output_shapes
:         АP
IdentityIdentityAbs:y:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:         А:         А:R N
(
_output_shapes
:         А
"
_user_specified_name
inputs_0:RN
(
_output_shapes
:         А
"
_user_specified_name
inputs_1
Й
_
&__inference_dropout_layer_call_fn_8806

inputs
identityИвStatefulPartitionedCall─
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         77* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_7535w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         77`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         7722
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         77
 
_user_specified_nameinputs
┤
╙
)__inference_sequential_layer_call_fn_7678
conv2d_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7622p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         pp: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:         pp
&
_user_specified_nameconv2d_input
┤
J
.__inference_max_pooling2d_1_layer_call_fn_8848

inputs
identity╫
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7186Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┐

`
A__inference_dropout_layer_call_and_return_conditional_losses_8823

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         77C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         77*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         77T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:         77i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:         77"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         77:W S
/
_output_shapes
:         77
 
_user_specified_nameinputs
Ю9
┐
D__inference_sequential_layer_call_and_return_conditional_losses_7363

inputs%
conv2d_7232:
conv2d_7234:'
conv2d_1_7257: 
conv2d_1_7259: '
conv2d_2_7282: @
conv2d_2_7284:@(
conv2d_3_7307:@А
conv2d_3_7309:	А

dense_7340:
АА

dense_7342:	А 
dense_1_7357:
АА
dense_1_7359:	А
identityИвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallъ
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_7232conv2d_7234*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         nn*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_7231щ
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         77* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7174▄
dropout/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         77* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_7243М
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0conv2d_1_7257conv2d_1_7259*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         55 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_7256я
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_7186т
dropout_1/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_7268О
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv2d_2_7282conv2d_2_7284*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_7281я
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_7198т
dropout_2/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_7293П
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0conv2d_3_7307conv2d_3_7309*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         

А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_7306Ё
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_7210у
dropout_3/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_7318╤
flatten/PartitionedCallPartitionedCall"dropout_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_7326∙
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_7340
dense_7342*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_7339З
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_7357dense_1_7359*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_7356x
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         АТ
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:         pp: : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:W S
/
_output_shapes
:         pp
 
_user_specified_nameinputs
┼
]
A__inference_flatten_layer_call_and_return_conditional_losses_9005

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    А  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
┴

b
C__inference_dropout_1_layer_call_and_return_conditional_losses_7502

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:          C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:          *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:          T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:          i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
С
e
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_8967

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
В
√
B__inference_conv2d_1_layer_call_and_return_conditional_losses_7256

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         55 *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         55 X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         55 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         55 w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         77: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         77
 
_user_specified_nameinputs
░
H
,__inference_max_pooling2d_layer_call_fn_8791

inputs
identity╒
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_7174Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
■
П
$__inference_model_layer_call_fn_8050
input_1
input_2!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А
	unknown_7:
АА
	unknown_8:	А
	unknown_9:
АА

unknown_10:	А

unknown_11:	А

unknown_12:
identityИвStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_7985o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         pp:         pp: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         pp
!
_user_specified_name	input_1:XT
/
_output_shapes
:         pp
!
_user_specified_name	input_2
ц
Ь
'__inference_conv2d_2_layer_call_fn_8889

inputs!
unknown: @
	unknown_0:@
identityИвStatefulPartitionedCall▀
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_7281w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
╖
╦
?__inference_model_layer_call_and_return_conditional_losses_8099
input_1
input_2)
sequential_8054:
sequential_8056:)
sequential_8058: 
sequential_8060: )
sequential_8062: @
sequential_8064:@*
sequential_8066:@А
sequential_8068:	А#
sequential_8070:
АА
sequential_8072:	А#
sequential_8074:
АА
sequential_8076:	А
dense_2_8093:	А
dense_2_8095:
identityИвdense_2/StatefulPartitionedCallв"sequential/StatefulPartitionedCallв$sequential/StatefulPartitionedCall_1▓
"sequential/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_8054sequential_8056sequential_8058sequential_8060sequential_8062sequential_8064sequential_8066sequential_8068sequential_8070sequential_8072sequential_8074sequential_8076*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7363┤
$sequential/StatefulPartitionedCall_1StatefulPartitionedCallinput_2sequential_8054sequential_8056sequential_8058sequential_8060sequential_8062sequential_8064sequential_8066sequential_8068sequential_8070sequential_8072sequential_8074sequential_8076*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7363И
lambda/PartitionedCallPartitionedCall+sequential/StatefulPartitionedCall:output:0-sequential/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_lambda_layer_call_and_return_conditional_losses_7818 
dense_2/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:0dense_2_8093dense_2_8095*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_7831w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┤
NoOpNoOp ^dense_2/StatefulPartitionedCall#^sequential/StatefulPartitionedCall%^sequential/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         pp:         pp: : : : : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential/StatefulPartitionedCall_1$sequential/StatefulPartitionedCall_1:X T
/
_output_shapes
:         pp
!
_user_specified_name	input_1:XT
/
_output_shapes
:         pp
!
_user_specified_name	input_2
╡
╦
?__inference_model_layer_call_and_return_conditional_losses_7985

inputs
inputs_1)
sequential_7940:
sequential_7942:)
sequential_7944: 
sequential_7946: )
sequential_7948: @
sequential_7950:@*
sequential_7952:@А
sequential_7954:	А#
sequential_7956:
АА
sequential_7958:	А#
sequential_7960:
АА
sequential_7962:	А
dense_2_7979:	А
dense_2_7981:
identityИвdense_2/StatefulPartitionedCallв"sequential/StatefulPartitionedCallв$sequential/StatefulPartitionedCall_1▒
"sequential/StatefulPartitionedCallStatefulPartitionedCallinputssequential_7940sequential_7942sequential_7944sequential_7946sequential_7948sequential_7950sequential_7952sequential_7954sequential_7956sequential_7958sequential_7960sequential_7962*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7622╡
$sequential/StatefulPartitionedCall_1StatefulPartitionedCallinputs_1sequential_7940sequential_7942sequential_7944sequential_7946sequential_7948sequential_7950sequential_7952sequential_7954sequential_7956sequential_7958sequential_7960sequential_7962*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_7622И
lambda/PartitionedCallPartitionedCall+sequential/StatefulPartitionedCall:output:0-sequential/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_lambda_layer_call_and_return_conditional_losses_7896 
dense_2/StatefulPartitionedCallStatefulPartitionedCalllambda/PartitionedCall:output:0dense_2_7979dense_2_7981*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_7831w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ┤
NoOpNoOp ^dense_2/StatefulPartitionedCall#^sequential/StatefulPartitionedCall%^sequential/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:         pp:         pp: : : : : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential/StatefulPartitionedCall_1$sequential/StatefulPartitionedCall_1:W S
/
_output_shapes
:         pp
 
_user_specified_nameinputs:WS
/
_output_shapes
:         pp
 
_user_specified_nameinputs
рZ
о
__inference__traced_save_9213
file_prefix-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop3
/savev2_adam_m_conv2d_kernel_read_readvariableop3
/savev2_adam_v_conv2d_kernel_read_readvariableop1
-savev2_adam_m_conv2d_bias_read_readvariableop1
-savev2_adam_v_conv2d_bias_read_readvariableop5
1savev2_adam_m_conv2d_1_kernel_read_readvariableop5
1savev2_adam_v_conv2d_1_kernel_read_readvariableop3
/savev2_adam_m_conv2d_1_bias_read_readvariableop3
/savev2_adam_v_conv2d_1_bias_read_readvariableop5
1savev2_adam_m_conv2d_2_kernel_read_readvariableop5
1savev2_adam_v_conv2d_2_kernel_read_readvariableop3
/savev2_adam_m_conv2d_2_bias_read_readvariableop3
/savev2_adam_v_conv2d_2_bias_read_readvariableop5
1savev2_adam_m_conv2d_3_kernel_read_readvariableop5
1savev2_adam_v_conv2d_3_kernel_read_readvariableop3
/savev2_adam_m_conv2d_3_bias_read_readvariableop3
/savev2_adam_v_conv2d_3_bias_read_readvariableop2
.savev2_adam_m_dense_kernel_read_readvariableop2
.savev2_adam_v_dense_kernel_read_readvariableop0
,savev2_adam_m_dense_bias_read_readvariableop0
,savev2_adam_v_dense_bias_read_readvariableop4
0savev2_adam_m_dense_1_kernel_read_readvariableop4
0savev2_adam_v_dense_1_kernel_read_readvariableop2
.savev2_adam_m_dense_1_bias_read_readvariableop2
.savev2_adam_v_dense_1_bias_read_readvariableop4
0savev2_adam_m_dense_2_kernel_read_readvariableop4
0savev2_adam_v_dense_2_kernel_read_readvariableop2
.savev2_adam_m_dense_2_bias_read_readvariableop2
.savev2_adam_v_dense_2_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: └
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*щ
value▀B▄1B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╧
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B М
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop/savev2_adam_m_conv2d_kernel_read_readvariableop/savev2_adam_v_conv2d_kernel_read_readvariableop-savev2_adam_m_conv2d_bias_read_readvariableop-savev2_adam_v_conv2d_bias_read_readvariableop1savev2_adam_m_conv2d_1_kernel_read_readvariableop1savev2_adam_v_conv2d_1_kernel_read_readvariableop/savev2_adam_m_conv2d_1_bias_read_readvariableop/savev2_adam_v_conv2d_1_bias_read_readvariableop1savev2_adam_m_conv2d_2_kernel_read_readvariableop1savev2_adam_v_conv2d_2_kernel_read_readvariableop/savev2_adam_m_conv2d_2_bias_read_readvariableop/savev2_adam_v_conv2d_2_bias_read_readvariableop1savev2_adam_m_conv2d_3_kernel_read_readvariableop1savev2_adam_v_conv2d_3_kernel_read_readvariableop/savev2_adam_m_conv2d_3_bias_read_readvariableop/savev2_adam_v_conv2d_3_bias_read_readvariableop.savev2_adam_m_dense_kernel_read_readvariableop.savev2_adam_v_dense_kernel_read_readvariableop,savev2_adam_m_dense_bias_read_readvariableop,savev2_adam_v_dense_bias_read_readvariableop0savev2_adam_m_dense_1_kernel_read_readvariableop0savev2_adam_v_dense_1_kernel_read_readvariableop.savev2_adam_m_dense_1_bias_read_readvariableop.savev2_adam_v_dense_1_bias_read_readvariableop0savev2_adam_m_dense_2_kernel_read_readvariableop0savev2_adam_v_dense_2_kernel_read_readvariableop.savev2_adam_m_dense_2_bias_read_readvariableop.savev2_adam_v_dense_2_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *?
dtypes5
321	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ё
_input_shapes▐
█: :	А:::: : : @:@:@А:А:
АА:А:
АА:А: : ::::: : : : : @: @:@:@:@А:@А:А:А:
АА:
АА:А:А:
АА:
АА:А:А:	А:	А::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	А: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-	)
'
_output_shapes
:@А:!


_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @:,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@А:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:! 

_output_shapes	
:А:&!"
 
_output_shapes
:
АА:&""
 
_output_shapes
:
АА:!#

_output_shapes	
:А:!$

_output_shapes	
:А:&%"
 
_output_shapes
:
АА:&&"
 
_output_shapes
:
АА:!'

_output_shapes	
:А:!(

_output_shapes	
:А:%)!

_output_shapes
:	А:%*!

_output_shapes
:	А: +

_output_shapes
:: ,

_output_shapes
::-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: 
╚

b
C__inference_dropout_3_layer_call_and_return_conditional_losses_7436

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Ы

є
A__inference_dense_2_layer_call_and_return_conditional_losses_7831

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
С
a
(__inference_dropout_3_layer_call_fn_8977

inputs
identityИвStatefulPartitionedCall╟
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_7436x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
┤
J
.__inference_max_pooling2d_2_layer_call_fn_8905

inputs
identity╫
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_7198Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ъ
Ю
'__inference_conv2d_3_layer_call_fn_8946

inputs"
unknown:@А
	unknown_0:	А
identityИвStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         

А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_7306x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         

А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╗
D
(__inference_dropout_2_layer_call_fn_8915

inputs
identity╢
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_7293h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs"Ж
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ў
serving_defaultу
C
input_18
serving_default_input_1:0         pp
C
input_28
serving_default_input_2:0         pp;
dense_20
StatefulPartitionedCall:0         tensorflow/serving/predict:у═
╪
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
О
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
layer-8
layer_with_weights-3
layer-9
layer-10
layer-11
layer-12
layer_with_weights-4
layer-13
layer_with_weights-5
layer-14
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_sequential
е
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

0kernel
1bias"
_tf_keras_layer
Ж
20
31
42
53
64
75
86
97
:8
;9
<10
=11
012
113"
trackable_list_wrapper
Ж
20
31
42
53
64
75
86
97
:8
;9
<10
=11
012
113"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
┼
Ctrace_0
Dtrace_1
Etrace_2
Ftrace_32┌
$__inference_model_layer_call_fn_7869
$__inference_model_layer_call_fn_8220
$__inference_model_layer_call_fn_8254
$__inference_model_layer_call_fn_8050┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zCtrace_0zDtrace_1zEtrace_2zFtrace_3
▒
Gtrace_0
Htrace_1
Itrace_2
Jtrace_32╞
?__inference_model_layer_call_and_return_conditional_losses_8360
?__inference_model_layer_call_and_return_conditional_losses_8522
?__inference_model_layer_call_and_return_conditional_losses_8099
?__inference_model_layer_call_and_return_conditional_losses_8148┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zGtrace_0zHtrace_1zItrace_2zJtrace_3
╙B╨
__inference__wrapped_model_7165input_1input_2"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ь
K
_variables
L_iterations
M_learning_rate
N_index_dict
O
_momentums
P_velocities
Q_update_step_xla"
experimentalOptimizer
,
Rserving_default"
signature_map
▌
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses

2kernel
3bias
 Y_jit_compiled_convolution_op"
_tf_keras_layer
е
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
`	variables
atrainable_variables
bregularization_losses
c	keras_api
d__call__
*e&call_and_return_all_conditional_losses
f_random_generator"
_tf_keras_layer
▌
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses

4kernel
5bias
 m_jit_compiled_convolution_op"
_tf_keras_layer
е
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses
z_random_generator"
_tf_keras_layer
▀
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+А&call_and_return_all_conditional_losses

6kernel
7bias
!Б_jit_compiled_convolution_op"
_tf_keras_layer
л
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses"
_tf_keras_layer
├
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses
О_random_generator"
_tf_keras_layer
ф
П	variables
Рtrainable_variables
Сregularization_losses
Т	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses

8kernel
9bias
!Х_jit_compiled_convolution_op"
_tf_keras_layer
л
Ц	variables
Чtrainable_variables
Шregularization_losses
Щ	keras_api
Ъ__call__
+Ы&call_and_return_all_conditional_losses"
_tf_keras_layer
├
Ь	variables
Эtrainable_variables
Юregularization_losses
Я	keras_api
а__call__
+б&call_and_return_all_conditional_losses
в_random_generator"
_tf_keras_layer
л
г	variables
дtrainable_variables
еregularization_losses
ж	keras_api
з__call__
+и&call_and_return_all_conditional_losses"
_tf_keras_layer
┴
й	variables
кtrainable_variables
лregularization_losses
м	keras_api
н__call__
+о&call_and_return_all_conditional_losses

:kernel
;bias"
_tf_keras_layer
┴
п	variables
░trainable_variables
▒regularization_losses
▓	keras_api
│__call__
+┤&call_and_return_all_conditional_losses

<kernel
=bias"
_tf_keras_layer
v
20
31
42
53
64
75
86
97
:8
;9
<10
=11"
trackable_list_wrapper
v
20
31
42
53
64
75
86
97
:8
;9
<10
=11"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╡non_trainable_variables
╢layers
╖metrics
 ╕layer_regularization_losses
╣layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
с
║trace_0
╗trace_1
╝trace_2
╜trace_32ю
)__inference_sequential_layer_call_fn_7390
)__inference_sequential_layer_call_fn_8551
)__inference_sequential_layer_call_fn_8580
)__inference_sequential_layer_call_fn_7678┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z║trace_0z╗trace_1z╝trace_2z╜trace_3
═
╛trace_0
┐trace_1
└trace_2
┴trace_32┌
D__inference_sequential_layer_call_and_return_conditional_losses_8636
D__inference_sequential_layer_call_and_return_conditional_losses_8720
D__inference_sequential_layer_call_and_return_conditional_losses_7721
D__inference_sequential_layer_call_and_return_conditional_losses_7764┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╛trace_0z┐trace_1z└trace_2z┴trace_3
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┬non_trainable_variables
├layers
─metrics
 ┼layer_regularization_losses
╞layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
╦
╟trace_0
╚trace_12Р
%__inference_lambda_layer_call_fn_8726
%__inference_lambda_layer_call_fn_8732┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╟trace_0z╚trace_1
Б
╔trace_0
╩trace_12╞
@__inference_lambda_layer_call_and_return_conditional_losses_8739
@__inference_lambda_layer_call_and_return_conditional_losses_8746┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╔trace_0z╩trace_1
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
╧layer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
ь
╨trace_02═
&__inference_dense_2_layer_call_fn_8755в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╨trace_0
З
╤trace_02ш
A__inference_dense_2_layer_call_and_return_conditional_losses_8766в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╤trace_0
!:	А2dense_2/kernel
:2dense_2/bias
':%2conv2d/kernel
:2conv2d/bias
):' 2conv2d_1/kernel
: 2conv2d_1/bias
):' @2conv2d_2/kernel
:@2conv2d_2/bias
*:(@А2conv2d_3/kernel
:А2conv2d_3/bias
 :
АА2dense/kernel
:А2
dense/bias
": 
АА2dense_1/kernel
:А2dense_1/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
0
╥0
╙1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 B№
$__inference_model_layer_call_fn_7869input_1input_2"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
БB■
$__inference_model_layer_call_fn_8220inputs_0inputs_1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
БB■
$__inference_model_layer_call_fn_8254inputs_0inputs_1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
$__inference_model_layer_call_fn_8050input_1input_2"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЬBЩ
?__inference_model_layer_call_and_return_conditional_losses_8360inputs_0inputs_1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЬBЩ
?__inference_model_layer_call_and_return_conditional_losses_8522inputs_0inputs_1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЪBЧ
?__inference_model_layer_call_and_return_conditional_losses_8099input_1input_2"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЪBЧ
?__inference_model_layer_call_and_return_conditional_losses_8148input_1input_2"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ъ
L0
╘1
╒2
╓3
╫4
╪5
┘6
┌7
█8
▄9
▌10
▐11
▀12
р13
с14
т15
у16
ф17
х18
ц19
ч20
ш21
щ22
ъ23
ы24
ь25
э26
ю27
я28"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
Ф
╘0
╓1
╪2
┌3
▄4
▐5
р6
т7
ф8
ц9
ш10
ъ11
ь12
ю13"
trackable_list_wrapper
Ф
╒0
╫1
┘2
█3
▌4
▀5
с6
у7
х8
ч9
щ10
ы11
э12
я13"
trackable_list_wrapper
┐2╝╣
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
╨B═
"__inference_signature_wrapper_8186input_1input_2"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ёnon_trainable_variables
ёlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
ы
їtrace_02╠
%__inference_conv2d_layer_call_fn_8775в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zїtrace_0
Ж
Ўtrace_02ч
@__inference_conv2d_layer_call_and_return_conditional_losses_8786в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЎtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ўnon_trainable_variables
°layers
∙metrics
 ·layer_regularization_losses
√layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
Є
№trace_02╙
,__inference_max_pooling2d_layer_call_fn_8791в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z№trace_0
Н
¤trace_02ю
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_8796в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z¤trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
■non_trainable_variables
 layers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
`	variables
atrainable_variables
bregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
┴
Гtrace_0
Дtrace_12Ж
&__inference_dropout_layer_call_fn_8801
&__inference_dropout_layer_call_fn_8806│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zГtrace_0zДtrace_1
ў
Еtrace_0
Жtrace_12╝
A__inference_dropout_layer_call_and_return_conditional_losses_8811
A__inference_dropout_layer_call_and_return_conditional_losses_8823│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЕtrace_0zЖtrace_1
"
_generic_user_object
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
▓
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
э
Мtrace_02╬
'__inference_conv2d_1_layer_call_fn_8832в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zМtrace_0
И
Нtrace_02щ
B__inference_conv2d_1_layer_call_and_return_conditional_losses_8843в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zНtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
Ї
Уtrace_02╒
.__inference_max_pooling2d_1_layer_call_fn_8848в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zУtrace_0
П
Фtrace_02Ё
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_8853в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zФtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
┼
Ъtrace_0
Ыtrace_12К
(__inference_dropout_1_layer_call_fn_8858
(__inference_dropout_1_layer_call_fn_8863│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЪtrace_0zЫtrace_1
√
Ьtrace_0
Эtrace_12└
C__inference_dropout_1_layer_call_and_return_conditional_losses_8868
C__inference_dropout_1_layer_call_and_return_conditional_losses_8880│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЬtrace_0zЭtrace_1
"
_generic_user_object
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
┤
Юnon_trainable_variables
Яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
э
гtrace_02╬
'__inference_conv2d_2_layer_call_fn_8889в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zгtrace_0
И
дtrace_02щ
B__inference_conv2d_2_layer_call_and_return_conditional_losses_8900в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zдtrace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
Ї
кtrace_02╒
.__inference_max_pooling2d_2_layer_call_fn_8905в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zкtrace_0
П
лtrace_02Ё
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_8910в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zлtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
░layer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
┼
▒trace_0
▓trace_12К
(__inference_dropout_2_layer_call_fn_8915
(__inference_dropout_2_layer_call_fn_8920│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▒trace_0z▓trace_1
√
│trace_0
┤trace_12└
C__inference_dropout_2_layer_call_and_return_conditional_losses_8925
C__inference_dropout_2_layer_call_and_return_conditional_losses_8937│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z│trace_0z┤trace_1
"
_generic_user_object
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╡non_trainable_variables
╢layers
╖metrics
 ╕layer_regularization_losses
╣layer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
э
║trace_02╬
'__inference_conv2d_3_layer_call_fn_8946в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z║trace_0
И
╗trace_02щ
B__inference_conv2d_3_layer_call_and_return_conditional_losses_8957в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╗trace_0
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╝non_trainable_variables
╜layers
╛metrics
 ┐layer_regularization_losses
└layer_metrics
Ц	variables
Чtrainable_variables
Шregularization_losses
Ъ__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses"
_generic_user_object
Ї
┴trace_02╒
.__inference_max_pooling2d_3_layer_call_fn_8962в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┴trace_0
П
┬trace_02Ё
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_8967в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┬trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
├non_trainable_variables
─layers
┼metrics
 ╞layer_regularization_losses
╟layer_metrics
Ь	variables
Эtrainable_variables
Юregularization_losses
а__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
┼
╚trace_0
╔trace_12К
(__inference_dropout_3_layer_call_fn_8972
(__inference_dropout_3_layer_call_fn_8977│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╚trace_0z╔trace_1
√
╩trace_0
╦trace_12└
C__inference_dropout_3_layer_call_and_return_conditional_losses_8982
C__inference_dropout_3_layer_call_and_return_conditional_losses_8994│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╩trace_0z╦trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╠non_trainable_variables
═layers
╬metrics
 ╧layer_regularization_losses
╨layer_metrics
г	variables
дtrainable_variables
еregularization_losses
з__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
ь
╤trace_02═
&__inference_flatten_layer_call_fn_8999в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╤trace_0
З
╥trace_02ш
A__inference_flatten_layer_call_and_return_conditional_losses_9005в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╥trace_0
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╙non_trainable_variables
╘layers
╒metrics
 ╓layer_regularization_losses
╫layer_metrics
й	variables
кtrainable_variables
лregularization_losses
н__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
ъ
╪trace_02╦
$__inference_dense_layer_call_fn_9014в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╪trace_0
Е
┘trace_02ц
?__inference_dense_layer_call_and_return_conditional_losses_9025в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┘trace_0
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┌non_trainable_variables
█layers
▄metrics
 ▌layer_regularization_losses
▐layer_metrics
п	variables
░trainable_variables
▒regularization_losses
│__call__
+┤&call_and_return_all_conditional_losses
'┤"call_and_return_conditional_losses"
_generic_user_object
ь
▀trace_02═
&__inference_dense_1_layer_call_fn_9034в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▀trace_0
З
рtrace_02ш
A__inference_dense_1_layer_call_and_return_conditional_losses_9045в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zрtrace_0
 "
trackable_list_wrapper
О
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
АB¤
)__inference_sequential_layer_call_fn_7390conv2d_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
)__inference_sequential_layer_call_fn_8551inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
)__inference_sequential_layer_call_fn_8580inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
АB¤
)__inference_sequential_layer_call_fn_7678conv2d_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ХBТ
D__inference_sequential_layer_call_and_return_conditional_losses_8636inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ХBТ
D__inference_sequential_layer_call_and_return_conditional_losses_8720inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЫBШ
D__inference_sequential_layer_call_and_return_conditional_losses_7721conv2d_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЫBШ
D__inference_sequential_layer_call_and_return_conditional_losses_7764conv2d_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
ВB 
%__inference_lambda_layer_call_fn_8726inputs_0inputs_1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ВB 
%__inference_lambda_layer_call_fn_8732inputs_0inputs_1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЭBЪ
@__inference_lambda_layer_call_and_return_conditional_losses_8739inputs_0inputs_1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЭBЪ
@__inference_lambda_layer_call_and_return_conditional_losses_8746inputs_0inputs_1"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
┌B╫
&__inference_dense_2_layer_call_fn_8755inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
A__inference_dense_2_layer_call_and_return_conditional_losses_8766inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
R
с	variables
т	keras_api

уtotal

фcount"
_tf_keras_metric
c
х	variables
ц	keras_api

чtotal

шcount
щ
_fn_kwargs"
_tf_keras_metric
,:*2Adam/m/conv2d/kernel
,:*2Adam/v/conv2d/kernel
:2Adam/m/conv2d/bias
:2Adam/v/conv2d/bias
.:, 2Adam/m/conv2d_1/kernel
.:, 2Adam/v/conv2d_1/kernel
 : 2Adam/m/conv2d_1/bias
 : 2Adam/v/conv2d_1/bias
.:, @2Adam/m/conv2d_2/kernel
.:, @2Adam/v/conv2d_2/kernel
 :@2Adam/m/conv2d_2/bias
 :@2Adam/v/conv2d_2/bias
/:-@А2Adam/m/conv2d_3/kernel
/:-@А2Adam/v/conv2d_3/kernel
!:А2Adam/m/conv2d_3/bias
!:А2Adam/v/conv2d_3/bias
%:#
АА2Adam/m/dense/kernel
%:#
АА2Adam/v/dense/kernel
:А2Adam/m/dense/bias
:А2Adam/v/dense/bias
':%
АА2Adam/m/dense_1/kernel
':%
АА2Adam/v/dense_1/kernel
 :А2Adam/m/dense_1/bias
 :А2Adam/v/dense_1/bias
&:$	А2Adam/m/dense_2/kernel
&:$	А2Adam/v/dense_2/kernel
:2Adam/m/dense_2/bias
:2Adam/v/dense_2/bias
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
┘B╓
%__inference_conv2d_layer_call_fn_8775inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЇBё
@__inference_conv2d_layer_call_and_return_conditional_losses_8786inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
рB▌
,__inference_max_pooling2d_layer_call_fn_8791inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_8796inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
ыBш
&__inference_dropout_layer_call_fn_8801inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ыBш
&__inference_dropout_layer_call_fn_8806inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЖBГ
A__inference_dropout_layer_call_and_return_conditional_losses_8811inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЖBГ
A__inference_dropout_layer_call_and_return_conditional_losses_8823inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
█B╪
'__inference_conv2d_1_layer_call_fn_8832inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЎBє
B__inference_conv2d_1_layer_call_and_return_conditional_losses_8843inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
тB▀
.__inference_max_pooling2d_1_layer_call_fn_8848inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_8853inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
эBъ
(__inference_dropout_1_layer_call_fn_8858inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
(__inference_dropout_1_layer_call_fn_8863inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ИBЕ
C__inference_dropout_1_layer_call_and_return_conditional_losses_8868inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ИBЕ
C__inference_dropout_1_layer_call_and_return_conditional_losses_8880inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
█B╪
'__inference_conv2d_2_layer_call_fn_8889inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЎBє
B__inference_conv2d_2_layer_call_and_return_conditional_losses_8900inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
тB▀
.__inference_max_pooling2d_2_layer_call_fn_8905inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_8910inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
эBъ
(__inference_dropout_2_layer_call_fn_8915inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
(__inference_dropout_2_layer_call_fn_8920inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ИBЕ
C__inference_dropout_2_layer_call_and_return_conditional_losses_8925inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ИBЕ
C__inference_dropout_2_layer_call_and_return_conditional_losses_8937inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
█B╪
'__inference_conv2d_3_layer_call_fn_8946inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЎBє
B__inference_conv2d_3_layer_call_and_return_conditional_losses_8957inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
тB▀
.__inference_max_pooling2d_3_layer_call_fn_8962inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_8967inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
эBъ
(__inference_dropout_3_layer_call_fn_8972inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
(__inference_dropout_3_layer_call_fn_8977inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ИBЕ
C__inference_dropout_3_layer_call_and_return_conditional_losses_8982inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ИBЕ
C__inference_dropout_3_layer_call_and_return_conditional_losses_8994inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
┌B╫
&__inference_flatten_layer_call_fn_8999inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
A__inference_flatten_layer_call_and_return_conditional_losses_9005inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╪B╒
$__inference_dense_layer_call_fn_9014inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
?__inference_dense_layer_call_and_return_conditional_losses_9025inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
┌B╫
&__inference_dense_1_layer_call_fn_9034inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
A__inference_dense_1_layer_call_and_return_conditional_losses_9045inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
0
у0
ф1"
trackable_list_wrapper
.
с	variables"
_generic_user_object
:  (2total
:  (2count
0
ч0
ш1"
trackable_list_wrapper
.
х	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper╤
__inference__wrapped_model_7165н23456789:;<=01hвe
^в[
YЪV
)К&
input_1         pp
)К&
input_2         pp
к "1к.
,
dense_2!К
dense_2         ╣
B__inference_conv2d_1_layer_call_and_return_conditional_losses_8843s457в4
-в*
(К%
inputs         77
к "4в1
*К'
tensor_0         55 
Ъ У
'__inference_conv2d_1_layer_call_fn_8832h457в4
-в*
(К%
inputs         77
к ")К&
unknown         55 ╣
B__inference_conv2d_2_layer_call_and_return_conditional_losses_8900s677в4
-в*
(К%
inputs          
к "4в1
*К'
tensor_0         @
Ъ У
'__inference_conv2d_2_layer_call_fn_8889h677в4
-в*
(К%
inputs          
к ")К&
unknown         @║
B__inference_conv2d_3_layer_call_and_return_conditional_losses_8957t897в4
-в*
(К%
inputs         @
к "5в2
+К(
tensor_0         

А
Ъ Ф
'__inference_conv2d_3_layer_call_fn_8946i897в4
-в*
(К%
inputs         @
к "*К'
unknown         

А╖
@__inference_conv2d_layer_call_and_return_conditional_losses_8786s237в4
-в*
(К%
inputs         pp
к "4в1
*К'
tensor_0         nn
Ъ С
%__inference_conv2d_layer_call_fn_8775h237в4
-в*
(К%
inputs         pp
к ")К&
unknown         nnк
A__inference_dense_1_layer_call_and_return_conditional_losses_9045e<=0в-
&в#
!К
inputs         А
к "-в*
#К 
tensor_0         А
Ъ Д
&__inference_dense_1_layer_call_fn_9034Z<=0в-
&в#
!К
inputs         А
к ""К
unknown         Ай
A__inference_dense_2_layer_call_and_return_conditional_losses_8766d010в-
&в#
!К
inputs         А
к ",в)
"К
tensor_0         
Ъ Г
&__inference_dense_2_layer_call_fn_8755Y010в-
&в#
!К
inputs         А
к "!К
unknown         и
?__inference_dense_layer_call_and_return_conditional_losses_9025e:;0в-
&в#
!К
inputs         А
к "-в*
#К 
tensor_0         А
Ъ В
$__inference_dense_layer_call_fn_9014Z:;0в-
&в#
!К
inputs         А
к ""К
unknown         А║
C__inference_dropout_1_layer_call_and_return_conditional_losses_8868s;в8
1в.
(К%
inputs          
p 
к "4в1
*К'
tensor_0          
Ъ ║
C__inference_dropout_1_layer_call_and_return_conditional_losses_8880s;в8
1в.
(К%
inputs          
p
к "4в1
*К'
tensor_0          
Ъ Ф
(__inference_dropout_1_layer_call_fn_8858h;в8
1в.
(К%
inputs          
p 
к ")К&
unknown          Ф
(__inference_dropout_1_layer_call_fn_8863h;в8
1в.
(К%
inputs          
p
к ")К&
unknown          ║
C__inference_dropout_2_layer_call_and_return_conditional_losses_8925s;в8
1в.
(К%
inputs         @
p 
к "4в1
*К'
tensor_0         @
Ъ ║
C__inference_dropout_2_layer_call_and_return_conditional_losses_8937s;в8
1в.
(К%
inputs         @
p
к "4в1
*К'
tensor_0         @
Ъ Ф
(__inference_dropout_2_layer_call_fn_8915h;в8
1в.
(К%
inputs         @
p 
к ")К&
unknown         @Ф
(__inference_dropout_2_layer_call_fn_8920h;в8
1в.
(К%
inputs         @
p
к ")К&
unknown         @╝
C__inference_dropout_3_layer_call_and_return_conditional_losses_8982u<в9
2в/
)К&
inputs         А
p 
к "5в2
+К(
tensor_0         А
Ъ ╝
C__inference_dropout_3_layer_call_and_return_conditional_losses_8994u<в9
2в/
)К&
inputs         А
p
к "5в2
+К(
tensor_0         А
Ъ Ц
(__inference_dropout_3_layer_call_fn_8972j<в9
2в/
)К&
inputs         А
p 
к "*К'
unknown         АЦ
(__inference_dropout_3_layer_call_fn_8977j<в9
2в/
)К&
inputs         А
p
к "*К'
unknown         А╕
A__inference_dropout_layer_call_and_return_conditional_losses_8811s;в8
1в.
(К%
inputs         77
p 
к "4в1
*К'
tensor_0         77
Ъ ╕
A__inference_dropout_layer_call_and_return_conditional_losses_8823s;в8
1в.
(К%
inputs         77
p
к "4в1
*К'
tensor_0         77
Ъ Т
&__inference_dropout_layer_call_fn_8801h;в8
1в.
(К%
inputs         77
p 
к ")К&
unknown         77Т
&__inference_dropout_layer_call_fn_8806h;в8
1в.
(К%
inputs         77
p
к ")К&
unknown         77о
A__inference_flatten_layer_call_and_return_conditional_losses_9005i8в5
.в+
)К&
inputs         А
к "-в*
#К 
tensor_0         А
Ъ И
&__inference_flatten_layer_call_fn_8999^8в5
.в+
)К&
inputs         А
к ""К
unknown         А┌
@__inference_lambda_layer_call_and_return_conditional_losses_8739Хdвa
ZвW
MЪJ
#К 
inputs_0         А
#К 
inputs_1         А

 
p 
к "-в*
#К 
tensor_0         А
Ъ ┌
@__inference_lambda_layer_call_and_return_conditional_losses_8746Хdвa
ZвW
MЪJ
#К 
inputs_0         А
#К 
inputs_1         А

 
p
к "-в*
#К 
tensor_0         А
Ъ ┤
%__inference_lambda_layer_call_fn_8726Кdвa
ZвW
MЪJ
#К 
inputs_0         А
#К 
inputs_1         А

 
p 
к ""К
unknown         А┤
%__inference_lambda_layer_call_fn_8732Кdвa
ZвW
MЪJ
#К 
inputs_0         А
#К 
inputs_1         А

 
p
к ""К
unknown         Ає
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_8853еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ═
.__inference_max_pooling2d_1_layer_call_fn_8848ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    є
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_8910еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ═
.__inference_max_pooling2d_2_layer_call_fn_8905ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    є
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_8967еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ═
.__inference_max_pooling2d_3_layer_call_fn_8962ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ё
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_8796еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╦
,__inference_max_pooling2d_layer_call_fn_8791ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    Ї
?__inference_model_layer_call_and_return_conditional_losses_8099░23456789:;<=01pвm
fвc
YЪV
)К&
input_1         pp
)К&
input_2         pp
p 

 
к ",в)
"К
tensor_0         
Ъ Ї
?__inference_model_layer_call_and_return_conditional_losses_8148░23456789:;<=01pвm
fвc
YЪV
)К&
input_1         pp
)К&
input_2         pp
p

 
к ",в)
"К
tensor_0         
Ъ Ў
?__inference_model_layer_call_and_return_conditional_losses_8360▓23456789:;<=01rвo
hвe
[ЪX
*К'
inputs_0         pp
*К'
inputs_1         pp
p 

 
к ",в)
"К
tensor_0         
Ъ Ў
?__inference_model_layer_call_and_return_conditional_losses_8522▓23456789:;<=01rвo
hвe
[ЪX
*К'
inputs_0         pp
*К'
inputs_1         pp
p

 
к ",в)
"К
tensor_0         
Ъ ╬
$__inference_model_layer_call_fn_7869е23456789:;<=01pвm
fвc
YЪV
)К&
input_1         pp
)К&
input_2         pp
p 

 
к "!К
unknown         ╬
$__inference_model_layer_call_fn_8050е23456789:;<=01pвm
fвc
YЪV
)К&
input_1         pp
)К&
input_2         pp
p

 
к "!К
unknown         ╨
$__inference_model_layer_call_fn_8220з23456789:;<=01rвo
hвe
[ЪX
*К'
inputs_0         pp
*К'
inputs_1         pp
p 

 
к "!К
unknown         ╨
$__inference_model_layer_call_fn_8254з23456789:;<=01rвo
hвe
[ЪX
*К'
inputs_0         pp
*К'
inputs_1         pp
p

 
к "!К
unknown         ═
D__inference_sequential_layer_call_and_return_conditional_losses_7721Д23456789:;<=EвB
;в8
.К+
conv2d_input         pp
p 

 
к "-в*
#К 
tensor_0         А
Ъ ═
D__inference_sequential_layer_call_and_return_conditional_losses_7764Д23456789:;<=EвB
;в8
.К+
conv2d_input         pp
p

 
к "-в*
#К 
tensor_0         А
Ъ ╞
D__inference_sequential_layer_call_and_return_conditional_losses_8636~23456789:;<=?в<
5в2
(К%
inputs         pp
p 

 
к "-в*
#К 
tensor_0         А
Ъ ╞
D__inference_sequential_layer_call_and_return_conditional_losses_8720~23456789:;<=?в<
5в2
(К%
inputs         pp
p

 
к "-в*
#К 
tensor_0         А
Ъ ж
)__inference_sequential_layer_call_fn_7390y23456789:;<=EвB
;в8
.К+
conv2d_input         pp
p 

 
к ""К
unknown         Аж
)__inference_sequential_layer_call_fn_7678y23456789:;<=EвB
;в8
.К+
conv2d_input         pp
p

 
к ""К
unknown         Аа
)__inference_sequential_layer_call_fn_8551s23456789:;<=?в<
5в2
(К%
inputs         pp
p 

 
к ""К
unknown         Аа
)__inference_sequential_layer_call_fn_8580s23456789:;<=?в<
5в2
(К%
inputs         pp
p

 
к ""К
unknown         Ах
"__inference_signature_wrapper_8186╛23456789:;<=01yвv
в 
oкl
4
input_1)К&
input_1         pp
4
input_2)К&
input_2         pp"1к.
,
dense_2!К
dense_2         