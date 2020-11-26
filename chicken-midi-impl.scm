(define (midi-read-file filename)
  (if (file-exists? filename)
      (let* ((size (file-size filename))
             (port (open-binary-input-file filename))
             (file-as-bytevector (read-bytevector size port)))
        (display file-as-bytevector))
      (error "midi-read-file: non-existant file" filename)))