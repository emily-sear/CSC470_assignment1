(define duple
  (lambda (n x)
  (if(= n 0)
     '()
     (append (duple(- n 1) x)(list x)))))

(duple 9 '(ha ha))


(define invert
  (lambda (lst)
    (if (null? lst)
        '()
        (cons (append (cdr(car lst)) (list(car (car lst)))) (invert (cdr lst))))))
(invert '((a 1) (a 2) (1 b) (2 b)))


(define down
  (lambda (lst)
    (if(null? lst)
       '()
       (cons (list (car lst)) (down(cdr lst))))))
(down '((a) (fine) (idea)))
