
I
lstm/basic_lstm_cell/Const_5Const*
valueB
 *  �?*
dtype0
B
seq_embedding/mapConst*
valueB
�]�*
dtype0
@

input_feedPlaceholder*
dtype0	*
shape:���������
M
#seq_embedding/embedding_lookup/axisConst*
value	B : *
dtype0
J
lstm/state_feedPlaceholder*
dtype0*
shape:����������
F
lstm/basic_lstm_cell/Const_3Const*
value	B :*
dtype0
L
lstm/basic_lstm_cell/kernelConst*
valueB
��*
dtype0
E
lstm/basic_lstm_cell/biasConst*
valueB	�*
dtype0
8
Reshape/shapeConst*
dtype0*
value
B
?
logits/weightsConst*
valueB
��]*
dtype0
9
logits/biasesConst*
valueB	�]*
dtype0
Y
ExpandDims_4
ExpandDims
input_feedlstm/basic_lstm_cell/Const_3*

Tdim0*
T0	
\

lstm/splitSplitlstm/basic_lstm_cell/Const_3lstm/state_feed*
T0*
	num_split
�
seq_embedding/embedding_lookupGatherV2seq_embedding/mapExpandDims_4#seq_embedding/embedding_lookup/axis*
Tindices0	*
Tparams0*
Taxis0
W
lstm/SqueezeSqueezeseq_embedding/embedding_lookup*
squeeze_dims
*
T0
�
lstm/basic_lstm_cell/concat_1ConcatV2lstm/Squeezelstm/split:1lstm/basic_lstm_cell/Const_3*
T0*
N*

Tidx0
�
lstm/basic_lstm_cell/MatMul_1MatMullstm/basic_lstm_cell/concat_1lstm/basic_lstm_cell/kernel*
transpose_b( *
T0*
transpose_a( 
�
lstm/basic_lstm_cell/BiasAdd_1BiasAddlstm/basic_lstm_cell/MatMul_1lstm/basic_lstm_cell/bias*
T0*
data_formatNHWC
}
lstm/basic_lstm_cell/split_1Splitlstm/basic_lstm_cell/Const_3lstm/basic_lstm_cell/BiasAdd_1*
	num_split*
T0
h
lstm/basic_lstm_cell/Add_2Addlstm/basic_lstm_cell/split_1:2lstm/basic_lstm_cell/Const_5*
T0
P
lstm/basic_lstm_cell/Sigmoid_4Sigmoidlstm/basic_lstm_cell/split_1*
T0
L
lstm/basic_lstm_cell/Tanh_2Tanhlstm/basic_lstm_cell/split_1:1*
T0
R
lstm/basic_lstm_cell/Sigmoid_5Sigmoidlstm/basic_lstm_cell/split_1:3*
T0
N
lstm/basic_lstm_cell/Sigmoid_3Sigmoidlstm/basic_lstm_cell/Add_2*
T0
g
lstm/basic_lstm_cell/Mul_4Mullstm/basic_lstm_cell/Sigmoid_4lstm/basic_lstm_cell/Tanh_2*
T0
V
lstm/basic_lstm_cell/Mul_3Mul
lstm/splitlstm/basic_lstm_cell/Sigmoid_3*
T0
b
lstm/basic_lstm_cell/Add_3Addlstm/basic_lstm_cell/Mul_3lstm/basic_lstm_cell/Mul_4*
T0
H
lstm/basic_lstm_cell/Tanh_3Tanhlstm/basic_lstm_cell/Add_3*
T0
g
lstm/basic_lstm_cell/Mul_5Mullstm/basic_lstm_cell/Tanh_3lstm/basic_lstm_cell/Sigmoid_5*
T0
T
ReshapeReshapelstm/basic_lstm_cell/Mul_5Reshape/shape*
T0*
Tshape0
_
logits/MatMulMatMulReshapelogits/weights*
transpose_b( *
T0*
transpose_a( 
W
logits/BiasAddBiasAddlogits/MatMullogits/biases*
data_formatNHWC*
T0
+
softmaxSoftmaxlogits/BiasAdd*
T0 " 