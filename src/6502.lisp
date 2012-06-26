(in-package #:qeng-ho)

(restas:define-route 6502/reset
    ("" :method :post :content-type "application/json")
  nil)

(restas:define-route 6502/asm
    ("" :method :post :content-type "application/json")
  nil)

(restas:define-route 6502/disasm
    ("" :content-type "application/json")
  nil)

(restas:define-route 6502/step
    ("" :method :post :content-type "application/json")
  nil)

(restas:define-route 6502/execute
    ("" :method :post :content-type "application/json")
  nil)

(restas:define-route 6502/get-byte
    ("" :content-type "application/json")
  nil)

(restas:define-route 6502/get-word
    ("" :content-type "application/json")
  nil)

(restas:define-route 6502/get-range
    ("" :content-type "application/json")
  nil)

(restas:define-route 6502/set-byte
    ("" :method :post :content-type "application/json")
  nil)

(restas:define-route 6502/set-word
    ("" :method :post :content-type "application/json")
  nil)

(restas:define-route 6502/set-range
    ("" :method :post :content-type "application/json")
  nil)

(restas:define-route 6502/load-image
    ("" :method :post :content-type "application/json")
  nil)

(restas:define-route 6502/save-image
    ("" :method :post :content-type "application/json")
  nil)
