3.67:cc: initialise kernel table
3.67:cc: deleting persistent cache
3.68:cc: (3.5,"\168\ESC\183\202vZ\190-,.V\235\199\EM\196\149")
#include <accelerate_cuda.h>
extern "C" __global__ void transform(const Int64 shIn0_0, const double* __restrict__ arrIn0_0, const Int64 shOut_1, const Int64 shOut_0, double* __restrict__ arrOut_0)
{
const int shapeSize = shOut_1 * shOut_0;
const int gridSize = blockDim.x * gridDim.x;
int ix;

for (ix = blockDim.x * blockIdx.x + threadIdx.x; ix < shapeSize; ix += gridSize) {
const Int64 tmp_0 = ix;
const Int64 tmp_1 = tmp_0 / shOut_0;
const Int64 sh_1 = tmp_1 % shOut_1;
const Int64 sh_0 = tmp_0 % shOut_0;
const Int64 sh0 = ({ assert(mod(({ const Int64 v0 = (Int64) 512;  ; sh_1 * v0 + sh_0; }), shIn0_0) >= 0 && mod(({ const Int64 v0 = (Int64) 512;  ; sh_1 * v0 + sh_0; }), shIn0_0) < shIn0_0); mod(({ const Int64 v0 = (Int64) 512;  ; sh_1 * v0 + sh_0; }), shIn0_0); });
const double x0 = arrIn0_0[sh0];

arrOut_0[ix] = x0;
}
}


3.68:cc: waiting for nvcc...
3.69:cc: queue: 1.551 s, execute: 1.550 s
     ... /usr/local/cuda-6.0/bin/nvcc -I /home/dpr964/tail/accelerate0.15-hsenv/.hsenv/cabal/share/x86_64-linux-ghc-7.8.4/accelerate-cuda-0.15.0.0/cubits -arch=sm_35 -cubin -o /tmp/accelerate-cuda-31232/dragon31232.cubin --disable-warnings -DNDEBUG -O3 -m64 /tmp/accelerate-cuda-31232/dragon31232.cu
3.69:cc: persist/save: /home/dpr964/.accelerate/accelerate-cuda-0.15.0.0/cache/3.5/zr149zr196zrEMzr199zr235Vziz2cUzmzr190ZZvzr202zr183zrESCzr168
3.70:cc: entry function 'transform' used 25 registers, 0 bytes smem, 0 bytes lmem, 0 bytes cmem
     ... multiprocessor occupancy 100.0% : 2048 threads over 64 warps in 16 blocks
6.05:cc: entry function 'transform' used 25 registers, 0 bytes smem, 0 bytes lmem, 0 bytes cmem
     ... multiprocessor occupancy 100.0% : 2048 threads over 64 warps in 16 blocks
6.09:cc: (3.5,"\210\136\ETB\FS\219\204\248\168Eh07{V\189\t")
#include <accelerate_cuda.h>
extern "C" __global__ void generate(const Int64 shIn0_1, const Int64 shIn0_0, const double* __restrict__ arrIn0_0, const Int64 shOut_0, Int64* __restrict__ arrOut_0)
{
const int shapeSize = shOut_0;
const int gridSize = blockDim.x * gridDim.x;
int ix;

for (ix = blockDim.x * blockIdx.x + threadIdx.x; ix < shapeSize; ix += gridSize) {
const Int64 sh0 = ({ assert(ix >= 0 && ix < shOut_0); ix; });
const Int64 v0 = (Int64) 0;
const Int64 v1 = (Int64) -1 + ((Int64) 2 - sh0);
const Word8 v2 = v0 == v1;
Int64 lv50;

if (v2) {
lv50 = shIn0_0;
} else {
const Word8 v3 = v0 == (Int64) -1 + v1;
Int64 lv40;

if (v3) {
lv40 = shIn0_1;
} else {
lv40 = v0;
}
lv50 = lv40;
}
arrOut_0[ix] = lv50;
}
}


6.09:cc: (3.5,"\179\a\166\146\183\187\160\ETX\249\168\CAN\227\129-`\232")
#include <accelerate_cuda.h>
extern "C" __global__ void generate(const Int64 shIn0_0, const Int64* __restrict__ arrIn0_0, const Int64 shOut_0, Int64* __restrict__ arrOut_0)
{
const int shapeSize = shOut_0;
const int gridSize = blockDim.x * gridDim.x;
int ix;

for (ix = blockDim.x * blockIdx.x + threadIdx.x; ix < shapeSize; ix += gridSize) {
const Int64 sh0 = ({ assert(ix >= 0 && ix < shOut_0); ix; });
const Word8 v0 = sh0 < shIn0_0;
Int64 lv10;

if (v0) {
lv10 = arrIn0_0[sh0];
} else {
lv10 = (Int64) 0;
}
arrOut_0[ix] = lv10;
}
}


6.09:cc: (3.5,"\167\179\178q\175B:\NUL\154\&68!s\206\&0\129")
#include <accelerate_cuda.h>
extern "C" __global__ void transform(const Int64 shIn0_0, const Int64* __restrict__ arrIn0_0, const Int64 shOut_0, Int64* __restrict__ arrOut_0)
{
const int shapeSize = shOut_0;
const int gridSize = blockDim.x * gridDim.x;
int ix;

for (ix = blockDim.x * blockIdx.x + threadIdx.x; ix < shapeSize; ix += gridSize) {
const Int64 sh_0 = ({ assert(ix >= 0 && ix < shOut_0); ix; });
const Int64 sh0 = sh_0;
const Int64 x0 = arrIn0_0[sh0];

arrOut_0[ix] = x0;
}
}


6.09:cc: (3.5,"\229\235\242\212\DC3X\US\t\145u\248\162\156\237\226(")
#include <accelerate_cuda.h>
extern "C" __global__ void generate(const Int64 shIn0_0, const Int64* __restrict__ arrIn0_0, const Int64 shOut_0, Int64* __restrict__ arrOut_0)
{
const int shapeSize = shOut_0;
const int gridSize = blockDim.x * gridDim.x;
int ix;

for (ix = blockDim.x * blockIdx.x + threadIdx.x; ix < shapeSize; ix += gridSize) {
const Int64 sh0 = ({ assert(ix >= 0 && ix < shOut_0); ix; });
const Int64 v0 = (Int64) 1 - shIn0_0;
const Word8 v1 = sh0 < v0;
Int64 lv30;

if (v1) {
lv30 = (Int64) 0;
} else {
const Int64 v2 = sh0 - v0;

lv30 = arrIn0_0[v2];
}
arrOut_0[ix] = lv30;
}
}


6.09:cc: (3.5,"\170#\RS\171\165\&4\128\255V\138\244\128S\145\202\204")
#include <accelerate_cuda.h>
extern "C" __global__ void transform(const Int64 shIn0_0, const Int64* __restrict__ arrIn0_0, const Int64 shOut_0, Int64* __restrict__ arrOut_0)
{
const int shapeSize = shOut_0;
const int gridSize = blockDim.x * gridDim.x;
int ix;

for (ix = blockDim.x * blockIdx.x + threadIdx.x; ix < shapeSize; ix += gridSize) {
const Int64 sh_0 = ({ assert(ix >= 0 && ix < shOut_0); ix; });
const Int64 sh0 = sh_0 + ((Int64) -1 + shIn0_0);
const Int64 x0 = arrIn0_0[sh0];

arrOut_0[ix] = x0;
}
}


6.11:cc: (3.5,"H\179P\218\163g\252\251\249\206\bS\241\224\155 ")
#include <accelerate_cuda.h>
extern "C" __global__ void generate(const Int64 shIn0_1, const Int64 shIn0_0, const double* __restrict__ arrIn0_0, const Int64 shIn1_0, const Int64* __restrict__ arrIn1_0, const Int64 shIn2_0, const Int64* __restrict__ arrIn2_0, const Int64 shIn3_0, const Word8* __restrict__ arrIn3_0, const Int64 shIn4_0, const Word8* __restrict__ arrIn4_0, const Int64 shIn5_0, const Int64* __restrict__ arrIn5_0, const Int64 shIn6_1, const Int64 shIn6_0, const double* __restrict__ arrIn6_0, const Int64 shOut_1, const Int64 shOut_0, double* __restrict__ arrOut_0)
{
const int shapeSize = shOut_1 * shOut_0;
const int gridSize = blockDim.x * gridDim.x;
int ix;

for (ix = blockDim.x * blockIdx.x + threadIdx.x; ix < shapeSize; ix += gridSize) {
const Int64 tmp_0 = ix;
const Int64 tmp_1 = tmp_0 / shOut_0;
const Int64 sh1 = tmp_1 % shOut_1;
const Int64 sh0 = tmp_0 % shOut_0;
const Int64 v0 = sh1 * shIn0_0 + sh0;
const double v1 = arrIn0_0[v0];

arrOut_0[ix] = v1 + 1.4583333333333335e-7 / (0.5 * (1750000.0 * (5.0e-4 * ({
const Int64 v2 = (Int64) 0;

;
1.6e-2 / (double) ({
const Word8 v3 = v2 == shIn1_0;
Int64 lv40;

if (v3) {
lv40 = v2;
} else {
lv40 = arrIn1_0[v2];
}
;
lv40;
}) * (1.6e-2 / (double) ({
const Word8 v5 = v2 == shIn2_0;
Int64 lv60;

if (v5) {
lv60 = v2;
} else {
lv60 = arrIn2_0[v2];
}
;
lv60;
}));
})))) * (({
const Int64 v7 = sh1 * shIn6_0 + sh0;

;
arrIn6_0[v7];
}) + ((({
const Word8 v9 = sh1 < ({ const Int64 v8 = max((Int64) 0, shIn0_1 - min((Int64) 1, shIn0_1));  ; v8; });
double lv170;

if (v9) {
const Int64 v10 = sh1 + min((Int64) 1, shIn0_1);
const Int64 v11 = v10 * shIn0_0 + sh0;

lv170 = arrIn0_0[v11];
} else {
lv170 = (double) (Int64) ({
const Int64 v16 = ({ assert(mod(({ const Word8 v12 = (Int64) 0 == shIn1_0; Int64 lv140;  if (v12) { lv140 = (Int64) 0; } else { const int v13 = (Int64) 0;  lv140 = arrIn1_0[v13]; } ; sh0; }), shIn3_0) >= 0 && mod(({ const Word8 v12 = (Int64) 0 == shIn1_0; Int64 lv140;  if (v12) { lv140 = (Int64) 0; } else { const int v13 = (Int64) 0;  lv140 = arrIn1_0[v13]; } ; sh0; }), shIn3_0) < shIn3_0); mod(({ const Word8 v12 = (Int64) 0 == shIn1_0; Int64 lv140;  if (v12) { lv140 = (Int64) 0; } else { const int v13 = (Int64) 0;  lv140 = arrIn1_0[v13]; } ; sh0; }), shIn3_0); });

;
arrIn3_0[v16];
});
}
;
lv170;
}) + ({
const Word8 v18 = sh1 < (Int64) 1;
double lv260;

if (v18) {
lv260 = (double) (Int64) ({
const Int64 v23 = ({ assert(mod(({ const Word8 v19 = (Int64) 0 == shIn1_0; Int64 lv210;  if (v19) { lv210 = (Int64) 0; } else { const int v20 = (Int64) 0;  lv210 = arrIn1_0[v20]; } ; sh0; }), shIn3_0) >= 0 && mod(({ const Word8 v19 = (Int64) 0 == shIn1_0; Int64 lv210;  if (v19) { lv210 = (Int64) 0; } else { const int v20 = (Int64) 0;  lv210 = arrIn1_0[v20]; } ; sh0; }), shIn3_0) < shIn3_0); mod(({ const Word8 v19 = (Int64) 0 == shIn1_0; Int64 lv210;  if (v19) { lv210 = (Int64) 0; } else { const int v20 = (Int64) 0;  lv210 = arrIn1_0[v20]; } ; sh0; }), shIn3_0); });

;
arrIn3_0[v23];
});
} else {
const Int64 v24 = (Int64) -1 + sh1;
const Int64 v25 = v24 * shIn0_0 + sh0;

lv260 = arrIn0_0[v25];
}
;
lv260;
}) - (double) ({
const Word8 v27 = sh1 < (Int64) 1;
Int64 lv530;

if (v27) {
lv530 = (Int64) ({
const Int64 v32 = ({ assert(mod(({ const Word8 v28 = (Int64) 0 == shIn1_0; Int64 lv300;  if (v28) { lv300 = (Int64) 0; } else { const int v29 = (Int64) 0;  lv300 = arrIn1_0[v29]; } ; sh0; }), shIn4_0) >= 0 && mod(({ const Word8 v28 = (Int64) 0 == shIn1_0; Int64 lv300;  if (v28) { lv300 = (Int64) 0; } else { const int v29 = (Int64) 0;  lv300 = arrIn1_0[v29]; } ; sh0; }), shIn4_0) < shIn4_0); mod(({ const Word8 v28 = (Int64) 0 == shIn1_0; Int64 lv300;  if (v28) { lv300 = (Int64) 0; } else { const int v29 = (Int64) 0;  lv300 = arrIn1_0[v29]; } ; sh0; }), shIn4_0); });

;
arrIn4_0[v32];
});
} else {
const Int64 v33 = (Int64) -1 + sh1;
const Word8 v39 = v33 < ({ const Int64 v34 = (Int64) 0; const Word8 v35 = v34 == shIn1_0; Int64 lv360;  if (v35) { lv360 = v34; } else { lv360 = arrIn1_0[v34]; } ; (Int64) -2 + ({ const Word8 v37 = v34 == shIn2_0; Int64 lv380;  if (v37) { lv380 = v34; } else { lv380 = arrIn2_0[v34]; } ; lv380; }); });
Int64 lv520;

if (v39) {
const Int64 v46 = ({ assert(mod(({ const Int64 v40 = (Int64) 0; const Word8 v41 = v40 == shIn1_0; Int64 lv420;  if (v41) { lv420 = v40; } else { lv420 = arrIn1_0[v40]; } ; sh0 * ((Int64) -2 + ({ const Word8 v43 = v40 == shIn2_0; Int64 lv440;  if (v43) { lv440 = v40; } else { lv440 = arrIn2_0[v40]; } ; lv440; })) + v33; }), shIn5_0) >= 0 && mod(({ const Int64 v40 = (Int64) 0; const Word8 v41 = v40 == shIn1_0; Int64 lv420;  if (v41) { lv420 = v40; } else { lv420 = arrIn1_0[v40]; } ; sh0 * ((Int64) -2 + ({ const Word8 v43 = v40 == shIn2_0; Int64 lv440;  if (v43) { lv440 = v40; } else { lv440 = arrIn2_0[v40]; } ; lv440; })) + v33; }), shIn5_0) < shIn5_0); mod(({ const Int64 v40 = (Int64) 0; const Word8 v41 = v40 == shIn1_0; Int64 lv420;  if (v41) { lv420 = v40; } else { lv420 = arrIn1_0[v40]; } ; sh0 * ((Int64) -2 + ({ const Word8 v43 = v40 == shIn2_0; Int64 lv440;  if (v43) { lv440 = v40; } else { lv440 = arrIn2_0[v40]; } ; lv440; })) + v33; }), shIn5_0); });

lv520 = arrIn5_0[v46];
} else {
lv520 = (Int64) ({
const Int64 v51 = ({ assert(mod(({ const Word8 v47 = (Int64) 0 == shIn1_0; Int64 lv490;  if (v47) { lv490 = (Int64) 0; } else { const int v48 = (Int64) 0;  lv490 = arrIn1_0[v48]; } ; sh0; }), shIn4_0) >= 0 && mod(({ const Word8 v47 = (Int64) 0 == shIn1_0; Int64 lv490;  if (v47) { lv490 = (Int64) 0; } else { const int v48 = (Int64) 0;  lv490 = arrIn1_0[v48]; } ; sh0; }), shIn4_0) < shIn4_0); mod(({ const Word8 v47 = (Int64) 0 == shIn1_0; Int64 lv490;  if (v47) { lv490 = (Int64) 0; } else { const int v48 = (Int64) 0;  lv490 = arrIn1_0[v48]; } ; sh0; }), shIn4_0); });

;
arrIn4_0[v51];
});
}
lv530 = lv520;
}
;
lv530;
}) * v1) / ({
const Int64 v54 = (Int64) 0;

;
1.6e-2 / (double) ({
const Word8 v55 = v54 == shIn2_0;
Int64 lv560;

if (v55) {
lv560 = v54;
} else {
lv560 = arrIn2_0[v54];
}
;
lv560;
}) / (2.0 * (100.0 * (5.0e-4 * (1.6e-2 / (double) ({
const Word8 v57 = v54 == shIn1_0;
Int64 lv580;

if (v57) {
lv580 = v54;
} else {
lv580 = arrIn1_0[v54];
}
;
lv580;
})))));
}) + ((({
const Int64 v59 = max((Int64) 0, shIn0_0 - min((Int64) 1, shIn0_0));
const Word8 v60 = sh0 < v59;
double lv680;

if (v60) {
const Int64 v61 = sh0 + min((Int64) 1, shIn0_0);
const Int64 v62 = sh1 * shIn0_0 + v61;

lv680 = arrIn0_0[v62];
} else {
lv680 = (double) (Int64) ({
const Int64 v67 = ({ assert(mod(({ const Word8 v63 = (Int64) 0 == shIn2_0; Int64 lv650;  if (v63) { lv650 = (Int64) 0; } else { const int v64 = (Int64) 0;  lv650 = arrIn2_0[v64]; } ; sh1 * (Int64) 1 + (sh0 - v59); }), shIn3_0) >= 0 && mod(({ const Word8 v63 = (Int64) 0 == shIn2_0; Int64 lv650;  if (v63) { lv650 = (Int64) 0; } else { const int v64 = (Int64) 0;  lv650 = arrIn2_0[v64]; } ; sh1 * (Int64) 1 + (sh0 - v59); }), shIn3_0) < shIn3_0); mod(({ const Word8 v63 = (Int64) 0 == shIn2_0; Int64 lv650;  if (v63) { lv650 = (Int64) 0; } else { const int v64 = (Int64) 0;  lv650 = arrIn2_0[v64]; } ; sh1 * (Int64) 1 + (sh0 - v59); }), shIn3_0); });

;
arrIn3_0[v67];
});
}
;
lv680;
}) + ({
const Word8 v69 = sh0 < (Int64) 1;
double lv770;

if (v69) {
lv770 = (double) (Int64) ({
const Int64 v74 = ({ assert(mod(({ const Word8 v70 = (Int64) 0 == shIn2_0; Int64 lv720;  if (v70) { lv720 = (Int64) 0; } else { const int v71 = (Int64) 0;  lv720 = arrIn2_0[v71]; } ; sh1 * (Int64) 1 + sh0; }), shIn3_0) >= 0 && mod(({ const Word8 v70 = (Int64) 0 == shIn2_0; Int64 lv720;  if (v70) { lv720 = (Int64) 0; } else { const int v71 = (Int64) 0;  lv720 = arrIn2_0[v71]; } ; sh1 * (Int64) 1 + sh0; }), shIn3_0) < shIn3_0); mod(({ const Word8 v70 = (Int64) 0 == shIn2_0; Int64 lv720;  if (v70) { lv720 = (Int64) 0; } else { const int v71 = (Int64) 0;  lv720 = arrIn2_0[v71]; } ; sh1 * (Int64) 1 + sh0; }), shIn3_0); });

;
arrIn3_0[v74];
});
} else {
const Int64 v75 = (Int64) -1 + sh0;
const Int64 v76 = sh1 * shIn0_0 + v75;

lv770 = arrIn0_0[v76];
}
;
lv770;
}) - (double) ({
const Word8 v78 = sh0 < (Int64) 1;
Int64 lv1040;

if (v78) {
lv1040 = (Int64) ({
const Int64 v83 = ({ assert(mod(({ const Word8 v79 = (Int64) 0 == shIn2_0; Int64 lv810;  if (v79) { lv810 = (Int64) 0; } else { const int v80 = (Int64) 0;  lv810 = arrIn2_0[v80]; } ; sh1; }), shIn4_0) >= 0 && mod(({ const Word8 v79 = (Int64) 0 == shIn2_0; Int64 lv810;  if (v79) { lv810 = (Int64) 0; } else { const int v80 = (Int64) 0;  lv810 = arrIn2_0[v80]; } ; sh1; }), shIn4_0) < shIn4_0); mod(({ const Word8 v79 = (Int64) 0 == shIn2_0; Int64 lv810;  if (v79) { lv810 = (Int64) 0; } else { const int v80 = (Int64) 0;  lv810 = arrIn2_0[v80]; } ; sh1; }), shIn4_0); });

;
arrIn4_0[v83];
});
} else {
const Int64 v84 = (Int64) -1 + sh0;
const Word8 v90 = v84 < ({ const Int64 v85 = (Int64) 0; const Word8 v86 = v85 == shIn2_0; Int64 lv870;  if (v86) { lv870 = v85; } else { lv870 = arrIn2_0[v85]; } ; (Int64) -2 + ({ const Word8 v88 = v85 == shIn1_0; Int64 lv890;  if (v88) { lv890 = v85; } else { lv890 = arrIn1_0[v85]; } ; lv890; }); });
Int64 lv1030;

if (v90) {
const Int64 v97 = ({ assert(mod(({ const Int64 v91 = (Int64) 0; const Word8 v92 = v91 == shIn2_0; Int64 lv930;  if (v92) { lv930 = v91; } else { lv930 = arrIn2_0[v91]; } ; sh1 * ((Int64) -2 + ({ const Word8 v94 = v91 == shIn1_0; Int64 lv950;  if (v94) { lv950 = v91; } else { lv950 = arrIn1_0[v91]; } ; lv950; })) + v84; }), shIn5_0) >= 0 && mod(({ const Int64 v91 = (Int64) 0; const Word8 v92 = v91 == shIn2_0; Int64 lv930;  if (v92) { lv930 = v91; } else { lv930 = arrIn2_0[v91]; } ; sh1 * ((Int64) -2 + ({ const Word8 v94 = v91 == shIn1_0; Int64 lv950;  if (v94) { lv950 = v91; } else { lv950 = arrIn1_0[v91]; } ; lv950; })) + v84; }), shIn5_0) < shIn5_0); mod(({ const Int64 v91 = (Int64) 0; const Word8 v92 = v91 == shIn2_0; Int64 lv930;  if (v92) { lv930 = v91; } else { lv930 = arrIn2_0[v91]; } ; sh1 * ((Int64) -2 + ({ const Word8 v94 = v91 == shIn1_0; Int64 lv950;  if (v94) { lv950 = v91; } else { lv950 = arrIn1_0[v91]; } ; lv950; })) + v84; }), shIn5_0); });

lv1030 = arrIn5_0[v97];
} else {
lv1030 = (Int64) ({
const Int64 v102 = ({ assert(mod(({ const Word8 v98 = (Int64) 0 == shIn2_0; Int64 lv1000;  if (v98) { lv1000 = (Int64) 0; } else { const int v99 = (Int64) 0;  lv1000 = arrIn2_0[v99]; } ; sh1; }), shIn4_0) >= 0 && mod(({ const Word8 v98 = (Int64) 0 == shIn2_0; Int64 lv1000;  if (v98) { lv1000 = (Int64) 0; } else { const int v99 = (Int64) 0;  lv1000 = arrIn2_0[v99]; } ; sh1; }), shIn4_0) < shIn4_0); mod(({ const Word8 v98 = (Int64) 0 == shIn2_0; Int64 lv1000;  if (v98) { lv1000 = (Int64) 0; } else { const int v99 = (Int64) 0;  lv1000 = arrIn2_0[v99]; } ; sh1; }), shIn4_0); });

;
arrIn4_0[v102];
});
}
lv1040 = lv1030;
}
;
lv1040;
}) * v1) / ({
const Int64 v105 = (Int64) 0;

;
1.6e-2 / (double) ({
const Word8 v106 = v105 == shIn1_0;
Int64 lv1070;

if (v106) {
lv1070 = v105;
} else {
lv1070 = arrIn1_0[v105];
}
;
lv1070;
}) / (2.0 * (100.0 * (5.0e-4 * (1.6e-2 / (double) ({
const Word8 v108 = v105 == shIn2_0;
Int64 lv1090;

if (v108) {
lv1090 = v105;
} else {
lv1090 = arrIn2_0[v105];
}
;
lv1090;
})))));
}) + (80.0 - v1) / (5.0e-4 / (100.0 * ({
const Int64 v110 = (Int64) 0;

;
1.6e-2 / (double) ({
const Word8 v111 = v110 == shIn2_0;
Int64 lv1120;

if (v111) {
lv1120 = v110;
} else {
lv1120 = arrIn2_0[v110];
}
;
lv1120;
}) * (1.6e-2 / (double) ({
const Word8 v113 = v110 == shIn1_0;
Int64 lv1140;

if (v113) {
lv1140 = v110;
} else {
lv1140 = arrIn1_0[v110];
}
;
lv1140;
}));
}))))));
}
}


6.17:cc: waiting for nvcc...
6.18:cc: queue: 1.576 s, execute: 1.576 s
     ... /usr/local/cuda-6.0/bin/nvcc -I /home/dpr964/tail/accelerate0.15-hsenv/.hsenv/cabal/share/x86_64-linux-ghc-7.8.4/accelerate-cuda-0.15.0.0/cubits -arch=sm_35 -cubin -o /tmp/accelerate-cuda-31232/dragon31234.cubin --disable-warnings -DNDEBUG -O3 -m64 /tmp/accelerate-cuda-31232/dragon31234.cu
6.18:cc: queue: 1.621 s, execute: 1.621 s
     ... /usr/local/cuda-6.0/bin/nvcc -I /home/dpr964/tail/accelerate0.15-hsenv/.hsenv/cabal/share/x86_64-linux-ghc-7.8.4/accelerate-cuda-0.15.0.0/cubits -arch=sm_35 -cubin -o /tmp/accelerate-cuda-31232/dragon31232.cubin --disable-warnings -DNDEBUG -O3 -m64 /tmp/accelerate-cuda-31232/dragon31232.cu
6.18:cc: persist/save: /home/dpr964/.accelerate/accelerate-cuda-0.15.0.0/cache/3.5/zrtzr189Vz7bU70hEzr168zr248zr204zr219zrFSzrETBzr136zr210
6.18:cc: queue: 1.699 s, execute: 1.699 s
     ... /usr/local/cuda-6.0/bin/nvcc -I /home/dpr964/tail/accelerate0.15-hsenv/.hsenv/cabal/share/x86_64-linux-ghc-7.8.4/accelerate-cuda-0.15.0.0/cubits -arch=sm_35 -cubin -o /tmp/accelerate-cuda-31232/dragon31236.cubin --disable-warnings -DNDEBUG -O3 -m64 /tmp/accelerate-cuda-31232/dragon31236.cu
6.18:cc: queue: 1.737 s, execute: 1.737 s
     ... /usr/local/cuda-6.0/bin/nvcc -I /home/dpr964/tail/accelerate0.15-hsenv/.hsenv/cabal/share/x86_64-linux-ghc-7.8.4/accelerate-cuda-0.15.0.0/cubits -arch=sm_35 -cubin -o /tmp/accelerate-cuda-31232/dragon31233.cubin --disable-warnings -DNDEBUG -O3 -m64 /tmp/accelerate-cuda-31232/dragon31233.cu
6.18:cc: queue: 1.701 s, execute: 1.701 s
     ... /usr/local/cuda-6.0/bin/nvcc -I /home/dpr964/tail/accelerate0.15-hsenv/.hsenv/cabal/share/x86_64-linux-ghc-7.8.4/accelerate-cuda-0.15.0.0/cubits -arch=sm_35 -cubin -o /tmp/accelerate-cuda-31232/dragon31235.cubin --disable-warnings -DNDEBUG -O3 -m64 /tmp/accelerate-cuda-31232/dragon31235.cu
6.18:cc: entry function 'generate' used 9 registers, 0 bytes smem, 0 bytes lmem, 0 bytes cmem
     ... multiprocessor occupancy 100.0% : 2048 threads over 64 warps in 16 blocks
6.18:cc: waiting for nvcc...
6.18:cc: persist/save: /home/dpr964/.accelerate/accelerate-cuda-0.15.0.0/cache/3.5/zr129zrza0zr206szn86zr154zrNULZCBzr175qzr178zr179zr167
6.18:cc: queue: 1.842 s, execute: 1.842 s
     ... /usr/local/cuda-6.0/bin/nvcc -I /home/dpr964/tail/accelerate0.15-hsenv/.hsenv/cabal/share/x86_64-linux-ghc-7.8.4/accelerate-cuda-0.15.0.0/cubits -arch=sm_35 -cubin -o /tmp/accelerate-cuda-31232/dragon31237.cubin --disable-warnings -DNDEBUG -O3 -m64 /tmp/accelerate-cuda-31232/dragon31237.cu
6.18:cc: entry function 'transform' used 8 registers, 0 bytes smem, 0 bytes lmem, 0 bytes cmem
     ... multiprocessor occupancy 100.0% : 2048 threads over 64 warps in 16 blocks
6.18:cc: entry function 'generate' used 9 registers, 0 bytes smem, 0 bytes lmem, 0 bytes cmem
     ... multiprocessor occupancy 100.0% : 2048 threads over 64 warps in 16 blocks
6.18:cc: waiting for nvcc...
6.18:cc: persist/save: /home/dpr964/.accelerate/accelerate-cuda-0.15.0.0/cache/3.5/zr204zr202zr145Szr128zr244zr138Vzr255zr128zrza4zr165zr171zrRSzhzr170
6.18:cc: entry function 'transform' used 10 registers, 0 bytes smem, 0 bytes lmem, 0 bytes cmem
     ... multiprocessor occupancy 100.0% : 2048 threads over 64 warps in 16 blocks
6.19:cc: waiting for nvcc...
6.19:cc: persist/save: /home/dpr964/.accelerate/accelerate-cuda-0.15.0.0/cache/3.5/z20Uzr155zr224zr241Szrbzr206zr249zr251zr252gzr163zr218Pzr179H
6.19:cc: entry function 'generate' used 52 registers, 0 bytes smem, 0 bytes lmem, 0 bytes cmem
     ... multiprocessor occupancy 56.2% : 1152 threads over 36 warps in 12 blocks
8.30:cc: entry function 'generate' used 9 registers, 0 bytes smem, 0 bytes lmem, 0 bytes cmem
     ... multiprocessor occupancy 100.0% : 2048 threads over 64 warps in 16 blocks
8.30:cc: entry function 'transform' used 8 registers, 0 bytes smem, 0 bytes lmem, 0 bytes cmem
     ... multiprocessor occupancy 100.0% : 2048 threads over 64 warps in 16 blocks
8.30:cc: entry function 'generate' used 9 registers, 0 bytes smem, 0 bytes lmem, 0 bytes cmem
     ... multiprocessor occupancy 100.0% : 2048 threads over 64 warps in 16 blocks
8.30:cc: entry function 'transform' used 10 registers, 0 bytes smem, 0 bytes lmem, 0 bytes cmem
     ... multiprocessor occupancy 100.0% : 2048 threads over 64 warps in 16 blocks
8.30:cc: entry function 'generate' used 52 registers, 0 bytes smem, 0 bytes lmem, 0 bytes cmem
     ... multiprocessor occupancy 56.2% : 1152 threads over 36 warps in 12 blocks
10.12:cc: (3.5,"\186\DC1\202\b\165\&3\SIo\193\242\219W\230 \187\155")
#include <accelerate_cuda.h>
extern "C" __global__ void fold(const Int64 shIn0_1, const Int64 shIn0_0, const double* __restrict__ arrIn0_0, const Int64 shOut_0, double* __restrict__ arrOut_0)
{
extern volatile __shared__ double sdata0[];
double x0;
double y0;
double z0;
const Int64 sh1 = shIn0_1;
const Int64 sh0 = shIn0_0;
const int numIntervals = sh1;
const int intervalSize = sh0;
int ix;
int seg;

if (intervalSize == 0 || numIntervals == 0) {
const int gridSize = blockDim.x * gridDim.x;

for (ix = blockDim.x * blockIdx.x + threadIdx.x; ix < shOut_0; ix += gridSize) {
arrOut_0[ix] = -Infinity;
}
return;
}
for (seg = blockIdx.x; seg < numIntervals; seg += gridDim.x) {
const int start = seg * intervalSize;
const int end = start + intervalSize;
const int n = min(end - start, blockDim.x);

if (threadIdx.x >= n)
return;

ix = start - (start & warpSize - 1);
if (ix == start || intervalSize > blockDim.x) {
ix += threadIdx.x;
if (ix >= start) {
y0 = arrIn0_0[ix];
}
if (ix + blockDim.x < end) {
x0 = arrIn0_0[ix + blockDim.x];
if (ix >= start) {
z0 = fmax(y0, x0);
y0 = z0;
} else {
y0 = x0;
}
}
for (ix += 2 * blockDim.x; ix < end; ix += blockDim.x) {
x0 = arrIn0_0[ix];
z0 = fmax(y0, x0);
y0 = z0;
}
} else {
y0 = arrIn0_0[start + threadIdx.x];
}
sdata0[threadIdx.x] = y0;
__syncthreads();
if (threadIdx.x + 512 < n) {
x0 = sdata0[threadIdx.x + 512];
z0 = fmax(y0, x0);
y0 = z0;
}
__syncthreads();
sdata0[threadIdx.x] = y0;
__syncthreads();
if (threadIdx.x + 256 < n) {
x0 = sdata0[threadIdx.x + 256];
z0 = fmax(y0, x0);
y0 = z0;
}
__syncthreads();
sdata0[threadIdx.x] = y0;
__syncthreads();
if (threadIdx.x + 128 < n) {
x0 = sdata0[threadIdx.x + 128];
z0 = fmax(y0, x0);
y0 = z0;
}
__syncthreads();
sdata0[threadIdx.x] = y0;
__syncthreads();
if (threadIdx.x + 64 < n) {
x0 = sdata0[threadIdx.x + 64];
z0 = fmax(y0, x0);
y0 = z0;
}
__syncthreads();
sdata0[threadIdx.x] = y0;
__syncthreads();
if (threadIdx.x < 32) {
if (threadIdx.x + 32 < n) {
x0 = sdata0[threadIdx.x + 32];
z0 = fmax(y0, x0);
y0 = z0;
sdata0[threadIdx.x] = y0;
}
if (threadIdx.x + 16 < n) {
x0 = sdata0[threadIdx.x + 16];
z0 = fmax(y0, x0);
y0 = z0;
sdata0[threadIdx.x] = y0;
}
if (threadIdx.x + 8 < n) {
x0 = sdata0[threadIdx.x + 8];
z0 = fmax(y0, x0);
y0 = z0;
sdata0[threadIdx.x] = y0;
}
if (threadIdx.x + 4 < n) {
x0 = sdata0[threadIdx.x + 4];
z0 = fmax(y0, x0);
y0 = z0;
sdata0[threadIdx.x] = y0;
}
if (threadIdx.x + 2 < n) {
x0 = sdata0[threadIdx.x + 2];
z0 = fmax(y0, x0);
y0 = z0;
sdata0[threadIdx.x] = y0;
}
if (threadIdx.x + 1 < n) {
x0 = sdata0[threadIdx.x + 1];
z0 = fmax(y0, x0);
y0 = z0;
sdata0[threadIdx.x] = y0;
}
}
if (threadIdx.x == 0) {
x0 = -Infinity;
z0 = fmax(y0, x0);
y0 = z0;
arrOut_0[seg] = y0;
}
}
}


10.12:cc: (3.5,":\242\187\236\247\207&)\136w\250\&7\178~tq")
#include <accelerate_cuda.h>
extern "C" __global__ void foldAll(const Int64 shIn0_0, const double* __restrict__ arrIn0_0, const Int64 shOut_0, double* __restrict__ arrOut_0)
{
extern volatile __shared__ double sdata0[];
double x0;
double y0;
double z0;
const Int64 sh0 = shIn0_0;
const int shapeSize = sh0;
const int gridSize = blockDim.x * gridDim.x;
int ix = blockDim.x * blockIdx.x + threadIdx.x;

if (ix < shapeSize) {
y0 = arrIn0_0[ix];
for (ix += gridSize; ix < shapeSize; ix += gridSize) {
x0 = arrIn0_0[ix];
z0 = fmax(y0, x0);
y0 = z0;
}
}
sdata0[threadIdx.x] = y0;
ix = min(shapeSize - blockIdx.x * blockDim.x, blockDim.x);
__syncthreads();
if (threadIdx.x + 512 < ix) {
x0 = sdata0[threadIdx.x + 512];
z0 = fmax(y0, x0);
y0 = z0;
}
__syncthreads();
sdata0[threadIdx.x] = y0;
__syncthreads();
if (threadIdx.x + 256 < ix) {
x0 = sdata0[threadIdx.x + 256];
z0 = fmax(y0, x0);
y0 = z0;
}
__syncthreads();
sdata0[threadIdx.x] = y0;
__syncthreads();
if (threadIdx.x + 128 < ix) {
x0 = sdata0[threadIdx.x + 128];
z0 = fmax(y0, x0);
y0 = z0;
}
__syncthreads();
sdata0[threadIdx.x] = y0;
__syncthreads();
if (threadIdx.x + 64 < ix) {
x0 = sdata0[threadIdx.x + 64];
z0 = fmax(y0, x0);
y0 = z0;
}
__syncthreads();
sdata0[threadIdx.x] = y0;
__syncthreads();
if (threadIdx.x < 32) {
if (threadIdx.x + 32 < ix) {
x0 = sdata0[threadIdx.x + 32];
z0 = fmax(y0, x0);
y0 = z0;
sdata0[threadIdx.x] = y0;
}
if (threadIdx.x + 16 < ix) {
x0 = sdata0[threadIdx.x + 16];
z0 = fmax(y0, x0);
y0 = z0;
sdata0[threadIdx.x] = y0;
}
if (threadIdx.x + 8 < ix) {
x0 = sdata0[threadIdx.x + 8];
z0 = fmax(y0, x0);
y0 = z0;
sdata0[threadIdx.x] = y0;
}
if (threadIdx.x + 4 < ix) {
x0 = sdata0[threadIdx.x + 4];
z0 = fmax(y0, x0);
y0 = z0;
sdata0[threadIdx.x] = y0;
}
if (threadIdx.x + 2 < ix) {
x0 = sdata0[threadIdx.x + 2];
z0 = fmax(y0, x0);
y0 = z0;
sdata0[threadIdx.x] = y0;
}
if (threadIdx.x + 1 < ix) {
x0 = sdata0[threadIdx.x + 1];
z0 = fmax(y0, x0);
y0 = z0;
sdata0[threadIdx.x] = y0;
}
}
if (threadIdx.x == 0) {
if (shapeSize > 0) {
if (gridDim.x == 1) {
x0 = -Infinity;
z0 = fmax(y0, x0);
y0 = z0;
}
arrOut_0[blockIdx.x] = y0;
} else {
arrOut_0[blockIdx.x] = -Infinity;
}
}
}


10.12:cc: (3.5,"\234\ETX\b\253. \197\213\130\130\182#Z\212Y^")
#include <accelerate_cuda.h>
extern "C" __global__ void foldAll(const Int64 shIn0_0, const double* __restrict__ arrIn0_0, const Int64 shOut_0, double* __restrict__ arrOut_0, const Int64 shRec_0, const double* __restrict__ arrRec_0)
{
extern volatile __shared__ double sdata0[];
double x0;
double y0;
double z0;
const Int64 sh0 = shRec_0;
const int shapeSize = sh0;
const int gridSize = blockDim.x * gridDim.x;
int ix = blockDim.x * blockIdx.x + threadIdx.x;

if (ix < shapeSize) {
y0 = arrRec_0[ix];
for (ix += gridSize; ix < shapeSize; ix += gridSize) {
x0 = arrRec_0[ix];
z0 = fmax(y0, x0);
y0 = z0;
}
}
sdata0[threadIdx.x] = y0;
ix = min(shapeSize - blockIdx.x * blockDim.x, blockDim.x);
__syncthreads();
if (threadIdx.x + 512 < ix) {
x0 = sdata0[threadIdx.x + 512];
z0 = fmax(y0, x0);
y0 = z0;
}
__syncthreads();
sdata0[threadIdx.x] = y0;
__syncthreads();
if (threadIdx.x + 256 < ix) {
x0 = sdata0[threadIdx.x + 256];
z0 = fmax(y0, x0);
y0 = z0;
}
__syncthreads();
sdata0[threadIdx.x] = y0;
__syncthreads();
if (threadIdx.x + 128 < ix) {
x0 = sdata0[threadIdx.x + 128];
z0 = fmax(y0, x0);
y0 = z0;
}
__syncthreads();
sdata0[threadIdx.x] = y0;
__syncthreads();
if (threadIdx.x + 64 < ix) {
x0 = sdata0[threadIdx.x + 64];
z0 = fmax(y0, x0);
y0 = z0;
}
__syncthreads();
sdata0[threadIdx.x] = y0;
__syncthreads();
if (threadIdx.x < 32) {
if (threadIdx.x + 32 < ix) {
x0 = sdata0[threadIdx.x + 32];
z0 = fmax(y0, x0);
y0 = z0;
sdata0[threadIdx.x] = y0;
}
if (threadIdx.x + 16 < ix) {
x0 = sdata0[threadIdx.x + 16];
z0 = fmax(y0, x0);
y0 = z0;
sdata0[threadIdx.x] = y0;
}
if (threadIdx.x + 8 < ix) {
x0 = sdata0[threadIdx.x + 8];
z0 = fmax(y0, x0);
y0 = z0;
sdata0[threadIdx.x] = y0;
}
if (threadIdx.x + 4 < ix) {
x0 = sdata0[threadIdx.x + 4];
z0 = fmax(y0, x0);
y0 = z0;
sdata0[threadIdx.x] = y0;
}
if (threadIdx.x + 2 < ix) {
x0 = sdata0[threadIdx.x + 2];
z0 = fmax(y0, x0);
y0 = z0;
sdata0[threadIdx.x] = y0;
}
if (threadIdx.x + 1 < ix) {
x0 = sdata0[threadIdx.x + 1];
z0 = fmax(y0, x0);
y0 = z0;
sdata0[threadIdx.x] = y0;
}
}
if (threadIdx.x == 0) {
if (shapeSize > 0) {
if (gridDim.x == 1) {
x0 = -Infinity;
z0 = fmax(y0, x0);
y0 = z0;
}
arrOut_0[blockIdx.x] = y0;
} else {
arrOut_0[blockIdx.x] = -Infinity;
}
}
}


10.13:cc: waiting for nvcc...
10.13:cc: queue: 1.596 s, execute: 1.595 s
     ... /usr/local/cuda-6.0/bin/nvcc -I /home/dpr964/tail/accelerate0.15-hsenv/.hsenv/cabal/share/x86_64-linux-ghc-7.8.4/accelerate-cuda-0.15.0.0/cubits -arch=sm_35 -cubin -o /tmp/accelerate-cuda-31232/dragon31234.cubin --disable-warnings -DNDEBUG -O3 -m64 /tmp/accelerate-cuda-31232/dragon31234.cu
10.13:cc: queue: 1.674 s, execute: 1.674 s
     ... /usr/local/cuda-6.0/bin/nvcc -I /home/dpr964/tail/accelerate0.15-hsenv/.hsenv/cabal/share/x86_64-linux-ghc-7.8.4/accelerate-cuda-0.15.0.0/cubits -arch=sm_35 -cubin -o /tmp/accelerate-cuda-31232/dragon31236.cubin --disable-warnings -DNDEBUG -O3 -m64 /tmp/accelerate-cuda-31232/dragon31236.cu
10.13:cc: queue: 1.954 s, execute: 1.954 s
     ... /usr/local/cuda-6.0/bin/nvcc -I /home/dpr964/tail/accelerate0.15-hsenv/.hsenv/cabal/share/x86_64-linux-ghc-7.8.4/accelerate-cuda-0.15.0.0/cubits -arch=sm_35 -cubin -o /tmp/accelerate-cuda-31232/dragon31232.cubin --disable-warnings -DNDEBUG -O3 -m64 /tmp/accelerate-cuda-31232/dragon31232.cu
10.13:cc: persist/save: /home/dpr964/.accelerate/accelerate-cuda-0.15.0.0/cache/3.5/zr155zr187z20Uzr230Wzr219zr242zr193ozrSI3zr165zrbzr202zrDC1zr186
10.14:cc: entry function 'fold' used 16 registers, 0 bytes smem, 0 bytes lmem, 0 bytes cmem
     ... multiprocessor occupancy 100.0% : 2048 threads over 64 warps in 2 blocks
10.14:cc: waiting for nvcc...
10.14:cc: persist/save: /home/dpr964/.accelerate/accelerate-cuda-0.15.0.0/cache/3.5/qtz7eUzr178zrza7zr250wzr136ZRzazr207zr247zr236zr187zr242ZC
10.14:cc: entry function 'foldAll' used 14 registers, 0 bytes smem, 0 bytes lmem, 0 bytes cmem
     ... multiprocessor occupancy 100.0% : 2048 threads over 64 warps in 2 blocks
