;; Taken from https://guix.gnu.org/cookbook/en/html_node/A-_0060_0060Hello-World_0027_0027-package.html
;;

(define-module (jin packages hello)
  #:use-modules (guix packages)
  #:use-modules (guix download)
  #:use-modules (guix build-system gnu)
  #:use-modules (guix licenses))

(define-public hello
  (package
   (name "hello")
   (version "2.10")
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
