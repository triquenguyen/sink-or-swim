�� 
��
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
delete_old_dirsbool(�
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
0
Sigmoid
x"T
y"T"
Ttype:

2
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
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements(
handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
�"serve*2.9.12v2.9.0-18-gd8ce9f9c3018��
�
,Adam/simple_rnn_28/simple_rnn_cell_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*=
shared_name.,Adam/simple_rnn_28/simple_rnn_cell_28/bias/v
�
@Adam/simple_rnn_28/simple_rnn_cell_28/bias/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_28/simple_rnn_cell_28/bias/v*
_output_shapes
:@*
dtype0
�
8Adam/simple_rnn_28/simple_rnn_cell_28/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*I
shared_name:8Adam/simple_rnn_28/simple_rnn_cell_28/recurrent_kernel/v
�
LAdam/simple_rnn_28/simple_rnn_cell_28/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_28/simple_rnn_cell_28/recurrent_kernel/v*
_output_shapes

:@@*
dtype0
�
.Adam/simple_rnn_28/simple_rnn_cell_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*?
shared_name0.Adam/simple_rnn_28/simple_rnn_cell_28/kernel/v
�
BAdam/simple_rnn_28/simple_rnn_cell_28/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_28/simple_rnn_cell_28/kernel/v*
_output_shapes

:@*
dtype0
�
Adam/dense_110/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_110/bias/v
{
)Adam/dense_110/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_110/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_110/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_110/kernel/v
�
+Adam/dense_110/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_110/kernel/v*
_output_shapes

:*
dtype0
�
"Adam/batch_normalization_39/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_39/beta/v
�
6Adam/batch_normalization_39/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_39/beta/v*
_output_shapes
:*
dtype0
�
#Adam/batch_normalization_39/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_39/gamma/v
�
7Adam/batch_normalization_39/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_39/gamma/v*
_output_shapes
:*
dtype0
�
Adam/dense_109/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_109/bias/v
{
)Adam/dense_109/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_109/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_109/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_109/kernel/v
�
+Adam/dense_109/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_109/kernel/v*
_output_shapes

:*
dtype0
�
Adam/dense_108/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_108/bias/v
{
)Adam/dense_108/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_108/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_108/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_108/kernel/v
�
+Adam/dense_108/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_108/kernel/v*
_output_shapes

: *
dtype0
�
"Adam/batch_normalization_38/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_38/beta/v
�
6Adam/batch_normalization_38/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_38/beta/v*
_output_shapes
: *
dtype0
�
#Adam/batch_normalization_38/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_38/gamma/v
�
7Adam/batch_normalization_38/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_38/gamma/v*
_output_shapes
: *
dtype0
�
Adam/dense_107/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_107/bias/v
{
)Adam/dense_107/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_107/bias/v*
_output_shapes
: *
dtype0
�
Adam/dense_107/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *(
shared_nameAdam/dense_107/kernel/v
�
+Adam/dense_107/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_107/kernel/v*
_output_shapes

:  *
dtype0
�
Adam/dense_106/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_106/bias/v
{
)Adam/dense_106/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_106/bias/v*
_output_shapes
: *
dtype0
�
Adam/dense_106/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *(
shared_nameAdam/dense_106/kernel/v
�
+Adam/dense_106/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_106/kernel/v*
_output_shapes

:@ *
dtype0
�
,Adam/simple_rnn_28/simple_rnn_cell_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*=
shared_name.,Adam/simple_rnn_28/simple_rnn_cell_28/bias/m
�
@Adam/simple_rnn_28/simple_rnn_cell_28/bias/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_28/simple_rnn_cell_28/bias/m*
_output_shapes
:@*
dtype0
�
8Adam/simple_rnn_28/simple_rnn_cell_28/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*I
shared_name:8Adam/simple_rnn_28/simple_rnn_cell_28/recurrent_kernel/m
�
LAdam/simple_rnn_28/simple_rnn_cell_28/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp8Adam/simple_rnn_28/simple_rnn_cell_28/recurrent_kernel/m*
_output_shapes

:@@*
dtype0
�
.Adam/simple_rnn_28/simple_rnn_cell_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*?
shared_name0.Adam/simple_rnn_28/simple_rnn_cell_28/kernel/m
�
BAdam/simple_rnn_28/simple_rnn_cell_28/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/simple_rnn_28/simple_rnn_cell_28/kernel/m*
_output_shapes

:@*
dtype0
�
Adam/dense_110/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_110/bias/m
{
)Adam/dense_110/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_110/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_110/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_110/kernel/m
�
+Adam/dense_110/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_110/kernel/m*
_output_shapes

:*
dtype0
�
"Adam/batch_normalization_39/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_39/beta/m
�
6Adam/batch_normalization_39/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_39/beta/m*
_output_shapes
:*
dtype0
�
#Adam/batch_normalization_39/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_39/gamma/m
�
7Adam/batch_normalization_39/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_39/gamma/m*
_output_shapes
:*
dtype0
�
Adam/dense_109/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_109/bias/m
{
)Adam/dense_109/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_109/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_109/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameAdam/dense_109/kernel/m
�
+Adam/dense_109/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_109/kernel/m*
_output_shapes

:*
dtype0
�
Adam/dense_108/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_108/bias/m
{
)Adam/dense_108/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_108/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_108/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/dense_108/kernel/m
�
+Adam/dense_108/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_108/kernel/m*
_output_shapes

: *
dtype0
�
"Adam/batch_normalization_38/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/batch_normalization_38/beta/m
�
6Adam/batch_normalization_38/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_38/beta/m*
_output_shapes
: *
dtype0
�
#Adam/batch_normalization_38/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adam/batch_normalization_38/gamma/m
�
7Adam/batch_normalization_38/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_38/gamma/m*
_output_shapes
: *
dtype0
�
Adam/dense_107/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_107/bias/m
{
)Adam/dense_107/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_107/bias/m*
_output_shapes
: *
dtype0
�
Adam/dense_107/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *(
shared_nameAdam/dense_107/kernel/m
�
+Adam/dense_107/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_107/kernel/m*
_output_shapes

:  *
dtype0
�
Adam/dense_106/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/dense_106/bias/m
{
)Adam/dense_106/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_106/bias/m*
_output_shapes
: *
dtype0
�
Adam/dense_106/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *(
shared_nameAdam/dense_106/kernel/m
�
+Adam/dense_106/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_106/kernel/m*
_output_shapes

:@ *
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
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
�
%simple_rnn_28/simple_rnn_cell_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%simple_rnn_28/simple_rnn_cell_28/bias
�
9simple_rnn_28/simple_rnn_cell_28/bias/Read/ReadVariableOpReadVariableOp%simple_rnn_28/simple_rnn_cell_28/bias*
_output_shapes
:@*
dtype0
�
1simple_rnn_28/simple_rnn_cell_28/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*B
shared_name31simple_rnn_28/simple_rnn_cell_28/recurrent_kernel
�
Esimple_rnn_28/simple_rnn_cell_28/recurrent_kernel/Read/ReadVariableOpReadVariableOp1simple_rnn_28/simple_rnn_cell_28/recurrent_kernel*
_output_shapes

:@@*
dtype0
�
'simple_rnn_28/simple_rnn_cell_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*8
shared_name)'simple_rnn_28/simple_rnn_cell_28/kernel
�
;simple_rnn_28/simple_rnn_cell_28/kernel/Read/ReadVariableOpReadVariableOp'simple_rnn_28/simple_rnn_cell_28/kernel*
_output_shapes

:@*
dtype0
t
dense_110/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_110/bias
m
"dense_110/bias/Read/ReadVariableOpReadVariableOpdense_110/bias*
_output_shapes
:*
dtype0
|
dense_110/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_110/kernel
u
$dense_110/kernel/Read/ReadVariableOpReadVariableOpdense_110/kernel*
_output_shapes

:*
dtype0
�
&batch_normalization_39/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_39/moving_variance
�
:batch_normalization_39/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_39/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_39/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_39/moving_mean
�
6batch_normalization_39/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_39/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_39/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_39/beta
�
/batch_normalization_39/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_39/beta*
_output_shapes
:*
dtype0
�
batch_normalization_39/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_39/gamma
�
0batch_normalization_39/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_39/gamma*
_output_shapes
:*
dtype0
t
dense_109/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_109/bias
m
"dense_109/bias/Read/ReadVariableOpReadVariableOpdense_109/bias*
_output_shapes
:*
dtype0
|
dense_109/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*!
shared_namedense_109/kernel
u
$dense_109/kernel/Read/ReadVariableOpReadVariableOpdense_109/kernel*
_output_shapes

:*
dtype0
t
dense_108/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_108/bias
m
"dense_108/bias/Read/ReadVariableOpReadVariableOpdense_108/bias*
_output_shapes
:*
dtype0
|
dense_108/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_namedense_108/kernel
u
$dense_108/kernel/Read/ReadVariableOpReadVariableOpdense_108/kernel*
_output_shapes

: *
dtype0
�
&batch_normalization_38/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_38/moving_variance
�
:batch_normalization_38/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_38/moving_variance*
_output_shapes
: *
dtype0
�
"batch_normalization_38/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_38/moving_mean
�
6batch_normalization_38/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_38/moving_mean*
_output_shapes
: *
dtype0
�
batch_normalization_38/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_38/beta
�
/batch_normalization_38/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_38/beta*
_output_shapes
: *
dtype0
�
batch_normalization_38/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_38/gamma
�
0batch_normalization_38/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_38/gamma*
_output_shapes
: *
dtype0
t
dense_107/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_107/bias
m
"dense_107/bias/Read/ReadVariableOpReadVariableOpdense_107/bias*
_output_shapes
: *
dtype0
|
dense_107/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:  *!
shared_namedense_107/kernel
u
$dense_107/kernel/Read/ReadVariableOpReadVariableOpdense_107/kernel*
_output_shapes

:  *
dtype0
t
dense_106/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_106/bias
m
"dense_106/bias/Read/ReadVariableOpReadVariableOpdense_106/bias*
_output_shapes
: *
dtype0
|
dense_106/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *!
shared_namedense_106/kernel
u
$dense_106/kernel/Read/ReadVariableOpReadVariableOpdense_106/kernel*
_output_shapes

:@ *
dtype0

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec*
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias*
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses
+_random_generator* 
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias*
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:_random_generator* 
�
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
Aaxis
	Bgamma
Cbeta
Dmoving_mean
Emoving_variance*
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias*
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses
T_random_generator* 
�
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

[kernel
\bias*
�
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses
caxis
	dgamma
ebeta
fmoving_mean
gmoving_variance*
�
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses

nkernel
obias*
�
p0
q1
r2
#3
$4
25
36
B7
C8
D9
E10
L11
M12
[13
\14
d15
e16
f17
g18
n19
o20*
�
p0
q1
r2
#3
$4
25
36
B7
C8
L9
M10
[11
\12
d13
e14
n15
o16*

s0
t1
u2
v3* 
�
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
|trace_0
}trace_1
~trace_2
trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
�
	�iter
�beta_1
�beta_2

�decay
�learning_rate#m�$m�2m�3m�Bm�Cm�Lm�Mm�[m�\m�dm�em�nm�om�pm�qm�rm�#v�$v�2v�3v�Bv�Cv�Lv�Mv�[v�\v�dv�ev�nv�ov�pv�qv�rv�*

�serving_default* 

p0
q1
r2*

p0
q1
r2*
* 
�
�states
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator

pkernel
qrecurrent_kernel
rbias*
* 

#0
$1*

#0
$1*
	
s0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEdense_106/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_106/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

20
31*

20
31*
	
t0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEdense_107/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_107/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
 
B0
C1
D2
E3*

B0
C1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_38/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_38/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_38/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_38/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

L0
M1*

L0
M1*
	
u0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEdense_108/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_108/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

[0
\1*

[0
\1*
	
v0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEdense_109/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_109/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
d0
e1
f2
g3*

d0
e1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_39/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_39/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_39/moving_mean;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_39/moving_variance?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

n0
o1*

n0
o1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEdense_110/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_110/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'simple_rnn_28/simple_rnn_cell_28/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE1simple_rnn_28/simple_rnn_cell_28/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%simple_rnn_28/simple_rnn_cell_28/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 
 
D0
E1
f2
g3*
R
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
10*

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

p0
q1
r2*

p0
q1
r2*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
	
s0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
t0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

D0
E1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
u0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
	
v0* 
* 
* 
* 

f0
g1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
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
�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
�}
VARIABLE_VALUEAdam/dense_106/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_106/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_107/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_107/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_38/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_38/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_108/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_108/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_109/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_109/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_39/gamma/mQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_39/beta/mPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_110/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_110/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE.Adam/simple_rnn_28/simple_rnn_cell_28/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE8Adam/simple_rnn_28/simple_rnn_cell_28/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE,Adam/simple_rnn_28/simple_rnn_cell_28/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_106/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_106/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_107/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_107/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_38/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_38/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_108/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_108/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_109/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_109/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE#Adam/batch_normalization_39/gamma/vQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_39/beta/vPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_110/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_110/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE.Adam/simple_rnn_28/simple_rnn_cell_28/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE8Adam/simple_rnn_28/simple_rnn_cell_28/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE,Adam/simple_rnn_28/simple_rnn_cell_28/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
#serving_default_simple_rnn_28_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCall#serving_default_simple_rnn_28_input'simple_rnn_28/simple_rnn_cell_28/kernel%simple_rnn_28/simple_rnn_cell_28/bias1simple_rnn_28/simple_rnn_cell_28/recurrent_kerneldense_106/kerneldense_106/biasdense_107/kerneldense_107/bias&batch_normalization_38/moving_variancebatch_normalization_38/gamma"batch_normalization_38/moving_meanbatch_normalization_38/betadense_108/kerneldense_108/biasdense_109/kerneldense_109/bias&batch_normalization_39/moving_variancebatch_normalization_39/gamma"batch_normalization_39/moving_meanbatch_normalization_39/betadense_110/kerneldense_110/bias*!
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*7
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_168241
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_106/kernel/Read/ReadVariableOp"dense_106/bias/Read/ReadVariableOp$dense_107/kernel/Read/ReadVariableOp"dense_107/bias/Read/ReadVariableOp0batch_normalization_38/gamma/Read/ReadVariableOp/batch_normalization_38/beta/Read/ReadVariableOp6batch_normalization_38/moving_mean/Read/ReadVariableOp:batch_normalization_38/moving_variance/Read/ReadVariableOp$dense_108/kernel/Read/ReadVariableOp"dense_108/bias/Read/ReadVariableOp$dense_109/kernel/Read/ReadVariableOp"dense_109/bias/Read/ReadVariableOp0batch_normalization_39/gamma/Read/ReadVariableOp/batch_normalization_39/beta/Read/ReadVariableOp6batch_normalization_39/moving_mean/Read/ReadVariableOp:batch_normalization_39/moving_variance/Read/ReadVariableOp$dense_110/kernel/Read/ReadVariableOp"dense_110/bias/Read/ReadVariableOp;simple_rnn_28/simple_rnn_cell_28/kernel/Read/ReadVariableOpEsimple_rnn_28/simple_rnn_cell_28/recurrent_kernel/Read/ReadVariableOp9simple_rnn_28/simple_rnn_cell_28/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_106/kernel/m/Read/ReadVariableOp)Adam/dense_106/bias/m/Read/ReadVariableOp+Adam/dense_107/kernel/m/Read/ReadVariableOp)Adam/dense_107/bias/m/Read/ReadVariableOp7Adam/batch_normalization_38/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_38/beta/m/Read/ReadVariableOp+Adam/dense_108/kernel/m/Read/ReadVariableOp)Adam/dense_108/bias/m/Read/ReadVariableOp+Adam/dense_109/kernel/m/Read/ReadVariableOp)Adam/dense_109/bias/m/Read/ReadVariableOp7Adam/batch_normalization_39/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_39/beta/m/Read/ReadVariableOp+Adam/dense_110/kernel/m/Read/ReadVariableOp)Adam/dense_110/bias/m/Read/ReadVariableOpBAdam/simple_rnn_28/simple_rnn_cell_28/kernel/m/Read/ReadVariableOpLAdam/simple_rnn_28/simple_rnn_cell_28/recurrent_kernel/m/Read/ReadVariableOp@Adam/simple_rnn_28/simple_rnn_cell_28/bias/m/Read/ReadVariableOp+Adam/dense_106/kernel/v/Read/ReadVariableOp)Adam/dense_106/bias/v/Read/ReadVariableOp+Adam/dense_107/kernel/v/Read/ReadVariableOp)Adam/dense_107/bias/v/Read/ReadVariableOp7Adam/batch_normalization_38/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_38/beta/v/Read/ReadVariableOp+Adam/dense_108/kernel/v/Read/ReadVariableOp)Adam/dense_108/bias/v/Read/ReadVariableOp+Adam/dense_109/kernel/v/Read/ReadVariableOp)Adam/dense_109/bias/v/Read/ReadVariableOp7Adam/batch_normalization_39/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_39/beta/v/Read/ReadVariableOp+Adam/dense_110/kernel/v/Read/ReadVariableOp)Adam/dense_110/bias/v/Read/ReadVariableOpBAdam/simple_rnn_28/simple_rnn_cell_28/kernel/v/Read/ReadVariableOpLAdam/simple_rnn_28/simple_rnn_cell_28/recurrent_kernel/v/Read/ReadVariableOp@Adam/simple_rnn_28/simple_rnn_cell_28/bias/v/Read/ReadVariableOpConst*M
TinF
D2B	*
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
GPU2*0J 8� *(
f#R!
__inference__traced_save_169986
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_106/kerneldense_106/biasdense_107/kerneldense_107/biasbatch_normalization_38/gammabatch_normalization_38/beta"batch_normalization_38/moving_mean&batch_normalization_38/moving_variancedense_108/kerneldense_108/biasdense_109/kerneldense_109/biasbatch_normalization_39/gammabatch_normalization_39/beta"batch_normalization_39/moving_mean&batch_normalization_39/moving_variancedense_110/kerneldense_110/bias'simple_rnn_28/simple_rnn_cell_28/kernel1simple_rnn_28/simple_rnn_cell_28/recurrent_kernel%simple_rnn_28/simple_rnn_cell_28/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_106/kernel/mAdam/dense_106/bias/mAdam/dense_107/kernel/mAdam/dense_107/bias/m#Adam/batch_normalization_38/gamma/m"Adam/batch_normalization_38/beta/mAdam/dense_108/kernel/mAdam/dense_108/bias/mAdam/dense_109/kernel/mAdam/dense_109/bias/m#Adam/batch_normalization_39/gamma/m"Adam/batch_normalization_39/beta/mAdam/dense_110/kernel/mAdam/dense_110/bias/m.Adam/simple_rnn_28/simple_rnn_cell_28/kernel/m8Adam/simple_rnn_28/simple_rnn_cell_28/recurrent_kernel/m,Adam/simple_rnn_28/simple_rnn_cell_28/bias/mAdam/dense_106/kernel/vAdam/dense_106/bias/vAdam/dense_107/kernel/vAdam/dense_107/bias/v#Adam/batch_normalization_38/gamma/v"Adam/batch_normalization_38/beta/vAdam/dense_108/kernel/vAdam/dense_108/bias/vAdam/dense_109/kernel/vAdam/dense_109/bias/v#Adam/batch_normalization_39/gamma/v"Adam/batch_normalization_39/beta/vAdam/dense_110/kernel/vAdam/dense_110/bias/v.Adam/simple_rnn_28/simple_rnn_cell_28/kernel/v8Adam/simple_rnn_28/simple_rnn_cell_28/recurrent_kernel/v,Adam/simple_rnn_28/simple_rnn_cell_28/bias/v*L
TinE
C2A*
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
GPU2*0J 8� *+
f&R$
"__inference__traced_restore_170188ߴ
�>
�
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_167301

inputsC
1simple_rnn_cell_28_matmul_readvariableop_resource:@@
2simple_rnn_cell_28_biasadd_readvariableop_resource:@E
3simple_rnn_cell_28_matmul_1_readvariableop_resource:@@
identity��)simple_rnn_cell_28/BiasAdd/ReadVariableOp�(simple_rnn_cell_28/MatMul/ReadVariableOp�*simple_rnn_cell_28/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
(simple_rnn_cell_28/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_28_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
simple_rnn_cell_28/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
)simple_rnn_cell_28/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
simple_rnn_cell_28/BiasAddBiasAdd#simple_rnn_cell_28/MatMul:product:01simple_rnn_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
*simple_rnn_cell_28/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_28_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0�
simple_rnn_cell_28/MatMul_1MatMulzeros:output:02simple_rnn_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
simple_rnn_cell_28/addAddV2#simple_rnn_cell_28/BiasAdd:output:0%simple_rnn_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:���������@m
simple_rnn_cell_28/TanhTanhsimple_rnn_cell_28/add:z:0*
T0*'
_output_shapes
:���������@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_28_matmul_readvariableop_resource2simple_rnn_cell_28_biasadd_readvariableop_resource3simple_rnn_cell_28_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_167234*
condR
while_cond_167233*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp*^simple_rnn_cell_28/BiasAdd/ReadVariableOp)^simple_rnn_cell_28/MatMul/ReadVariableOp+^simple_rnn_cell_28/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2V
)simple_rnn_cell_28/BiasAdd/ReadVariableOp)simple_rnn_cell_28/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_28/MatMul/ReadVariableOp(simple_rnn_cell_28/MatMul/ReadVariableOp2X
*simple_rnn_cell_28/MatMul_1/ReadVariableOp*simple_rnn_cell_28/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
__inference__traced_save_169986
file_prefix/
+savev2_dense_106_kernel_read_readvariableop-
)savev2_dense_106_bias_read_readvariableop/
+savev2_dense_107_kernel_read_readvariableop-
)savev2_dense_107_bias_read_readvariableop;
7savev2_batch_normalization_38_gamma_read_readvariableop:
6savev2_batch_normalization_38_beta_read_readvariableopA
=savev2_batch_normalization_38_moving_mean_read_readvariableopE
Asavev2_batch_normalization_38_moving_variance_read_readvariableop/
+savev2_dense_108_kernel_read_readvariableop-
)savev2_dense_108_bias_read_readvariableop/
+savev2_dense_109_kernel_read_readvariableop-
)savev2_dense_109_bias_read_readvariableop;
7savev2_batch_normalization_39_gamma_read_readvariableop:
6savev2_batch_normalization_39_beta_read_readvariableopA
=savev2_batch_normalization_39_moving_mean_read_readvariableopE
Asavev2_batch_normalization_39_moving_variance_read_readvariableop/
+savev2_dense_110_kernel_read_readvariableop-
)savev2_dense_110_bias_read_readvariableopF
Bsavev2_simple_rnn_28_simple_rnn_cell_28_kernel_read_readvariableopP
Lsavev2_simple_rnn_28_simple_rnn_cell_28_recurrent_kernel_read_readvariableopD
@savev2_simple_rnn_28_simple_rnn_cell_28_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_106_kernel_m_read_readvariableop4
0savev2_adam_dense_106_bias_m_read_readvariableop6
2savev2_adam_dense_107_kernel_m_read_readvariableop4
0savev2_adam_dense_107_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_38_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_38_beta_m_read_readvariableop6
2savev2_adam_dense_108_kernel_m_read_readvariableop4
0savev2_adam_dense_108_bias_m_read_readvariableop6
2savev2_adam_dense_109_kernel_m_read_readvariableop4
0savev2_adam_dense_109_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_39_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_39_beta_m_read_readvariableop6
2savev2_adam_dense_110_kernel_m_read_readvariableop4
0savev2_adam_dense_110_bias_m_read_readvariableopM
Isavev2_adam_simple_rnn_28_simple_rnn_cell_28_kernel_m_read_readvariableopW
Ssavev2_adam_simple_rnn_28_simple_rnn_cell_28_recurrent_kernel_m_read_readvariableopK
Gsavev2_adam_simple_rnn_28_simple_rnn_cell_28_bias_m_read_readvariableop6
2savev2_adam_dense_106_kernel_v_read_readvariableop4
0savev2_adam_dense_106_bias_v_read_readvariableop6
2savev2_adam_dense_107_kernel_v_read_readvariableop4
0savev2_adam_dense_107_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_38_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_38_beta_v_read_readvariableop6
2savev2_adam_dense_108_kernel_v_read_readvariableop4
0savev2_adam_dense_108_bias_v_read_readvariableop6
2savev2_adam_dense_109_kernel_v_read_readvariableop4
0savev2_adam_dense_109_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_39_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_39_beta_v_read_readvariableop6
2savev2_adam_dense_110_kernel_v_read_readvariableop4
0savev2_adam_dense_110_bias_v_read_readvariableopM
Isavev2_adam_simple_rnn_28_simple_rnn_cell_28_kernel_v_read_readvariableopW
Ssavev2_adam_simple_rnn_28_simple_rnn_cell_28_recurrent_kernel_v_read_readvariableopK
Gsavev2_adam_simple_rnn_28_simple_rnn_cell_28_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
: �"
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:A*
dtype0*�"
value�"B�!AB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:A*
dtype0*�
value�B�AB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_106_kernel_read_readvariableop)savev2_dense_106_bias_read_readvariableop+savev2_dense_107_kernel_read_readvariableop)savev2_dense_107_bias_read_readvariableop7savev2_batch_normalization_38_gamma_read_readvariableop6savev2_batch_normalization_38_beta_read_readvariableop=savev2_batch_normalization_38_moving_mean_read_readvariableopAsavev2_batch_normalization_38_moving_variance_read_readvariableop+savev2_dense_108_kernel_read_readvariableop)savev2_dense_108_bias_read_readvariableop+savev2_dense_109_kernel_read_readvariableop)savev2_dense_109_bias_read_readvariableop7savev2_batch_normalization_39_gamma_read_readvariableop6savev2_batch_normalization_39_beta_read_readvariableop=savev2_batch_normalization_39_moving_mean_read_readvariableopAsavev2_batch_normalization_39_moving_variance_read_readvariableop+savev2_dense_110_kernel_read_readvariableop)savev2_dense_110_bias_read_readvariableopBsavev2_simple_rnn_28_simple_rnn_cell_28_kernel_read_readvariableopLsavev2_simple_rnn_28_simple_rnn_cell_28_recurrent_kernel_read_readvariableop@savev2_simple_rnn_28_simple_rnn_cell_28_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_106_kernel_m_read_readvariableop0savev2_adam_dense_106_bias_m_read_readvariableop2savev2_adam_dense_107_kernel_m_read_readvariableop0savev2_adam_dense_107_bias_m_read_readvariableop>savev2_adam_batch_normalization_38_gamma_m_read_readvariableop=savev2_adam_batch_normalization_38_beta_m_read_readvariableop2savev2_adam_dense_108_kernel_m_read_readvariableop0savev2_adam_dense_108_bias_m_read_readvariableop2savev2_adam_dense_109_kernel_m_read_readvariableop0savev2_adam_dense_109_bias_m_read_readvariableop>savev2_adam_batch_normalization_39_gamma_m_read_readvariableop=savev2_adam_batch_normalization_39_beta_m_read_readvariableop2savev2_adam_dense_110_kernel_m_read_readvariableop0savev2_adam_dense_110_bias_m_read_readvariableopIsavev2_adam_simple_rnn_28_simple_rnn_cell_28_kernel_m_read_readvariableopSsavev2_adam_simple_rnn_28_simple_rnn_cell_28_recurrent_kernel_m_read_readvariableopGsavev2_adam_simple_rnn_28_simple_rnn_cell_28_bias_m_read_readvariableop2savev2_adam_dense_106_kernel_v_read_readvariableop0savev2_adam_dense_106_bias_v_read_readvariableop2savev2_adam_dense_107_kernel_v_read_readvariableop0savev2_adam_dense_107_bias_v_read_readvariableop>savev2_adam_batch_normalization_38_gamma_v_read_readvariableop=savev2_adam_batch_normalization_38_beta_v_read_readvariableop2savev2_adam_dense_108_kernel_v_read_readvariableop0savev2_adam_dense_108_bias_v_read_readvariableop2savev2_adam_dense_109_kernel_v_read_readvariableop0savev2_adam_dense_109_bias_v_read_readvariableop>savev2_adam_batch_normalization_39_gamma_v_read_readvariableop=savev2_adam_batch_normalization_39_beta_v_read_readvariableop2savev2_adam_dense_110_kernel_v_read_readvariableop0savev2_adam_dense_110_bias_v_read_readvariableopIsavev2_adam_simple_rnn_28_simple_rnn_cell_28_kernel_v_read_readvariableopSsavev2_adam_simple_rnn_28_simple_rnn_cell_28_recurrent_kernel_v_read_readvariableopGsavev2_adam_simple_rnn_28_simple_rnn_cell_28_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *O
dtypesE
C2A	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :@ : :  : : : : : : ::::::::::@:@@:@: : : : : : : : : :@ : :  : : : : ::::::::@:@@:@:@ : :  : : : : ::::::::@:@@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

:  : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 
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

:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@ :  

_output_shapes
: :$! 

_output_shapes

:  : "

_output_shapes
: : #

_output_shapes
: : $

_output_shapes
: :$% 

_output_shapes

: : &

_output_shapes
::$' 

_output_shapes

:: (

_output_shapes
:: )

_output_shapes
:: *

_output_shapes
::$+ 

_output_shapes

:: ,

_output_shapes
::$- 

_output_shapes

:@:$. 

_output_shapes

:@@: /

_output_shapes
:@:$0 

_output_shapes

:@ : 1

_output_shapes
: :$2 

_output_shapes

:  : 3

_output_shapes
: : 4

_output_shapes
: : 5

_output_shapes
: :$6 

_output_shapes

: : 7

_output_shapes
::$8 

_output_shapes

:: 9

_output_shapes
:: :

_output_shapes
:: ;

_output_shapes
::$< 

_output_shapes

:: =

_output_shapes
::$> 

_output_shapes

:@:$? 

_output_shapes

:@@: @

_output_shapes
:@:A

_output_shapes
: 
�%
�
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_167092

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

: �
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:��������� l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
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
: *
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: �
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
: *
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: �
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
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:��������� h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:��������� b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
while_cond_169232
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_169232___redundant_placeholder04
0while_while_cond_169232___redundant_placeholder14
0while_while_cond_169232___redundant_placeholder24
0while_while_cond_169232___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�	
e
F__inference_dropout_64_layer_call_and_return_conditional_losses_169353

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:��������� C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:��������� Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�-
�
while_body_167234
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_28_matmul_readvariableop_resource_0:@H
:while_simple_rnn_cell_28_biasadd_readvariableop_resource_0:@M
;while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_28_matmul_readvariableop_resource:@F
8while_simple_rnn_cell_28_biasadd_readvariableop_resource:@K
9while_simple_rnn_cell_28_matmul_1_readvariableop_resource:@@��/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_28/MatMul/ReadVariableOp�0while/simple_rnn_cell_28/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_28/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_28_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0�
while/simple_rnn_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
/while/simple_rnn_cell_28/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_28_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0�
 while/simple_rnn_cell_28/BiasAddBiasAdd)while/simple_rnn_cell_28/MatMul:product:07while/simple_rnn_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
0while/simple_rnn_cell_28/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0�
!while/simple_rnn_cell_28/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
while/simple_rnn_cell_28/addAddV2)while/simple_rnn_cell_28/BiasAdd:output:0+while/simple_rnn_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:���������@y
while/simple_rnn_cell_28/TanhTanh while/simple_rnn_cell_28/add:z:0*
T0*'
_output_shapes
:���������@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_28/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity!while/simple_rnn_cell_28/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������@�

while/NoOpNoOp0^while/simple_rnn_cell_28/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_28/MatMul/ReadVariableOp1^while/simple_rnn_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_28_biasadd_readvariableop_resource:while_simple_rnn_cell_28_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_28_matmul_1_readvariableop_resource;while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_28_matmul_readvariableop_resource9while_simple_rnn_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������@: : : : : 2b
/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_28/MatMul/ReadVariableOp.while/simple_rnn_cell_28/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_28/MatMul_1/ReadVariableOp0while/simple_rnn_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
.__inference_simple_rnn_28_layer_call_fn_168838
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_167012o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�^
�
I__inference_sequential_25_layer_call_and_return_conditional_losses_168162
simple_rnn_28_input&
simple_rnn_28_168084:@"
simple_rnn_28_168086:@&
simple_rnn_28_168088:@@"
dense_106_168091:@ 
dense_106_168093: "
dense_107_168097:  
dense_107_168099: +
batch_normalization_38_168103: +
batch_normalization_38_168105: +
batch_normalization_38_168107: +
batch_normalization_38_168109: "
dense_108_168112: 
dense_108_168114:"
dense_109_168118:
dense_109_168120:+
batch_normalization_39_168123:+
batch_normalization_39_168125:+
batch_normalization_39_168127:+
batch_normalization_39_168129:"
dense_110_168132:
dense_110_168134:
identity��.batch_normalization_38/StatefulPartitionedCall�.batch_normalization_39/StatefulPartitionedCall�!dense_106/StatefulPartitionedCall�2dense_106/kernel/Regularizer/Square/ReadVariableOp�!dense_107/StatefulPartitionedCall�2dense_107/kernel/Regularizer/Square/ReadVariableOp�!dense_108/StatefulPartitionedCall�2dense_108/kernel/Regularizer/Square/ReadVariableOp�!dense_109/StatefulPartitionedCall�2dense_109/kernel/Regularizer/Square/ReadVariableOp�!dense_110/StatefulPartitionedCall�"dropout_64/StatefulPartitionedCall�"dropout_65/StatefulPartitionedCall�"dropout_66/StatefulPartitionedCall�%simple_rnn_28/StatefulPartitionedCall�
%simple_rnn_28/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_28_inputsimple_rnn_28_168084simple_rnn_28_168086simple_rnn_28_168088*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_167769�
!dense_106/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_28/StatefulPartitionedCall:output:0dense_106_168091dense_106_168093*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_106_layer_call_and_return_conditional_losses_167326�
"dropout_64/StatefulPartitionedCallStatefulPartitionedCall*dense_106/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_64_layer_call_and_return_conditional_losses_167633�
!dense_107/StatefulPartitionedCallStatefulPartitionedCall+dropout_64/StatefulPartitionedCall:output:0dense_107_168097dense_107_168099*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_107_layer_call_and_return_conditional_losses_167356�
"dropout_65/StatefulPartitionedCallStatefulPartitionedCall*dense_107/StatefulPartitionedCall:output:0#^dropout_64/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_65_layer_call_and_return_conditional_losses_167600�
.batch_normalization_38/StatefulPartitionedCallStatefulPartitionedCall+dropout_65/StatefulPartitionedCall:output:0batch_normalization_38_168103batch_normalization_38_168105batch_normalization_38_168107batch_normalization_38_168109*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_167092�
!dense_108/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_38/StatefulPartitionedCall:output:0dense_108_168112dense_108_168114*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_108_layer_call_and_return_conditional_losses_167395�
"dropout_66/StatefulPartitionedCallStatefulPartitionedCall*dense_108/StatefulPartitionedCall:output:0#^dropout_65/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_66_layer_call_and_return_conditional_losses_167567�
!dense_109/StatefulPartitionedCallStatefulPartitionedCall+dropout_66/StatefulPartitionedCall:output:0dense_109_168118dense_109_168120*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_109_layer_call_and_return_conditional_losses_167425�
.batch_normalization_39/StatefulPartitionedCallStatefulPartitionedCall*dense_109/StatefulPartitionedCall:output:0batch_normalization_39_168123batch_normalization_39_168125batch_normalization_39_168127batch_normalization_39_168129*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_167174�
!dense_110/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_39/StatefulPartitionedCall:output:0dense_110_168132dense_110_168134*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_110_layer_call_and_return_conditional_losses_167451�
2dense_106/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_106_168091*
_output_shapes

:@ *
dtype0�
#dense_106/kernel/Regularizer/SquareSquare:dense_106/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ s
"dense_106/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_106/kernel/Regularizer/SumSum'dense_106/kernel/Regularizer/Square:y:0+dense_106/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_106/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_106/kernel/Regularizer/mulMul+dense_106/kernel/Regularizer/mul/x:output:0)dense_106/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_107/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_107_168097*
_output_shapes

:  *
dtype0�
#dense_107/kernel/Regularizer/SquareSquare:dense_107/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  s
"dense_107/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_107/kernel/Regularizer/SumSum'dense_107/kernel/Regularizer/Square:y:0+dense_107/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_107/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_107/kernel/Regularizer/mulMul+dense_107/kernel/Regularizer/mul/x:output:0)dense_107/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_108/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_108_168112*
_output_shapes

: *
dtype0�
#dense_108/kernel/Regularizer/SquareSquare:dense_108/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: s
"dense_108/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_108/kernel/Regularizer/SumSum'dense_108/kernel/Regularizer/Square:y:0+dense_108/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_108/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_108/kernel/Regularizer/mulMul+dense_108/kernel/Regularizer/mul/x:output:0)dense_108/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_109/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_109_168118*
_output_shapes

:*
dtype0�
#dense_109/kernel/Regularizer/SquareSquare:dense_109/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_109/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_109/kernel/Regularizer/SumSum'dense_109/kernel/Regularizer/Square:y:0+dense_109/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_109/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_109/kernel/Regularizer/mulMul+dense_109/kernel/Regularizer/mul/x:output:0)dense_109/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
IdentityIdentity*dense_110/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_38/StatefulPartitionedCall/^batch_normalization_39/StatefulPartitionedCall"^dense_106/StatefulPartitionedCall3^dense_106/kernel/Regularizer/Square/ReadVariableOp"^dense_107/StatefulPartitionedCall3^dense_107/kernel/Regularizer/Square/ReadVariableOp"^dense_108/StatefulPartitionedCall3^dense_108/kernel/Regularizer/Square/ReadVariableOp"^dense_109/StatefulPartitionedCall3^dense_109/kernel/Regularizer/Square/ReadVariableOp"^dense_110/StatefulPartitionedCall#^dropout_64/StatefulPartitionedCall#^dropout_65/StatefulPartitionedCall#^dropout_66/StatefulPartitionedCall&^simple_rnn_28/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������: : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_38/StatefulPartitionedCall.batch_normalization_38/StatefulPartitionedCall2`
.batch_normalization_39/StatefulPartitionedCall.batch_normalization_39/StatefulPartitionedCall2F
!dense_106/StatefulPartitionedCall!dense_106/StatefulPartitionedCall2h
2dense_106/kernel/Regularizer/Square/ReadVariableOp2dense_106/kernel/Regularizer/Square/ReadVariableOp2F
!dense_107/StatefulPartitionedCall!dense_107/StatefulPartitionedCall2h
2dense_107/kernel/Regularizer/Square/ReadVariableOp2dense_107/kernel/Regularizer/Square/ReadVariableOp2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2h
2dense_108/kernel/Regularizer/Square/ReadVariableOp2dense_108/kernel/Regularizer/Square/ReadVariableOp2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2h
2dense_109/kernel/Regularizer/Square/ReadVariableOp2dense_109/kernel/Regularizer/Square/ReadVariableOp2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2H
"dropout_64/StatefulPartitionedCall"dropout_64/StatefulPartitionedCall2H
"dropout_65/StatefulPartitionedCall"dropout_65/StatefulPartitionedCall2H
"dropout_66/StatefulPartitionedCall"dropout_66/StatefulPartitionedCall2N
%simple_rnn_28/StatefulPartitionedCall%simple_rnn_28/StatefulPartitionedCall:` \
+
_output_shapes
:���������
-
_user_specified_namesimple_rnn_28_input
�-
�
while_body_168903
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_28_matmul_readvariableop_resource_0:@H
:while_simple_rnn_cell_28_biasadd_readvariableop_resource_0:@M
;while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_28_matmul_readvariableop_resource:@F
8while_simple_rnn_cell_28_biasadd_readvariableop_resource:@K
9while_simple_rnn_cell_28_matmul_1_readvariableop_resource:@@��/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_28/MatMul/ReadVariableOp�0while/simple_rnn_cell_28/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_28/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_28_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0�
while/simple_rnn_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
/while/simple_rnn_cell_28/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_28_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0�
 while/simple_rnn_cell_28/BiasAddBiasAdd)while/simple_rnn_cell_28/MatMul:product:07while/simple_rnn_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
0while/simple_rnn_cell_28/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0�
!while/simple_rnn_cell_28/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
while/simple_rnn_cell_28/addAddV2)while/simple_rnn_cell_28/BiasAdd:output:0+while/simple_rnn_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:���������@y
while/simple_rnn_cell_28/TanhTanh while/simple_rnn_cell_28/add:z:0*
T0*'
_output_shapes
:���������@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_28/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity!while/simple_rnn_cell_28/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������@�

while/NoOpNoOp0^while/simple_rnn_cell_28/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_28/MatMul/ReadVariableOp1^while/simple_rnn_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_28_biasadd_readvariableop_resource:while_simple_rnn_cell_28_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_28_matmul_1_readvariableop_resource;while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_28_matmul_readvariableop_resource9while_simple_rnn_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������@: : : : : 2b
/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_28/MatMul/ReadVariableOp.while/simple_rnn_cell_28/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_28/MatMul_1/ReadVariableOp0while/simple_rnn_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
__inference_loss_fn_2_169698M
;dense_108_kernel_regularizer_square_readvariableop_resource: 
identity��2dense_108/kernel/Regularizer/Square/ReadVariableOp�
2dense_108/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_108_kernel_regularizer_square_readvariableop_resource*
_output_shapes

: *
dtype0�
#dense_108/kernel/Regularizer/SquareSquare:dense_108/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: s
"dense_108/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_108/kernel/Regularizer/SumSum'dense_108/kernel/Regularizer/Square:y:0+dense_108/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_108/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_108/kernel/Regularizer/mulMul+dense_108/kernel/Regularizer/mul/x:output:0)dense_108/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentity$dense_108/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^dense_108/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2dense_108/kernel/Regularizer/Square/ReadVariableOp2dense_108/kernel/Regularizer/Square/ReadVariableOp
�
�
E__inference_dense_108_layer_call_and_return_conditional_losses_167395

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2dense_108/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:����������
2dense_108/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0�
#dense_108/kernel/Regularizer/SquareSquare:dense_108/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: s
"dense_108/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_108/kernel/Regularizer/SumSum'dense_108/kernel/Regularizer/Square:y:0+dense_108/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_108/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_108/kernel/Regularizer/mulMul+dense_108/kernel/Regularizer/mul/x:output:0)dense_108/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_108/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_108/kernel/Regularizer/Square/ReadVariableOp2dense_108/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
Җ
�
I__inference_sequential_25_layer_call_and_return_conditional_losses_168816

inputsQ
?simple_rnn_28_simple_rnn_cell_28_matmul_readvariableop_resource:@N
@simple_rnn_28_simple_rnn_cell_28_biasadd_readvariableop_resource:@S
Asimple_rnn_28_simple_rnn_cell_28_matmul_1_readvariableop_resource:@@:
(dense_106_matmul_readvariableop_resource:@ 7
)dense_106_biasadd_readvariableop_resource: :
(dense_107_matmul_readvariableop_resource:  7
)dense_107_biasadd_readvariableop_resource: L
>batch_normalization_38_assignmovingavg_readvariableop_resource: N
@batch_normalization_38_assignmovingavg_1_readvariableop_resource: J
<batch_normalization_38_batchnorm_mul_readvariableop_resource: F
8batch_normalization_38_batchnorm_readvariableop_resource: :
(dense_108_matmul_readvariableop_resource: 7
)dense_108_biasadd_readvariableop_resource::
(dense_109_matmul_readvariableop_resource:7
)dense_109_biasadd_readvariableop_resource:L
>batch_normalization_39_assignmovingavg_readvariableop_resource:N
@batch_normalization_39_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_39_batchnorm_mul_readvariableop_resource:F
8batch_normalization_39_batchnorm_readvariableop_resource::
(dense_110_matmul_readvariableop_resource:7
)dense_110_biasadd_readvariableop_resource:
identity��&batch_normalization_38/AssignMovingAvg�5batch_normalization_38/AssignMovingAvg/ReadVariableOp�(batch_normalization_38/AssignMovingAvg_1�7batch_normalization_38/AssignMovingAvg_1/ReadVariableOp�/batch_normalization_38/batchnorm/ReadVariableOp�3batch_normalization_38/batchnorm/mul/ReadVariableOp�&batch_normalization_39/AssignMovingAvg�5batch_normalization_39/AssignMovingAvg/ReadVariableOp�(batch_normalization_39/AssignMovingAvg_1�7batch_normalization_39/AssignMovingAvg_1/ReadVariableOp�/batch_normalization_39/batchnorm/ReadVariableOp�3batch_normalization_39/batchnorm/mul/ReadVariableOp� dense_106/BiasAdd/ReadVariableOp�dense_106/MatMul/ReadVariableOp�2dense_106/kernel/Regularizer/Square/ReadVariableOp� dense_107/BiasAdd/ReadVariableOp�dense_107/MatMul/ReadVariableOp�2dense_107/kernel/Regularizer/Square/ReadVariableOp� dense_108/BiasAdd/ReadVariableOp�dense_108/MatMul/ReadVariableOp�2dense_108/kernel/Regularizer/Square/ReadVariableOp� dense_109/BiasAdd/ReadVariableOp�dense_109/MatMul/ReadVariableOp�2dense_109/kernel/Regularizer/Square/ReadVariableOp� dense_110/BiasAdd/ReadVariableOp�dense_110/MatMul/ReadVariableOp�7simple_rnn_28/simple_rnn_cell_28/BiasAdd/ReadVariableOp�6simple_rnn_28/simple_rnn_cell_28/MatMul/ReadVariableOp�8simple_rnn_28/simple_rnn_cell_28/MatMul_1/ReadVariableOp�simple_rnn_28/whileI
simple_rnn_28/ShapeShapeinputs*
T0*
_output_shapes
:k
!simple_rnn_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_28/strided_sliceStridedSlicesimple_rnn_28/Shape:output:0*simple_rnn_28/strided_slice/stack:output:0,simple_rnn_28/strided_slice/stack_1:output:0,simple_rnn_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_28/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
simple_rnn_28/zeros/packedPack$simple_rnn_28/strided_slice:output:0%simple_rnn_28/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_28/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_28/zerosFill#simple_rnn_28/zeros/packed:output:0"simple_rnn_28/zeros/Const:output:0*
T0*'
_output_shapes
:���������@q
simple_rnn_28/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_28/transpose	Transposeinputs%simple_rnn_28/transpose/perm:output:0*
T0*+
_output_shapes
:���������`
simple_rnn_28/Shape_1Shapesimple_rnn_28/transpose:y:0*
T0*
_output_shapes
:m
#simple_rnn_28/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_28/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_28/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_28/strided_slice_1StridedSlicesimple_rnn_28/Shape_1:output:0,simple_rnn_28/strided_slice_1/stack:output:0.simple_rnn_28/strided_slice_1/stack_1:output:0.simple_rnn_28/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_28/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_28/TensorArrayV2TensorListReserve2simple_rnn_28/TensorArrayV2/element_shape:output:0&simple_rnn_28/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Csimple_rnn_28/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5simple_rnn_28/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_28/transpose:y:0Lsimple_rnn_28/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���m
#simple_rnn_28/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_28/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_28/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_28/strided_slice_2StridedSlicesimple_rnn_28/transpose:y:0,simple_rnn_28/strided_slice_2/stack:output:0.simple_rnn_28/strided_slice_2/stack_1:output:0.simple_rnn_28/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
6simple_rnn_28/simple_rnn_cell_28/MatMul/ReadVariableOpReadVariableOp?simple_rnn_28_simple_rnn_cell_28_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
'simple_rnn_28/simple_rnn_cell_28/MatMulMatMul&simple_rnn_28/strided_slice_2:output:0>simple_rnn_28/simple_rnn_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
7simple_rnn_28/simple_rnn_cell_28/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_28_simple_rnn_cell_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
(simple_rnn_28/simple_rnn_cell_28/BiasAddBiasAdd1simple_rnn_28/simple_rnn_cell_28/MatMul:product:0?simple_rnn_28/simple_rnn_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
8simple_rnn_28/simple_rnn_cell_28/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_28_simple_rnn_cell_28_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0�
)simple_rnn_28/simple_rnn_cell_28/MatMul_1MatMulsimple_rnn_28/zeros:output:0@simple_rnn_28/simple_rnn_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
$simple_rnn_28/simple_rnn_cell_28/addAddV21simple_rnn_28/simple_rnn_cell_28/BiasAdd:output:03simple_rnn_28/simple_rnn_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:���������@�
%simple_rnn_28/simple_rnn_cell_28/TanhTanh(simple_rnn_28/simple_rnn_cell_28/add:z:0*
T0*'
_output_shapes
:���������@|
+simple_rnn_28/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   l
*simple_rnn_28/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_28/TensorArrayV2_1TensorListReserve4simple_rnn_28/TensorArrayV2_1/element_shape:output:03simple_rnn_28/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���T
simple_rnn_28/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_28/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������b
 simple_rnn_28/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_28/whileWhile)simple_rnn_28/while/loop_counter:output:0/simple_rnn_28/while/maximum_iterations:output:0simple_rnn_28/time:output:0&simple_rnn_28/TensorArrayV2_1:handle:0simple_rnn_28/zeros:output:0&simple_rnn_28/strided_slice_1:output:0Esimple_rnn_28/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_28_simple_rnn_cell_28_matmul_readvariableop_resource@simple_rnn_28_simple_rnn_cell_28_biasadd_readvariableop_resourceAsimple_rnn_28_simple_rnn_cell_28_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *+
body#R!
simple_rnn_28_while_body_168606*+
cond#R!
simple_rnn_28_while_cond_168605*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations �
>simple_rnn_28/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
0simple_rnn_28/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_28/while:output:3Gsimple_rnn_28/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0*
num_elementsv
#simple_rnn_28/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������o
%simple_rnn_28/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_28/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_28/strided_slice_3StridedSlice9simple_rnn_28/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_28/strided_slice_3/stack:output:0.simple_rnn_28/strided_slice_3/stack_1:output:0.simple_rnn_28/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_masks
simple_rnn_28/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_28/transpose_1	Transpose9simple_rnn_28/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_28/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@�
dense_106/MatMul/ReadVariableOpReadVariableOp(dense_106_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
dense_106/MatMulMatMul&simple_rnn_28/strided_slice_3:output:0'dense_106/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
 dense_106/BiasAdd/ReadVariableOpReadVariableOp)dense_106_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_106/BiasAddBiasAdddense_106/MatMul:product:0(dense_106/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� d
dense_106/ReluReludense_106/BiasAdd:output:0*
T0*'
_output_shapes
:��������� ]
dropout_64/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_64/dropout/MulMuldense_106/Relu:activations:0!dropout_64/dropout/Const:output:0*
T0*'
_output_shapes
:��������� d
dropout_64/dropout/ShapeShapedense_106/Relu:activations:0*
T0*
_output_shapes
:�
/dropout_64/dropout/random_uniform/RandomUniformRandomUniform!dropout_64/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0f
!dropout_64/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_64/dropout/GreaterEqualGreaterEqual8dropout_64/dropout/random_uniform/RandomUniform:output:0*dropout_64/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
dropout_64/dropout/CastCast#dropout_64/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
dropout_64/dropout/Mul_1Muldropout_64/dropout/Mul:z:0dropout_64/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� �
dense_107/MatMul/ReadVariableOpReadVariableOp(dense_107_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0�
dense_107/MatMulMatMuldropout_64/dropout/Mul_1:z:0'dense_107/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
 dense_107/BiasAdd/ReadVariableOpReadVariableOp)dense_107_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_107/BiasAddBiasAdddense_107/MatMul:product:0(dense_107/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� d
dense_107/ReluReludense_107/BiasAdd:output:0*
T0*'
_output_shapes
:��������� ]
dropout_65/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_65/dropout/MulMuldense_107/Relu:activations:0!dropout_65/dropout/Const:output:0*
T0*'
_output_shapes
:��������� d
dropout_65/dropout/ShapeShapedense_107/Relu:activations:0*
T0*
_output_shapes
:�
/dropout_65/dropout/random_uniform/RandomUniformRandomUniform!dropout_65/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0f
!dropout_65/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_65/dropout/GreaterEqualGreaterEqual8dropout_65/dropout/random_uniform/RandomUniform:output:0*dropout_65/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
dropout_65/dropout/CastCast#dropout_65/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
dropout_65/dropout/Mul_1Muldropout_65/dropout/Mul:z:0dropout_65/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� 
5batch_normalization_38/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
#batch_normalization_38/moments/meanMeandropout_65/dropout/Mul_1:z:0>batch_normalization_38/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(�
+batch_normalization_38/moments/StopGradientStopGradient,batch_normalization_38/moments/mean:output:0*
T0*
_output_shapes

: �
0batch_normalization_38/moments/SquaredDifferenceSquaredDifferencedropout_65/dropout/Mul_1:z:04batch_normalization_38/moments/StopGradient:output:0*
T0*'
_output_shapes
:��������� �
9batch_normalization_38/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
'batch_normalization_38/moments/varianceMean4batch_normalization_38/moments/SquaredDifference:z:0Bbatch_normalization_38/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(�
&batch_normalization_38/moments/SqueezeSqueeze,batch_normalization_38/moments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 �
(batch_normalization_38/moments/Squeeze_1Squeeze0batch_normalization_38/moments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 q
,batch_normalization_38/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
5batch_normalization_38/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_38_assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype0�
*batch_normalization_38/AssignMovingAvg/subSub=batch_normalization_38/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_38/moments/Squeeze:output:0*
T0*
_output_shapes
: �
*batch_normalization_38/AssignMovingAvg/mulMul.batch_normalization_38/AssignMovingAvg/sub:z:05batch_normalization_38/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: �
&batch_normalization_38/AssignMovingAvgAssignSubVariableOp>batch_normalization_38_assignmovingavg_readvariableop_resource.batch_normalization_38/AssignMovingAvg/mul:z:06^batch_normalization_38/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_38/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
7batch_normalization_38/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_38_assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype0�
,batch_normalization_38/AssignMovingAvg_1/subSub?batch_normalization_38/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_38/moments/Squeeze_1:output:0*
T0*
_output_shapes
: �
,batch_normalization_38/AssignMovingAvg_1/mulMul0batch_normalization_38/AssignMovingAvg_1/sub:z:07batch_normalization_38/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: �
(batch_normalization_38/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_38_assignmovingavg_1_readvariableop_resource0batch_normalization_38/AssignMovingAvg_1/mul:z:08^batch_normalization_38/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_38/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_38/batchnorm/addAddV21batch_normalization_38/moments/Squeeze_1:output:0/batch_normalization_38/batchnorm/add/y:output:0*
T0*
_output_shapes
: ~
&batch_normalization_38/batchnorm/RsqrtRsqrt(batch_normalization_38/batchnorm/add:z:0*
T0*
_output_shapes
: �
3batch_normalization_38/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_38_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0�
$batch_normalization_38/batchnorm/mulMul*batch_normalization_38/batchnorm/Rsqrt:y:0;batch_normalization_38/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: �
&batch_normalization_38/batchnorm/mul_1Muldropout_65/dropout/Mul_1:z:0(batch_normalization_38/batchnorm/mul:z:0*
T0*'
_output_shapes
:��������� �
&batch_normalization_38/batchnorm/mul_2Mul/batch_normalization_38/moments/Squeeze:output:0(batch_normalization_38/batchnorm/mul:z:0*
T0*
_output_shapes
: �
/batch_normalization_38/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_38_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0�
$batch_normalization_38/batchnorm/subSub7batch_normalization_38/batchnorm/ReadVariableOp:value:0*batch_normalization_38/batchnorm/mul_2:z:0*
T0*
_output_shapes
: �
&batch_normalization_38/batchnorm/add_1AddV2*batch_normalization_38/batchnorm/mul_1:z:0(batch_normalization_38/batchnorm/sub:z:0*
T0*'
_output_shapes
:��������� �
dense_108/MatMul/ReadVariableOpReadVariableOp(dense_108_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_108/MatMulMatMul*batch_normalization_38/batchnorm/add_1:z:0'dense_108/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_108/BiasAdd/ReadVariableOpReadVariableOp)dense_108_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_108/BiasAddBiasAdddense_108/MatMul:product:0(dense_108/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d
dense_108/ReluReludense_108/BiasAdd:output:0*
T0*'
_output_shapes
:���������]
dropout_66/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_66/dropout/MulMuldense_108/Relu:activations:0!dropout_66/dropout/Const:output:0*
T0*'
_output_shapes
:���������d
dropout_66/dropout/ShapeShapedense_108/Relu:activations:0*
T0*
_output_shapes
:�
/dropout_66/dropout/random_uniform/RandomUniformRandomUniform!dropout_66/dropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0f
!dropout_66/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_66/dropout/GreaterEqualGreaterEqual8dropout_66/dropout/random_uniform/RandomUniform:output:0*dropout_66/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:����������
dropout_66/dropout/CastCast#dropout_66/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:����������
dropout_66/dropout/Mul_1Muldropout_66/dropout/Mul:z:0dropout_66/dropout/Cast:y:0*
T0*'
_output_shapes
:����������
dense_109/MatMul/ReadVariableOpReadVariableOp(dense_109_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_109/MatMulMatMuldropout_66/dropout/Mul_1:z:0'dense_109/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_109/BiasAdd/ReadVariableOpReadVariableOp)dense_109_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_109/BiasAddBiasAdddense_109/MatMul:product:0(dense_109/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d
dense_109/ReluReludense_109/BiasAdd:output:0*
T0*'
_output_shapes
:���������
5batch_normalization_39/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
#batch_normalization_39/moments/meanMeandense_109/Relu:activations:0>batch_normalization_39/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
+batch_normalization_39/moments/StopGradientStopGradient,batch_normalization_39/moments/mean:output:0*
T0*
_output_shapes

:�
0batch_normalization_39/moments/SquaredDifferenceSquaredDifferencedense_109/Relu:activations:04batch_normalization_39/moments/StopGradient:output:0*
T0*'
_output_shapes
:����������
9batch_normalization_39/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
'batch_normalization_39/moments/varianceMean4batch_normalization_39/moments/SquaredDifference:z:0Bbatch_normalization_39/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
&batch_normalization_39/moments/SqueezeSqueeze,batch_normalization_39/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
(batch_normalization_39/moments/Squeeze_1Squeeze0batch_normalization_39/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_39/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
5batch_normalization_39/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_39_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
*batch_normalization_39/AssignMovingAvg/subSub=batch_normalization_39/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_39/moments/Squeeze:output:0*
T0*
_output_shapes
:�
*batch_normalization_39/AssignMovingAvg/mulMul.batch_normalization_39/AssignMovingAvg/sub:z:05batch_normalization_39/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
&batch_normalization_39/AssignMovingAvgAssignSubVariableOp>batch_normalization_39_assignmovingavg_readvariableop_resource.batch_normalization_39/AssignMovingAvg/mul:z:06^batch_normalization_39/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_39/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
7batch_normalization_39/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_39_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
,batch_normalization_39/AssignMovingAvg_1/subSub?batch_normalization_39/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_39/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
,batch_normalization_39/AssignMovingAvg_1/mulMul0batch_normalization_39/AssignMovingAvg_1/sub:z:07batch_normalization_39/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
(batch_normalization_39/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_39_assignmovingavg_1_readvariableop_resource0batch_normalization_39/AssignMovingAvg_1/mul:z:08^batch_normalization_39/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_39/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_39/batchnorm/addAddV21batch_normalization_39/moments/Squeeze_1:output:0/batch_normalization_39/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_39/batchnorm/RsqrtRsqrt(batch_normalization_39/batchnorm/add:z:0*
T0*
_output_shapes
:�
3batch_normalization_39/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_39_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_39/batchnorm/mulMul*batch_normalization_39/batchnorm/Rsqrt:y:0;batch_normalization_39/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
&batch_normalization_39/batchnorm/mul_1Muldense_109/Relu:activations:0(batch_normalization_39/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
&batch_normalization_39/batchnorm/mul_2Mul/batch_normalization_39/moments/Squeeze:output:0(batch_normalization_39/batchnorm/mul:z:0*
T0*
_output_shapes
:�
/batch_normalization_39/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_39_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_39/batchnorm/subSub7batch_normalization_39/batchnorm/ReadVariableOp:value:0*batch_normalization_39/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
&batch_normalization_39/batchnorm/add_1AddV2*batch_normalization_39/batchnorm/mul_1:z:0(batch_normalization_39/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
dense_110/MatMul/ReadVariableOpReadVariableOp(dense_110_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_110/MatMulMatMul*batch_normalization_39/batchnorm/add_1:z:0'dense_110/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_110/BiasAdd/ReadVariableOpReadVariableOp)dense_110_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_110/BiasAddBiasAdddense_110/MatMul:product:0(dense_110/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
dense_110/SigmoidSigmoiddense_110/BiasAdd:output:0*
T0*'
_output_shapes
:����������
2dense_106/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_106_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
#dense_106/kernel/Regularizer/SquareSquare:dense_106/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ s
"dense_106/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_106/kernel/Regularizer/SumSum'dense_106/kernel/Regularizer/Square:y:0+dense_106/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_106/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_106/kernel/Regularizer/mulMul+dense_106/kernel/Regularizer/mul/x:output:0)dense_106/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_107/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_107_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0�
#dense_107/kernel/Regularizer/SquareSquare:dense_107/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  s
"dense_107/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_107/kernel/Regularizer/SumSum'dense_107/kernel/Regularizer/Square:y:0+dense_107/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_107/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_107/kernel/Regularizer/mulMul+dense_107/kernel/Regularizer/mul/x:output:0)dense_107/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_108/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_108_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
#dense_108/kernel/Regularizer/SquareSquare:dense_108/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: s
"dense_108/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_108/kernel/Regularizer/SumSum'dense_108/kernel/Regularizer/Square:y:0+dense_108/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_108/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_108/kernel/Regularizer/mulMul+dense_108/kernel/Regularizer/mul/x:output:0)dense_108/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_109/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_109_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
#dense_109/kernel/Regularizer/SquareSquare:dense_109/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_109/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_109/kernel/Regularizer/SumSum'dense_109/kernel/Regularizer/Square:y:0+dense_109/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_109/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_109/kernel/Regularizer/mulMul+dense_109/kernel/Regularizer/mul/x:output:0)dense_109/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: d
IdentityIdentitydense_110/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^batch_normalization_38/AssignMovingAvg6^batch_normalization_38/AssignMovingAvg/ReadVariableOp)^batch_normalization_38/AssignMovingAvg_18^batch_normalization_38/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_38/batchnorm/ReadVariableOp4^batch_normalization_38/batchnorm/mul/ReadVariableOp'^batch_normalization_39/AssignMovingAvg6^batch_normalization_39/AssignMovingAvg/ReadVariableOp)^batch_normalization_39/AssignMovingAvg_18^batch_normalization_39/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_39/batchnorm/ReadVariableOp4^batch_normalization_39/batchnorm/mul/ReadVariableOp!^dense_106/BiasAdd/ReadVariableOp ^dense_106/MatMul/ReadVariableOp3^dense_106/kernel/Regularizer/Square/ReadVariableOp!^dense_107/BiasAdd/ReadVariableOp ^dense_107/MatMul/ReadVariableOp3^dense_107/kernel/Regularizer/Square/ReadVariableOp!^dense_108/BiasAdd/ReadVariableOp ^dense_108/MatMul/ReadVariableOp3^dense_108/kernel/Regularizer/Square/ReadVariableOp!^dense_109/BiasAdd/ReadVariableOp ^dense_109/MatMul/ReadVariableOp3^dense_109/kernel/Regularizer/Square/ReadVariableOp!^dense_110/BiasAdd/ReadVariableOp ^dense_110/MatMul/ReadVariableOp8^simple_rnn_28/simple_rnn_cell_28/BiasAdd/ReadVariableOp7^simple_rnn_28/simple_rnn_cell_28/MatMul/ReadVariableOp9^simple_rnn_28/simple_rnn_cell_28/MatMul_1/ReadVariableOp^simple_rnn_28/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������: : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_38/AssignMovingAvg&batch_normalization_38/AssignMovingAvg2n
5batch_normalization_38/AssignMovingAvg/ReadVariableOp5batch_normalization_38/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_38/AssignMovingAvg_1(batch_normalization_38/AssignMovingAvg_12r
7batch_normalization_38/AssignMovingAvg_1/ReadVariableOp7batch_normalization_38/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_38/batchnorm/ReadVariableOp/batch_normalization_38/batchnorm/ReadVariableOp2j
3batch_normalization_38/batchnorm/mul/ReadVariableOp3batch_normalization_38/batchnorm/mul/ReadVariableOp2P
&batch_normalization_39/AssignMovingAvg&batch_normalization_39/AssignMovingAvg2n
5batch_normalization_39/AssignMovingAvg/ReadVariableOp5batch_normalization_39/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_39/AssignMovingAvg_1(batch_normalization_39/AssignMovingAvg_12r
7batch_normalization_39/AssignMovingAvg_1/ReadVariableOp7batch_normalization_39/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_39/batchnorm/ReadVariableOp/batch_normalization_39/batchnorm/ReadVariableOp2j
3batch_normalization_39/batchnorm/mul/ReadVariableOp3batch_normalization_39/batchnorm/mul/ReadVariableOp2D
 dense_106/BiasAdd/ReadVariableOp dense_106/BiasAdd/ReadVariableOp2B
dense_106/MatMul/ReadVariableOpdense_106/MatMul/ReadVariableOp2h
2dense_106/kernel/Regularizer/Square/ReadVariableOp2dense_106/kernel/Regularizer/Square/ReadVariableOp2D
 dense_107/BiasAdd/ReadVariableOp dense_107/BiasAdd/ReadVariableOp2B
dense_107/MatMul/ReadVariableOpdense_107/MatMul/ReadVariableOp2h
2dense_107/kernel/Regularizer/Square/ReadVariableOp2dense_107/kernel/Regularizer/Square/ReadVariableOp2D
 dense_108/BiasAdd/ReadVariableOp dense_108/BiasAdd/ReadVariableOp2B
dense_108/MatMul/ReadVariableOpdense_108/MatMul/ReadVariableOp2h
2dense_108/kernel/Regularizer/Square/ReadVariableOp2dense_108/kernel/Regularizer/Square/ReadVariableOp2D
 dense_109/BiasAdd/ReadVariableOp dense_109/BiasAdd/ReadVariableOp2B
dense_109/MatMul/ReadVariableOpdense_109/MatMul/ReadVariableOp2h
2dense_109/kernel/Regularizer/Square/ReadVariableOp2dense_109/kernel/Regularizer/Square/ReadVariableOp2D
 dense_110/BiasAdd/ReadVariableOp dense_110/BiasAdd/ReadVariableOp2B
dense_110/MatMul/ReadVariableOpdense_110/MatMul/ReadVariableOp2r
7simple_rnn_28/simple_rnn_cell_28/BiasAdd/ReadVariableOp7simple_rnn_28/simple_rnn_cell_28/BiasAdd/ReadVariableOp2p
6simple_rnn_28/simple_rnn_cell_28/MatMul/ReadVariableOp6simple_rnn_28/simple_rnn_cell_28/MatMul/ReadVariableOp2t
8simple_rnn_28/simple_rnn_cell_28/MatMul_1/ReadVariableOp8simple_rnn_28/simple_rnn_cell_28/MatMul_1/ReadVariableOp2*
simple_rnn_28/whilesimple_rnn_28/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_169122
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_169122___redundant_placeholder04
0while_while_cond_169122___redundant_placeholder14
0while_while_cond_169122___redundant_placeholder24
0while_while_cond_169122___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�	
e
F__inference_dropout_64_layer_call_and_return_conditional_losses_167633

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:��������� C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:��������� Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
.__inference_simple_rnn_28_layer_call_fn_168849

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_167301o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_dense_107_layer_call_and_return_conditional_losses_167356

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2dense_107/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� �
2dense_107/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype0�
#dense_107/kernel/Regularizer/SquareSquare:dense_107/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  s
"dense_107/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_107/kernel/Regularizer/SumSum'dense_107/kernel/Regularizer/Square:y:0+dense_107/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_107/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_107/kernel/Regularizer/mulMul+dense_107/kernel/Regularizer/mul/x:output:0)dense_107/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_107/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_107/kernel/Regularizer/Square/ReadVariableOp2dense_107/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
��
�
!__inference__wrapped_model_166725
simple_rnn_28_input_
Msequential_25_simple_rnn_28_simple_rnn_cell_28_matmul_readvariableop_resource:@\
Nsequential_25_simple_rnn_28_simple_rnn_cell_28_biasadd_readvariableop_resource:@a
Osequential_25_simple_rnn_28_simple_rnn_cell_28_matmul_1_readvariableop_resource:@@H
6sequential_25_dense_106_matmul_readvariableop_resource:@ E
7sequential_25_dense_106_biasadd_readvariableop_resource: H
6sequential_25_dense_107_matmul_readvariableop_resource:  E
7sequential_25_dense_107_biasadd_readvariableop_resource: T
Fsequential_25_batch_normalization_38_batchnorm_readvariableop_resource: X
Jsequential_25_batch_normalization_38_batchnorm_mul_readvariableop_resource: V
Hsequential_25_batch_normalization_38_batchnorm_readvariableop_1_resource: V
Hsequential_25_batch_normalization_38_batchnorm_readvariableop_2_resource: H
6sequential_25_dense_108_matmul_readvariableop_resource: E
7sequential_25_dense_108_biasadd_readvariableop_resource:H
6sequential_25_dense_109_matmul_readvariableop_resource:E
7sequential_25_dense_109_biasadd_readvariableop_resource:T
Fsequential_25_batch_normalization_39_batchnorm_readvariableop_resource:X
Jsequential_25_batch_normalization_39_batchnorm_mul_readvariableop_resource:V
Hsequential_25_batch_normalization_39_batchnorm_readvariableop_1_resource:V
Hsequential_25_batch_normalization_39_batchnorm_readvariableop_2_resource:H
6sequential_25_dense_110_matmul_readvariableop_resource:E
7sequential_25_dense_110_biasadd_readvariableop_resource:
identity��=sequential_25/batch_normalization_38/batchnorm/ReadVariableOp�?sequential_25/batch_normalization_38/batchnorm/ReadVariableOp_1�?sequential_25/batch_normalization_38/batchnorm/ReadVariableOp_2�Asequential_25/batch_normalization_38/batchnorm/mul/ReadVariableOp�=sequential_25/batch_normalization_39/batchnorm/ReadVariableOp�?sequential_25/batch_normalization_39/batchnorm/ReadVariableOp_1�?sequential_25/batch_normalization_39/batchnorm/ReadVariableOp_2�Asequential_25/batch_normalization_39/batchnorm/mul/ReadVariableOp�.sequential_25/dense_106/BiasAdd/ReadVariableOp�-sequential_25/dense_106/MatMul/ReadVariableOp�.sequential_25/dense_107/BiasAdd/ReadVariableOp�-sequential_25/dense_107/MatMul/ReadVariableOp�.sequential_25/dense_108/BiasAdd/ReadVariableOp�-sequential_25/dense_108/MatMul/ReadVariableOp�.sequential_25/dense_109/BiasAdd/ReadVariableOp�-sequential_25/dense_109/MatMul/ReadVariableOp�.sequential_25/dense_110/BiasAdd/ReadVariableOp�-sequential_25/dense_110/MatMul/ReadVariableOp�Esequential_25/simple_rnn_28/simple_rnn_cell_28/BiasAdd/ReadVariableOp�Dsequential_25/simple_rnn_28/simple_rnn_cell_28/MatMul/ReadVariableOp�Fsequential_25/simple_rnn_28/simple_rnn_cell_28/MatMul_1/ReadVariableOp�!sequential_25/simple_rnn_28/whiled
!sequential_25/simple_rnn_28/ShapeShapesimple_rnn_28_input*
T0*
_output_shapes
:y
/sequential_25/simple_rnn_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_25/simple_rnn_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_25/simple_rnn_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)sequential_25/simple_rnn_28/strided_sliceStridedSlice*sequential_25/simple_rnn_28/Shape:output:08sequential_25/simple_rnn_28/strided_slice/stack:output:0:sequential_25/simple_rnn_28/strided_slice/stack_1:output:0:sequential_25/simple_rnn_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*sequential_25/simple_rnn_28/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
(sequential_25/simple_rnn_28/zeros/packedPack2sequential_25/simple_rnn_28/strided_slice:output:03sequential_25/simple_rnn_28/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:l
'sequential_25/simple_rnn_28/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
!sequential_25/simple_rnn_28/zerosFill1sequential_25/simple_rnn_28/zeros/packed:output:00sequential_25/simple_rnn_28/zeros/Const:output:0*
T0*'
_output_shapes
:���������@
*sequential_25/simple_rnn_28/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
%sequential_25/simple_rnn_28/transpose	Transposesimple_rnn_28_input3sequential_25/simple_rnn_28/transpose/perm:output:0*
T0*+
_output_shapes
:���������|
#sequential_25/simple_rnn_28/Shape_1Shape)sequential_25/simple_rnn_28/transpose:y:0*
T0*
_output_shapes
:{
1sequential_25/simple_rnn_28/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_25/simple_rnn_28/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_25/simple_rnn_28/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+sequential_25/simple_rnn_28/strided_slice_1StridedSlice,sequential_25/simple_rnn_28/Shape_1:output:0:sequential_25/simple_rnn_28/strided_slice_1/stack:output:0<sequential_25/simple_rnn_28/strided_slice_1/stack_1:output:0<sequential_25/simple_rnn_28/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
7sequential_25/simple_rnn_28/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
)sequential_25/simple_rnn_28/TensorArrayV2TensorListReserve@sequential_25/simple_rnn_28/TensorArrayV2/element_shape:output:04sequential_25/simple_rnn_28/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Qsequential_25/simple_rnn_28/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Csequential_25/simple_rnn_28/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor)sequential_25/simple_rnn_28/transpose:y:0Zsequential_25/simple_rnn_28/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���{
1sequential_25/simple_rnn_28/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_25/simple_rnn_28/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_25/simple_rnn_28/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+sequential_25/simple_rnn_28/strided_slice_2StridedSlice)sequential_25/simple_rnn_28/transpose:y:0:sequential_25/simple_rnn_28/strided_slice_2/stack:output:0<sequential_25/simple_rnn_28/strided_slice_2/stack_1:output:0<sequential_25/simple_rnn_28/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
Dsequential_25/simple_rnn_28/simple_rnn_cell_28/MatMul/ReadVariableOpReadVariableOpMsequential_25_simple_rnn_28_simple_rnn_cell_28_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
5sequential_25/simple_rnn_28/simple_rnn_cell_28/MatMulMatMul4sequential_25/simple_rnn_28/strided_slice_2:output:0Lsequential_25/simple_rnn_28/simple_rnn_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
Esequential_25/simple_rnn_28/simple_rnn_cell_28/BiasAdd/ReadVariableOpReadVariableOpNsequential_25_simple_rnn_28_simple_rnn_cell_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
6sequential_25/simple_rnn_28/simple_rnn_cell_28/BiasAddBiasAdd?sequential_25/simple_rnn_28/simple_rnn_cell_28/MatMul:product:0Msequential_25/simple_rnn_28/simple_rnn_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
Fsequential_25/simple_rnn_28/simple_rnn_cell_28/MatMul_1/ReadVariableOpReadVariableOpOsequential_25_simple_rnn_28_simple_rnn_cell_28_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0�
7sequential_25/simple_rnn_28/simple_rnn_cell_28/MatMul_1MatMul*sequential_25/simple_rnn_28/zeros:output:0Nsequential_25/simple_rnn_28/simple_rnn_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
2sequential_25/simple_rnn_28/simple_rnn_cell_28/addAddV2?sequential_25/simple_rnn_28/simple_rnn_cell_28/BiasAdd:output:0Asequential_25/simple_rnn_28/simple_rnn_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:���������@�
3sequential_25/simple_rnn_28/simple_rnn_cell_28/TanhTanh6sequential_25/simple_rnn_28/simple_rnn_cell_28/add:z:0*
T0*'
_output_shapes
:���������@�
9sequential_25/simple_rnn_28/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   z
8sequential_25/simple_rnn_28/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_25/simple_rnn_28/TensorArrayV2_1TensorListReserveBsequential_25/simple_rnn_28/TensorArrayV2_1/element_shape:output:0Asequential_25/simple_rnn_28/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���b
 sequential_25/simple_rnn_28/timeConst*
_output_shapes
: *
dtype0*
value	B : 
4sequential_25/simple_rnn_28/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������p
.sequential_25/simple_rnn_28/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
!sequential_25/simple_rnn_28/whileWhile7sequential_25/simple_rnn_28/while/loop_counter:output:0=sequential_25/simple_rnn_28/while/maximum_iterations:output:0)sequential_25/simple_rnn_28/time:output:04sequential_25/simple_rnn_28/TensorArrayV2_1:handle:0*sequential_25/simple_rnn_28/zeros:output:04sequential_25/simple_rnn_28/strided_slice_1:output:0Ssequential_25/simple_rnn_28/TensorArrayUnstack/TensorListFromTensor:output_handle:0Msequential_25_simple_rnn_28_simple_rnn_cell_28_matmul_readvariableop_resourceNsequential_25_simple_rnn_28_simple_rnn_cell_28_biasadd_readvariableop_resourceOsequential_25_simple_rnn_28_simple_rnn_cell_28_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *9
body1R/
-sequential_25_simple_rnn_28_while_body_166588*9
cond1R/
-sequential_25_simple_rnn_28_while_cond_166587*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations �
Lsequential_25/simple_rnn_28/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
>sequential_25/simple_rnn_28/TensorArrayV2Stack/TensorListStackTensorListStack*sequential_25/simple_rnn_28/while:output:3Usequential_25/simple_rnn_28/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0*
num_elements�
1sequential_25/simple_rnn_28/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������}
3sequential_25/simple_rnn_28/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: }
3sequential_25/simple_rnn_28/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+sequential_25/simple_rnn_28/strided_slice_3StridedSliceGsequential_25/simple_rnn_28/TensorArrayV2Stack/TensorListStack:tensor:0:sequential_25/simple_rnn_28/strided_slice_3/stack:output:0<sequential_25/simple_rnn_28/strided_slice_3/stack_1:output:0<sequential_25/simple_rnn_28/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_mask�
,sequential_25/simple_rnn_28/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
'sequential_25/simple_rnn_28/transpose_1	TransposeGsequential_25/simple_rnn_28/TensorArrayV2Stack/TensorListStack:tensor:05sequential_25/simple_rnn_28/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@�
-sequential_25/dense_106/MatMul/ReadVariableOpReadVariableOp6sequential_25_dense_106_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
sequential_25/dense_106/MatMulMatMul4sequential_25/simple_rnn_28/strided_slice_3:output:05sequential_25/dense_106/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
.sequential_25/dense_106/BiasAdd/ReadVariableOpReadVariableOp7sequential_25_dense_106_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_25/dense_106/BiasAddBiasAdd(sequential_25/dense_106/MatMul:product:06sequential_25/dense_106/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
sequential_25/dense_106/ReluRelu(sequential_25/dense_106/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
!sequential_25/dropout_64/IdentityIdentity*sequential_25/dense_106/Relu:activations:0*
T0*'
_output_shapes
:��������� �
-sequential_25/dense_107/MatMul/ReadVariableOpReadVariableOp6sequential_25_dense_107_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0�
sequential_25/dense_107/MatMulMatMul*sequential_25/dropout_64/Identity:output:05sequential_25/dense_107/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
.sequential_25/dense_107/BiasAdd/ReadVariableOpReadVariableOp7sequential_25_dense_107_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_25/dense_107/BiasAddBiasAdd(sequential_25/dense_107/MatMul:product:06sequential_25/dense_107/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
sequential_25/dense_107/ReluRelu(sequential_25/dense_107/BiasAdd:output:0*
T0*'
_output_shapes
:��������� �
!sequential_25/dropout_65/IdentityIdentity*sequential_25/dense_107/Relu:activations:0*
T0*'
_output_shapes
:��������� �
=sequential_25/batch_normalization_38/batchnorm/ReadVariableOpReadVariableOpFsequential_25_batch_normalization_38_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0y
4sequential_25/batch_normalization_38/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2sequential_25/batch_normalization_38/batchnorm/addAddV2Esequential_25/batch_normalization_38/batchnorm/ReadVariableOp:value:0=sequential_25/batch_normalization_38/batchnorm/add/y:output:0*
T0*
_output_shapes
: �
4sequential_25/batch_normalization_38/batchnorm/RsqrtRsqrt6sequential_25/batch_normalization_38/batchnorm/add:z:0*
T0*
_output_shapes
: �
Asequential_25/batch_normalization_38/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_25_batch_normalization_38_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0�
2sequential_25/batch_normalization_38/batchnorm/mulMul8sequential_25/batch_normalization_38/batchnorm/Rsqrt:y:0Isequential_25/batch_normalization_38/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: �
4sequential_25/batch_normalization_38/batchnorm/mul_1Mul*sequential_25/dropout_65/Identity:output:06sequential_25/batch_normalization_38/batchnorm/mul:z:0*
T0*'
_output_shapes
:��������� �
?sequential_25/batch_normalization_38/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_25_batch_normalization_38_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0�
4sequential_25/batch_normalization_38/batchnorm/mul_2MulGsequential_25/batch_normalization_38/batchnorm/ReadVariableOp_1:value:06sequential_25/batch_normalization_38/batchnorm/mul:z:0*
T0*
_output_shapes
: �
?sequential_25/batch_normalization_38/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_25_batch_normalization_38_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0�
2sequential_25/batch_normalization_38/batchnorm/subSubGsequential_25/batch_normalization_38/batchnorm/ReadVariableOp_2:value:08sequential_25/batch_normalization_38/batchnorm/mul_2:z:0*
T0*
_output_shapes
: �
4sequential_25/batch_normalization_38/batchnorm/add_1AddV28sequential_25/batch_normalization_38/batchnorm/mul_1:z:06sequential_25/batch_normalization_38/batchnorm/sub:z:0*
T0*'
_output_shapes
:��������� �
-sequential_25/dense_108/MatMul/ReadVariableOpReadVariableOp6sequential_25_dense_108_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
sequential_25/dense_108/MatMulMatMul8sequential_25/batch_normalization_38/batchnorm/add_1:z:05sequential_25/dense_108/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.sequential_25/dense_108/BiasAdd/ReadVariableOpReadVariableOp7sequential_25_dense_108_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_25/dense_108/BiasAddBiasAdd(sequential_25/dense_108/MatMul:product:06sequential_25/dense_108/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential_25/dense_108/ReluRelu(sequential_25/dense_108/BiasAdd:output:0*
T0*'
_output_shapes
:����������
!sequential_25/dropout_66/IdentityIdentity*sequential_25/dense_108/Relu:activations:0*
T0*'
_output_shapes
:����������
-sequential_25/dense_109/MatMul/ReadVariableOpReadVariableOp6sequential_25_dense_109_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential_25/dense_109/MatMulMatMul*sequential_25/dropout_66/Identity:output:05sequential_25/dense_109/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.sequential_25/dense_109/BiasAdd/ReadVariableOpReadVariableOp7sequential_25_dense_109_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_25/dense_109/BiasAddBiasAdd(sequential_25/dense_109/MatMul:product:06sequential_25/dense_109/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential_25/dense_109/ReluRelu(sequential_25/dense_109/BiasAdd:output:0*
T0*'
_output_shapes
:����������
=sequential_25/batch_normalization_39/batchnorm/ReadVariableOpReadVariableOpFsequential_25_batch_normalization_39_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0y
4sequential_25/batch_normalization_39/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2sequential_25/batch_normalization_39/batchnorm/addAddV2Esequential_25/batch_normalization_39/batchnorm/ReadVariableOp:value:0=sequential_25/batch_normalization_39/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
4sequential_25/batch_normalization_39/batchnorm/RsqrtRsqrt6sequential_25/batch_normalization_39/batchnorm/add:z:0*
T0*
_output_shapes
:�
Asequential_25/batch_normalization_39/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_25_batch_normalization_39_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
2sequential_25/batch_normalization_39/batchnorm/mulMul8sequential_25/batch_normalization_39/batchnorm/Rsqrt:y:0Isequential_25/batch_normalization_39/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
4sequential_25/batch_normalization_39/batchnorm/mul_1Mul*sequential_25/dense_109/Relu:activations:06sequential_25/batch_normalization_39/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
?sequential_25/batch_normalization_39/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_25_batch_normalization_39_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
4sequential_25/batch_normalization_39/batchnorm/mul_2MulGsequential_25/batch_normalization_39/batchnorm/ReadVariableOp_1:value:06sequential_25/batch_normalization_39/batchnorm/mul:z:0*
T0*
_output_shapes
:�
?sequential_25/batch_normalization_39/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_25_batch_normalization_39_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
2sequential_25/batch_normalization_39/batchnorm/subSubGsequential_25/batch_normalization_39/batchnorm/ReadVariableOp_2:value:08sequential_25/batch_normalization_39/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
4sequential_25/batch_normalization_39/batchnorm/add_1AddV28sequential_25/batch_normalization_39/batchnorm/mul_1:z:06sequential_25/batch_normalization_39/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
-sequential_25/dense_110/MatMul/ReadVariableOpReadVariableOp6sequential_25_dense_110_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
sequential_25/dense_110/MatMulMatMul8sequential_25/batch_normalization_39/batchnorm/add_1:z:05sequential_25/dense_110/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.sequential_25/dense_110/BiasAdd/ReadVariableOpReadVariableOp7sequential_25_dense_110_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_25/dense_110/BiasAddBiasAdd(sequential_25/dense_110/MatMul:product:06sequential_25/dense_110/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential_25/dense_110/SigmoidSigmoid(sequential_25/dense_110/BiasAdd:output:0*
T0*'
_output_shapes
:���������r
IdentityIdentity#sequential_25/dense_110/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������

NoOpNoOp>^sequential_25/batch_normalization_38/batchnorm/ReadVariableOp@^sequential_25/batch_normalization_38/batchnorm/ReadVariableOp_1@^sequential_25/batch_normalization_38/batchnorm/ReadVariableOp_2B^sequential_25/batch_normalization_38/batchnorm/mul/ReadVariableOp>^sequential_25/batch_normalization_39/batchnorm/ReadVariableOp@^sequential_25/batch_normalization_39/batchnorm/ReadVariableOp_1@^sequential_25/batch_normalization_39/batchnorm/ReadVariableOp_2B^sequential_25/batch_normalization_39/batchnorm/mul/ReadVariableOp/^sequential_25/dense_106/BiasAdd/ReadVariableOp.^sequential_25/dense_106/MatMul/ReadVariableOp/^sequential_25/dense_107/BiasAdd/ReadVariableOp.^sequential_25/dense_107/MatMul/ReadVariableOp/^sequential_25/dense_108/BiasAdd/ReadVariableOp.^sequential_25/dense_108/MatMul/ReadVariableOp/^sequential_25/dense_109/BiasAdd/ReadVariableOp.^sequential_25/dense_109/MatMul/ReadVariableOp/^sequential_25/dense_110/BiasAdd/ReadVariableOp.^sequential_25/dense_110/MatMul/ReadVariableOpF^sequential_25/simple_rnn_28/simple_rnn_cell_28/BiasAdd/ReadVariableOpE^sequential_25/simple_rnn_28/simple_rnn_cell_28/MatMul/ReadVariableOpG^sequential_25/simple_rnn_28/simple_rnn_cell_28/MatMul_1/ReadVariableOp"^sequential_25/simple_rnn_28/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������: : : : : : : : : : : : : : : : : : : : : 2~
=sequential_25/batch_normalization_38/batchnorm/ReadVariableOp=sequential_25/batch_normalization_38/batchnorm/ReadVariableOp2�
?sequential_25/batch_normalization_38/batchnorm/ReadVariableOp_1?sequential_25/batch_normalization_38/batchnorm/ReadVariableOp_12�
?sequential_25/batch_normalization_38/batchnorm/ReadVariableOp_2?sequential_25/batch_normalization_38/batchnorm/ReadVariableOp_22�
Asequential_25/batch_normalization_38/batchnorm/mul/ReadVariableOpAsequential_25/batch_normalization_38/batchnorm/mul/ReadVariableOp2~
=sequential_25/batch_normalization_39/batchnorm/ReadVariableOp=sequential_25/batch_normalization_39/batchnorm/ReadVariableOp2�
?sequential_25/batch_normalization_39/batchnorm/ReadVariableOp_1?sequential_25/batch_normalization_39/batchnorm/ReadVariableOp_12�
?sequential_25/batch_normalization_39/batchnorm/ReadVariableOp_2?sequential_25/batch_normalization_39/batchnorm/ReadVariableOp_22�
Asequential_25/batch_normalization_39/batchnorm/mul/ReadVariableOpAsequential_25/batch_normalization_39/batchnorm/mul/ReadVariableOp2`
.sequential_25/dense_106/BiasAdd/ReadVariableOp.sequential_25/dense_106/BiasAdd/ReadVariableOp2^
-sequential_25/dense_106/MatMul/ReadVariableOp-sequential_25/dense_106/MatMul/ReadVariableOp2`
.sequential_25/dense_107/BiasAdd/ReadVariableOp.sequential_25/dense_107/BiasAdd/ReadVariableOp2^
-sequential_25/dense_107/MatMul/ReadVariableOp-sequential_25/dense_107/MatMul/ReadVariableOp2`
.sequential_25/dense_108/BiasAdd/ReadVariableOp.sequential_25/dense_108/BiasAdd/ReadVariableOp2^
-sequential_25/dense_108/MatMul/ReadVariableOp-sequential_25/dense_108/MatMul/ReadVariableOp2`
.sequential_25/dense_109/BiasAdd/ReadVariableOp.sequential_25/dense_109/BiasAdd/ReadVariableOp2^
-sequential_25/dense_109/MatMul/ReadVariableOp-sequential_25/dense_109/MatMul/ReadVariableOp2`
.sequential_25/dense_110/BiasAdd/ReadVariableOp.sequential_25/dense_110/BiasAdd/ReadVariableOp2^
-sequential_25/dense_110/MatMul/ReadVariableOp-sequential_25/dense_110/MatMul/ReadVariableOp2�
Esequential_25/simple_rnn_28/simple_rnn_cell_28/BiasAdd/ReadVariableOpEsequential_25/simple_rnn_28/simple_rnn_cell_28/BiasAdd/ReadVariableOp2�
Dsequential_25/simple_rnn_28/simple_rnn_cell_28/MatMul/ReadVariableOpDsequential_25/simple_rnn_28/simple_rnn_cell_28/MatMul/ReadVariableOp2�
Fsequential_25/simple_rnn_28/simple_rnn_cell_28/MatMul_1/ReadVariableOpFsequential_25/simple_rnn_28/simple_rnn_cell_28/MatMul_1/ReadVariableOp2F
!sequential_25/simple_rnn_28/while!sequential_25/simple_rnn_28/while:` \
+
_output_shapes
:���������
-
_user_specified_namesimple_rnn_28_input
�
�
while_cond_169012
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_169012___redundant_placeholder04
0while_while_cond_169012___redundant_placeholder14
0while_while_cond_169012___redundant_placeholder24
0while_while_cond_169012___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
.__inference_simple_rnn_28_layer_call_fn_168860

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_167769o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_1_169687M
;dense_107_kernel_regularizer_square_readvariableop_resource:  
identity��2dense_107/kernel/Regularizer/Square/ReadVariableOp�
2dense_107/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_107_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:  *
dtype0�
#dense_107/kernel/Regularizer/SquareSquare:dense_107/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  s
"dense_107/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_107/kernel/Regularizer/SumSum'dense_107/kernel/Regularizer/Square:y:0+dense_107/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_107/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_107/kernel/Regularizer/mulMul+dense_107/kernel/Regularizer/mul/x:output:0)dense_107/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentity$dense_107/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^dense_107/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2dense_107/kernel/Regularizer/Square/ReadVariableOp2dense_107/kernel/Regularizer/Square/ReadVariableOp
�
�
.__inference_sequential_25_layer_call_fn_167527
simple_rnn_28_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@ 
	unknown_3: 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_28_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*7
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_25_layer_call_and_return_conditional_losses_167482o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:���������
-
_user_specified_namesimple_rnn_28_input
�5
�
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_167012

inputs+
simple_rnn_cell_28_166935:@'
simple_rnn_cell_28_166937:@+
simple_rnn_cell_28_166939:@@
identity��*simple_rnn_cell_28/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
*simple_rnn_cell_28/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_28_166935simple_rnn_cell_28_166937simple_rnn_cell_28_166939*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_simple_rnn_cell_28_layer_call_and_return_conditional_losses_166895n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_28_166935simple_rnn_cell_28_166937simple_rnn_cell_28_166939*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_166948*
condR
while_cond_166947*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@{
NoOpNoOp+^simple_rnn_cell_28/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2X
*simple_rnn_cell_28/StatefulPartitionedCall*simple_rnn_cell_28/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
while_cond_167233
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_167233___redundant_placeholder04
0while_while_cond_167233___redundant_placeholder14
0while_while_cond_167233___redundant_placeholder24
0while_while_cond_167233___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�>
�
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_169190

inputsC
1simple_rnn_cell_28_matmul_readvariableop_resource:@@
2simple_rnn_cell_28_biasadd_readvariableop_resource:@E
3simple_rnn_cell_28_matmul_1_readvariableop_resource:@@
identity��)simple_rnn_cell_28/BiasAdd/ReadVariableOp�(simple_rnn_cell_28/MatMul/ReadVariableOp�*simple_rnn_cell_28/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
(simple_rnn_cell_28/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_28_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
simple_rnn_cell_28/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
)simple_rnn_cell_28/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
simple_rnn_cell_28/BiasAddBiasAdd#simple_rnn_cell_28/MatMul:product:01simple_rnn_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
*simple_rnn_cell_28/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_28_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0�
simple_rnn_cell_28/MatMul_1MatMulzeros:output:02simple_rnn_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
simple_rnn_cell_28/addAddV2#simple_rnn_cell_28/BiasAdd:output:0%simple_rnn_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:���������@m
simple_rnn_cell_28/TanhTanhsimple_rnn_cell_28/add:z:0*
T0*'
_output_shapes
:���������@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_28_matmul_readvariableop_resource2simple_rnn_cell_28_biasadd_readvariableop_resource3simple_rnn_cell_28_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_169123*
condR
while_cond_169122*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp*^simple_rnn_cell_28/BiasAdd/ReadVariableOp)^simple_rnn_cell_28/MatMul/ReadVariableOp+^simple_rnn_cell_28/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2V
)simple_rnn_cell_28/BiasAdd/ReadVariableOp)simple_rnn_cell_28/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_28/MatMul/ReadVariableOp(simple_rnn_cell_28/MatMul/ReadVariableOp2X
*simple_rnn_cell_28/MatMul_1/ReadVariableOp*simple_rnn_cell_28/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
+__inference_dropout_65_layer_call_fn_169389

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
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_65_layer_call_and_return_conditional_losses_167600o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
d
F__inference_dropout_64_layer_call_and_return_conditional_losses_169341

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:��������� [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:��������� "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�	
e
F__inference_dropout_65_layer_call_and_return_conditional_losses_169406

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:��������� C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:��������� Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
*__inference_dense_108_layer_call_fn_169495

inputs
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_108_layer_call_and_return_conditional_losses_167395o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
��
�
I__inference_sequential_25_layer_call_and_return_conditional_losses_168563

inputsQ
?simple_rnn_28_simple_rnn_cell_28_matmul_readvariableop_resource:@N
@simple_rnn_28_simple_rnn_cell_28_biasadd_readvariableop_resource:@S
Asimple_rnn_28_simple_rnn_cell_28_matmul_1_readvariableop_resource:@@:
(dense_106_matmul_readvariableop_resource:@ 7
)dense_106_biasadd_readvariableop_resource: :
(dense_107_matmul_readvariableop_resource:  7
)dense_107_biasadd_readvariableop_resource: F
8batch_normalization_38_batchnorm_readvariableop_resource: J
<batch_normalization_38_batchnorm_mul_readvariableop_resource: H
:batch_normalization_38_batchnorm_readvariableop_1_resource: H
:batch_normalization_38_batchnorm_readvariableop_2_resource: :
(dense_108_matmul_readvariableop_resource: 7
)dense_108_biasadd_readvariableop_resource::
(dense_109_matmul_readvariableop_resource:7
)dense_109_biasadd_readvariableop_resource:F
8batch_normalization_39_batchnorm_readvariableop_resource:J
<batch_normalization_39_batchnorm_mul_readvariableop_resource:H
:batch_normalization_39_batchnorm_readvariableop_1_resource:H
:batch_normalization_39_batchnorm_readvariableop_2_resource::
(dense_110_matmul_readvariableop_resource:7
)dense_110_biasadd_readvariableop_resource:
identity��/batch_normalization_38/batchnorm/ReadVariableOp�1batch_normalization_38/batchnorm/ReadVariableOp_1�1batch_normalization_38/batchnorm/ReadVariableOp_2�3batch_normalization_38/batchnorm/mul/ReadVariableOp�/batch_normalization_39/batchnorm/ReadVariableOp�1batch_normalization_39/batchnorm/ReadVariableOp_1�1batch_normalization_39/batchnorm/ReadVariableOp_2�3batch_normalization_39/batchnorm/mul/ReadVariableOp� dense_106/BiasAdd/ReadVariableOp�dense_106/MatMul/ReadVariableOp�2dense_106/kernel/Regularizer/Square/ReadVariableOp� dense_107/BiasAdd/ReadVariableOp�dense_107/MatMul/ReadVariableOp�2dense_107/kernel/Regularizer/Square/ReadVariableOp� dense_108/BiasAdd/ReadVariableOp�dense_108/MatMul/ReadVariableOp�2dense_108/kernel/Regularizer/Square/ReadVariableOp� dense_109/BiasAdd/ReadVariableOp�dense_109/MatMul/ReadVariableOp�2dense_109/kernel/Regularizer/Square/ReadVariableOp� dense_110/BiasAdd/ReadVariableOp�dense_110/MatMul/ReadVariableOp�7simple_rnn_28/simple_rnn_cell_28/BiasAdd/ReadVariableOp�6simple_rnn_28/simple_rnn_cell_28/MatMul/ReadVariableOp�8simple_rnn_28/simple_rnn_cell_28/MatMul_1/ReadVariableOp�simple_rnn_28/whileI
simple_rnn_28/ShapeShapeinputs*
T0*
_output_shapes
:k
!simple_rnn_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_28/strided_sliceStridedSlicesimple_rnn_28/Shape:output:0*simple_rnn_28/strided_slice/stack:output:0,simple_rnn_28/strided_slice/stack_1:output:0,simple_rnn_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_28/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@�
simple_rnn_28/zeros/packedPack$simple_rnn_28/strided_slice:output:0%simple_rnn_28/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_28/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_28/zerosFill#simple_rnn_28/zeros/packed:output:0"simple_rnn_28/zeros/Const:output:0*
T0*'
_output_shapes
:���������@q
simple_rnn_28/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_28/transpose	Transposeinputs%simple_rnn_28/transpose/perm:output:0*
T0*+
_output_shapes
:���������`
simple_rnn_28/Shape_1Shapesimple_rnn_28/transpose:y:0*
T0*
_output_shapes
:m
#simple_rnn_28/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_28/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_28/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_28/strided_slice_1StridedSlicesimple_rnn_28/Shape_1:output:0,simple_rnn_28/strided_slice_1/stack:output:0.simple_rnn_28/strided_slice_1/stack_1:output:0.simple_rnn_28/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_28/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_28/TensorArrayV2TensorListReserve2simple_rnn_28/TensorArrayV2/element_shape:output:0&simple_rnn_28/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Csimple_rnn_28/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
5simple_rnn_28/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_28/transpose:y:0Lsimple_rnn_28/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���m
#simple_rnn_28/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_28/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_28/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_28/strided_slice_2StridedSlicesimple_rnn_28/transpose:y:0,simple_rnn_28/strided_slice_2/stack:output:0.simple_rnn_28/strided_slice_2/stack_1:output:0.simple_rnn_28/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
6simple_rnn_28/simple_rnn_cell_28/MatMul/ReadVariableOpReadVariableOp?simple_rnn_28_simple_rnn_cell_28_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
'simple_rnn_28/simple_rnn_cell_28/MatMulMatMul&simple_rnn_28/strided_slice_2:output:0>simple_rnn_28/simple_rnn_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
7simple_rnn_28/simple_rnn_cell_28/BiasAdd/ReadVariableOpReadVariableOp@simple_rnn_28_simple_rnn_cell_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
(simple_rnn_28/simple_rnn_cell_28/BiasAddBiasAdd1simple_rnn_28/simple_rnn_cell_28/MatMul:product:0?simple_rnn_28/simple_rnn_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
8simple_rnn_28/simple_rnn_cell_28/MatMul_1/ReadVariableOpReadVariableOpAsimple_rnn_28_simple_rnn_cell_28_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0�
)simple_rnn_28/simple_rnn_cell_28/MatMul_1MatMulsimple_rnn_28/zeros:output:0@simple_rnn_28/simple_rnn_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
$simple_rnn_28/simple_rnn_cell_28/addAddV21simple_rnn_28/simple_rnn_cell_28/BiasAdd:output:03simple_rnn_28/simple_rnn_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:���������@�
%simple_rnn_28/simple_rnn_cell_28/TanhTanh(simple_rnn_28/simple_rnn_cell_28/add:z:0*
T0*'
_output_shapes
:���������@|
+simple_rnn_28/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   l
*simple_rnn_28/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_28/TensorArrayV2_1TensorListReserve4simple_rnn_28/TensorArrayV2_1/element_shape:output:03simple_rnn_28/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���T
simple_rnn_28/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_28/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������b
 simple_rnn_28/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_28/whileWhile)simple_rnn_28/while/loop_counter:output:0/simple_rnn_28/while/maximum_iterations:output:0simple_rnn_28/time:output:0&simple_rnn_28/TensorArrayV2_1:handle:0simple_rnn_28/zeros:output:0&simple_rnn_28/strided_slice_1:output:0Esimple_rnn_28/TensorArrayUnstack/TensorListFromTensor:output_handle:0?simple_rnn_28_simple_rnn_cell_28_matmul_readvariableop_resource@simple_rnn_28_simple_rnn_cell_28_biasadd_readvariableop_resourceAsimple_rnn_28_simple_rnn_cell_28_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *+
body#R!
simple_rnn_28_while_body_168402*+
cond#R!
simple_rnn_28_while_cond_168401*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations �
>simple_rnn_28/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
0simple_rnn_28/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_28/while:output:3Gsimple_rnn_28/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0*
num_elementsv
#simple_rnn_28/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������o
%simple_rnn_28/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_28/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_28/strided_slice_3StridedSlice9simple_rnn_28/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_28/strided_slice_3/stack:output:0.simple_rnn_28/strided_slice_3/stack_1:output:0.simple_rnn_28/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_masks
simple_rnn_28/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_28/transpose_1	Transpose9simple_rnn_28/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_28/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@�
dense_106/MatMul/ReadVariableOpReadVariableOp(dense_106_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
dense_106/MatMulMatMul&simple_rnn_28/strided_slice_3:output:0'dense_106/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
 dense_106/BiasAdd/ReadVariableOpReadVariableOp)dense_106_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_106/BiasAddBiasAdddense_106/MatMul:product:0(dense_106/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� d
dense_106/ReluReludense_106/BiasAdd:output:0*
T0*'
_output_shapes
:��������� o
dropout_64/IdentityIdentitydense_106/Relu:activations:0*
T0*'
_output_shapes
:��������� �
dense_107/MatMul/ReadVariableOpReadVariableOp(dense_107_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0�
dense_107/MatMulMatMuldropout_64/Identity:output:0'dense_107/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
 dense_107/BiasAdd/ReadVariableOpReadVariableOp)dense_107_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
dense_107/BiasAddBiasAdddense_107/MatMul:product:0(dense_107/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� d
dense_107/ReluReludense_107/BiasAdd:output:0*
T0*'
_output_shapes
:��������� o
dropout_65/IdentityIdentitydense_107/Relu:activations:0*
T0*'
_output_shapes
:��������� �
/batch_normalization_38/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_38_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0k
&batch_normalization_38/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_38/batchnorm/addAddV27batch_normalization_38/batchnorm/ReadVariableOp:value:0/batch_normalization_38/batchnorm/add/y:output:0*
T0*
_output_shapes
: ~
&batch_normalization_38/batchnorm/RsqrtRsqrt(batch_normalization_38/batchnorm/add:z:0*
T0*
_output_shapes
: �
3batch_normalization_38/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_38_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0�
$batch_normalization_38/batchnorm/mulMul*batch_normalization_38/batchnorm/Rsqrt:y:0;batch_normalization_38/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: �
&batch_normalization_38/batchnorm/mul_1Muldropout_65/Identity:output:0(batch_normalization_38/batchnorm/mul:z:0*
T0*'
_output_shapes
:��������� �
1batch_normalization_38/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_38_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0�
&batch_normalization_38/batchnorm/mul_2Mul9batch_normalization_38/batchnorm/ReadVariableOp_1:value:0(batch_normalization_38/batchnorm/mul:z:0*
T0*
_output_shapes
: �
1batch_normalization_38/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_38_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0�
$batch_normalization_38/batchnorm/subSub9batch_normalization_38/batchnorm/ReadVariableOp_2:value:0*batch_normalization_38/batchnorm/mul_2:z:0*
T0*
_output_shapes
: �
&batch_normalization_38/batchnorm/add_1AddV2*batch_normalization_38/batchnorm/mul_1:z:0(batch_normalization_38/batchnorm/sub:z:0*
T0*'
_output_shapes
:��������� �
dense_108/MatMul/ReadVariableOpReadVariableOp(dense_108_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
dense_108/MatMulMatMul*batch_normalization_38/batchnorm/add_1:z:0'dense_108/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_108/BiasAdd/ReadVariableOpReadVariableOp)dense_108_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_108/BiasAddBiasAdddense_108/MatMul:product:0(dense_108/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d
dense_108/ReluReludense_108/BiasAdd:output:0*
T0*'
_output_shapes
:���������o
dropout_66/IdentityIdentitydense_108/Relu:activations:0*
T0*'
_output_shapes
:����������
dense_109/MatMul/ReadVariableOpReadVariableOp(dense_109_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_109/MatMulMatMuldropout_66/Identity:output:0'dense_109/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_109/BiasAdd/ReadVariableOpReadVariableOp)dense_109_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_109/BiasAddBiasAdddense_109/MatMul:product:0(dense_109/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d
dense_109/ReluReludense_109/BiasAdd:output:0*
T0*'
_output_shapes
:����������
/batch_normalization_39/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_39_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_39/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
$batch_normalization_39/batchnorm/addAddV27batch_normalization_39/batchnorm/ReadVariableOp:value:0/batch_normalization_39/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_39/batchnorm/RsqrtRsqrt(batch_normalization_39/batchnorm/add:z:0*
T0*
_output_shapes
:�
3batch_normalization_39/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_39_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
$batch_normalization_39/batchnorm/mulMul*batch_normalization_39/batchnorm/Rsqrt:y:0;batch_normalization_39/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
&batch_normalization_39/batchnorm/mul_1Muldense_109/Relu:activations:0(batch_normalization_39/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
1batch_normalization_39/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_39_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
&batch_normalization_39/batchnorm/mul_2Mul9batch_normalization_39/batchnorm/ReadVariableOp_1:value:0(batch_normalization_39/batchnorm/mul:z:0*
T0*
_output_shapes
:�
1batch_normalization_39/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_39_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
$batch_normalization_39/batchnorm/subSub9batch_normalization_39/batchnorm/ReadVariableOp_2:value:0*batch_normalization_39/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
&batch_normalization_39/batchnorm/add_1AddV2*batch_normalization_39/batchnorm/mul_1:z:0(batch_normalization_39/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
dense_110/MatMul/ReadVariableOpReadVariableOp(dense_110_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_110/MatMulMatMul*batch_normalization_39/batchnorm/add_1:z:0'dense_110/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_110/BiasAdd/ReadVariableOpReadVariableOp)dense_110_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_110/BiasAddBiasAdddense_110/MatMul:product:0(dense_110/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������j
dense_110/SigmoidSigmoiddense_110/BiasAdd:output:0*
T0*'
_output_shapes
:����������
2dense_106/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_106_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
#dense_106/kernel/Regularizer/SquareSquare:dense_106/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ s
"dense_106/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_106/kernel/Regularizer/SumSum'dense_106/kernel/Regularizer/Square:y:0+dense_106/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_106/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_106/kernel/Regularizer/mulMul+dense_106/kernel/Regularizer/mul/x:output:0)dense_106/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_107/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_107_matmul_readvariableop_resource*
_output_shapes

:  *
dtype0�
#dense_107/kernel/Regularizer/SquareSquare:dense_107/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  s
"dense_107/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_107/kernel/Regularizer/SumSum'dense_107/kernel/Regularizer/Square:y:0+dense_107/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_107/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_107/kernel/Regularizer/mulMul+dense_107/kernel/Regularizer/mul/x:output:0)dense_107/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_108/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_108_matmul_readvariableop_resource*
_output_shapes

: *
dtype0�
#dense_108/kernel/Regularizer/SquareSquare:dense_108/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: s
"dense_108/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_108/kernel/Regularizer/SumSum'dense_108/kernel/Regularizer/Square:y:0+dense_108/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_108/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_108/kernel/Regularizer/mulMul+dense_108/kernel/Regularizer/mul/x:output:0)dense_108/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_109/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_109_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
#dense_109/kernel/Regularizer/SquareSquare:dense_109/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_109/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_109/kernel/Regularizer/SumSum'dense_109/kernel/Regularizer/Square:y:0+dense_109/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_109/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_109/kernel/Regularizer/mulMul+dense_109/kernel/Regularizer/mul/x:output:0)dense_109/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: d
IdentityIdentitydense_110/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp0^batch_normalization_38/batchnorm/ReadVariableOp2^batch_normalization_38/batchnorm/ReadVariableOp_12^batch_normalization_38/batchnorm/ReadVariableOp_24^batch_normalization_38/batchnorm/mul/ReadVariableOp0^batch_normalization_39/batchnorm/ReadVariableOp2^batch_normalization_39/batchnorm/ReadVariableOp_12^batch_normalization_39/batchnorm/ReadVariableOp_24^batch_normalization_39/batchnorm/mul/ReadVariableOp!^dense_106/BiasAdd/ReadVariableOp ^dense_106/MatMul/ReadVariableOp3^dense_106/kernel/Regularizer/Square/ReadVariableOp!^dense_107/BiasAdd/ReadVariableOp ^dense_107/MatMul/ReadVariableOp3^dense_107/kernel/Regularizer/Square/ReadVariableOp!^dense_108/BiasAdd/ReadVariableOp ^dense_108/MatMul/ReadVariableOp3^dense_108/kernel/Regularizer/Square/ReadVariableOp!^dense_109/BiasAdd/ReadVariableOp ^dense_109/MatMul/ReadVariableOp3^dense_109/kernel/Regularizer/Square/ReadVariableOp!^dense_110/BiasAdd/ReadVariableOp ^dense_110/MatMul/ReadVariableOp8^simple_rnn_28/simple_rnn_cell_28/BiasAdd/ReadVariableOp7^simple_rnn_28/simple_rnn_cell_28/MatMul/ReadVariableOp9^simple_rnn_28/simple_rnn_cell_28/MatMul_1/ReadVariableOp^simple_rnn_28/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������: : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_38/batchnorm/ReadVariableOp/batch_normalization_38/batchnorm/ReadVariableOp2f
1batch_normalization_38/batchnorm/ReadVariableOp_11batch_normalization_38/batchnorm/ReadVariableOp_12f
1batch_normalization_38/batchnorm/ReadVariableOp_21batch_normalization_38/batchnorm/ReadVariableOp_22j
3batch_normalization_38/batchnorm/mul/ReadVariableOp3batch_normalization_38/batchnorm/mul/ReadVariableOp2b
/batch_normalization_39/batchnorm/ReadVariableOp/batch_normalization_39/batchnorm/ReadVariableOp2f
1batch_normalization_39/batchnorm/ReadVariableOp_11batch_normalization_39/batchnorm/ReadVariableOp_12f
1batch_normalization_39/batchnorm/ReadVariableOp_21batch_normalization_39/batchnorm/ReadVariableOp_22j
3batch_normalization_39/batchnorm/mul/ReadVariableOp3batch_normalization_39/batchnorm/mul/ReadVariableOp2D
 dense_106/BiasAdd/ReadVariableOp dense_106/BiasAdd/ReadVariableOp2B
dense_106/MatMul/ReadVariableOpdense_106/MatMul/ReadVariableOp2h
2dense_106/kernel/Regularizer/Square/ReadVariableOp2dense_106/kernel/Regularizer/Square/ReadVariableOp2D
 dense_107/BiasAdd/ReadVariableOp dense_107/BiasAdd/ReadVariableOp2B
dense_107/MatMul/ReadVariableOpdense_107/MatMul/ReadVariableOp2h
2dense_107/kernel/Regularizer/Square/ReadVariableOp2dense_107/kernel/Regularizer/Square/ReadVariableOp2D
 dense_108/BiasAdd/ReadVariableOp dense_108/BiasAdd/ReadVariableOp2B
dense_108/MatMul/ReadVariableOpdense_108/MatMul/ReadVariableOp2h
2dense_108/kernel/Regularizer/Square/ReadVariableOp2dense_108/kernel/Regularizer/Square/ReadVariableOp2D
 dense_109/BiasAdd/ReadVariableOp dense_109/BiasAdd/ReadVariableOp2B
dense_109/MatMul/ReadVariableOpdense_109/MatMul/ReadVariableOp2h
2dense_109/kernel/Regularizer/Square/ReadVariableOp2dense_109/kernel/Regularizer/Square/ReadVariableOp2D
 dense_110/BiasAdd/ReadVariableOp dense_110/BiasAdd/ReadVariableOp2B
dense_110/MatMul/ReadVariableOpdense_110/MatMul/ReadVariableOp2r
7simple_rnn_28/simple_rnn_cell_28/BiasAdd/ReadVariableOp7simple_rnn_28/simple_rnn_cell_28/BiasAdd/ReadVariableOp2p
6simple_rnn_28/simple_rnn_cell_28/MatMul/ReadVariableOp6simple_rnn_28/simple_rnn_cell_28/MatMul/ReadVariableOp2t
8simple_rnn_28/simple_rnn_cell_28/MatMul_1/ReadVariableOp8simple_rnn_28/simple_rnn_cell_28/MatMul_1/ReadVariableOp2*
simple_rnn_28/whilesimple_rnn_28/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
.__inference_sequential_25_layer_call_fn_168000
simple_rnn_28_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@ 
	unknown_3: 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_28_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*3
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_25_layer_call_and_return_conditional_losses_167908o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:���������
-
_user_specified_namesimple_rnn_28_input
�
�
N__inference_simple_rnn_cell_28_layer_call_and_return_conditional_losses_166773

inputs

states0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������@
 
_user_specified_namestates
�-
�
while_body_169123
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_28_matmul_readvariableop_resource_0:@H
:while_simple_rnn_cell_28_biasadd_readvariableop_resource_0:@M
;while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_28_matmul_readvariableop_resource:@F
8while_simple_rnn_cell_28_biasadd_readvariableop_resource:@K
9while_simple_rnn_cell_28_matmul_1_readvariableop_resource:@@��/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_28/MatMul/ReadVariableOp�0while/simple_rnn_cell_28/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_28/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_28_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0�
while/simple_rnn_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
/while/simple_rnn_cell_28/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_28_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0�
 while/simple_rnn_cell_28/BiasAddBiasAdd)while/simple_rnn_cell_28/MatMul:product:07while/simple_rnn_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
0while/simple_rnn_cell_28/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0�
!while/simple_rnn_cell_28/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
while/simple_rnn_cell_28/addAddV2)while/simple_rnn_cell_28/BiasAdd:output:0+while/simple_rnn_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:���������@y
while/simple_rnn_cell_28/TanhTanh while/simple_rnn_cell_28/add:z:0*
T0*'
_output_shapes
:���������@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_28/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity!while/simple_rnn_cell_28/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������@�

while/NoOpNoOp0^while/simple_rnn_cell_28/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_28/MatMul/ReadVariableOp1^while/simple_rnn_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_28_biasadd_readvariableop_resource:while_simple_rnn_cell_28_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_28_matmul_1_readvariableop_resource;while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_28_matmul_readvariableop_resource9while_simple_rnn_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������@: : : : : 2b
/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_28/MatMul/ReadVariableOp.while/simple_rnn_cell_28/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_28/MatMul_1/ReadVariableOp0while/simple_rnn_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
G
+__inference_dropout_65_layer_call_fn_169384

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
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_65_layer_call_and_return_conditional_losses_167367`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
__inference_loss_fn_0_169676M
;dense_106_kernel_regularizer_square_readvariableop_resource:@ 
identity��2dense_106/kernel/Regularizer/Square/ReadVariableOp�
2dense_106/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_106_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:@ *
dtype0�
#dense_106/kernel/Regularizer/SquareSquare:dense_106/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ s
"dense_106/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_106/kernel/Regularizer/SumSum'dense_106/kernel/Regularizer/Square:y:0+dense_106/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_106/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_106/kernel/Regularizer/mulMul+dense_106/kernel/Regularizer/mul/x:output:0)dense_106/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentity$dense_106/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^dense_106/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2dense_106/kernel/Regularizer/Square/ReadVariableOp2dense_106/kernel/Regularizer/Square/ReadVariableOp
�
�
while_cond_166947
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_166947___redundant_placeholder04
0while_while_cond_166947___redundant_placeholder14
0while_while_cond_166947___redundant_placeholder24
0while_while_cond_166947___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�>
�
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_168970
inputs_0C
1simple_rnn_cell_28_matmul_readvariableop_resource:@@
2simple_rnn_cell_28_biasadd_readvariableop_resource:@E
3simple_rnn_cell_28_matmul_1_readvariableop_resource:@@
identity��)simple_rnn_cell_28/BiasAdd/ReadVariableOp�(simple_rnn_cell_28/MatMul/ReadVariableOp�*simple_rnn_cell_28/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
(simple_rnn_cell_28/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_28_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
simple_rnn_cell_28/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
)simple_rnn_cell_28/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
simple_rnn_cell_28/BiasAddBiasAdd#simple_rnn_cell_28/MatMul:product:01simple_rnn_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
*simple_rnn_cell_28/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_28_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0�
simple_rnn_cell_28/MatMul_1MatMulzeros:output:02simple_rnn_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
simple_rnn_cell_28/addAddV2#simple_rnn_cell_28/BiasAdd:output:0%simple_rnn_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:���������@m
simple_rnn_cell_28/TanhTanhsimple_rnn_cell_28/add:z:0*
T0*'
_output_shapes
:���������@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_28_matmul_readvariableop_resource2simple_rnn_cell_28_biasadd_readvariableop_resource3simple_rnn_cell_28_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_168903*
condR
while_cond_168902*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp*^simple_rnn_cell_28/BiasAdd/ReadVariableOp)^simple_rnn_cell_28/MatMul/ReadVariableOp+^simple_rnn_cell_28/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2V
)simple_rnn_cell_28/BiasAdd/ReadVariableOp)simple_rnn_cell_28/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_28/MatMul/ReadVariableOp(simple_rnn_cell_28/MatMul/ReadVariableOp2X
*simple_rnn_cell_28/MatMul_1/ReadVariableOp*simple_rnn_cell_28/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�>
�
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_169300

inputsC
1simple_rnn_cell_28_matmul_readvariableop_resource:@@
2simple_rnn_cell_28_biasadd_readvariableop_resource:@E
3simple_rnn_cell_28_matmul_1_readvariableop_resource:@@
identity��)simple_rnn_cell_28/BiasAdd/ReadVariableOp�(simple_rnn_cell_28/MatMul/ReadVariableOp�*simple_rnn_cell_28/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
(simple_rnn_cell_28/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_28_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
simple_rnn_cell_28/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
)simple_rnn_cell_28/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
simple_rnn_cell_28/BiasAddBiasAdd#simple_rnn_cell_28/MatMul:product:01simple_rnn_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
*simple_rnn_cell_28/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_28_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0�
simple_rnn_cell_28/MatMul_1MatMulzeros:output:02simple_rnn_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
simple_rnn_cell_28/addAddV2#simple_rnn_cell_28/BiasAdd:output:0%simple_rnn_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:���������@m
simple_rnn_cell_28/TanhTanhsimple_rnn_cell_28/add:z:0*
T0*'
_output_shapes
:���������@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_28_matmul_readvariableop_resource2simple_rnn_cell_28_biasadd_readvariableop_resource3simple_rnn_cell_28_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_169233*
condR
while_cond_169232*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp*^simple_rnn_cell_28/BiasAdd/ReadVariableOp)^simple_rnn_cell_28/MatMul/ReadVariableOp+^simple_rnn_cell_28/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2V
)simple_rnn_cell_28/BiasAdd/ReadVariableOp)simple_rnn_cell_28/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_28/MatMul/ReadVariableOp(simple_rnn_cell_28/MatMul/ReadVariableOp2X
*simple_rnn_cell_28/MatMul_1/ReadVariableOp*simple_rnn_cell_28/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
-sequential_25_simple_rnn_28_while_cond_166587T
Psequential_25_simple_rnn_28_while_sequential_25_simple_rnn_28_while_loop_counterZ
Vsequential_25_simple_rnn_28_while_sequential_25_simple_rnn_28_while_maximum_iterations1
-sequential_25_simple_rnn_28_while_placeholder3
/sequential_25_simple_rnn_28_while_placeholder_13
/sequential_25_simple_rnn_28_while_placeholder_2V
Rsequential_25_simple_rnn_28_while_less_sequential_25_simple_rnn_28_strided_slice_1l
hsequential_25_simple_rnn_28_while_sequential_25_simple_rnn_28_while_cond_166587___redundant_placeholder0l
hsequential_25_simple_rnn_28_while_sequential_25_simple_rnn_28_while_cond_166587___redundant_placeholder1l
hsequential_25_simple_rnn_28_while_sequential_25_simple_rnn_28_while_cond_166587___redundant_placeholder2l
hsequential_25_simple_rnn_28_while_sequential_25_simple_rnn_28_while_cond_166587___redundant_placeholder3.
*sequential_25_simple_rnn_28_while_identity
�
&sequential_25/simple_rnn_28/while/LessLess-sequential_25_simple_rnn_28_while_placeholderRsequential_25_simple_rnn_28_while_less_sequential_25_simple_rnn_28_strided_slice_1*
T0*
_output_shapes
: �
*sequential_25/simple_rnn_28/while/IdentityIdentity*sequential_25/simple_rnn_28/while/Less:z:0*
T0
*
_output_shapes
: "a
*sequential_25_simple_rnn_28_while_identity3sequential_25/simple_rnn_28/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�H
�
-sequential_25_simple_rnn_28_while_body_166588T
Psequential_25_simple_rnn_28_while_sequential_25_simple_rnn_28_while_loop_counterZ
Vsequential_25_simple_rnn_28_while_sequential_25_simple_rnn_28_while_maximum_iterations1
-sequential_25_simple_rnn_28_while_placeholder3
/sequential_25_simple_rnn_28_while_placeholder_13
/sequential_25_simple_rnn_28_while_placeholder_2S
Osequential_25_simple_rnn_28_while_sequential_25_simple_rnn_28_strided_slice_1_0�
�sequential_25_simple_rnn_28_while_tensorarrayv2read_tensorlistgetitem_sequential_25_simple_rnn_28_tensorarrayunstack_tensorlistfromtensor_0g
Usequential_25_simple_rnn_28_while_simple_rnn_cell_28_matmul_readvariableop_resource_0:@d
Vsequential_25_simple_rnn_28_while_simple_rnn_cell_28_biasadd_readvariableop_resource_0:@i
Wsequential_25_simple_rnn_28_while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0:@@.
*sequential_25_simple_rnn_28_while_identity0
,sequential_25_simple_rnn_28_while_identity_10
,sequential_25_simple_rnn_28_while_identity_20
,sequential_25_simple_rnn_28_while_identity_30
,sequential_25_simple_rnn_28_while_identity_4Q
Msequential_25_simple_rnn_28_while_sequential_25_simple_rnn_28_strided_slice_1�
�sequential_25_simple_rnn_28_while_tensorarrayv2read_tensorlistgetitem_sequential_25_simple_rnn_28_tensorarrayunstack_tensorlistfromtensore
Ssequential_25_simple_rnn_28_while_simple_rnn_cell_28_matmul_readvariableop_resource:@b
Tsequential_25_simple_rnn_28_while_simple_rnn_cell_28_biasadd_readvariableop_resource:@g
Usequential_25_simple_rnn_28_while_simple_rnn_cell_28_matmul_1_readvariableop_resource:@@��Ksequential_25/simple_rnn_28/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp�Jsequential_25/simple_rnn_28/while/simple_rnn_cell_28/MatMul/ReadVariableOp�Lsequential_25/simple_rnn_28/while/simple_rnn_cell_28/MatMul_1/ReadVariableOp�
Ssequential_25/simple_rnn_28/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Esequential_25/simple_rnn_28/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_25_simple_rnn_28_while_tensorarrayv2read_tensorlistgetitem_sequential_25_simple_rnn_28_tensorarrayunstack_tensorlistfromtensor_0-sequential_25_simple_rnn_28_while_placeholder\sequential_25/simple_rnn_28/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Jsequential_25/simple_rnn_28/while/simple_rnn_cell_28/MatMul/ReadVariableOpReadVariableOpUsequential_25_simple_rnn_28_while_simple_rnn_cell_28_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0�
;sequential_25/simple_rnn_28/while/simple_rnn_cell_28/MatMulMatMulLsequential_25/simple_rnn_28/while/TensorArrayV2Read/TensorListGetItem:item:0Rsequential_25/simple_rnn_28/while/simple_rnn_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
Ksequential_25/simple_rnn_28/while/simple_rnn_cell_28/BiasAdd/ReadVariableOpReadVariableOpVsequential_25_simple_rnn_28_while_simple_rnn_cell_28_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0�
<sequential_25/simple_rnn_28/while/simple_rnn_cell_28/BiasAddBiasAddEsequential_25/simple_rnn_28/while/simple_rnn_cell_28/MatMul:product:0Ssequential_25/simple_rnn_28/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
Lsequential_25/simple_rnn_28/while/simple_rnn_cell_28/MatMul_1/ReadVariableOpReadVariableOpWsequential_25_simple_rnn_28_while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0�
=sequential_25/simple_rnn_28/while/simple_rnn_cell_28/MatMul_1MatMul/sequential_25_simple_rnn_28_while_placeholder_2Tsequential_25/simple_rnn_28/while/simple_rnn_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
8sequential_25/simple_rnn_28/while/simple_rnn_cell_28/addAddV2Esequential_25/simple_rnn_28/while/simple_rnn_cell_28/BiasAdd:output:0Gsequential_25/simple_rnn_28/while/simple_rnn_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:���������@�
9sequential_25/simple_rnn_28/while/simple_rnn_cell_28/TanhTanh<sequential_25/simple_rnn_28/while/simple_rnn_cell_28/add:z:0*
T0*'
_output_shapes
:���������@�
Lsequential_25/simple_rnn_28/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
Fsequential_25/simple_rnn_28/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem/sequential_25_simple_rnn_28_while_placeholder_1Usequential_25/simple_rnn_28/while/TensorArrayV2Write/TensorListSetItem/index:output:0=sequential_25/simple_rnn_28/while/simple_rnn_cell_28/Tanh:y:0*
_output_shapes
: *
element_dtype0:���i
'sequential_25/simple_rnn_28/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
%sequential_25/simple_rnn_28/while/addAddV2-sequential_25_simple_rnn_28_while_placeholder0sequential_25/simple_rnn_28/while/add/y:output:0*
T0*
_output_shapes
: k
)sequential_25/simple_rnn_28/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
'sequential_25/simple_rnn_28/while/add_1AddV2Psequential_25_simple_rnn_28_while_sequential_25_simple_rnn_28_while_loop_counter2sequential_25/simple_rnn_28/while/add_1/y:output:0*
T0*
_output_shapes
: �
*sequential_25/simple_rnn_28/while/IdentityIdentity+sequential_25/simple_rnn_28/while/add_1:z:0'^sequential_25/simple_rnn_28/while/NoOp*
T0*
_output_shapes
: �
,sequential_25/simple_rnn_28/while/Identity_1IdentityVsequential_25_simple_rnn_28_while_sequential_25_simple_rnn_28_while_maximum_iterations'^sequential_25/simple_rnn_28/while/NoOp*
T0*
_output_shapes
: �
,sequential_25/simple_rnn_28/while/Identity_2Identity)sequential_25/simple_rnn_28/while/add:z:0'^sequential_25/simple_rnn_28/while/NoOp*
T0*
_output_shapes
: �
,sequential_25/simple_rnn_28/while/Identity_3IdentityVsequential_25/simple_rnn_28/while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^sequential_25/simple_rnn_28/while/NoOp*
T0*
_output_shapes
: �
,sequential_25/simple_rnn_28/while/Identity_4Identity=sequential_25/simple_rnn_28/while/simple_rnn_cell_28/Tanh:y:0'^sequential_25/simple_rnn_28/while/NoOp*
T0*'
_output_shapes
:���������@�
&sequential_25/simple_rnn_28/while/NoOpNoOpL^sequential_25/simple_rnn_28/while/simple_rnn_cell_28/BiasAdd/ReadVariableOpK^sequential_25/simple_rnn_28/while/simple_rnn_cell_28/MatMul/ReadVariableOpM^sequential_25/simple_rnn_28/while/simple_rnn_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "a
*sequential_25_simple_rnn_28_while_identity3sequential_25/simple_rnn_28/while/Identity:output:0"e
,sequential_25_simple_rnn_28_while_identity_15sequential_25/simple_rnn_28/while/Identity_1:output:0"e
,sequential_25_simple_rnn_28_while_identity_25sequential_25/simple_rnn_28/while/Identity_2:output:0"e
,sequential_25_simple_rnn_28_while_identity_35sequential_25/simple_rnn_28/while/Identity_3:output:0"e
,sequential_25_simple_rnn_28_while_identity_45sequential_25/simple_rnn_28/while/Identity_4:output:0"�
Msequential_25_simple_rnn_28_while_sequential_25_simple_rnn_28_strided_slice_1Osequential_25_simple_rnn_28_while_sequential_25_simple_rnn_28_strided_slice_1_0"�
Tsequential_25_simple_rnn_28_while_simple_rnn_cell_28_biasadd_readvariableop_resourceVsequential_25_simple_rnn_28_while_simple_rnn_cell_28_biasadd_readvariableop_resource_0"�
Usequential_25_simple_rnn_28_while_simple_rnn_cell_28_matmul_1_readvariableop_resourceWsequential_25_simple_rnn_28_while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0"�
Ssequential_25_simple_rnn_28_while_simple_rnn_cell_28_matmul_readvariableop_resourceUsequential_25_simple_rnn_28_while_simple_rnn_cell_28_matmul_readvariableop_resource_0"�
�sequential_25_simple_rnn_28_while_tensorarrayv2read_tensorlistgetitem_sequential_25_simple_rnn_28_tensorarrayunstack_tensorlistfromtensor�sequential_25_simple_rnn_28_while_tensorarrayv2read_tensorlistgetitem_sequential_25_simple_rnn_28_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������@: : : : : 2�
Ksequential_25/simple_rnn_28/while/simple_rnn_cell_28/BiasAdd/ReadVariableOpKsequential_25/simple_rnn_28/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp2�
Jsequential_25/simple_rnn_28/while/simple_rnn_cell_28/MatMul/ReadVariableOpJsequential_25/simple_rnn_28/while/simple_rnn_cell_28/MatMul/ReadVariableOp2�
Lsequential_25/simple_rnn_28/while/simple_rnn_cell_28/MatMul_1/ReadVariableOpLsequential_25/simple_rnn_28/while/simple_rnn_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
d
F__inference_dropout_66_layer_call_and_return_conditional_losses_169527

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�-
�
while_body_169233
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_28_matmul_readvariableop_resource_0:@H
:while_simple_rnn_cell_28_biasadd_readvariableop_resource_0:@M
;while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_28_matmul_readvariableop_resource:@F
8while_simple_rnn_cell_28_biasadd_readvariableop_resource:@K
9while_simple_rnn_cell_28_matmul_1_readvariableop_resource:@@��/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_28/MatMul/ReadVariableOp�0while/simple_rnn_cell_28/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_28/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_28_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0�
while/simple_rnn_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
/while/simple_rnn_cell_28/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_28_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0�
 while/simple_rnn_cell_28/BiasAddBiasAdd)while/simple_rnn_cell_28/MatMul:product:07while/simple_rnn_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
0while/simple_rnn_cell_28/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0�
!while/simple_rnn_cell_28/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
while/simple_rnn_cell_28/addAddV2)while/simple_rnn_cell_28/BiasAdd:output:0+while/simple_rnn_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:���������@y
while/simple_rnn_cell_28/TanhTanh while/simple_rnn_cell_28/add:z:0*
T0*'
_output_shapes
:���������@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_28/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity!while/simple_rnn_cell_28/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������@�

while/NoOpNoOp0^while/simple_rnn_cell_28/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_28/MatMul/ReadVariableOp1^while/simple_rnn_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_28_biasadd_readvariableop_resource:while_simple_rnn_cell_28_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_28_matmul_1_readvariableop_resource;while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_28_matmul_readvariableop_resource9while_simple_rnn_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������@: : : : : 2b
/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_28/MatMul/ReadVariableOp.while/simple_rnn_cell_28/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_28/MatMul_1/ReadVariableOp0while/simple_rnn_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�

�
E__inference_dense_110_layer_call_and_return_conditional_losses_169665

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�>
�
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_169080
inputs_0C
1simple_rnn_cell_28_matmul_readvariableop_resource:@@
2simple_rnn_cell_28_biasadd_readvariableop_resource:@E
3simple_rnn_cell_28_matmul_1_readvariableop_resource:@@
identity��)simple_rnn_cell_28/BiasAdd/ReadVariableOp�(simple_rnn_cell_28/MatMul/ReadVariableOp�*simple_rnn_cell_28/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
(simple_rnn_cell_28/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_28_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
simple_rnn_cell_28/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
)simple_rnn_cell_28/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
simple_rnn_cell_28/BiasAddBiasAdd#simple_rnn_cell_28/MatMul:product:01simple_rnn_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
*simple_rnn_cell_28/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_28_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0�
simple_rnn_cell_28/MatMul_1MatMulzeros:output:02simple_rnn_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
simple_rnn_cell_28/addAddV2#simple_rnn_cell_28/BiasAdd:output:0%simple_rnn_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:���������@m
simple_rnn_cell_28/TanhTanhsimple_rnn_cell_28/add:z:0*
T0*'
_output_shapes
:���������@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_28_matmul_readvariableop_resource2simple_rnn_cell_28_biasadd_readvariableop_resource3simple_rnn_cell_28_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_169013*
condR
while_cond_169012*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp*^simple_rnn_cell_28/BiasAdd/ReadVariableOp)^simple_rnn_cell_28/MatMul/ReadVariableOp+^simple_rnn_cell_28/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2V
)simple_rnn_cell_28/BiasAdd/ReadVariableOp)simple_rnn_cell_28/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_28/MatMul/ReadVariableOp(simple_rnn_cell_28/MatMul/ReadVariableOp2X
*simple_rnn_cell_28/MatMul_1/ReadVariableOp*simple_rnn_cell_28/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�-
�
while_body_169013
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_28_matmul_readvariableop_resource_0:@H
:while_simple_rnn_cell_28_biasadd_readvariableop_resource_0:@M
;while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_28_matmul_readvariableop_resource:@F
8while_simple_rnn_cell_28_biasadd_readvariableop_resource:@K
9while_simple_rnn_cell_28_matmul_1_readvariableop_resource:@@��/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_28/MatMul/ReadVariableOp�0while/simple_rnn_cell_28/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_28/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_28_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0�
while/simple_rnn_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
/while/simple_rnn_cell_28/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_28_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0�
 while/simple_rnn_cell_28/BiasAddBiasAdd)while/simple_rnn_cell_28/MatMul:product:07while/simple_rnn_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
0while/simple_rnn_cell_28/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0�
!while/simple_rnn_cell_28/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
while/simple_rnn_cell_28/addAddV2)while/simple_rnn_cell_28/BiasAdd:output:0+while/simple_rnn_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:���������@y
while/simple_rnn_cell_28/TanhTanh while/simple_rnn_cell_28/add:z:0*
T0*'
_output_shapes
:���������@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_28/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity!while/simple_rnn_cell_28/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������@�

while/NoOpNoOp0^while/simple_rnn_cell_28/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_28/MatMul/ReadVariableOp1^while/simple_rnn_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_28_biasadd_readvariableop_resource:while_simple_rnn_cell_28_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_28_matmul_1_readvariableop_resource;while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_28_matmul_readvariableop_resource9while_simple_rnn_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������@: : : : : 2b
/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_28/MatMul/ReadVariableOp.while/simple_rnn_cell_28/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_28/MatMul_1/ReadVariableOp0while/simple_rnn_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
*__inference_dense_109_layer_call_fn_169548

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_109_layer_call_and_return_conditional_losses_167425o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
while_cond_168902
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_168902___redundant_placeholder04
0while_while_cond_168902___redundant_placeholder14
0while_while_cond_168902___redundant_placeholder24
0while_while_cond_168902___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�"
�
while_body_166787
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_03
!while_simple_rnn_cell_28_166809_0:@/
!while_simple_rnn_cell_28_166811_0:@3
!while_simple_rnn_cell_28_166813_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor1
while_simple_rnn_cell_28_166809:@-
while_simple_rnn_cell_28_166811:@1
while_simple_rnn_cell_28_166813:@@��0while/simple_rnn_cell_28/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
0while/simple_rnn_cell_28/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2!while_simple_rnn_cell_28_166809_0!while_simple_rnn_cell_28_166811_0!while_simple_rnn_cell_28_166813_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_simple_rnn_cell_28_layer_call_and_return_conditional_losses_166773r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:09while/simple_rnn_cell_28/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity9while/simple_rnn_cell_28/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������@

while/NoOpNoOp1^while/simple_rnn_cell_28/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_simple_rnn_cell_28_166809!while_simple_rnn_cell_28_166809_0"D
while_simple_rnn_cell_28_166811!while_simple_rnn_cell_28_166811_0"D
while_simple_rnn_cell_28_166813!while_simple_rnn_cell_28_166813_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������@: : : : : 2d
0while/simple_rnn_cell_28/StatefulPartitionedCall0while/simple_rnn_cell_28/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
d
F__inference_dropout_66_layer_call_and_return_conditional_losses_167406

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
N__inference_simple_rnn_cell_28_layer_call_and_return_conditional_losses_166895

inputs

states0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������@
 
_user_specified_namestates
�
�
N__inference_simple_rnn_cell_28_layer_call_and_return_conditional_losses_169754

inputs
states_00
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0
�
d
F__inference_dropout_64_layer_call_and_return_conditional_losses_167337

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:��������� [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:��������� "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
while_cond_166786
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_166786___redundant_placeholder04
0while_while_cond_166786___redundant_placeholder14
0while_while_cond_166786___redundant_placeholder24
0while_while_cond_166786___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
*__inference_dense_110_layer_call_fn_169654

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_110_layer_call_and_return_conditional_losses_167451o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�]
�
I__inference_sequential_25_layer_call_and_return_conditional_losses_167908

inputs&
simple_rnn_28_167830:@"
simple_rnn_28_167832:@&
simple_rnn_28_167834:@@"
dense_106_167837:@ 
dense_106_167839: "
dense_107_167843:  
dense_107_167845: +
batch_normalization_38_167849: +
batch_normalization_38_167851: +
batch_normalization_38_167853: +
batch_normalization_38_167855: "
dense_108_167858: 
dense_108_167860:"
dense_109_167864:
dense_109_167866:+
batch_normalization_39_167869:+
batch_normalization_39_167871:+
batch_normalization_39_167873:+
batch_normalization_39_167875:"
dense_110_167878:
dense_110_167880:
identity��.batch_normalization_38/StatefulPartitionedCall�.batch_normalization_39/StatefulPartitionedCall�!dense_106/StatefulPartitionedCall�2dense_106/kernel/Regularizer/Square/ReadVariableOp�!dense_107/StatefulPartitionedCall�2dense_107/kernel/Regularizer/Square/ReadVariableOp�!dense_108/StatefulPartitionedCall�2dense_108/kernel/Regularizer/Square/ReadVariableOp�!dense_109/StatefulPartitionedCall�2dense_109/kernel/Regularizer/Square/ReadVariableOp�!dense_110/StatefulPartitionedCall�"dropout_64/StatefulPartitionedCall�"dropout_65/StatefulPartitionedCall�"dropout_66/StatefulPartitionedCall�%simple_rnn_28/StatefulPartitionedCall�
%simple_rnn_28/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_28_167830simple_rnn_28_167832simple_rnn_28_167834*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_167769�
!dense_106/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_28/StatefulPartitionedCall:output:0dense_106_167837dense_106_167839*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_106_layer_call_and_return_conditional_losses_167326�
"dropout_64/StatefulPartitionedCallStatefulPartitionedCall*dense_106/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_64_layer_call_and_return_conditional_losses_167633�
!dense_107/StatefulPartitionedCallStatefulPartitionedCall+dropout_64/StatefulPartitionedCall:output:0dense_107_167843dense_107_167845*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_107_layer_call_and_return_conditional_losses_167356�
"dropout_65/StatefulPartitionedCallStatefulPartitionedCall*dense_107/StatefulPartitionedCall:output:0#^dropout_64/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_65_layer_call_and_return_conditional_losses_167600�
.batch_normalization_38/StatefulPartitionedCallStatefulPartitionedCall+dropout_65/StatefulPartitionedCall:output:0batch_normalization_38_167849batch_normalization_38_167851batch_normalization_38_167853batch_normalization_38_167855*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_167092�
!dense_108/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_38/StatefulPartitionedCall:output:0dense_108_167858dense_108_167860*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_108_layer_call_and_return_conditional_losses_167395�
"dropout_66/StatefulPartitionedCallStatefulPartitionedCall*dense_108/StatefulPartitionedCall:output:0#^dropout_65/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_66_layer_call_and_return_conditional_losses_167567�
!dense_109/StatefulPartitionedCallStatefulPartitionedCall+dropout_66/StatefulPartitionedCall:output:0dense_109_167864dense_109_167866*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_109_layer_call_and_return_conditional_losses_167425�
.batch_normalization_39/StatefulPartitionedCallStatefulPartitionedCall*dense_109/StatefulPartitionedCall:output:0batch_normalization_39_167869batch_normalization_39_167871batch_normalization_39_167873batch_normalization_39_167875*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_167174�
!dense_110/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_39/StatefulPartitionedCall:output:0dense_110_167878dense_110_167880*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_110_layer_call_and_return_conditional_losses_167451�
2dense_106/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_106_167837*
_output_shapes

:@ *
dtype0�
#dense_106/kernel/Regularizer/SquareSquare:dense_106/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ s
"dense_106/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_106/kernel/Regularizer/SumSum'dense_106/kernel/Regularizer/Square:y:0+dense_106/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_106/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_106/kernel/Regularizer/mulMul+dense_106/kernel/Regularizer/mul/x:output:0)dense_106/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_107/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_107_167843*
_output_shapes

:  *
dtype0�
#dense_107/kernel/Regularizer/SquareSquare:dense_107/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  s
"dense_107/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_107/kernel/Regularizer/SumSum'dense_107/kernel/Regularizer/Square:y:0+dense_107/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_107/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_107/kernel/Regularizer/mulMul+dense_107/kernel/Regularizer/mul/x:output:0)dense_107/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_108/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_108_167858*
_output_shapes

: *
dtype0�
#dense_108/kernel/Regularizer/SquareSquare:dense_108/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: s
"dense_108/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_108/kernel/Regularizer/SumSum'dense_108/kernel/Regularizer/Square:y:0+dense_108/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_108/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_108/kernel/Regularizer/mulMul+dense_108/kernel/Regularizer/mul/x:output:0)dense_108/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_109/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_109_167864*
_output_shapes

:*
dtype0�
#dense_109/kernel/Regularizer/SquareSquare:dense_109/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_109/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_109/kernel/Regularizer/SumSum'dense_109/kernel/Regularizer/Square:y:0+dense_109/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_109/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_109/kernel/Regularizer/mulMul+dense_109/kernel/Regularizer/mul/x:output:0)dense_109/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
IdentityIdentity*dense_110/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_38/StatefulPartitionedCall/^batch_normalization_39/StatefulPartitionedCall"^dense_106/StatefulPartitionedCall3^dense_106/kernel/Regularizer/Square/ReadVariableOp"^dense_107/StatefulPartitionedCall3^dense_107/kernel/Regularizer/Square/ReadVariableOp"^dense_108/StatefulPartitionedCall3^dense_108/kernel/Regularizer/Square/ReadVariableOp"^dense_109/StatefulPartitionedCall3^dense_109/kernel/Regularizer/Square/ReadVariableOp"^dense_110/StatefulPartitionedCall#^dropout_64/StatefulPartitionedCall#^dropout_65/StatefulPartitionedCall#^dropout_66/StatefulPartitionedCall&^simple_rnn_28/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������: : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_38/StatefulPartitionedCall.batch_normalization_38/StatefulPartitionedCall2`
.batch_normalization_39/StatefulPartitionedCall.batch_normalization_39/StatefulPartitionedCall2F
!dense_106/StatefulPartitionedCall!dense_106/StatefulPartitionedCall2h
2dense_106/kernel/Regularizer/Square/ReadVariableOp2dense_106/kernel/Regularizer/Square/ReadVariableOp2F
!dense_107/StatefulPartitionedCall!dense_107/StatefulPartitionedCall2h
2dense_107/kernel/Regularizer/Square/ReadVariableOp2dense_107/kernel/Regularizer/Square/ReadVariableOp2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2h
2dense_108/kernel/Regularizer/Square/ReadVariableOp2dense_108/kernel/Regularizer/Square/ReadVariableOp2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2h
2dense_109/kernel/Regularizer/Square/ReadVariableOp2dense_109/kernel/Regularizer/Square/ReadVariableOp2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2H
"dropout_64/StatefulPartitionedCall"dropout_64/StatefulPartitionedCall2H
"dropout_65/StatefulPartitionedCall"dropout_65/StatefulPartitionedCall2H
"dropout_66/StatefulPartitionedCall"dropout_66/StatefulPartitionedCall2N
%simple_rnn_28/StatefulPartitionedCall%simple_rnn_28/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
+__inference_dropout_64_layer_call_fn_169336

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
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_64_layer_call_and_return_conditional_losses_167633o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�>
�
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_167769

inputsC
1simple_rnn_cell_28_matmul_readvariableop_resource:@@
2simple_rnn_cell_28_biasadd_readvariableop_resource:@E
3simple_rnn_cell_28_matmul_1_readvariableop_resource:@@
identity��)simple_rnn_cell_28/BiasAdd/ReadVariableOp�(simple_rnn_cell_28/MatMul/ReadVariableOp�*simple_rnn_cell_28/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:���������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
(simple_rnn_cell_28/MatMul/ReadVariableOpReadVariableOp1simple_rnn_cell_28_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
simple_rnn_cell_28/MatMulMatMulstrided_slice_2:output:00simple_rnn_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
)simple_rnn_cell_28/BiasAdd/ReadVariableOpReadVariableOp2simple_rnn_cell_28_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
simple_rnn_cell_28/BiasAddBiasAdd#simple_rnn_cell_28/MatMul:product:01simple_rnn_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
*simple_rnn_cell_28/MatMul_1/ReadVariableOpReadVariableOp3simple_rnn_cell_28_matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0�
simple_rnn_cell_28/MatMul_1MatMulzeros:output:02simple_rnn_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
simple_rnn_cell_28/addAddV2#simple_rnn_cell_28/BiasAdd:output:0%simple_rnn_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:���������@m
simple_rnn_cell_28/TanhTanhsimple_rnn_cell_28/add:z:0*
T0*'
_output_shapes
:���������@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:01simple_rnn_cell_28_matmul_readvariableop_resource2simple_rnn_cell_28_biasadd_readvariableop_resource3simple_rnn_cell_28_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_167702*
condR
while_cond_167701*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp*^simple_rnn_cell_28/BiasAdd/ReadVariableOp)^simple_rnn_cell_28/MatMul/ReadVariableOp+^simple_rnn_cell_28/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: : : 2V
)simple_rnn_cell_28/BiasAdd/ReadVariableOp)simple_rnn_cell_28/BiasAdd/ReadVariableOp2T
(simple_rnn_cell_28/MatMul/ReadVariableOp(simple_rnn_cell_28/MatMul/ReadVariableOp2X
*simple_rnn_cell_28/MatMul_1/ReadVariableOp*simple_rnn_cell_28/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_167045

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
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
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:��������� z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:��������� b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�	
e
F__inference_dropout_66_layer_call_and_return_conditional_losses_169539

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_dense_109_layer_call_and_return_conditional_losses_167425

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2dense_109/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:����������
2dense_109/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0�
#dense_109/kernel/Regularizer/SquareSquare:dense_109/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_109/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_109/kernel/Regularizer/SumSum'dense_109/kernel/Regularizer/Square:y:0+dense_109/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_109/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_109/kernel/Regularizer/mulMul+dense_109/kernel/Regularizer/mul/x:output:0)dense_109/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_109/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_109/kernel/Regularizer/Square/ReadVariableOp2dense_109/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�;
�
simple_rnn_28_while_body_1686068
4simple_rnn_28_while_simple_rnn_28_while_loop_counter>
:simple_rnn_28_while_simple_rnn_28_while_maximum_iterations#
simple_rnn_28_while_placeholder%
!simple_rnn_28_while_placeholder_1%
!simple_rnn_28_while_placeholder_27
3simple_rnn_28_while_simple_rnn_28_strided_slice_1_0s
osimple_rnn_28_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_28_tensorarrayunstack_tensorlistfromtensor_0Y
Gsimple_rnn_28_while_simple_rnn_cell_28_matmul_readvariableop_resource_0:@V
Hsimple_rnn_28_while_simple_rnn_cell_28_biasadd_readvariableop_resource_0:@[
Isimple_rnn_28_while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0:@@ 
simple_rnn_28_while_identity"
simple_rnn_28_while_identity_1"
simple_rnn_28_while_identity_2"
simple_rnn_28_while_identity_3"
simple_rnn_28_while_identity_45
1simple_rnn_28_while_simple_rnn_28_strided_slice_1q
msimple_rnn_28_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_28_tensorarrayunstack_tensorlistfromtensorW
Esimple_rnn_28_while_simple_rnn_cell_28_matmul_readvariableop_resource:@T
Fsimple_rnn_28_while_simple_rnn_cell_28_biasadd_readvariableop_resource:@Y
Gsimple_rnn_28_while_simple_rnn_cell_28_matmul_1_readvariableop_resource:@@��=simple_rnn_28/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp�<simple_rnn_28/while/simple_rnn_cell_28/MatMul/ReadVariableOp�>simple_rnn_28/while/simple_rnn_cell_28/MatMul_1/ReadVariableOp�
Esimple_rnn_28/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
7simple_rnn_28/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_28_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_28_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_28_while_placeholderNsimple_rnn_28/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
<simple_rnn_28/while/simple_rnn_cell_28/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_28_while_simple_rnn_cell_28_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0�
-simple_rnn_28/while/simple_rnn_cell_28/MatMulMatMul>simple_rnn_28/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_28/while/simple_rnn_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
=simple_rnn_28/while/simple_rnn_cell_28/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_28_while_simple_rnn_cell_28_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0�
.simple_rnn_28/while/simple_rnn_cell_28/BiasAddBiasAdd7simple_rnn_28/while/simple_rnn_cell_28/MatMul:product:0Esimple_rnn_28/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
>simple_rnn_28/while/simple_rnn_cell_28/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_28_while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0�
/simple_rnn_28/while/simple_rnn_cell_28/MatMul_1MatMul!simple_rnn_28_while_placeholder_2Fsimple_rnn_28/while/simple_rnn_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
*simple_rnn_28/while/simple_rnn_cell_28/addAddV27simple_rnn_28/while/simple_rnn_cell_28/BiasAdd:output:09simple_rnn_28/while/simple_rnn_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:���������@�
+simple_rnn_28/while/simple_rnn_cell_28/TanhTanh.simple_rnn_28/while/simple_rnn_cell_28/add:z:0*
T0*'
_output_shapes
:���������@�
>simple_rnn_28/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
8simple_rnn_28/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_28_while_placeholder_1Gsimple_rnn_28/while/TensorArrayV2Write/TensorListSetItem/index:output:0/simple_rnn_28/while/simple_rnn_cell_28/Tanh:y:0*
_output_shapes
: *
element_dtype0:���[
simple_rnn_28/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_28/while/addAddV2simple_rnn_28_while_placeholder"simple_rnn_28/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_28/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_28/while/add_1AddV24simple_rnn_28_while_simple_rnn_28_while_loop_counter$simple_rnn_28/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_28/while/IdentityIdentitysimple_rnn_28/while/add_1:z:0^simple_rnn_28/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_28/while/Identity_1Identity:simple_rnn_28_while_simple_rnn_28_while_maximum_iterations^simple_rnn_28/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_28/while/Identity_2Identitysimple_rnn_28/while/add:z:0^simple_rnn_28/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_28/while/Identity_3IdentityHsimple_rnn_28/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_28/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_28/while/Identity_4Identity/simple_rnn_28/while/simple_rnn_cell_28/Tanh:y:0^simple_rnn_28/while/NoOp*
T0*'
_output_shapes
:���������@�
simple_rnn_28/while/NoOpNoOp>^simple_rnn_28/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp=^simple_rnn_28/while/simple_rnn_cell_28/MatMul/ReadVariableOp?^simple_rnn_28/while/simple_rnn_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_28_while_identity%simple_rnn_28/while/Identity:output:0"I
simple_rnn_28_while_identity_1'simple_rnn_28/while/Identity_1:output:0"I
simple_rnn_28_while_identity_2'simple_rnn_28/while/Identity_2:output:0"I
simple_rnn_28_while_identity_3'simple_rnn_28/while/Identity_3:output:0"I
simple_rnn_28_while_identity_4'simple_rnn_28/while/Identity_4:output:0"h
1simple_rnn_28_while_simple_rnn_28_strided_slice_13simple_rnn_28_while_simple_rnn_28_strided_slice_1_0"�
Fsimple_rnn_28_while_simple_rnn_cell_28_biasadd_readvariableop_resourceHsimple_rnn_28_while_simple_rnn_cell_28_biasadd_readvariableop_resource_0"�
Gsimple_rnn_28_while_simple_rnn_cell_28_matmul_1_readvariableop_resourceIsimple_rnn_28_while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0"�
Esimple_rnn_28_while_simple_rnn_cell_28_matmul_readvariableop_resourceGsimple_rnn_28_while_simple_rnn_cell_28_matmul_readvariableop_resource_0"�
msimple_rnn_28_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_28_tensorarrayunstack_tensorlistfromtensorosimple_rnn_28_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_28_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������@: : : : : 2~
=simple_rnn_28/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp=simple_rnn_28/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp2|
<simple_rnn_28/while/simple_rnn_cell_28/MatMul/ReadVariableOp<simple_rnn_28/while/simple_rnn_cell_28/MatMul/ReadVariableOp2�
>simple_rnn_28/while/simple_rnn_cell_28/MatMul_1/ReadVariableOp>simple_rnn_28/while/simple_rnn_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
7__inference_batch_normalization_38_layer_call_fn_169432

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
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_167092o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�Y
�
I__inference_sequential_25_layer_call_and_return_conditional_losses_168081
simple_rnn_28_input&
simple_rnn_28_168003:@"
simple_rnn_28_168005:@&
simple_rnn_28_168007:@@"
dense_106_168010:@ 
dense_106_168012: "
dense_107_168016:  
dense_107_168018: +
batch_normalization_38_168022: +
batch_normalization_38_168024: +
batch_normalization_38_168026: +
batch_normalization_38_168028: "
dense_108_168031: 
dense_108_168033:"
dense_109_168037:
dense_109_168039:+
batch_normalization_39_168042:+
batch_normalization_39_168044:+
batch_normalization_39_168046:+
batch_normalization_39_168048:"
dense_110_168051:
dense_110_168053:
identity��.batch_normalization_38/StatefulPartitionedCall�.batch_normalization_39/StatefulPartitionedCall�!dense_106/StatefulPartitionedCall�2dense_106/kernel/Regularizer/Square/ReadVariableOp�!dense_107/StatefulPartitionedCall�2dense_107/kernel/Regularizer/Square/ReadVariableOp�!dense_108/StatefulPartitionedCall�2dense_108/kernel/Regularizer/Square/ReadVariableOp�!dense_109/StatefulPartitionedCall�2dense_109/kernel/Regularizer/Square/ReadVariableOp�!dense_110/StatefulPartitionedCall�%simple_rnn_28/StatefulPartitionedCall�
%simple_rnn_28/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_28_inputsimple_rnn_28_168003simple_rnn_28_168005simple_rnn_28_168007*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_167301�
!dense_106/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_28/StatefulPartitionedCall:output:0dense_106_168010dense_106_168012*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_106_layer_call_and_return_conditional_losses_167326�
dropout_64/PartitionedCallPartitionedCall*dense_106/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_64_layer_call_and_return_conditional_losses_167337�
!dense_107/StatefulPartitionedCallStatefulPartitionedCall#dropout_64/PartitionedCall:output:0dense_107_168016dense_107_168018*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_107_layer_call_and_return_conditional_losses_167356�
dropout_65/PartitionedCallPartitionedCall*dense_107/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_65_layer_call_and_return_conditional_losses_167367�
.batch_normalization_38/StatefulPartitionedCallStatefulPartitionedCall#dropout_65/PartitionedCall:output:0batch_normalization_38_168022batch_normalization_38_168024batch_normalization_38_168026batch_normalization_38_168028*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_167045�
!dense_108/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_38/StatefulPartitionedCall:output:0dense_108_168031dense_108_168033*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_108_layer_call_and_return_conditional_losses_167395�
dropout_66/PartitionedCallPartitionedCall*dense_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_66_layer_call_and_return_conditional_losses_167406�
!dense_109/StatefulPartitionedCallStatefulPartitionedCall#dropout_66/PartitionedCall:output:0dense_109_168037dense_109_168039*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_109_layer_call_and_return_conditional_losses_167425�
.batch_normalization_39/StatefulPartitionedCallStatefulPartitionedCall*dense_109/StatefulPartitionedCall:output:0batch_normalization_39_168042batch_normalization_39_168044batch_normalization_39_168046batch_normalization_39_168048*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_167127�
!dense_110/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_39/StatefulPartitionedCall:output:0dense_110_168051dense_110_168053*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_110_layer_call_and_return_conditional_losses_167451�
2dense_106/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_106_168010*
_output_shapes

:@ *
dtype0�
#dense_106/kernel/Regularizer/SquareSquare:dense_106/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ s
"dense_106/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_106/kernel/Regularizer/SumSum'dense_106/kernel/Regularizer/Square:y:0+dense_106/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_106/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_106/kernel/Regularizer/mulMul+dense_106/kernel/Regularizer/mul/x:output:0)dense_106/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_107/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_107_168016*
_output_shapes

:  *
dtype0�
#dense_107/kernel/Regularizer/SquareSquare:dense_107/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  s
"dense_107/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_107/kernel/Regularizer/SumSum'dense_107/kernel/Regularizer/Square:y:0+dense_107/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_107/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_107/kernel/Regularizer/mulMul+dense_107/kernel/Regularizer/mul/x:output:0)dense_107/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_108/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_108_168031*
_output_shapes

: *
dtype0�
#dense_108/kernel/Regularizer/SquareSquare:dense_108/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: s
"dense_108/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_108/kernel/Regularizer/SumSum'dense_108/kernel/Regularizer/Square:y:0+dense_108/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_108/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_108/kernel/Regularizer/mulMul+dense_108/kernel/Regularizer/mul/x:output:0)dense_108/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_109/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_109_168037*
_output_shapes

:*
dtype0�
#dense_109/kernel/Regularizer/SquareSquare:dense_109/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_109/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_109/kernel/Regularizer/SumSum'dense_109/kernel/Regularizer/Square:y:0+dense_109/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_109/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_109/kernel/Regularizer/mulMul+dense_109/kernel/Regularizer/mul/x:output:0)dense_109/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
IdentityIdentity*dense_110/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_38/StatefulPartitionedCall/^batch_normalization_39/StatefulPartitionedCall"^dense_106/StatefulPartitionedCall3^dense_106/kernel/Regularizer/Square/ReadVariableOp"^dense_107/StatefulPartitionedCall3^dense_107/kernel/Regularizer/Square/ReadVariableOp"^dense_108/StatefulPartitionedCall3^dense_108/kernel/Regularizer/Square/ReadVariableOp"^dense_109/StatefulPartitionedCall3^dense_109/kernel/Regularizer/Square/ReadVariableOp"^dense_110/StatefulPartitionedCall&^simple_rnn_28/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������: : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_38/StatefulPartitionedCall.batch_normalization_38/StatefulPartitionedCall2`
.batch_normalization_39/StatefulPartitionedCall.batch_normalization_39/StatefulPartitionedCall2F
!dense_106/StatefulPartitionedCall!dense_106/StatefulPartitionedCall2h
2dense_106/kernel/Regularizer/Square/ReadVariableOp2dense_106/kernel/Regularizer/Square/ReadVariableOp2F
!dense_107/StatefulPartitionedCall!dense_107/StatefulPartitionedCall2h
2dense_107/kernel/Regularizer/Square/ReadVariableOp2dense_107/kernel/Regularizer/Square/ReadVariableOp2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2h
2dense_108/kernel/Regularizer/Square/ReadVariableOp2dense_108/kernel/Regularizer/Square/ReadVariableOp2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2h
2dense_109/kernel/Regularizer/Square/ReadVariableOp2dense_109/kernel/Regularizer/Square/ReadVariableOp2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2N
%simple_rnn_28/StatefulPartitionedCall%simple_rnn_28/StatefulPartitionedCall:` \
+
_output_shapes
:���������
-
_user_specified_namesimple_rnn_28_input
�
G
+__inference_dropout_66_layer_call_fn_169517

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
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_66_layer_call_and_return_conditional_losses_167406`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
3__inference_simple_rnn_cell_28_layer_call_fn_169723

inputs
states_0
unknown:@
	unknown_0:@
	unknown_1:@@
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_simple_rnn_cell_28_layer_call_and_return_conditional_losses_166773o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0
�%
�
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_167174

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
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
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
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
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
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
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
.__inference_sequential_25_layer_call_fn_168312

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@ 
	unknown_3: 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*7
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_25_layer_call_and_return_conditional_losses_167482o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_3_169709M
;dense_109_kernel_regularizer_square_readvariableop_resource:
identity��2dense_109/kernel/Regularizer/Square/ReadVariableOp�
2dense_109/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_109_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:*
dtype0�
#dense_109/kernel/Regularizer/SquareSquare:dense_109/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_109/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_109/kernel/Regularizer/SumSum'dense_109/kernel/Regularizer/Square:y:0+dense_109/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_109/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_109/kernel/Regularizer/mulMul+dense_109/kernel/Regularizer/mul/x:output:0)dense_109/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentity$dense_109/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^dense_109/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2dense_109/kernel/Regularizer/Square/ReadVariableOp2dense_109/kernel/Regularizer/Square/ReadVariableOp
�

�
3__inference_simple_rnn_cell_28_layer_call_fn_169737

inputs
states_0
unknown:@
	unknown_0:@
	unknown_1:@@
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_simple_rnn_cell_28_layer_call_and_return_conditional_losses_166895o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0
�
�
E__inference_dense_109_layer_call_and_return_conditional_losses_169565

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2dense_109/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:����������
2dense_109/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0�
#dense_109/kernel/Regularizer/SquareSquare:dense_109/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_109/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_109/kernel/Regularizer/SumSum'dense_109/kernel/Regularizer/Square:y:0+dense_109/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_109/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_109/kernel/Regularizer/mulMul+dense_109/kernel/Regularizer/mul/x:output:0)dense_109/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_109/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_109/kernel/Regularizer/Square/ReadVariableOp2dense_109/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_dense_107_layer_call_fn_169362

inputs
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_107_layer_call_and_return_conditional_losses_167356o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
simple_rnn_28_while_cond_1686058
4simple_rnn_28_while_simple_rnn_28_while_loop_counter>
:simple_rnn_28_while_simple_rnn_28_while_maximum_iterations#
simple_rnn_28_while_placeholder%
!simple_rnn_28_while_placeholder_1%
!simple_rnn_28_while_placeholder_2:
6simple_rnn_28_while_less_simple_rnn_28_strided_slice_1P
Lsimple_rnn_28_while_simple_rnn_28_while_cond_168605___redundant_placeholder0P
Lsimple_rnn_28_while_simple_rnn_28_while_cond_168605___redundant_placeholder1P
Lsimple_rnn_28_while_simple_rnn_28_while_cond_168605___redundant_placeholder2P
Lsimple_rnn_28_while_simple_rnn_28_while_cond_168605___redundant_placeholder3 
simple_rnn_28_while_identity
�
simple_rnn_28/while/LessLesssimple_rnn_28_while_placeholder6simple_rnn_28_while_less_simple_rnn_28_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_28/while/IdentityIdentitysimple_rnn_28/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_28_while_identity%simple_rnn_28/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_169611

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
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
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�Y
�
I__inference_sequential_25_layer_call_and_return_conditional_losses_167482

inputs&
simple_rnn_28_167302:@"
simple_rnn_28_167304:@&
simple_rnn_28_167306:@@"
dense_106_167327:@ 
dense_106_167329: "
dense_107_167357:  
dense_107_167359: +
batch_normalization_38_167369: +
batch_normalization_38_167371: +
batch_normalization_38_167373: +
batch_normalization_38_167375: "
dense_108_167396: 
dense_108_167398:"
dense_109_167426:
dense_109_167428:+
batch_normalization_39_167431:+
batch_normalization_39_167433:+
batch_normalization_39_167435:+
batch_normalization_39_167437:"
dense_110_167452:
dense_110_167454:
identity��.batch_normalization_38/StatefulPartitionedCall�.batch_normalization_39/StatefulPartitionedCall�!dense_106/StatefulPartitionedCall�2dense_106/kernel/Regularizer/Square/ReadVariableOp�!dense_107/StatefulPartitionedCall�2dense_107/kernel/Regularizer/Square/ReadVariableOp�!dense_108/StatefulPartitionedCall�2dense_108/kernel/Regularizer/Square/ReadVariableOp�!dense_109/StatefulPartitionedCall�2dense_109/kernel/Regularizer/Square/ReadVariableOp�!dense_110/StatefulPartitionedCall�%simple_rnn_28/StatefulPartitionedCall�
%simple_rnn_28/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_28_167302simple_rnn_28_167304simple_rnn_28_167306*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_167301�
!dense_106/StatefulPartitionedCallStatefulPartitionedCall.simple_rnn_28/StatefulPartitionedCall:output:0dense_106_167327dense_106_167329*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_106_layer_call_and_return_conditional_losses_167326�
dropout_64/PartitionedCallPartitionedCall*dense_106/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_64_layer_call_and_return_conditional_losses_167337�
!dense_107/StatefulPartitionedCallStatefulPartitionedCall#dropout_64/PartitionedCall:output:0dense_107_167357dense_107_167359*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_107_layer_call_and_return_conditional_losses_167356�
dropout_65/PartitionedCallPartitionedCall*dense_107/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_65_layer_call_and_return_conditional_losses_167367�
.batch_normalization_38/StatefulPartitionedCallStatefulPartitionedCall#dropout_65/PartitionedCall:output:0batch_normalization_38_167369batch_normalization_38_167371batch_normalization_38_167373batch_normalization_38_167375*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_167045�
!dense_108/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_38/StatefulPartitionedCall:output:0dense_108_167396dense_108_167398*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_108_layer_call_and_return_conditional_losses_167395�
dropout_66/PartitionedCallPartitionedCall*dense_108/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_66_layer_call_and_return_conditional_losses_167406�
!dense_109/StatefulPartitionedCallStatefulPartitionedCall#dropout_66/PartitionedCall:output:0dense_109_167426dense_109_167428*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_109_layer_call_and_return_conditional_losses_167425�
.batch_normalization_39/StatefulPartitionedCallStatefulPartitionedCall*dense_109/StatefulPartitionedCall:output:0batch_normalization_39_167431batch_normalization_39_167433batch_normalization_39_167435batch_normalization_39_167437*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_167127�
!dense_110/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_39/StatefulPartitionedCall:output:0dense_110_167452dense_110_167454*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_110_layer_call_and_return_conditional_losses_167451�
2dense_106/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_106_167327*
_output_shapes

:@ *
dtype0�
#dense_106/kernel/Regularizer/SquareSquare:dense_106/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ s
"dense_106/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_106/kernel/Regularizer/SumSum'dense_106/kernel/Regularizer/Square:y:0+dense_106/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_106/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_106/kernel/Regularizer/mulMul+dense_106/kernel/Regularizer/mul/x:output:0)dense_106/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_107/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_107_167357*
_output_shapes

:  *
dtype0�
#dense_107/kernel/Regularizer/SquareSquare:dense_107/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  s
"dense_107/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_107/kernel/Regularizer/SumSum'dense_107/kernel/Regularizer/Square:y:0+dense_107/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_107/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_107/kernel/Regularizer/mulMul+dense_107/kernel/Regularizer/mul/x:output:0)dense_107/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_108/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_108_167396*
_output_shapes

: *
dtype0�
#dense_108/kernel/Regularizer/SquareSquare:dense_108/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: s
"dense_108/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_108/kernel/Regularizer/SumSum'dense_108/kernel/Regularizer/Square:y:0+dense_108/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_108/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_108/kernel/Regularizer/mulMul+dense_108/kernel/Regularizer/mul/x:output:0)dense_108/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_109/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_109_167426*
_output_shapes

:*
dtype0�
#dense_109/kernel/Regularizer/SquareSquare:dense_109/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:s
"dense_109/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_109/kernel/Regularizer/SumSum'dense_109/kernel/Regularizer/Square:y:0+dense_109/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_109/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_109/kernel/Regularizer/mulMul+dense_109/kernel/Regularizer/mul/x:output:0)dense_109/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
IdentityIdentity*dense_110/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_38/StatefulPartitionedCall/^batch_normalization_39/StatefulPartitionedCall"^dense_106/StatefulPartitionedCall3^dense_106/kernel/Regularizer/Square/ReadVariableOp"^dense_107/StatefulPartitionedCall3^dense_107/kernel/Regularizer/Square/ReadVariableOp"^dense_108/StatefulPartitionedCall3^dense_108/kernel/Regularizer/Square/ReadVariableOp"^dense_109/StatefulPartitionedCall3^dense_109/kernel/Regularizer/Square/ReadVariableOp"^dense_110/StatefulPartitionedCall&^simple_rnn_28/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������: : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_38/StatefulPartitionedCall.batch_normalization_38/StatefulPartitionedCall2`
.batch_normalization_39/StatefulPartitionedCall.batch_normalization_39/StatefulPartitionedCall2F
!dense_106/StatefulPartitionedCall!dense_106/StatefulPartitionedCall2h
2dense_106/kernel/Regularizer/Square/ReadVariableOp2dense_106/kernel/Regularizer/Square/ReadVariableOp2F
!dense_107/StatefulPartitionedCall!dense_107/StatefulPartitionedCall2h
2dense_107/kernel/Regularizer/Square/ReadVariableOp2dense_107/kernel/Regularizer/Square/ReadVariableOp2F
!dense_108/StatefulPartitionedCall!dense_108/StatefulPartitionedCall2h
2dense_108/kernel/Regularizer/Square/ReadVariableOp2dense_108/kernel/Regularizer/Square/ReadVariableOp2F
!dense_109/StatefulPartitionedCall!dense_109/StatefulPartitionedCall2h
2dense_109/kernel/Regularizer/Square/ReadVariableOp2dense_109/kernel/Regularizer/Square/ReadVariableOp2F
!dense_110/StatefulPartitionedCall!dense_110/StatefulPartitionedCall2N
%simple_rnn_28/StatefulPartitionedCall%simple_rnn_28/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�5
�
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_166851

inputs+
simple_rnn_cell_28_166774:@'
simple_rnn_cell_28_166776:@+
simple_rnn_cell_28_166778:@@
identity��*simple_rnn_cell_28/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:���������@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
*simple_rnn_cell_28/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_28_166774simple_rnn_cell_28_166776simple_rnn_cell_28_166778*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_simple_rnn_cell_28_layer_call_and_return_conditional_losses_166773n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_28_166774simple_rnn_cell_28_166776simple_rnn_cell_28_166778*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������@: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_166787*
condR
while_cond_166786*8
output_shapes'
%: : : : :���������@: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����@   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������@*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������@g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������@{
NoOpNoOp+^simple_rnn_cell_28/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2X
*simple_rnn_cell_28/StatefulPartitionedCall*simple_rnn_cell_28/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
7__inference_batch_normalization_39_layer_call_fn_169578

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
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_167127o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�-
�
while_body_167702
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
9while_simple_rnn_cell_28_matmul_readvariableop_resource_0:@H
:while_simple_rnn_cell_28_biasadd_readvariableop_resource_0:@M
;while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
7while_simple_rnn_cell_28_matmul_readvariableop_resource:@F
8while_simple_rnn_cell_28_biasadd_readvariableop_resource:@K
9while_simple_rnn_cell_28_matmul_1_readvariableop_resource:@@��/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp�.while/simple_rnn_cell_28/MatMul/ReadVariableOp�0while/simple_rnn_cell_28/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
.while/simple_rnn_cell_28/MatMul/ReadVariableOpReadVariableOp9while_simple_rnn_cell_28_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0�
while/simple_rnn_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:06while/simple_rnn_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
/while/simple_rnn_cell_28/BiasAdd/ReadVariableOpReadVariableOp:while_simple_rnn_cell_28_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0�
 while/simple_rnn_cell_28/BiasAddBiasAdd)while/simple_rnn_cell_28/MatMul:product:07while/simple_rnn_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
0while/simple_rnn_cell_28/MatMul_1/ReadVariableOpReadVariableOp;while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0�
!while/simple_rnn_cell_28/MatMul_1MatMulwhile_placeholder_28while/simple_rnn_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
while/simple_rnn_cell_28/addAddV2)while/simple_rnn_cell_28/BiasAdd:output:0+while/simple_rnn_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:���������@y
while/simple_rnn_cell_28/TanhTanh while/simple_rnn_cell_28/add:z:0*
T0*'
_output_shapes
:���������@r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0!while/simple_rnn_cell_28/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity!while/simple_rnn_cell_28/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������@�

while/NoOpNoOp0^while/simple_rnn_cell_28/BiasAdd/ReadVariableOp/^while/simple_rnn_cell_28/MatMul/ReadVariableOp1^while/simple_rnn_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"v
8while_simple_rnn_cell_28_biasadd_readvariableop_resource:while_simple_rnn_cell_28_biasadd_readvariableop_resource_0"x
9while_simple_rnn_cell_28_matmul_1_readvariableop_resource;while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0"t
7while_simple_rnn_cell_28_matmul_readvariableop_resource9while_simple_rnn_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������@: : : : : 2b
/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp2`
.while/simple_rnn_cell_28/MatMul/ReadVariableOp.while/simple_rnn_cell_28/MatMul/ReadVariableOp2d
0while/simple_rnn_cell_28/MatMul_1/ReadVariableOp0while/simple_rnn_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
G
+__inference_dropout_64_layer_call_fn_169331

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
:��������� * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_64_layer_call_and_return_conditional_losses_167337`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
*__inference_dense_106_layer_call_fn_169309

inputs
unknown:@ 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_106_layer_call_and_return_conditional_losses_167326o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
N__inference_simple_rnn_cell_28_layer_call_and_return_conditional_losses_169771

inputs
states_00
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@@
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������@G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������@W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������@Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������@�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������@
"
_user_specified_name
states/0
�
�
E__inference_dense_106_layer_call_and_return_conditional_losses_167326

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2dense_106/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� �
2dense_106/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
#dense_106/kernel/Regularizer/SquareSquare:dense_106/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ s
"dense_106/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_106/kernel/Regularizer/SumSum'dense_106/kernel/Regularizer/Square:y:0+dense_106/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_106/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_106/kernel/Regularizer/mulMul+dense_106/kernel/Regularizer/mul/x:output:0)dense_106/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_106/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_106/kernel/Regularizer/Square/ReadVariableOp2dense_106/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
d
F__inference_dropout_65_layer_call_and_return_conditional_losses_167367

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:��������� [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:��������� "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�;
�
simple_rnn_28_while_body_1684028
4simple_rnn_28_while_simple_rnn_28_while_loop_counter>
:simple_rnn_28_while_simple_rnn_28_while_maximum_iterations#
simple_rnn_28_while_placeholder%
!simple_rnn_28_while_placeholder_1%
!simple_rnn_28_while_placeholder_27
3simple_rnn_28_while_simple_rnn_28_strided_slice_1_0s
osimple_rnn_28_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_28_tensorarrayunstack_tensorlistfromtensor_0Y
Gsimple_rnn_28_while_simple_rnn_cell_28_matmul_readvariableop_resource_0:@V
Hsimple_rnn_28_while_simple_rnn_cell_28_biasadd_readvariableop_resource_0:@[
Isimple_rnn_28_while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0:@@ 
simple_rnn_28_while_identity"
simple_rnn_28_while_identity_1"
simple_rnn_28_while_identity_2"
simple_rnn_28_while_identity_3"
simple_rnn_28_while_identity_45
1simple_rnn_28_while_simple_rnn_28_strided_slice_1q
msimple_rnn_28_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_28_tensorarrayunstack_tensorlistfromtensorW
Esimple_rnn_28_while_simple_rnn_cell_28_matmul_readvariableop_resource:@T
Fsimple_rnn_28_while_simple_rnn_cell_28_biasadd_readvariableop_resource:@Y
Gsimple_rnn_28_while_simple_rnn_cell_28_matmul_1_readvariableop_resource:@@��=simple_rnn_28/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp�<simple_rnn_28/while/simple_rnn_cell_28/MatMul/ReadVariableOp�>simple_rnn_28/while/simple_rnn_cell_28/MatMul_1/ReadVariableOp�
Esimple_rnn_28/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
7simple_rnn_28/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_28_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_28_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_28_while_placeholderNsimple_rnn_28/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
<simple_rnn_28/while/simple_rnn_cell_28/MatMul/ReadVariableOpReadVariableOpGsimple_rnn_28_while_simple_rnn_cell_28_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0�
-simple_rnn_28/while/simple_rnn_cell_28/MatMulMatMul>simple_rnn_28/while/TensorArrayV2Read/TensorListGetItem:item:0Dsimple_rnn_28/while/simple_rnn_cell_28/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
=simple_rnn_28/while/simple_rnn_cell_28/BiasAdd/ReadVariableOpReadVariableOpHsimple_rnn_28_while_simple_rnn_cell_28_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0�
.simple_rnn_28/while/simple_rnn_cell_28/BiasAddBiasAdd7simple_rnn_28/while/simple_rnn_cell_28/MatMul:product:0Esimple_rnn_28/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
>simple_rnn_28/while/simple_rnn_cell_28/MatMul_1/ReadVariableOpReadVariableOpIsimple_rnn_28_while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0*
_output_shapes

:@@*
dtype0�
/simple_rnn_28/while/simple_rnn_cell_28/MatMul_1MatMul!simple_rnn_28_while_placeholder_2Fsimple_rnn_28/while/simple_rnn_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
*simple_rnn_28/while/simple_rnn_cell_28/addAddV27simple_rnn_28/while/simple_rnn_cell_28/BiasAdd:output:09simple_rnn_28/while/simple_rnn_cell_28/MatMul_1:product:0*
T0*'
_output_shapes
:���������@�
+simple_rnn_28/while/simple_rnn_cell_28/TanhTanh.simple_rnn_28/while/simple_rnn_cell_28/add:z:0*
T0*'
_output_shapes
:���������@�
>simple_rnn_28/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
8simple_rnn_28/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_28_while_placeholder_1Gsimple_rnn_28/while/TensorArrayV2Write/TensorListSetItem/index:output:0/simple_rnn_28/while/simple_rnn_cell_28/Tanh:y:0*
_output_shapes
: *
element_dtype0:���[
simple_rnn_28/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_28/while/addAddV2simple_rnn_28_while_placeholder"simple_rnn_28/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_28/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_28/while/add_1AddV24simple_rnn_28_while_simple_rnn_28_while_loop_counter$simple_rnn_28/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_28/while/IdentityIdentitysimple_rnn_28/while/add_1:z:0^simple_rnn_28/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_28/while/Identity_1Identity:simple_rnn_28_while_simple_rnn_28_while_maximum_iterations^simple_rnn_28/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_28/while/Identity_2Identitysimple_rnn_28/while/add:z:0^simple_rnn_28/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_28/while/Identity_3IdentityHsimple_rnn_28/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_28/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_28/while/Identity_4Identity/simple_rnn_28/while/simple_rnn_cell_28/Tanh:y:0^simple_rnn_28/while/NoOp*
T0*'
_output_shapes
:���������@�
simple_rnn_28/while/NoOpNoOp>^simple_rnn_28/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp=^simple_rnn_28/while/simple_rnn_cell_28/MatMul/ReadVariableOp?^simple_rnn_28/while/simple_rnn_cell_28/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_28_while_identity%simple_rnn_28/while/Identity:output:0"I
simple_rnn_28_while_identity_1'simple_rnn_28/while/Identity_1:output:0"I
simple_rnn_28_while_identity_2'simple_rnn_28/while/Identity_2:output:0"I
simple_rnn_28_while_identity_3'simple_rnn_28/while/Identity_3:output:0"I
simple_rnn_28_while_identity_4'simple_rnn_28/while/Identity_4:output:0"h
1simple_rnn_28_while_simple_rnn_28_strided_slice_13simple_rnn_28_while_simple_rnn_28_strided_slice_1_0"�
Fsimple_rnn_28_while_simple_rnn_cell_28_biasadd_readvariableop_resourceHsimple_rnn_28_while_simple_rnn_cell_28_biasadd_readvariableop_resource_0"�
Gsimple_rnn_28_while_simple_rnn_cell_28_matmul_1_readvariableop_resourceIsimple_rnn_28_while_simple_rnn_cell_28_matmul_1_readvariableop_resource_0"�
Esimple_rnn_28_while_simple_rnn_cell_28_matmul_readvariableop_resourceGsimple_rnn_28_while_simple_rnn_cell_28_matmul_readvariableop_resource_0"�
msimple_rnn_28_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_28_tensorarrayunstack_tensorlistfromtensorosimple_rnn_28_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_28_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������@: : : : : 2~
=simple_rnn_28/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp=simple_rnn_28/while/simple_rnn_cell_28/BiasAdd/ReadVariableOp2|
<simple_rnn_28/while/simple_rnn_cell_28/MatMul/ReadVariableOp<simple_rnn_28/while/simple_rnn_cell_28/MatMul/ReadVariableOp2�
>simple_rnn_28/while/simple_rnn_cell_28/MatMul_1/ReadVariableOp>simple_rnn_28/while/simple_rnn_cell_28/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�
$__inference_signature_wrapper_168241
simple_rnn_28_input
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@ 
	unknown_3: 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_28_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*7
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_166725o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:���������
-
_user_specified_namesimple_rnn_28_input
�
�
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_167127

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
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
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�%
�
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_169486

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

: �
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:��������� l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
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
: *
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: �
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
: *
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: ~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: �
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
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:��������� h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:��������� b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
E__inference_dense_106_layer_call_and_return_conditional_losses_169326

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2dense_106/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� �
2dense_106/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0�
#dense_106/kernel/Regularizer/SquareSquare:dense_106/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@ s
"dense_106/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_106/kernel/Regularizer/SumSum'dense_106/kernel/Regularizer/Square:y:0+dense_106/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_106/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_106/kernel/Regularizer/mulMul+dense_106/kernel/Regularizer/mul/x:output:0)dense_106/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_106/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_106/kernel/Regularizer/Square/ReadVariableOp2dense_106/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
7__inference_batch_normalization_39_layer_call_fn_169591

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
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_167174o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
+__inference_dropout_66_layer_call_fn_169522

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
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_dropout_66_layer_call_and_return_conditional_losses_167567o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
e
F__inference_dropout_66_layer_call_and_return_conditional_losses_167567

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
.__inference_sequential_25_layer_call_fn_168359

inputs
unknown:@
	unknown_0:@
	unknown_1:@@
	unknown_2:@ 
	unknown_3: 
	unknown_4:  
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: 

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:

unknown_17:

unknown_18:

unknown_19:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*3
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_sequential_25_layer_call_and_return_conditional_losses_167908o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
d
F__inference_dropout_65_layer_call_and_return_conditional_losses_169394

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:��������� [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:��������� "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
while_cond_167701
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_167701___redundant_placeholder04
0while_while_cond_167701___redundant_placeholder14
0while_while_cond_167701___redundant_placeholder24
0while_while_cond_167701___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�

�
simple_rnn_28_while_cond_1684018
4simple_rnn_28_while_simple_rnn_28_while_loop_counter>
:simple_rnn_28_while_simple_rnn_28_while_maximum_iterations#
simple_rnn_28_while_placeholder%
!simple_rnn_28_while_placeholder_1%
!simple_rnn_28_while_placeholder_2:
6simple_rnn_28_while_less_simple_rnn_28_strided_slice_1P
Lsimple_rnn_28_while_simple_rnn_28_while_cond_168401___redundant_placeholder0P
Lsimple_rnn_28_while_simple_rnn_28_while_cond_168401___redundant_placeholder1P
Lsimple_rnn_28_while_simple_rnn_28_while_cond_168401___redundant_placeholder2P
Lsimple_rnn_28_while_simple_rnn_28_while_cond_168401___redundant_placeholder3 
simple_rnn_28_while_identity
�
simple_rnn_28/while/LessLesssimple_rnn_28_while_placeholder6simple_rnn_28_while_less_simple_rnn_28_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_28/while/IdentityIdentitysimple_rnn_28/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_28_while_identity%simple_rnn_28/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
:
�
�
.__inference_simple_rnn_28_layer_call_fn_168827
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_166851o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�"
�
while_body_166948
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_03
!while_simple_rnn_cell_28_166970_0:@/
!while_simple_rnn_cell_28_166972_0:@3
!while_simple_rnn_cell_28_166974_0:@@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor1
while_simple_rnn_cell_28_166970:@-
while_simple_rnn_cell_28_166972:@1
while_simple_rnn_cell_28_166974:@@��0while/simple_rnn_cell_28/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
0while/simple_rnn_cell_28/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2!while_simple_rnn_cell_28_166970_0!while_simple_rnn_cell_28_166972_0!while_simple_rnn_cell_28_166974_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������@:���������@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *W
fRRP
N__inference_simple_rnn_cell_28_layer_call_and_return_conditional_losses_166895r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:09while/simple_rnn_cell_28/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity9while/simple_rnn_cell_28/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������@

while/NoOpNoOp1^while/simple_rnn_cell_28/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_simple_rnn_cell_28_166970!while_simple_rnn_cell_28_166970_0"D
while_simple_rnn_cell_28_166972!while_simple_rnn_cell_28_166972_0"D
while_simple_rnn_cell_28_166974!while_simple_rnn_cell_28_166974_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������@: : : : : 2d
0while/simple_rnn_cell_28/StatefulPartitionedCall0while/simple_rnn_cell_28/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:���������@:

_output_shapes
: :

_output_shapes
: 
�
�*
"__inference__traced_restore_170188
file_prefix3
!assignvariableop_dense_106_kernel:@ /
!assignvariableop_1_dense_106_bias: 5
#assignvariableop_2_dense_107_kernel:  /
!assignvariableop_3_dense_107_bias: =
/assignvariableop_4_batch_normalization_38_gamma: <
.assignvariableop_5_batch_normalization_38_beta: C
5assignvariableop_6_batch_normalization_38_moving_mean: G
9assignvariableop_7_batch_normalization_38_moving_variance: 5
#assignvariableop_8_dense_108_kernel: /
!assignvariableop_9_dense_108_bias:6
$assignvariableop_10_dense_109_kernel:0
"assignvariableop_11_dense_109_bias:>
0assignvariableop_12_batch_normalization_39_gamma:=
/assignvariableop_13_batch_normalization_39_beta:D
6assignvariableop_14_batch_normalization_39_moving_mean:H
:assignvariableop_15_batch_normalization_39_moving_variance:6
$assignvariableop_16_dense_110_kernel:0
"assignvariableop_17_dense_110_bias:M
;assignvariableop_18_simple_rnn_28_simple_rnn_cell_28_kernel:@W
Eassignvariableop_19_simple_rnn_28_simple_rnn_cell_28_recurrent_kernel:@@G
9assignvariableop_20_simple_rnn_28_simple_rnn_cell_28_bias:@'
assignvariableop_21_adam_iter:	 )
assignvariableop_22_adam_beta_1: )
assignvariableop_23_adam_beta_2: (
assignvariableop_24_adam_decay: 0
&assignvariableop_25_adam_learning_rate: %
assignvariableop_26_total_1: %
assignvariableop_27_count_1: #
assignvariableop_28_total: #
assignvariableop_29_count: =
+assignvariableop_30_adam_dense_106_kernel_m:@ 7
)assignvariableop_31_adam_dense_106_bias_m: =
+assignvariableop_32_adam_dense_107_kernel_m:  7
)assignvariableop_33_adam_dense_107_bias_m: E
7assignvariableop_34_adam_batch_normalization_38_gamma_m: D
6assignvariableop_35_adam_batch_normalization_38_beta_m: =
+assignvariableop_36_adam_dense_108_kernel_m: 7
)assignvariableop_37_adam_dense_108_bias_m:=
+assignvariableop_38_adam_dense_109_kernel_m:7
)assignvariableop_39_adam_dense_109_bias_m:E
7assignvariableop_40_adam_batch_normalization_39_gamma_m:D
6assignvariableop_41_adam_batch_normalization_39_beta_m:=
+assignvariableop_42_adam_dense_110_kernel_m:7
)assignvariableop_43_adam_dense_110_bias_m:T
Bassignvariableop_44_adam_simple_rnn_28_simple_rnn_cell_28_kernel_m:@^
Lassignvariableop_45_adam_simple_rnn_28_simple_rnn_cell_28_recurrent_kernel_m:@@N
@assignvariableop_46_adam_simple_rnn_28_simple_rnn_cell_28_bias_m:@=
+assignvariableop_47_adam_dense_106_kernel_v:@ 7
)assignvariableop_48_adam_dense_106_bias_v: =
+assignvariableop_49_adam_dense_107_kernel_v:  7
)assignvariableop_50_adam_dense_107_bias_v: E
7assignvariableop_51_adam_batch_normalization_38_gamma_v: D
6assignvariableop_52_adam_batch_normalization_38_beta_v: =
+assignvariableop_53_adam_dense_108_kernel_v: 7
)assignvariableop_54_adam_dense_108_bias_v:=
+assignvariableop_55_adam_dense_109_kernel_v:7
)assignvariableop_56_adam_dense_109_bias_v:E
7assignvariableop_57_adam_batch_normalization_39_gamma_v:D
6assignvariableop_58_adam_batch_normalization_39_beta_v:=
+assignvariableop_59_adam_dense_110_kernel_v:7
)assignvariableop_60_adam_dense_110_bias_v:T
Bassignvariableop_61_adam_simple_rnn_28_simple_rnn_cell_28_kernel_v:@^
Lassignvariableop_62_adam_simple_rnn_28_simple_rnn_cell_28_recurrent_kernel_v:@@N
@assignvariableop_63_adam_simple_rnn_28_simple_rnn_cell_28_bias_v:@
identity_65��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�"
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:A*
dtype0*�"
value�"B�!AB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:A*
dtype0*�
value�B�AB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*O
dtypesE
C2A	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_dense_106_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_106_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_107_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_107_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp/assignvariableop_4_batch_normalization_38_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp.assignvariableop_5_batch_normalization_38_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp5assignvariableop_6_batch_normalization_38_moving_meanIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp9assignvariableop_7_batch_normalization_38_moving_varianceIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_108_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_108_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp$assignvariableop_10_dense_109_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp"assignvariableop_11_dense_109_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp0assignvariableop_12_batch_normalization_39_gammaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp/assignvariableop_13_batch_normalization_39_betaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp6assignvariableop_14_batch_normalization_39_moving_meanIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp:assignvariableop_15_batch_normalization_39_moving_varianceIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp$assignvariableop_16_dense_110_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp"assignvariableop_17_dense_110_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp;assignvariableop_18_simple_rnn_28_simple_rnn_cell_28_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpEassignvariableop_19_simple_rnn_28_simple_rnn_cell_28_recurrent_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp9assignvariableop_20_simple_rnn_28_simple_rnn_cell_28_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_iterIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_beta_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_beta_2Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_adam_decayIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp&assignvariableop_25_adam_learning_rateIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_totalIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_countIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_dense_106_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_106_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_dense_107_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_107_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp7assignvariableop_34_adam_batch_normalization_38_gamma_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp6assignvariableop_35_adam_batch_normalization_38_beta_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_dense_108_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_108_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_dense_109_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_dense_109_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp7assignvariableop_40_adam_batch_normalization_39_gamma_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp6assignvariableop_41_adam_batch_normalization_39_beta_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp+assignvariableop_42_adam_dense_110_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_dense_110_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOpBassignvariableop_44_adam_simple_rnn_28_simple_rnn_cell_28_kernel_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOpLassignvariableop_45_adam_simple_rnn_28_simple_rnn_cell_28_recurrent_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp@assignvariableop_46_adam_simple_rnn_28_simple_rnn_cell_28_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_dense_106_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_dense_106_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_dense_107_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_dense_107_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp7assignvariableop_51_adam_batch_normalization_38_gamma_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp6assignvariableop_52_adam_batch_normalization_38_beta_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_dense_108_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_dense_108_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp+assignvariableop_55_adam_dense_109_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp)assignvariableop_56_adam_dense_109_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp7assignvariableop_57_adam_batch_normalization_39_gamma_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp6assignvariableop_58_adam_batch_normalization_39_beta_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp+assignvariableop_59_adam_dense_110_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp)assignvariableop_60_adam_dense_110_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOpBassignvariableop_61_adam_simple_rnn_28_simple_rnn_cell_28_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOpLassignvariableop_62_adam_simple_rnn_28_simple_rnn_cell_28_recurrent_kernel_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp@assignvariableop_63_adam_simple_rnn_28_simple_rnn_cell_28_bias_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_64Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_65IdentityIdentity_64:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_65Identity_65:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
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
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
E__inference_dense_107_layer_call_and_return_conditional_losses_169379

inputs0
matmul_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2dense_107/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� �
2dense_107/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:  *
dtype0�
#dense_107/kernel/Regularizer/SquareSquare:dense_107/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:  s
"dense_107/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_107/kernel/Regularizer/SumSum'dense_107/kernel/Regularizer/Square:y:0+dense_107/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_107/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_107/kernel/Regularizer/mulMul+dense_107/kernel/Regularizer/mul/x:output:0)dense_107/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_107/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_107/kernel/Regularizer/Square/ReadVariableOp2dense_107/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
E__inference_dense_110_layer_call_and_return_conditional_losses_167451

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
7__inference_batch_normalization_38_layer_call_fn_169419

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
 *'
_output_shapes
:��������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *[
fVRT
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_167045o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_169452

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
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
: P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:��������� z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:��������� b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:��������� : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�	
e
F__inference_dropout_65_layer_call_and_return_conditional_losses_167600

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:��������� C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:��������� Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�%
�
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_169645

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
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
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
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
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
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
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_dense_108_layer_call_and_return_conditional_losses_169512

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2dense_108/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:����������
2dense_108/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0�
#dense_108/kernel/Regularizer/SquareSquare:dense_108/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

: s
"dense_108/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_108/kernel/Regularizer/SumSum'dense_108/kernel/Regularizer/Square:y:0+dense_108/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_108/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
�#<�
 dense_108/kernel/Regularizer/mulMul+dense_108/kernel/Regularizer/mul/x:output:0)dense_108/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_108/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_108/kernel/Regularizer/Square/ReadVariableOp2dense_108/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
W
simple_rnn_28_input@
%serving_default_simple_rnn_28_input:0���������=
	dense_1100
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec"
_tf_keras_rnn_layer
�
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias"
_tf_keras_layer
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses
+_random_generator"
_tf_keras_layer
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:_random_generator"
_tf_keras_layer
�
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
Aaxis
	Bgamma
Cbeta
Dmoving_mean
Emoving_variance"
_tf_keras_layer
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias"
_tf_keras_layer
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses
T_random_generator"
_tf_keras_layer
�
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

[kernel
\bias"
_tf_keras_layer
�
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses
caxis
	dgamma
ebeta
fmoving_mean
gmoving_variance"
_tf_keras_layer
�
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l__call__
*m&call_and_return_all_conditional_losses

nkernel
obias"
_tf_keras_layer
�
p0
q1
r2
#3
$4
25
36
B7
C8
D9
E10
L11
M12
[13
\14
d15
e16
f17
g18
n19
o20"
trackable_list_wrapper
�
p0
q1
r2
#3
$4
25
36
B7
C8
L9
M10
[11
\12
d13
e14
n15
o16"
trackable_list_wrapper
<
s0
t1
u2
v3"
trackable_list_wrapper
�
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
|trace_0
}trace_1
~trace_2
trace_32�
.__inference_sequential_25_layer_call_fn_167527
.__inference_sequential_25_layer_call_fn_168312
.__inference_sequential_25_layer_call_fn_168359
.__inference_sequential_25_layer_call_fn_168000�
���
FullArgSpec1
args)�&
jself
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

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z|trace_0z}trace_1z~trace_2ztrace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
I__inference_sequential_25_layer_call_and_return_conditional_losses_168563
I__inference_sequential_25_layer_call_and_return_conditional_losses_168816
I__inference_sequential_25_layer_call_and_return_conditional_losses_168081
I__inference_sequential_25_layer_call_and_return_conditional_losses_168162�
���
FullArgSpec1
args)�&
jself
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

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�B�
!__inference__wrapped_model_166725simple_rnn_28_input"�
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
�
	�iter
�beta_1
�beta_2

�decay
�learning_rate#m�$m�2m�3m�Bm�Cm�Lm�Mm�[m�\m�dm�em�nm�om�pm�qm�rm�#v�$v�2v�3v�Bv�Cv�Lv�Mv�[v�\v�dv�ev�nv�ov�pv�qv�rv�"
	optimizer
-
�serving_default"
signature_map
5
p0
q1
r2"
trackable_list_wrapper
5
p0
q1
r2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�states
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
.__inference_simple_rnn_28_layer_call_fn_168827
.__inference_simple_rnn_28_layer_call_fn_168838
.__inference_simple_rnn_28_layer_call_fn_168849
.__inference_simple_rnn_28_layer_call_fn_168860�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_168970
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_169080
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_169190
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_169300�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator

pkernel
qrecurrent_kernel
rbias"
_tf_keras_layer
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
'
s0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_106_layer_call_fn_169309�
���
FullArgSpec
args�
jself
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
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_106_layer_call_and_return_conditional_losses_169326�
���
FullArgSpec
args�
jself
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
annotations� *
 z�trace_0
": @ 2dense_106/kernel
: 2dense_106/bias
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
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_64_layer_call_fn_169331
+__inference_dropout_64_layer_call_fn_169336�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_64_layer_call_and_return_conditional_losses_169341
F__inference_dropout_64_layer_call_and_return_conditional_losses_169353�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
'
t0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_107_layer_call_fn_169362�
���
FullArgSpec
args�
jself
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
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_107_layer_call_and_return_conditional_losses_169379�
���
FullArgSpec
args�
jself
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
annotations� *
 z�trace_0
":   2dense_107/kernel
: 2dense_107/bias
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
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_65_layer_call_fn_169384
+__inference_dropout_65_layer_call_fn_169389�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_65_layer_call_and_return_conditional_losses_169394
F__inference_dropout_65_layer_call_and_return_conditional_losses_169406�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
<
B0
C1
D2
E3"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_38_layer_call_fn_169419
7__inference_batch_normalization_38_layer_call_fn_169432�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_169452
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_169486�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:( 2batch_normalization_38/gamma
):' 2batch_normalization_38/beta
2:0  (2"batch_normalization_38/moving_mean
6:4  (2&batch_normalization_38/moving_variance
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
'
u0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_108_layer_call_fn_169495�
���
FullArgSpec
args�
jself
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
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_108_layer_call_and_return_conditional_losses_169512�
���
FullArgSpec
args�
jself
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
annotations� *
 z�trace_0
":  2dense_108/kernel
:2dense_108/bias
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
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_dropout_66_layer_call_fn_169517
+__inference_dropout_66_layer_call_fn_169522�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_dropout_66_layer_call_and_return_conditional_losses_169527
F__inference_dropout_66_layer_call_and_return_conditional_losses_169539�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
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
'
v0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_109_layer_call_fn_169548�
���
FullArgSpec
args�
jself
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
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_109_layer_call_and_return_conditional_losses_169565�
���
FullArgSpec
args�
jself
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
annotations� *
 z�trace_0
": 2dense_109/kernel
:2dense_109/bias
<
d0
e1
f2
g3"
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
7__inference_batch_normalization_39_layer_call_fn_169578
7__inference_batch_normalization_39_layer_call_fn_169591�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_169611
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_169645�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
*:(2batch_normalization_39/gamma
):'2batch_normalization_39/beta
2:0 (2"batch_normalization_39/moving_mean
6:4 (2&batch_normalization_39/moving_variance
.
n0
o1"
trackable_list_wrapper
.
n0
o1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
h	variables
itrainable_variables
jregularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_110_layer_call_fn_169654�
���
FullArgSpec
args�
jself
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
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_110_layer_call_and_return_conditional_losses_169665�
���
FullArgSpec
args�
jself
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
annotations� *
 z�trace_0
": 2dense_110/kernel
:2dense_110/bias
9:7@2'simple_rnn_28/simple_rnn_cell_28/kernel
C:A@@21simple_rnn_28/simple_rnn_cell_28/recurrent_kernel
3:1@2%simple_rnn_28/simple_rnn_cell_28/bias
�
�trace_02�
__inference_loss_fn_0_169676�
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
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_1_169687�
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
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_2_169698�
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
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_3_169709�
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
annotations� *� z�trace_0
<
D0
E1
f2
g3"
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
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_sequential_25_layer_call_fn_167527simple_rnn_28_input"�
���
FullArgSpec1
args)�&
jself
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

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
.__inference_sequential_25_layer_call_fn_168312inputs"�
���
FullArgSpec1
args)�&
jself
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

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
.__inference_sequential_25_layer_call_fn_168359inputs"�
���
FullArgSpec1
args)�&
jself
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

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
.__inference_sequential_25_layer_call_fn_168000simple_rnn_28_input"�
���
FullArgSpec1
args)�&
jself
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

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
I__inference_sequential_25_layer_call_and_return_conditional_losses_168563inputs"�
���
FullArgSpec1
args)�&
jself
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

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
I__inference_sequential_25_layer_call_and_return_conditional_losses_168816inputs"�
���
FullArgSpec1
args)�&
jself
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

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
I__inference_sequential_25_layer_call_and_return_conditional_losses_168081simple_rnn_28_input"�
���
FullArgSpec1
args)�&
jself
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

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
I__inference_sequential_25_layer_call_and_return_conditional_losses_168162simple_rnn_28_input"�
���
FullArgSpec1
args)�&
jself
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

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
$__inference_signature_wrapper_168241simple_rnn_28_input"�
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
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_simple_rnn_28_layer_call_fn_168827inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
.__inference_simple_rnn_28_layer_call_fn_168838inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
.__inference_simple_rnn_28_layer_call_fn_168849inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
.__inference_simple_rnn_28_layer_call_fn_168860inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_168970inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_169080inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_169190inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_169300inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
5
p0
q1
r2"
trackable_list_wrapper
5
p0
q1
r2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
3__inference_simple_rnn_cell_28_layer_call_fn_169723
3__inference_simple_rnn_cell_28_layer_call_fn_169737�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
N__inference_simple_rnn_cell_28_layer_call_and_return_conditional_losses_169754
N__inference_simple_rnn_cell_28_layer_call_and_return_conditional_losses_169771�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
s0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_106_layer_call_fn_169309inputs"�
���
FullArgSpec
args�
jself
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
annotations� *
 
�B�
E__inference_dense_106_layer_call_and_return_conditional_losses_169326inputs"�
���
FullArgSpec
args�
jself
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
annotations� *
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
+__inference_dropout_64_layer_call_fn_169331inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
+__inference_dropout_64_layer_call_fn_169336inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_dropout_64_layer_call_and_return_conditional_losses_169341inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_dropout_64_layer_call_and_return_conditional_losses_169353inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
t0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_107_layer_call_fn_169362inputs"�
���
FullArgSpec
args�
jself
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
annotations� *
 
�B�
E__inference_dense_107_layer_call_and_return_conditional_losses_169379inputs"�
���
FullArgSpec
args�
jself
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
annotations� *
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
+__inference_dropout_65_layer_call_fn_169384inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
+__inference_dropout_65_layer_call_fn_169389inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_dropout_65_layer_call_and_return_conditional_losses_169394inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_dropout_65_layer_call_and_return_conditional_losses_169406inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
.
D0
E1"
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
7__inference_batch_normalization_38_layer_call_fn_169419inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
7__inference_batch_normalization_38_layer_call_fn_169432inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_169452inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_169486inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
u0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_108_layer_call_fn_169495inputs"�
���
FullArgSpec
args�
jself
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
annotations� *
 
�B�
E__inference_dense_108_layer_call_and_return_conditional_losses_169512inputs"�
���
FullArgSpec
args�
jself
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
annotations� *
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
+__inference_dropout_66_layer_call_fn_169517inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
+__inference_dropout_66_layer_call_fn_169522inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_dropout_66_layer_call_and_return_conditional_losses_169527inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
F__inference_dropout_66_layer_call_and_return_conditional_losses_169539inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
v0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_109_layer_call_fn_169548inputs"�
���
FullArgSpec
args�
jself
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
annotations� *
 
�B�
E__inference_dense_109_layer_call_and_return_conditional_losses_169565inputs"�
���
FullArgSpec
args�
jself
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
annotations� *
 
.
f0
g1"
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
7__inference_batch_normalization_39_layer_call_fn_169578inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
7__inference_batch_normalization_39_layer_call_fn_169591inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_169611inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_169645inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
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
*__inference_dense_110_layer_call_fn_169654inputs"�
���
FullArgSpec
args�
jself
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
annotations� *
 
�B�
E__inference_dense_110_layer_call_and_return_conditional_losses_169665inputs"�
���
FullArgSpec
args�
jself
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
annotations� *
 
�B�
__inference_loss_fn_0_169676"�
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
__inference_loss_fn_1_169687"�
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
__inference_loss_fn_2_169698"�
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
__inference_loss_fn_3_169709"�
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
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
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
�B�
3__inference_simple_rnn_cell_28_layer_call_fn_169723inputsstates/0"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
3__inference_simple_rnn_cell_28_layer_call_fn_169737inputsstates/0"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
N__inference_simple_rnn_cell_28_layer_call_and_return_conditional_losses_169754inputsstates/0"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
N__inference_simple_rnn_cell_28_layer_call_and_return_conditional_losses_169771inputsstates/0"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
':%@ 2Adam/dense_106/kernel/m
!: 2Adam/dense_106/bias/m
':%  2Adam/dense_107/kernel/m
!: 2Adam/dense_107/bias/m
/:- 2#Adam/batch_normalization_38/gamma/m
.:, 2"Adam/batch_normalization_38/beta/m
':% 2Adam/dense_108/kernel/m
!:2Adam/dense_108/bias/m
':%2Adam/dense_109/kernel/m
!:2Adam/dense_109/bias/m
/:-2#Adam/batch_normalization_39/gamma/m
.:,2"Adam/batch_normalization_39/beta/m
':%2Adam/dense_110/kernel/m
!:2Adam/dense_110/bias/m
>:<@2.Adam/simple_rnn_28/simple_rnn_cell_28/kernel/m
H:F@@28Adam/simple_rnn_28/simple_rnn_cell_28/recurrent_kernel/m
8:6@2,Adam/simple_rnn_28/simple_rnn_cell_28/bias/m
':%@ 2Adam/dense_106/kernel/v
!: 2Adam/dense_106/bias/v
':%  2Adam/dense_107/kernel/v
!: 2Adam/dense_107/bias/v
/:- 2#Adam/batch_normalization_38/gamma/v
.:, 2"Adam/batch_normalization_38/beta/v
':% 2Adam/dense_108/kernel/v
!:2Adam/dense_108/bias/v
':%2Adam/dense_109/kernel/v
!:2Adam/dense_109/bias/v
/:-2#Adam/batch_normalization_39/gamma/v
.:,2"Adam/batch_normalization_39/beta/v
':%2Adam/dense_110/kernel/v
!:2Adam/dense_110/bias/v
>:<@2.Adam/simple_rnn_28/simple_rnn_cell_28/kernel/v
H:F@@28Adam/simple_rnn_28/simple_rnn_cell_28/recurrent_kernel/v
8:6@2,Adam/simple_rnn_28/simple_rnn_cell_28/bias/v�
!__inference__wrapped_model_166725�prq#$23EBDCLM[\gdfeno@�=
6�3
1�.
simple_rnn_28_input���������
� "5�2
0
	dense_110#� 
	dense_110����������
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_169452bEBDC3�0
)�&
 �
inputs��������� 
p 
� "%�"
�
0��������� 
� �
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_169486bDEBC3�0
)�&
 �
inputs��������� 
p
� "%�"
�
0��������� 
� �
7__inference_batch_normalization_38_layer_call_fn_169419UEBDC3�0
)�&
 �
inputs��������� 
p 
� "���������� �
7__inference_batch_normalization_38_layer_call_fn_169432UDEBC3�0
)�&
 �
inputs��������� 
p
� "���������� �
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_169611bgdfe3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_169645bfgde3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� �
7__inference_batch_normalization_39_layer_call_fn_169578Ugdfe3�0
)�&
 �
inputs���������
p 
� "�����������
7__inference_batch_normalization_39_layer_call_fn_169591Ufgde3�0
)�&
 �
inputs���������
p
� "�����������
E__inference_dense_106_layer_call_and_return_conditional_losses_169326\#$/�,
%�"
 �
inputs���������@
� "%�"
�
0��������� 
� }
*__inference_dense_106_layer_call_fn_169309O#$/�,
%�"
 �
inputs���������@
� "���������� �
E__inference_dense_107_layer_call_and_return_conditional_losses_169379\23/�,
%�"
 �
inputs��������� 
� "%�"
�
0��������� 
� }
*__inference_dense_107_layer_call_fn_169362O23/�,
%�"
 �
inputs��������� 
� "���������� �
E__inference_dense_108_layer_call_and_return_conditional_losses_169512\LM/�,
%�"
 �
inputs��������� 
� "%�"
�
0���������
� }
*__inference_dense_108_layer_call_fn_169495OLM/�,
%�"
 �
inputs��������� 
� "�����������
E__inference_dense_109_layer_call_and_return_conditional_losses_169565\[\/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� }
*__inference_dense_109_layer_call_fn_169548O[\/�,
%�"
 �
inputs���������
� "�����������
E__inference_dense_110_layer_call_and_return_conditional_losses_169665\no/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� }
*__inference_dense_110_layer_call_fn_169654Ono/�,
%�"
 �
inputs���������
� "�����������
F__inference_dropout_64_layer_call_and_return_conditional_losses_169341\3�0
)�&
 �
inputs��������� 
p 
� "%�"
�
0��������� 
� �
F__inference_dropout_64_layer_call_and_return_conditional_losses_169353\3�0
)�&
 �
inputs��������� 
p
� "%�"
�
0��������� 
� ~
+__inference_dropout_64_layer_call_fn_169331O3�0
)�&
 �
inputs��������� 
p 
� "���������� ~
+__inference_dropout_64_layer_call_fn_169336O3�0
)�&
 �
inputs��������� 
p
� "���������� �
F__inference_dropout_65_layer_call_and_return_conditional_losses_169394\3�0
)�&
 �
inputs��������� 
p 
� "%�"
�
0��������� 
� �
F__inference_dropout_65_layer_call_and_return_conditional_losses_169406\3�0
)�&
 �
inputs��������� 
p
� "%�"
�
0��������� 
� ~
+__inference_dropout_65_layer_call_fn_169384O3�0
)�&
 �
inputs��������� 
p 
� "���������� ~
+__inference_dropout_65_layer_call_fn_169389O3�0
)�&
 �
inputs��������� 
p
� "���������� �
F__inference_dropout_66_layer_call_and_return_conditional_losses_169527\3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
F__inference_dropout_66_layer_call_and_return_conditional_losses_169539\3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� ~
+__inference_dropout_66_layer_call_fn_169517O3�0
)�&
 �
inputs���������
p 
� "����������~
+__inference_dropout_66_layer_call_fn_169522O3�0
)�&
 �
inputs���������
p
� "����������;
__inference_loss_fn_0_169676#�

� 
� "� ;
__inference_loss_fn_1_1696872�

� 
� "� ;
__inference_loss_fn_2_169698L�

� 
� "� ;
__inference_loss_fn_3_169709[�

� 
� "� �
I__inference_sequential_25_layer_call_and_return_conditional_losses_168081�prq#$23EBDCLM[\gdfenoH�E
>�;
1�.
simple_rnn_28_input���������
p 

 
� "%�"
�
0���������
� �
I__inference_sequential_25_layer_call_and_return_conditional_losses_168162�prq#$23DEBCLM[\fgdenoH�E
>�;
1�.
simple_rnn_28_input���������
p

 
� "%�"
�
0���������
� �
I__inference_sequential_25_layer_call_and_return_conditional_losses_168563{prq#$23EBDCLM[\gdfeno;�8
1�.
$�!
inputs���������
p 

 
� "%�"
�
0���������
� �
I__inference_sequential_25_layer_call_and_return_conditional_losses_168816{prq#$23DEBCLM[\fgdeno;�8
1�.
$�!
inputs���������
p

 
� "%�"
�
0���������
� �
.__inference_sequential_25_layer_call_fn_167527{prq#$23EBDCLM[\gdfenoH�E
>�;
1�.
simple_rnn_28_input���������
p 

 
� "�����������
.__inference_sequential_25_layer_call_fn_168000{prq#$23DEBCLM[\fgdenoH�E
>�;
1�.
simple_rnn_28_input���������
p

 
� "�����������
.__inference_sequential_25_layer_call_fn_168312nprq#$23EBDCLM[\gdfeno;�8
1�.
$�!
inputs���������
p 

 
� "�����������
.__inference_sequential_25_layer_call_fn_168359nprq#$23DEBCLM[\fgdeno;�8
1�.
$�!
inputs���������
p

 
� "�����������
$__inference_signature_wrapper_168241�prq#$23EBDCLM[\gdfenoW�T
� 
M�J
H
simple_rnn_28_input1�.
simple_rnn_28_input���������"5�2
0
	dense_110#� 
	dense_110����������
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_168970}prqO�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "%�"
�
0���������@
� �
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_169080}prqO�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "%�"
�
0���������@
� �
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_169190mprq?�<
5�2
$�!
inputs���������

 
p 

 
� "%�"
�
0���������@
� �
I__inference_simple_rnn_28_layer_call_and_return_conditional_losses_169300mprq?�<
5�2
$�!
inputs���������

 
p

 
� "%�"
�
0���������@
� �
.__inference_simple_rnn_28_layer_call_fn_168827pprqO�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "����������@�
.__inference_simple_rnn_28_layer_call_fn_168838pprqO�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "����������@�
.__inference_simple_rnn_28_layer_call_fn_168849`prq?�<
5�2
$�!
inputs���������

 
p 

 
� "����������@�
.__inference_simple_rnn_28_layer_call_fn_168860`prq?�<
5�2
$�!
inputs���������

 
p

 
� "����������@�
N__inference_simple_rnn_cell_28_layer_call_and_return_conditional_losses_169754�prq\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������@
p 
� "R�O
H�E
�
0/0���������@
$�!
�
0/1/0���������@
� �
N__inference_simple_rnn_cell_28_layer_call_and_return_conditional_losses_169771�prq\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������@
p
� "R�O
H�E
�
0/0���������@
$�!
�
0/1/0���������@
� �
3__inference_simple_rnn_cell_28_layer_call_fn_169723�prq\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������@
p 
� "D�A
�
0���������@
"�
�
1/0���������@�
3__inference_simple_rnn_cell_28_layer_call_fn_169737�prq\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������@
p
� "D�A
�
0���������@
"�
�
1/0���������@