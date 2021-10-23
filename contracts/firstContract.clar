
;; firstContract    


;; (define-public (add (num int) (num1 int))

    
;;     (ok (+ num num1))
        
;; )



(define-data-var varlist (list 10 {name: (string-ascii 50), id: int}) (list {name: "Soban", id: 1} {name: "AbdurRahman", id: 2}))

(define-public (get_name (i uint))

    (ok (get name (element-at (var-get varlist) i)))
    
)

(define-public (get_id (i uint))

    (ok (get id (element-at (var-get varlist) i)))
    
)

