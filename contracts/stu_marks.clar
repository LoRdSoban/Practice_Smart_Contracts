
;; Student Marks
;; A smart contract to store marks of students

;; constants
;;
(define-constant ERR_NAME_NOT_FOUND false)
(define-constant ERR_NAME_EXISTS false)
(define-constant MARKS_NOT_EXISTS u101)

;; data maps and vars
;;
(define-map stu_data {name: (string-ascii 20)} {english: uint, maths: uint, science: uint})

;; public functions
;;
(define-public (add_marks (name (string-ascii 20)) (english uint) (maths uint) (science uint)) 

(begin

(asserts! (is-eq (is-none (map-get? stu_data {name: name})) true) (err ERR_NAME_EXISTS))

(ok (map-insert stu_data {name: name} {english: english, maths: maths, science: science} ))

)
)

(define-public (get_marks (name (string-ascii 20))) 

(begin

(asserts! (is-eq (is-some (map-get? stu_data {name: name})) true) (err ERR_NAME_NOT_FOUND))

(ok (map-get? stu_data {name: name}))

)
)



(define-read-only (get_english_marks (name (string-ascii 20))) 

(get english (unwrap! (map-get? stu_data {name: name}) MARKS_NOT_EXISTS))

)