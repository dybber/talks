pi ← { 
 x ← ?⍵⍴0
 y ← ?⍵⍴0
 dists ← (x*2) + y*2
 4×(+/1>dists)÷⍵
}

pi 1000000
