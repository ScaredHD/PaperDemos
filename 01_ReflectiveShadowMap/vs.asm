//
// Generated by Microsoft (R) HLSL Shader Compiler 10.1
//
//
// Buffer Definitions: 
//
// cbuffer PassConstant
// {
//
//   float4x4 g_view;                   // Offset:    0 Size:    64 [unused]
//   float4x4 g_invView;                // Offset:   64 Size:    64 [unused]
//   float4x4 g_proj;                   // Offset:  128 Size:    64 [unused]
//   float4x4 g_invProj;                // Offset:  192 Size:    64 [unused]
//   float4x4 g_lightView;              // Offset:  256 Size:    64 [unused]
//   float4x4 g_invLightView;           // Offset:  320 Size:    64 [unused]
//   float4x4 g_lightOrtho;             // Offset:  384 Size:    64 [unused]
//   float4x4 g_invLightOrtho;          // Offset:  448 Size:    64 [unused]
//   float3 g_lightFlux;                // Offset:  512 Size:    12
//   float g_lightZNear;                // Offset:  524 Size:     4 [unused]
//   float3 g_lightDirection;           // Offset:  528 Size:    12 [unused]
//   float g_lightZFar;                 // Offset:  540 Size:     4 [unused]
//   float3 g_lightPos;                 // Offset:  544 Size:    12 [unused]
//   float g_width;                     // Offset:  556 Size:     4 [unused]
//   float g_height;                    // Offset:  560 Size:     4 [unused]
//   float g_rsmSize;                   // Offset:  564 Size:     4 [unused]
//   float g_timeElapsed;               // Offset:  568 Size:     4 [unused]
//
// }
//
// cbuffer ModelConstant
// {
//
//   float4x4 g_model;                  // Offset:    0 Size:    64 [unused]
//   float4x4 g_invModel;               // Offset:   64 Size:    64 [unused]
//   float3 g_albedo;                   // Offset:  128 Size:    12
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// PassConstant                      cbuffer      NA          NA            cb0      1 
// ModelConstant                     cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// NORMAL                   0   xyz         0     NONE   float   xyz 
// DEPTH                    0      w        0     NONE   float      w
// POSITION                 0   xyz         1     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
// SV_Target                1   xyzw        1   TARGET   float   xyzw
// SV_Target                2   xyzw        2   TARGET   float   xyzw
// SV_Target                3   xyzw        3   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed | skipOptimization
dcl_constantbuffer CB0[33], immediateIndexed
dcl_constantbuffer CB1[9], immediateIndexed
dcl_input_ps linear v0.xyz
dcl_input_ps linear v0.w
dcl_input_ps linear v1.xyz
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.xyzw
dcl_temps 1
//
// Initial variable locations:
//   v0.x <- pin.worldNormal.x; v0.y <- pin.worldNormal.y; v0.z <- pin.worldNormal.z; v0.w <- pin.linearDepth; 
//   v1.x <- pin.worldPos.x; v1.y <- pin.worldPos.y; v1.z <- pin.worldPos.z; 
//   o0.x <- depth.x; o0.y <- depth.y; o0.z <- depth.z; o0.w <- depth.w; 
//   o1.x <- normal.x; o1.y <- normal.y; o1.z <- normal.z; o1.w <- normal.w; 
//   o2.x <- flux.x; o2.y <- flux.y; o2.z <- flux.z; o2.w <- flux.w; 
//   o3.x <- worldPos.x; o3.y <- worldPos.y; o3.z <- worldPos.z; o3.w <- worldPos.w
//
#line 66 "D:\Project\VisualStudio\PaperDemos\ReflectiveShadowMap\test.hlsl"
mov r0.xyz, v0.wwww  // r0.z <- d

#line 67
mov o0.xyz, r0.xyzx
mov o0.w, l(1.000000)

#line 70
mov o1.xyz, v0.xyzx
mov o1.w, l(1.000000)

#line 73
mul o2.xyz, cb0[32].xyzx, cb1[8].xyzx
mov o2.w, l(1.000000)

#line 75
mov o3.xyz, v1.xyzx
mov o3.w, l(1.000000)

#line 76
ret 
// Approximately 10 instruction slots used
