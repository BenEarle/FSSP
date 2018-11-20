#include(2D-FSSP-Macro.inc)
[top]
components : FSSP

[FSSP]
type : cell
width : 12
height : 14
delay : transport
defaultDelayTime : 100
border : wrapped
neighbors : 			FSSP(-1,0)
neighbors : FSSP(0,-1)  FSSP(0,0)  FSSP(0,1)
neighbors : 			FSSP(1,0) 
initialvalue : 0
initialrowvalue :  0     111111111111
initialrowvalue :  1     100000000001
initialrowvalue :  2     100000000001
initialrowvalue :  3     100000000001
initialrowvalue :  4     100000000001
initialrowvalue :  5     100000000001
initialrowvalue :  6     100000000001
initialrowvalue :  7     100000000001
initialrowvalue :  8     100000000001
initialrowvalue :  9     100000000001
initialrowvalue :  10    100000000071
initialrowvalue :  11    100000000001
initialrowvalue :  12    100000000001
initialrowvalue :  13    111111111111
localtransition : FSSP-rule


[FSSP-rule] 

rule : {#macro(L)} 100 { (0,0) = #macro(D) and (0,-1) = #macro(L)} 
rule : {#macro(L)} 100 { (0,0) = #macro(D) and (0,-1) = #macro(S) and (-1,0) = #macro(L)}
rule : {#macro(Gx)} 100 { (0,0) = #macro(D) and (0,-1) = #macro(S) and (-1,0) = #macro(S)}

rule : {#macro(Cx)} 100 { (0,0) = #macro(L) and (0,-1) = #macro(Ax) and ((0,1) = #macro(Gx) or (0,1) = #macro(S))}
rule : {#macro(Gx)} 100 { (0,0) = #macro(L) and (0,-1) = #macro(Ax) and (0,1) = #macro(L)}
rule : {#macro(Ax)} 100 { (0,0) = #macro(L) and (0,-1) = #macro(Cx) and (0,1) = #macro(L)}
rule : {#macro(Gx)} 100 { (0,0) = #macro(L) and (0,-1) = #macro(Cx) and ((0,1) = #macro(Gx) or (0,1) = #macro(S))}
rule : {#macro(Cx)} 100 { (0,0) = #macro(L) and (0,-1) = #macro(Gx) and (0,1) = #macro(L)}
rule : {#macro(Ax)} 100 { (0,0) = #macro(L) and (0,-1) = #macro(Gx) and ((0,1) = #macro(Gx) or (0,1) = #macro(S))}
rule : {#macro(D)} 100 { (0,0) = #macro(L) and (0,-1) = #macro(L) and (0,1) = #macro(D)}
rule : {#macro(D)} 100 { (0,0) = #macro(L) and (0,-1) = #macro(S) and (0,1) = #macro(D)}
rule : {#macro(D)} 100 { (0,0) = #macro(L) and (0,-1) = #macro(S) and (1,0) = #macro(D)}

rule : {#macro(Bx)} 100 { (0,0) = #macro(Gx) and ((0,-1) = #macro(Ax) or (0,-1) = #macro(Bx) or (0,-1) = #macro(Gx)) and (0,1) = #macro(L)}
rule : {#macro(Ax)} 100 { (0,0) = #macro(Gx) and (0,-1) = #macro(Cx) and ((0,1) = #macro(Gx) or (0,1) = #macro(L) or (0,1) = #macro(S))}
rule : {#macro(Ax)} 100 { (0,0) = #macro(Gx) and (0,-1) = #macro(S) and (0,1) = #macro(L)}
rule : {#macro(Gy)} 100 { (0,0) = #macro(Gx) and ((0,-1) = #macro(Gx) or (0,-1) = #macro(S)) and ((0,1) = #macro(Gx) or (0,1) = #macro(S))}

rule : {#macro(Bx)} 100 { (0,0) = #macro(Ax) and (0,-1) = #macro(Ax) and ((0,1) = #macro(Bx) or (0,1) = #macro(Gx))}
rule : {#macro(Cx)} 100 { (0,0) = #macro(Ax) and (0,-1) = #macro(Bx) and ((0,1) = #macro(Cx) or (0,1) = #macro(Gx) or (0,1) = #macro(S))}
rule : {#macro(Cx)} 100 { (0,0) = #macro(Ax) and (0,-1) = #macro(Ax) and (0,1) = #macro(Cx)}
rule : {#macro(Cx)} 100 { (0,0) = #macro(Ax) and (0,-1) = #macro(Gx) and ((0,1) = #macro(Cx) or (0,1) = #macro(Gx) or (0,1) = #macro(S))}
rule : {#macro(Gx)} 100 { (0,0) = #macro(Ax) and (0,-1) = #macro(Bx) and ((0,1) = #macro(Bx) or (0,1) = #macro(L))}
rule : {#macro(Gx)} 100 { (0,0) = #macro(Ax) and ((0,-1) = #macro(S) or (0,-1) = #macro(L)) and (0,1) = #macro(Cx)}
rule : {#macro(L)} 100 { (0,0) = #macro(Ax) and (0,-1) = #macro(L) and (0,1) = #macro(Bx)}
rule : {#macro(F)} 100 { (0,0) = #macro(Ax) and (0,-1) = #macro(Ax) and (0,1) = #macro(S)}
rule : {#macro(F)} 100 { (0,0) = #macro(Ax) and (0,-1) = #macro(S) and (0,1) = #macro(Ax)}

rule : {#macro(L)} 100 { (0,0) = #macro(Bx) and ((0,-1) = #macro(Ax) or (0,-1) = #macro(L)) and (0,1) = #macro(Cx)}
rule : {#macro(L)} 100 { (0,0) = #macro(Bx) and (0,-1) = #macro(Cx) and ((0,1) = #macro(Gx) or (0,1) = #macro(L) or (0,1) = #macro(S))}
rule : {#macro(Ax)} 100 { (0,0) = #macro(Bx) and ((0,-1) = #macro(Bx) or (0,-1) = #macro(Cx)) and (0,1) = #macro(Ax)}
rule : {#macro(Cx)} 100 { (0,0) = #macro(Bx) and (0,-1) = #macro(Bx) and (0,1) = #macro(Cx)}
rule : {#macro(Cx)} 100 { (0,0) = #macro(Bx) and (0,-1) = #macro(Gx) and ((0,1) = #macro(Ax) or (0,1) = #macro(L))}
rule : {#macro(Gx)} 100 { (0,0) = #macro(Bx) and (0,-1) = #macro(L) and (0,1) = #macro(Ax)}
rule : {#macro(Gx)} 100 { (0,0) = #macro(Bx) and (0,-1) = #macro(Gx) and ((0,1) = #macro(Gx) or (0,1) = #macro(S))}
rule : {#macro(Gx)} 100 { (0,0) = #macro(Bx) and ((0,-1) = #macro(Ax) or (0,-1) = #macro(Bx)) and (0,1) = #macro(L)}

rule : {#macro(Ax)} 100 { (0,0) = #macro(Cx) and ((0,-1) = #macro(L) or (0,-1) = #macro(Cx)) and (0,1) = #macro(Ax)}
rule : {#macro(Gx)} 100 { (0,0) = #macro(Cx) and (0,-1) = #macro(Bx) and ((0,1) = #macro(Gx) or (0,1) = #macro(S))}
rule : {#macro(Gx)} 100 { (0,0) = #macro(Cx) and (0,-1) = #macro(L) and ((0,1) = #macro(Bx) or (0,1) = #macro(Gx))}
rule : {#macro(Bx)} 100 { (0,0) = #macro(Cx) and (0,-1) = #macro(Ax) and ((0,1) = #macro(Bx) or (0,1) = #macro(Gx) or (0,1) = #macro(L) or (0,1) = #macro(S))}
rule : {#macro(Bx)} 100 { (0,0) = #macro(Cx) and (0,-1) = #macro(Gx) and ((0,1) = #macro(Bx) or (0,1) = #macro(Gx) or (0,1) = #macro(L) or (0,1) = #macro(S))}
rule : {#macro(Bx)} 100 { (0,0) = #macro(Cx) and (0,-1) = #macro(Cx) and ((0,1) = #macro(Bx) or (0,1) = #macro(Gx))}



rule : {#macro(Cy)} 100 { (0,0) = #macro(L) and (-1,0) = #macro(Ay) and ((1,0) = #macro(Gy) or (1,0) = #macro(S))}
rule : {#macro(Gy)} 100 { (0,0) = #macro(L) and (-1,0) = #macro(Ay) and (1,0) = #macro(L)}
rule : {#macro(Ay)} 100 { (0,0) = #macro(L) and (-1,0) = #macro(Cy) and (1,0) = #macro(L)}
rule : {#macro(Gy)} 100 { (0,0) = #macro(L) and (-1,0) = #macro(Cy) and ((1,0) = #macro(Gy) or (1,0) = #macro(S))}
rule : {#macro(Cy)} 100 { (0,0) = #macro(L) and (-1,0) = #macro(Gy) and (1,0) = #macro(L)}
rule : {#macro(Ay)} 100 { (0,0) = #macro(L) and (-1,0) = #macro(Gy) and ((1,0) = #macro(Gy) or (1,0) = #macro(S))}
rule : {#macro(D)} 100 { (0,0) = #macro(L) and (-1,0) = #macro(L) and (1,0) = #macro(D)}
rule : {#macro(D)} 100 { (0,0) = #macro(L) and (-1,0) = #macro(S) and (1,0) = #macro(D)}

rule : {#macro(By)} 100 { (0,0) = #macro(Gy) and ((-1,0) = #macro(Ay) or (-1,0) = #macro(By) or (-1,0) = #macro(Gy)) and (1,0) = #macro(L)}
rule : {#macro(Ay)} 100 { (0,0) = #macro(Gy) and (-1,0) = #macro(Cy) and ((1,0) = #macro(Gy) or (1,0) = #macro(L) or (1,0) = #macro(S))}
rule : {#macro(Ay)} 100 { (0,0) = #macro(Gy) and (-1,0) = #macro(S) and (1,0) = #macro(L)}
rule : {#macro(F)} 100 { (0,0) = #macro(Gy) and ((-1,0) = #macro(Gy) or (-1,0) = #macro(S)) and ((1,0) = #macro(Gy) or (1,0) = #macro(S))}

rule : {#macro(By)} 100 { (0,0) = #macro(Ay) and (-1,0) = #macro(Ay) and ((1,0) = #macro(By) or (1,0) = #macro(Gy))}
rule : {#macro(Cy)} 100 { (0,0) = #macro(Ay) and (-1,0) = #macro(By) and ((1,0) = #macro(Cy) or (1,0) = #macro(Gy) or (1,0) = #macro(S))}
rule : {#macro(Cy)} 100 { (0,0) = #macro(Ay) and (-1,0) = #macro(Ay) and (1,0) = #macro(Cy)}
rule : {#macro(Cy)} 100 { (0,0) = #macro(Ay) and (-1,0) = #macro(Gy) and ((1,0) = #macro(Cy) or (1,0) = #macro(Gy) or (1,0) = #macro(S))}
rule : {#macro(Gy)} 100 { (0,0) = #macro(Ay) and (-1,0) = #macro(By) and ((1,0) = #macro(By) or (1,0) = #macro(L))}
rule : {#macro(Gy)} 100 { (0,0) = #macro(Ay) and ((-1,0) = #macro(S) or (-1,0) = #macro(L)) and (1,0) = #macro(Cy)}
rule : {#macro(L)} 100 { (0,0) = #macro(Ay) and (-1,0) = #macro(L) and (1,0) = #macro(By)}
rule : {#macro(F)} 100 { (0,0) = #macro(Ay) and (-1,0) = #macro(Ay) and (1,0) = #macro(S)}
rule : {#macro(F)} 100 { (0,0) = #macro(Ay) and (-1,0) = #macro(S) and (1,0) = #macro(Ay)}

rule : {#macro(L)} 100 { (0,0) = #macro(By) and ((-1,0) = #macro(Ay) or (-1,0) = #macro(L)) and (1,0) = #macro(Cy)}
rule : {#macro(L)} 100 { (0,0) = #macro(By) and (-1,0) = #macro(Cy) and ((1,0) = #macro(Gy) or (1,0) = #macro(L) or (1,0) = #macro(S))}
rule : {#macro(Ay)} 100 { (0,0) = #macro(By) and ((-1,0) = #macro(By) or (-1,0) = #macro(Cy)) and (1,0) = #macro(Ay)}
rule : {#macro(Cy)} 100 { (0,0) = #macro(By) and (-1,0) = #macro(By) and (1,0) = #macro(Cy)}
rule : {#macro(Cy)} 100 { (0,0) = #macro(By) and (-1,0) = #macro(Gy) and ((1,0) = #macro(Ay) or (1,0) = #macro(L))}
rule : {#macro(Gy)} 100 { (0,0) = #macro(By) and (-1,0) = #macro(L) and (1,0) = #macro(Ay)}
rule : {#macro(Gy)} 100 { (0,0) = #macro(By) and (-1,0) = #macro(Gy) and ((1,0) = #macro(Gy) or (1,0) = #macro(S))}
rule : {#macro(Gy)} 100 { (0,0) = #macro(By) and ((-1,0) = #macro(Ay) or (-1,0) = #macro(By)) and (1,0) = #macro(L)}

rule : {#macro(Ay)} 100 { (0,0) = #macro(Cy) and ((-1,0) = #macro(L) or (-1,0) = #macro(Cy)) and (1,0) = #macro(Ay)}
rule : {#macro(Gy)} 100 { (0,0) = #macro(Cy) and (-1,0) = #macro(By) and ((1,0) = #macro(Gy) or (1,0) = #macro(S))}
rule : {#macro(Gy)} 100 { (0,0) = #macro(Cy) and (-1,0) = #macro(L) and ((1,0) = #macro(By) or (1,0) = #macro(Gy))}
rule : {#macro(By)} 100 { (0,0) = #macro(Cy) and (-1,0) = #macro(Ay) and ((1,0) = #macro(By) or (1,0) = #macro(Gy) or (1,0) = #macro(L) or (1,0) = #macro(S))}
rule : {#macro(By)} 100 { (0,0) = #macro(Cy) and (-1,0) = #macro(Gy) and ((1,0) = #macro(By) or (1,0) = #macro(Gy) or (1,0) = #macro(L) or (1,0) = #macro(S))}
rule : {#macro(By)} 100 { (0,0) = #macro(Cy) and (-1,0) = #macro(Cy) and ((1,0) = #macro(By) or (1,0) = #macro(Gy))}


rule : {(0,0)} 100 { t }