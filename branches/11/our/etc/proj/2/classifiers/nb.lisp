(defun nb (train test &key (stream t))
  (let* ((acc 0)
	(all  (table-all test))
	(max  (length all))
        (trueClass (make-list 4 :initial-element 0))
        (falseClass (make-list 4 :initial-element 0)))
    (dolist (one all (/ acc max))
      (let* ((got     (bayes-classify (eg-features one) (xindex train)))
	     (want    (eg-class one))
	     (success (eql got want)))
        (if success (if (equal want 'FALSE)
                             (progn
                               (incf (first trueClass))
                               (incf (fourth falseClass)))
                             (progn
                               (incf (first falseClass))
                               (incf (fourth trueClass))))
            (if (equal got 'TRUE)
                (progn
                  (incf (third trueClass))
                  (incf (second falseClass)))
                (progn
                  (incf (third falseClass))
                  (incf (second trueClass)))))))
    (values trueClass falseClass)))
                         
	

(defun nb-simple (train test &key (stream t))
  (xindex train)
  (dolist (one (table-all test))
    (let* ((got     (bayes-classify (eg-features one) train))
	   (want    (eg-class one))
	   (success (eql got want)))
      (format stream "~a ~a ~a~%"  got want (if (eql got want) "   " "<--")))))

(defun bayes-classify (one tbl &optional (m 2) (k 1))
  (let* ((classes        (klasses tbl))
         (nclasses       (nklasses tbl))
         (n              (f        tbl))
	 (classi         (table-class tbl))
         (like           most-negative-fixnum)
         (classification (first classes)))
    (dolist (class classes)
      (let* ((prior (/ (+ (f tbl class) k)
                       (+  n (* k nclasses))))
             (tmp   (log prior)))
        (doitems (feature i one)
          (unless (= classi i)
            (unless (unknownp feature)
              (let ((delta (/ (+ (f tbl class i feature)
                                 (* m prior))
                              (+ (f tbl class) m))))
                (incf tmp (log delta))))))
        (when (> tmp like)
          (setf like tmp
                classification class))))
    classification))

(defun stress-test-nb (&optional (repeats 10000))
  (with-output-to-string (str)
    (dotimes (i repeats t)
      (random-test-nb1 0.2 str)))
  t)

  (defun make-weather (eg)
    (data :name    'weather 
	  :columns '(forecast temp humidity windy play)  
	  :egs      eg))
  
(let 
    ((egs     '((sunny    hot  high   FALSE skip) 
		(sunny    hot  high   TRUE  skip)
		(rainy    cool normal TRUE  skip)     
		(sunny    mild high   FALSE skip)
		(overcast cool normal TRUE  play)
		(overcast hot  high   FALSE play)
		(rainy    mild high   FALSE play)
		(rainy    cool normal FALSE play)
		(sunny    cool normal FALSE play)
		(rainy    mild normal FALSE play)
		(rainy    mild high   TRUE  skip)
		(sunny    mild normal TRUE  play)
		(overcast mild high   TRUE  play)
		(overcast hot  normal FALSE play))))
  
  (defun random-test-nb1 (&optional (n 0.3) (str t))
    (let* (train 
	   test
	   (k         (* n (length egs))))
      (dolist (eg (shuffle egs))
	(if (> (decf k) 0)
	    (push eg test)
	    (push eg train)))
      (nb (make-weather train)
	  (make-weather test)
	  :stream str)))
  
  (defun self-test-nb ()
    (nb (make-weather egs) 
	(make-weather egs)))
 
  (defun self-simple-test-nb ()
    (nb-simple  (make-weather egs) 
		(make-weather egs)))

 )
