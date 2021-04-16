;; This file is just for my learning purpose. Follow the tutorial
;; at the end of this profile to fetch hello-9.99 from this
;; channel.

(define-module (jin packages hello)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system gnu)
  #:use-module (guix licenses))

(define-public hello
  (package
    (name "hello")
    (version "9.99")
    (source (origin
              (method url-fetch)
              (uri (string-append "mirror://gnu/hello/hello-" version
                                  ".tar.gz"))
              (sha256
               (base32
                "0ssi1wpaf7plaswqqjwigppsg5fyh99vdlb9kzl7c9lng89ndq1i"))))
    (build-system gnu-build-system)
    (synopsis "Hello, GNU world: An example GNU package")
    (description
     "GNU Hello prints the message \"Hello, world!\" and then exits.  It
serves as an example of standard GNU coding practices.  As such, it supports
command-line arguments, multiple languages, and so on.")
    (home-page "https://www.gnu.org/software/hello/")
    (license gpl3+)))

;; TUTORIAL
;;
;; ;; Put the following in test.scm
;; (use-modules
;;  (guix channels)
;;  (guix inferior))

;; (packages->manifest
;;  (let* ((channels
;;          (list (channel
;;                 (name 'juix)
;;                 (url "https://github.com/jcguu95/juix"))
;;                (channel
;;                 (name 'guix) (url "https://git.savannah.gnu.org/git/guix.git")
;;                 (commit "a5bbd38fd131282e928144e869dcdf1e09259085"))))
;;         (inferior (inferior-for-channels channels)))
;;    (lookup-inferior-packages inferior "hello" "9.99")))

;; ;; Put the following in `~/.config/guix/channels.scm`
;; (cons* (channel
;;         (name 'juix)
;;         (url "https://github.com/jcguu95/juix"))
;;        %default-channels)

;; ;; Run `guix pull` as the user, and then source the profile.
;; ;; Run `$ guix package -m test.scm -p ./test/profile`.
