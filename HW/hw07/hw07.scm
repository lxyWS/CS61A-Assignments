(define (square n) (* n n))

(define (pow base exp)
  ; 'YOUR-CODE-HERE
  (if (= exp 0)
      1
      (if (even? exp)
          (square (pow base (/ exp 2)))
          (* base (square (pow base (/ (- exp 1) 2)))))))

(define (repeatedly-cube n x)
  (if (zero? n)
      x
      (let ((y (repeatedly-cube (- n 1) x)))
        (* y y y))))

(define (cddr s) (cdr (cdr s)))

(define (cadr s)
  ; 'YOUR-CODE-HERE
  (car (cdr s)))

(define (caddr s)
  ; 'YOUR-CODE-HERE
  (car (cddr s)))

(define (even-subsets s)
  (if (null? s)
      nil
      (append (even-subsets (cdr s))
              (map (lambda (t) (cons (car s) t))
                   (if (even? (car s))
                       (even-subsets (cdr s))
                       (odd-subsets (cdr s))))
              (if (even? (car s))
                  ;(list (list (car s)))
                  (cons (cons (car s) nil) nil)
                  nil))))

(define (odd-subsets s)
  (if (null? s)
      nil
      (append (odd-subsets (cdr s))
              (map (lambda (t) (cons (car s) t))
                   (if (odd? (car s))
                       (even-subsets (cdr s))
                       (odd-subsets (cdr s))))
              (if (odd? (car s))
                  (list (list (car s)))
                  nil))))
