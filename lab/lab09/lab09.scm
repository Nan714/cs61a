(define (over-or-under num1 num2) 

  (if (<= num1 num2)
      (if (< num1 num2) -1 0)
      1))
  ; (cond ((< num1 num2) -1)
  ;       ((= num1 num2) 0)
  ;       (else  1)))
(define (make-adder num) (lambda (inc) (+ inc num)))

(define (composed f g) (lambda (x) (f (g x))))

(define (repeat f n) 
  (if (= n 0)
    (lambda (x) x)
    (composed f (repeat f (- n 1))))
)

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) 
;   (let ((mod (modulo (max a b) (min a b))))
;   (if (zero? mod)
;     (min a b)
;     (gcd (min a b) mod))
;   )
; )
  (cond 
    ((zero? a) b)
    ((zero? b) a)
    ((zero? (modulo (max a b) (min a b))) (min a b))
    (else (gcd (min a b) (modulo (max a b) (min a b))))
  )
)