;; ADD INSC  

; CONST TO GR

ADD AL, 5
ADD AH, 10

; CONST TO MEM

NUM1 DB 4
NUM2 DB 3

ADD NUM1, 2
ADD NUM2, 8

; MEM TO GR

ADD AL, NUM1
ADD BL, NUM2

; GR TO GR

ADD AL, AH
ADD AH, BL

; GR TO MEM

ADD NUM1, AL
ADD NUM2, BL











;; SUB INSC

; CONST TO GR

SUB AL, 5
SUB AH, 10

; CONST TO MEM

SUB NUM1, 2
SUB NUM2, 8

; MEM TO GR

SUB AL, NUM1
SUB BL, NUM2

; GR TO GR

SUB AL, AH
SUB AH, BL

; GR TO MEM

SUB NUM1, AL
SUB NUM2, BL