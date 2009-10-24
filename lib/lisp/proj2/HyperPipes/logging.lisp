(defun logRow(HyperPipes attributeValues)
  ;(print HyperPipes)
  ;(print (last attributeValues))
  (let ((pipe (FindPipe HyperPipes (car (last attributeValues)))))
    ;(print pipe)
    (if (> (HyperPipe-histIndex pipe) 99)
        (setf (HyperPipe-histIndex pipe) 0)
        )
    (setf (aref (HyperPipe-hist pipe) (HyperPipe-histIndex pipe)) attributeValues)
    (incf (HyperPipe-logged pipe))
    )
  )

(defun getRows(pipe)
  (let ((returnSet ())
        (index 0))
    (setf index (HyperPipe-histIndex pipe))
    (incf index 50)
    (dotimes (i 50)
      (if (> index 99)
          (setf index (- index 100))
          )
      (setf returnSet (append returnSet (list (aref (HyperPipe-hist pipe) index))))
      (incf index)
      )
    )
  )

(defun logResult(HyperPipes ReturnedClasses Actual)
  (dolist (currentClass ReturnedClasses)
    
    (let ((pipe (FindPipe HyperPipes currentClass)))
      (incf (HyperPipe-Guessed pipe))
      (if (equal currentClass Actual)
          (incf (HyperPipe-CorrectGuess pipe))
          )
      )
    )
  )

(defun detectOverfit(HyperPipes &optional (Interval 30) (Cutoff .35) (outputFile t))
  (dolist (currentPipe HyperPipes)
    (if (> (HyperPipe-Guessed currentPipe) Interval)
        (progn

          (if (< (/ (HyperPipe-CorrectGuess currentPipe) (HyperPipe-Guessed currentPipe)) Cutoff)
              (progn
;                (reset-relearn HyperPipes currentPipe outputFile)
		 (reset-pipe HyperPipes currentPipe outputFile)
                
                )
              )


          (setf (HyperPipe-Guessed currentPipe) 0)
          (setf (HyperPipe-CorrectGuess currentPipe) 0)
          )
        )
    )
  )

(defun reset-relearn(HyperPipes pipe outputFile)
  (if (> (HyperPipe-logged pipe) 100)
      (progn
        (format outputFile "#I did it I did it, yay! for ~a~%" (HyperPipe-class pipe))
        ;clear everything we learned
        (dolist (currentBound (HyperPipe-numericBounds pipe))
          (setf (NumericBound-min currentBound) most-positive-fixnum)
          (setf (NumericBound-max currentBound) most-negative-fixnum)
          (setf (NumericBound-mean currentBound) nil)
          (setf (NumericBound-numOccured currentBound) 0)
          (setf (NumericBound-nonNumeric currentBound) (list))
          )

                                        ;learn 100 oldest rows recorded
        (dolist (currentAttributes (getRows pipe))
          (if (not (null currentAttributes))
              (setf MyHyperPipes (AddExperienceNew MyHyperPipes (make-ExperienceInstance :attributes (remove-nth (- (length currentAttributes) 1) currentAttributes) :class (car (last attributeValues)))))
              )
          )
        )
      )
  )

(defun reset-pipe(HyperPipes pipe outputFile)
        (format outputFile "#I did it I did it, yay! for ~a~%" (HyperPipe-class pipe))
        ;clear everything we learned
        (dolist (currentBound (HyperPipe-numericBounds pipe))
          (setf (NumericBound-min currentBound) most-positive-fixnum)
          (setf (NumericBound-max currentBound) most-negative-fixnum)
          (setf (NumericBound-mean currentBound) nil)
          (setf (NumericBound-numOccured currentBound) 0)
          (setf (NumericBound-nonNumeric currentBound) (list))
          )

                                        ;learn 100 oldest rows recorded
     )

