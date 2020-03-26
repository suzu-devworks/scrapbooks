#!/usr/bin/env powershell

Param([Int]$COUNT=12)

# min <= random < max
$MIN_PASSWORD_LEN = $COUNT
$MAX_PASSWORD_LEN = $COUNT + 1

# % {} is ForEach-Object {} alias like is xargs.
#-Join (Get-Random -Count (Get-Random -min $MIN_PASSWORD_LEN -max $MAX_PASSWORD_LEN) -input 0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z)
#-Join (Get-Random -Count (Get-Random -min $MIN_PASSWORD_LEN -max $MAX_PASSWORD_LEN) -input "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray())
-Join (Get-Random -Count (Get-Random -min $MIN_PASSWORD_LEN -max $MAX_PASSWORD_LEN) -input $((0x30..0x39)+(0x41..0x5a)+(0x61..0x7a) | ForEach-Object {[char]$_}))
#-Join (Get-Random -Count (Get-Random -min $MIN_PASSWORD_LEN -max $MAX_PASSWORD_LEN) -input $((48..57)+(65..90)+(97..122) | ForEach-Object {[char]$_}))
#PS6.0 -Join (Get-Random -Count (Get-Random -min $MIN_PASSWORD_LEN -max $MAX_PASSWORD_LEN) -input $(('0'..'9')+('A'..'Z')+('a'..'z')))
