;; Taken from https://guix.gnu.org/cookbook/en/html_node/A-_0060_0060Hello-World_0027_0027-package.html
;;

;; (define-module (jin packages hello)
;;   #:use-modules (guix packages)
;;   #:use-modules (guix download)
;;   #:use-modules (guix build-system gnu)
;;   #:use-modules (guix licenses))

(define-module (jin packages hello)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix git-download)
  #:use-module (guix hg-download)
  #:use-module (guix gexp)
  #:use-module (guix monads)
  #:use-module (guix store)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system emacs)
  #:use-module (guix build-system glib-or-gtk)
  #:use-module (guix build-system trivial)
  #:use-module (gnu packages)
  #:use-module (gnu packages audio)
  #:use-module (gnu packages bash)
  #:use-module (gnu packages shells)
  #:use-module (gnu packages chez)
  #:use-module (gnu packages code)
  #:use-module (gnu packages gawk)
  #:use-module (gnu packages guile)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages gnome)
  #:use-module (gnu packages ncurses)
  #:use-module (gnu packages python)
  #:use-module (gnu packages haskell)
  #:use-module (gnu packages tex)
  #:use-module (gnu packages texinfo)
  #:use-module (gnu packages libevent)
  #:use-module (gnu packages tcl)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages xorg)
  #:use-module (gnu packages lesstif)
  #:use-module (gnu packages image)
  #:use-module (gnu packages mail)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages imagemagick)
  #:use-module (gnu packages w3m)
  #:use-module (gnu packages wget)
  #:use-module (gnu packages autotools)
  #:use-module (gnu packages base)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages glib)
  #:use-module (gnu packages acl)
  #:use-module (gnu packages package-management)
  #:use-module (gnu packages password-utils)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages pdf)
  #:use-module (gnu packages scheme)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages xiph)
  #:use-module (gnu packages mp3)
  #:use-module (gnu packages gettext)
  #:use-module (gnu packages fribidi)
  #:use-module (gnu packages gd)
  #:use-module (gnu packages fontutils)
  #:use-module (gnu packages ocaml)
  #:use-module (gnu packages emacs)
  #:use-module (gnu packages emacs-xyz)
  #:use-module (gnu packages xdisorg)
  #:use-module (gnu packages haskell-xyz)
  ;; #:use-module (wigust packages password-utils)
  #:use-module (guix utils)
  #:use-module (guix build emacs-utils)
  #:use-module (srfi srfi-1)
  #:use-module (ice-9 match))

;; (define-public hellohello
;;   (package
;;     (name "hellohello")
;;     (version "2.10")
;;     (source (origin
;;               (method url-fetch)
;;               (uri (string-append "mirror://gnu/hello/hello-" version
;;                                   ".tar.gz"))
;;               (sha256
;;                (base32
;;                 "0ssi1wpaf7plaswqqjwigppsg5fyh99vdlb9kzl7c9lng89ndq1i"))))
;;     (build-system gnu-build-system)
;;     (synopsis "Hello, GNU world: An example GNU package")
;;     (description
;;      "GNU Hello prints the message \"Hello, world!\" and then exits.  It
;; serves as an example of standard GNU coding practices.  As such, it supports
;; command-line arguments, multiple languages, and so on.")
;;     (home-page "https://www.gnu.org/software/hello/")
;;     (license gpl3+)))

(define-public emacs-company-tern
  (package
    (name "emacs-company-tern")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (string-append
             "https://github.com/proofit404/company-tern/archive/"
             "v" version ".tar.gz"))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32
         "1qgrgnbajgnsnx4az4ajnlrhc73q0xxjikk617nf3cs87x4772a6"))))
    (build-system emacs-build-system)
    (propagated-inputs
     `(("emacs-company" ,emacs-company)
       ("emacs-tern" ,emacs-tern)
       ("emacs-dash" ,emacs-dash)
       ("emacs-s" ,emacs-s)))
    (home-page "https://github.com/proofit404/company-tern")
    (synopsis "Tern backend for company-mode")
    (description "This package provides Tern backend for Company.")
    (license license:gpl3+)))
