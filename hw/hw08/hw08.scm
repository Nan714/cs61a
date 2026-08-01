(define (ascending? s) 
    (cond 
        ((null? s) #t)
        ((null? (cdr s)) #t)
        ((> (car s) (car (cdr s))) #f)
        (else (ascending? (cdr s)))))

(define (my-filter pred s) 
  (cond 
    ((null? s) nil)
    ((pred (car s)) (cons (car s) (my-filter pred (cdr s))))
    (else (my-filter pred (cdr s)))
    ))
; 好开心！！一次就写成！没有error！而且自己写的和答案一模一样！scheme也是小小练成了呀嘻嘻


(define (interleave lst1 lst2) 
    (cond
        ; ((null? (and lst1 lst2)) '()) 这句话是错的！并且多余！ 如果想表达都是null 那应该（（and (null? lst1) (null? lst2)) '())
        ((null? lst1) lst2)
        ((null? lst2) lst1)
        (else (cons (car lst1) (cons (car lst2) (interleave (cdr lst1) (cdr lst2)))))))

(define (no-repeats s) 
    (if (null? s) s 
        (cons (car s) (no-repeats (filter (lambda (x) (not (= x (car s)))) (cdr s))))))
