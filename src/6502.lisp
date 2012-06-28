(in-package #:qeng-ho)

(defmethod st-json:write-json-element ((element simple-array) stream)
  (st-json:write-json-element (st-json:jso "6502-ram" (coerce element 'list))
                              stream))

(defmethod st-json:write-json-element ((element 6502-cpu:cpu) stream)
  (let ((cpu-jso (st-json:jso "PC" (6502-cpu:cpu-pc element)
                              "SP" (6502-cpu:cpu-sp element)
                              "SR" (6502-cpu:cpu-sr element)
                              "AR" (6502-cpu:cpu-ar element)
                              "XR" (6502-cpu:cpu-xr element)
                              "YR" (6502-cpu:cpu-yr element)
                              "CC" (6502-cpu:cpu-cc element))))
    (st-json:write-json-element (st-json:jso "6502-cpu" cpu-jso) stream)))

(restas:define-route 6502/init
    ("" :method :post :content-type "application/json")
  nil)

(restas:define-route 6502/exit
    ("" :method :post :content-type "application/json")
  nil)

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
