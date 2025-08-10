; (define (over-or-under num1 num2)
;  (if (< num1 num2)
;      -1
;      (if (= num1 num2)
;          0
;          1)))
(define (over-or-under num1 num2)
  (cond 
    ((< num1 num2) -1)
    ((= num1 num2) 0)
    (else          1)))

(define (make-adder num)
  ; 'YOUR-CODE-HERE
  (define (adds x) (+ num x))
  adds)

(define (composed f g)
  ; 'YOUR-CODE-HERE
  (define (cps_func x) (f (g x)))
  cps_func)

(define (repeat f n)
  ; 'YOUR-CODE-HERE
  (define (func x)
    (if (> n 1)
        (f ((repeat f (- n 1)) x))
        (f x)))
  func)

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b)
  ; 'YOUR-CODE-HERE
  (define c (max a b))
  (define d (min a b))
  (if (= (modulo c d) 0)
      d
      (gcd d (modulo c d))))
