#include(1D-FSSP-Macro.inc)
[top]
components : FSSP

[FSSP]
type : cell
width : 11
height : 1
delay : transport
defaultDelayTime : 100
border : wrapped 
neighbors : FSSP(0,-1)  FSSP(0,0)  D-FSSP(0,1)
initialvalue : 0
initialrowvalue :  0     10000700001
localtransition : FSSP-rule


[FSSP-rule] 

rule : {#macro(L)} 100 { (0,0) = #macro(D) and (0,-1) = #macro(L)} 
rule : {#macro(G)} 100 { (0,0) = #macro(D) and (0,-1) = #macro(S)}

rule : {#macro(C)} 100 { (0,0) = #macro(L) and (0,-1) = #macro(A) and ((0,1) = #macro(G) or (0,1) = #macro(S))}
rule : {#macro(G)} 100 { (0,0) = #macro(L) and (0,-1) = #macro(A) and (0,1) = #macro(L)}
rule : {#macro(A)} 100 { (0,0) = #macro(L) and (0,-1) = #macro(C) and (0,1) = #macro(L)}
rule : {#macro(G)} 100 { (0,0) = #macro(L) and (0,-1) = #macro(C) and ((0,1) = #macro(G) or (0,1) = #macro(S))}
rule : {#macro(C)} 100 { (0,0) = #macro(L) and (0,-1) = #macro(G) and (0,1) = #macro(L)}
rule : {#macro(A)} 100 { (0,0) = #macro(L) and (0,-1) = #macro(G) and ((0,1) = #macro(G) or (0,1) = #macro(S))}
rule : {#macro(D)} 100 { (0,0) = #macro(L) and (0,-1) = #macro(L) and (0,1) = #macro(D)}
rule : {#macro(D)} 100 { (0,0) = #macro(L) and (0,-1) = #macro(S) and (0,1) = #macro(D)}

rule : {#macro(B)} 100 { (0,0) = #macro(G) and ((0,-1) = #macro(A) or (0,-1) = #macro(B) or (0,-1) = #macro(G)) and (0,1) = #macro(L)}
rule : {#macro(A)} 100 { (0,0) = #macro(G) and (0,-1) = #macro(C) and ((0,1) = #macro(G) or (0,1) = #macro(L) or (0,1) = #macro(S))}
rule : {#macro(A)} 100 { (0,0) = #macro(G) and (0,-1) = #macro(S) and (0,1) = #macro(L)}
rule : {#macro(F)} 100 { (0,0) = #macro(G) and ((0,-1) = #macro(G) or (0,-1) = #macro(S)) and ((0,1) = #macro(G) or (0,1) = #macro(S))}

rule : {#macro(B)} 100 { (0,0) = #macro(A) and (0,-1) = #macro(A) and ((0,1) = #macro(B) or (0,1) = #macro(G))}
rule : {#macro(C)} 100 { (0,0) = #macro(A) and (0,-1) = #macro(B) and ((0,1) = #macro(C) or (0,1) = #macro(G) or (0,1) = #macro(S))}
rule : {#macro(C)} 100 { (0,0) = #macro(A) and (0,-1) = #macro(A) and (0,1) = #macro(C)}
rule : {#macro(C)} 100 { (0,0) = #macro(A) and (0,-1) = #macro(G) and ((0,1) = #macro(C) or (0,1) = #macro(G) or (0,1) = #macro(S))}
rule : {#macro(G)} 100 { (0,0) = #macro(A) and (0,-1) = #macro(B) and ((0,1) = #macro(B) or (0,1) = #macro(L))}
rule : {#macro(G)} 100 { (0,0) = #macro(A) and ((0,-1) = #macro(S) or (0,-1) = #macro(L)) and (0,1) = #macro(C)}
rule : {#macro(L)} 100 { (0,0) = #macro(A) and (0,-1) = #macro(L) and (0,1) = #macro(B)}
rule : {#macro(F)} 100 { (0,0) = #macro(A) and (0,-1) = #macro(A) and (0,1) = #macro(S)}
rule : {#macro(F)} 100 { (0,0) = #macro(A) and (0,-1) = #macro(S) and (0,1) = #macro(A)}

rule : {#macro(L)} 100 { (0,0) = #macro(B) and ((0,-1) = #macro(A) or (0,-1) = #macro(L)) and (0,1) = #macro(C)}
rule : {#macro(L)} 100 { (0,0) = #macro(B) and (0,-1) = #macro(C) and ((0,1) = #macro(G) or (0,1) = #macro(L) or (0,1) = #macro(S))}
rule : {#macro(A)} 100 { (0,0) = #macro(B) and ((0,-1) = #macro(B) or (0,-1) = #macro(C)) and (0,1) = #macro(A)}
rule : {#macro(C)} 100 { (0,0) = #macro(B) and (0,-1) = #macro(B) and (0,1) = #macro(C)}
rule : {#macro(C)} 100 { (0,0) = #macro(B) and (0,-1) = #macro(G) and ((0,1) = #macro(A) or (0,1) = #macro(L))}
rule : {#macro(G)} 100 { (0,0) = #macro(B) and (0,-1) = #macro(L) and (0,1) = #macro(A)}
rule : {#macro(G)} 100 { (0,0) = #macro(B) and (0,-1) = #macro(G) and ((0,1) = #macro(G) or (0,1) = #macro(S))}
rule : {#macro(G)} 100 { (0,0) = #macro(B) and ((0,-1) = #macro(A) or (0,-1) = #macro(B)) and (0,1) = #macro(L)}

rule : {#macro(A)} 100 { (0,0) = #macro(C) and ((0,-1) = #macro(L) or (0,-1) = #macro(C)) and (0,1) = #macro(A)}
rule : {#macro(G)} 100 { (0,0) = #macro(C) and (0,-1) = #macro(B) and ((0,1) = #macro(G) or (0,1) = #macro(S))}
rule : {#macro(G)} 100 { (0,0) = #macro(C) and (0,-1) = #macro(L) and ((0,1) = #macro(B) or (0,1) = #macro(G))}
rule : {#macro(B)} 100 { (0,0) = #macro(C) and (0,-1) = #macro(A) and ((0,1) = #macro(B) or (0,1) = #macro(G) or (0,1) = #macro(L) or (0,1) = #macro(S))}
rule : {#macro(B)} 100 { (0,0) = #macro(C) and (0,-1) = #macro(G) and ((0,1) = #macro(B) or (0,1) = #macro(G) or (0,1) = #macro(L) or (0,1) = #macro(S))}
rule : {#macro(B)} 100 { (0,0) = #macro(C) and (0,-1) = #macro(C) and ((0,1) = #macro(B) or (0,1) = #macro(G))}

rule : {(0,0)} 100 { t }