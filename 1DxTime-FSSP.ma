#include(1D-FSSP-Macro.inc)
[top]
components : FSSP

[FSSP]
type : cell
width : 12
height : 29
delay : transport
defaultDelayTime : 100
border : wrapped 
neighbors : FSSP(-1,-1)  FSSP(-1,0)  FSSP(-1,1)
neighbors : 			FSSP(0,0)
initialvalue : 0
initialrowvalue :  0     100000000071
localtransition : FSSP-rule


[FSSP-rule] 

rule : {#macro(L)} 100 { (-1,0) = #macro(D) and (-1,-1) = #macro(L)} 
rule : {#macro(G)} 100 { (-1,0) = #macro(D) and (-1,-1) = #macro(S)}

rule : {#macro(C)} 100 { (-1,0) = #macro(L) and (-1,-1) = #macro(A) and ((-1,1) = #macro(G) or (-1,1) = #macro(S))}
rule : {#macro(G)} 100 { (-1,0) = #macro(L) and (-1,-1) = #macro(A) and (-1,1) = #macro(L)}
rule : {#macro(A)} 100 { (-1,0) = #macro(L) and (-1,-1) = #macro(C) and (-1,1) = #macro(L)}
rule : {#macro(G)} 100 { (-1,0) = #macro(L) and (-1,-1) = #macro(C) and ((-1,1) = #macro(G) or (-1,1) = #macro(S))}
rule : {#macro(C)} 100 { (-1,0) = #macro(L) and (-1,-1) = #macro(G) and (-1,1) = #macro(L)}
rule : {#macro(A)} 100 { (-1,0) = #macro(L) and (-1,-1) = #macro(G) and ((-1,1) = #macro(G) or (-1,1) = #macro(S))}
rule : {#macro(D)} 100 { (-1,0) = #macro(L) and (-1,-1) = #macro(L) and (-1,1) = #macro(D)}
rule : {#macro(D)} 100 { (-1,0) = #macro(L) and (-1,-1) = #macro(S) and (-1,1) = #macro(D)}

rule : {#macro(B)} 100 { (-1,0) = #macro(G) and ((-1,-1) = #macro(A) or (-1,-1) = #macro(B) or (-1,-1) = #macro(G)) and (-1,1) = #macro(L)}
rule : {#macro(A)} 100 { (-1,0) = #macro(G) and (-1,-1) = #macro(C) and ((-1,1) = #macro(G) or (-1,1) = #macro(L) or (-1,1) = #macro(S))}
rule : {#macro(A)} 100 { (-1,0) = #macro(G) and (-1,-1) = #macro(S) and (-1,1) = #macro(L)}
rule : {#macro(F)} 100 { (-1,0) = #macro(G) and ((-1,-1) = #macro(G) or (-1,-1) = #macro(S)) and ((-1,1) = #macro(G) or (-1,1) = #macro(S))}

rule : {#macro(B)} 100 { (-1,0) = #macro(A) and (-1,-1) = #macro(A) and ((-1,1) = #macro(B) or (-1,1) = #macro(G))}
rule : {#macro(C)} 100 { (-1,0) = #macro(A) and (-1,-1) = #macro(B) and ((-1,1) = #macro(C) or (-1,1) = #macro(G) or (-1,1) = #macro(S))}
rule : {#macro(C)} 100 { (-1,0) = #macro(A) and (-1,-1) = #macro(A) and (-1,1) = #macro(C)}
rule : {#macro(C)} 100 { (-1,0) = #macro(A) and (-1,-1) = #macro(G) and ((-1,1) = #macro(C) or (-1,1) = #macro(G) or (-1,1) = #macro(S))}
rule : {#macro(G)} 100 { (-1,0) = #macro(A) and (-1,-1) = #macro(B) and ((-1,1) = #macro(B) or (-1,1) = #macro(L))}
rule : {#macro(G)} 100 { (-1,0) = #macro(A) and ((-1,-1) = #macro(S) or (-1,-1) = #macro(L)) and (-1,1) = #macro(C)}
rule : {#macro(L)} 100 { (-1,0) = #macro(A) and (-1,-1) = #macro(L) and (-1,1) = #macro(B)}
rule : {#macro(F)} 100 { (-1,0) = #macro(A) and (-1,-1) = #macro(A) and (-1,1) = #macro(S)}
rule : {#macro(F)} 100 { (-1,0) = #macro(A) and (-1,-1) = #macro(S) and (-1,1) = #macro(A)}

rule : {#macro(L)} 100 { (-1,0) = #macro(B) and ((-1,-1) = #macro(A) or (-1,-1) = #macro(L)) and (-1,1) = #macro(C)}
rule : {#macro(L)} 100 { (-1,0) = #macro(B) and (-1,-1) = #macro(C) and ((-1,1) = #macro(G) or (-1,1) = #macro(L) or (-1,1) = #macro(S))}
rule : {#macro(A)} 100 { (-1,0) = #macro(B) and ((-1,-1) = #macro(B) or (-1,-1) = #macro(C)) and (-1,1) = #macro(A)}
rule : {#macro(C)} 100 { (-1,0) = #macro(B) and (-1,-1) = #macro(B) and (-1,1) = #macro(C)}
rule : {#macro(C)} 100 { (-1,0) = #macro(B) and (-1,-1) = #macro(G) and ((-1,1) = #macro(A) or (-1,1) = #macro(L))}
rule : {#macro(G)} 100 { (-1,0) = #macro(B) and (-1,-1) = #macro(L) and (-1,1) = #macro(A)}
rule : {#macro(G)} 100 { (-1,0) = #macro(B) and (-1,-1) = #macro(G) and ((-1,1) = #macro(G) or (-1,1) = #macro(S))}
rule : {#macro(G)} 100 { (-1,0) = #macro(B) and ((-1,-1) = #macro(A) or (-1,-1) = #macro(B)) and (-1,1) = #macro(L)}

rule : {#macro(A)} 100 { (-1,0) = #macro(C) and ((-1,-1) = #macro(L) or (-1,-1) = #macro(C)) and (-1,1) = #macro(A)}
rule : {#macro(G)} 100 { (-1,0) = #macro(C) and (-1,-1) = #macro(B) and ((-1,1) = #macro(G) or (-1,1) = #macro(S))}
rule : {#macro(G)} 100 { (-1,0) = #macro(C) and (-1,-1) = #macro(L) and ((-1,1) = #macro(B) or (-1,1) = #macro(G))}
rule : {#macro(B)} 100 { (-1,0) = #macro(C) and (-1,-1) = #macro(A) and ((-1,1) = #macro(B) or (-1,1) = #macro(G) or (-1,1) = #macro(L) or (-1,1) = #macro(S))}
rule : {#macro(B)} 100 { (-1,0) = #macro(C) and (-1,-1) = #macro(G) and ((-1,1) = #macro(B) or (-1,1) = #macro(G) or (-1,1) = #macro(L) or (-1,1) = #macro(S))}
rule : {#macro(B)} 100 { (-1,0) = #macro(C) and (-1,-1) = #macro(C) and ((-1,1) = #macro(B) or (-1,1) = #macro(G))}

rule : {(0,0)} 100 {(-1,0) = #macro(L) or (-1,0) = #macro(F)}

rule : {(-1,0)} 100 { t }