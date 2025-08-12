(define (curry-cook formals body)
  ; 'YOUR-CODE-HERE
  (list 'lambda
        `(,(car formals))
        (if (null? (cdr formals))
            body
            (curry-cook (cdr formals) body))))

(define (curry-consume curry args)
  ; 'YOUR-CODE-HERE
  (if (null? args)
      curry
      (curry-consume (curry (car args)) (cdr args))))

(define-macro (switch expr options)
  (switch-to-cond (list 'switch expr options)))

(define (switch-to-cond switch-expr)
  (cons 'cond
        (map (lambda (option)
               (cons (list 'equal?
                           (car (cdr switch-expr))
                           (car option))
                     (cdr option)))
             (car (cdr (cdr switch-expr))))))
