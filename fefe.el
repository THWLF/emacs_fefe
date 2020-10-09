;;; fefe.el -- View fefe Blog from emacs
(require 'eww)

;Loads Today Fefe posts
(defun fefe-today ()
  (interactive)	
  (eww "https://blog.fefe.de/"))


;Loads Current Months Fefe posts
(defun fefe-current-month ()
 (interactive)
 (eww  (concat "https://blog.fefe.de/?mon=" (format-time-string "%Y%m")))
 )

;Loads Selected Months

;Loads Selected Day


;Search For a special Keyword
(defun fefe-search ()
  (interactive)
  (eww  (concat "https://blog.fefe.de/?q=" (read-string "Enter Keyword(Case Sensitive):")))
)




;  (defun calendar-insert-date ()
;  "Capture the date at point, exit the Calendar, insert the date."
;  (interactive)
;  (seq-let (month day year) (save-match-data (calendar-cursor-to-date))
;    (calendar-exit)
;   (insert (format "%d-%02d-%02d" year month day))))
;
;(define-key calendar-mode-map (kbd "RET") 'calendar-insert-date)
