function ViterbiDecoderMsg= ViterbiDecoder(msg)
constlen = 7;
codegen = [171, 133]; % G1=171 , G2=133.
trellis = poly2trellis(constlen, codegen);
coded=convenc(msg,trellis);
tblen = length(msg);
ViterbiDecoderMsg=vitdec(coded,trellis,tblen,'trunc','hard');
%{
verification for K/2 =0.5 codeRate as required!
trellis = poly2trellis(constlen, codegen);
constlen = 7;
codegen = [171, 133];
trellis = poly2trellis(constlen, codegen);
K = log2(trellis.numInputSymbols);
N = log2(trellis.numOutputSymbols);
unpunc_coderate = K/N

unpunc_coderate =

    0.5000
    %}
end

