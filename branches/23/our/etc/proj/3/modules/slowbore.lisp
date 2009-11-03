;Evaluates the W cloumn
(defun borew (cols)
  (let ((sumofsquares 0))
	(dolist (num cols)
	  (setf sumofsquares (+ sumofsquares (square num))))
	(- 1 (/ (sqrt sumofsquares) (sqrt (length cols))))))

; Implements the BORE pre-processor.
(defun slowbore (dataset &key (percentile .20)
                          (columnnames (mapcar #'header-name (table-columns dataset))))
  (let* ((normalvals)
         (n 0)
         (y 0)
         (fields))
	(dolist (columns (table-columns dataset))
	  (dolist (name columnnames)
		(when (and (typep columns 'numeric) (equal name (header-name columns)))
		  (setf normalvals (fill-normal dataset n))
		  (setf (table-columns dataset)
				(append (table-columns dataset)
						`(,(make-numeric :name y :ignorep nil :classp nil))))
		  (dolist (record (table-all dataset))
			(setf (eg-features record)
				  (append (eg-features record) `(, (normalize normalvals
															  (nth n (eg-features record)))))))
		  (incf y)))
	  (incf n))
	(setf (table-columns dataset)
		  (append (table-columns dataset)
				  `(,(make-numeric :name "w" :ignorep nil :classp nil))))
	(dolist (record (table-all dataset))
	  (dotimes (z y)
		(setf fields (append fields `(,(nth (+ z n) (eg-features record))))))
	  (setf (eg-features record) (append (eg-features record) `(,(borew fields)))))
	(best-of (sort-on dataset (+ n y)) percentile)))
