;;; package: --- A beautiful theme inspired by neon lights -*- lexical-binding: t -*-

;;; Commentary:
;; A neon theme

;;; Code:

(eval-when-compile
  (require 'cl-lib))

(require 'autothemer)

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))

(autothemer-deftheme
 mito-laser "A neon inspired theme"

 ((((class color) (min-colors #xFFFFFF))        ; col 1 GUI/24bit
   ((class color) (min-colors #xFF)))           ; col 2 Xterm/256

  ;; Define our color palette
  (white    "#eee8d5" "#eee8d5")
  (line     "#2b215f" "#2b215f")
  (darkest  "#120e28" "#120e28")
  (darker   "#1d1741" "#1d1741")
  (black    "#201947" "#201947")
  (black2   "#271e56" "#271e56")
  (one      "#2e2466" "#2e2466")
  (one2     "#352975" "#352975")
  (one3     "#3e318a" "#3e318a")
  (dark     "#322880" "#322880")
  (grey     "#423494" "#423494")
  (grey2    "#4c3ca9" "#4c3ca9")
  (grey3    "#5442bb" "#5442bb")
  (light    "#6d5dc6" "#6d5dc6")
  (purple   "#7E74CC" "#7E74CC")
  (purple2  "#9790d6" "#7E74CC")
  (purple3  "#b1ace0" "#7E74CC")
  (red      "#ff047d" "#ff047d")
  (red-soft "#cc7d74" "#ff047d")
  (baby     "#ff1d8a" "#ff1d8a")
  (pink     "#e61d7e" "#e61d7e")
  (green    "#74cc7d" "#859900")
  (green2   "#859900" "#859900")
  (vibrant  "#b2c62d" "#b2c62d")
  (nord     "#197ec5" "#197ec5")
  (blue     "#268bd2" "#268bd2")
  (yellow   "#b58900" "#b58900")
  (lemon    "#c2cb74" "#b58900")
  (sun      "#c4980f" "#c4980f")
  (orange   "#c85106" "#c85106")
  (teal     "#74c5aa" "#74c5aa")
  (cyan     "#37dcf6" "#37dcf6")
  )

 ;; Customize faces
 (
  (default                      (:background black :foreground white))
  (fringe                       (:background black))
  (hl-line                      (:background darker))
  (header-line                  (:background darker))
  (line-number                  (:foreground grey2))
  (line-number-current-line     (:background darker :foreground white :weight 'semi-bold))
  (region                       (:background one))

  (mode-line                    (:background line :foreground purple :box (:line-width 1 :color one3)))
  (mode-line-inactive           (:background black2 :foreground purple))
  (mode-line-active             (:inherit 'mode-line))
  (mode-line-highlight          (:foreground purple3))
  (mode-line-buffer-id          (:foreground nord))

  (vertical-border              (:foreground one))
  (link                         (:foreground blue))
  (custom-link                  (:foreground blue))
  (warning                      (:foreground sun))
  (error                        (:foreground pink))
  (success                      (:foreground teal))

  (vertico-posframe-border      (:background darkest))
  (vertico-posframe             (:background darkest :foreground purple3))
  (vertico-current              (:inherit 'region))

  (corfu-current                (:inherit 'vertico-current))
  (corfu-annotations            (:background darkest))
  (corfu-default                (:background darkest :foreground white))
  (corfu-border                 (:background darkest))
  (corfu-popupinfo              (:background darkest :foreground blue :box (:line-width 1 :color black)))
  
  (eldoc-box-body               (:inherit 'vertico-posframe))
  (eldoc-box-border             (:background black2))

  (orderless-match-face-0                        (:foreground pink :weight 'bold))
  (orderless-match-face-1                        (:foreground nord :weight 'bold))
  (orderless-match-face-2                        (:foreground sun :weight 'bold))
  (orderless-match-face-3                        (:foreground cyan :weight 'bold))

  (minibuffer-prompt-end                         (:foreground purple :background darkest))
  (minibuffer-prompt                             (:foreground baby :background darkest :bold t))

  (window-stool-face (:background one2))

  ;;treemacs
  (treemacs-window-background-face               (:background darker))
  (treemacs-directory-face                       (:foreground nord))
  (treemacs-file-face                            (:foreground nord))
  ;; (treemacs-nerd-icons-file-face                 (:inherit 'treemacs-file-face))
  ;; (treemacs-nerd-icons-root-face                 (:inherit 'treemacs-directory-face))
  (treemacs-git-added-face                       (:foreground teal))
  (treemacs-git-renamed-face                     (:foreground pink))
  (treemacs-git-ignored-face                     (:foreground grey3 :italic t))
  (treemacs-git-unmodified-face                  (:foreground white))
  (treemacs-git-untracked-face                   (:foreground vibrant))
  (treemacs-git-modified-face                    (:foreground purple3 :italic t))

  (elisp-shorthand-font-lock-face                (:foreground pink))

  (font-lock-bracket-face                        (:foreground blue))
  (font-lock-builtin-face                        (:foreground blue))
  (font-lock-comment-delimiter-face              (:inherit 'font-lock-comment-face))
  (font-lock-comment-face                        (:foreground purple2 :italic t :weight 'thin))
  (font-lock-constant-face                       (:foreground yellow :weight 'semi-bold))
  (font-lock-delimiter-face                      (:foreground baby))
  (font-lock-doc-face                            (:inherit 'font-lock-comment-face))
  (font-lock-doc-markup-face                     (:inherit 'font-lock-doc-face))
  (font-lock-function-call-face                  (:foreground blue))
  (font-lock-function-name-face                  (:foreground purple :italic t))
  (font-lock-keyword-face                        (:foreground light :weight 'bold))
  (font-lock-misc-punctuation-face               (:foreground sun))
  (font-lock-negation-char-face                  (:foreground pink))
  (font-lock-number-face                         (:foreground purple :bold t))
  (font-lock-operator-face                       (:foreground teal))
  (font-lock-preprocessor-face	                 (:foreground orange))
  (font-lock-property-name-face                  (:foreground teal))
  (font-lock-property-use-face                   (:foreground purple3))
  (font-lock-punctuation-face                    (:foreground orange :weight 'normal))
  (font-lock-reference-face                      (:foreground yellow))
  (font-lock-regexp-regex-face                   (:foreground pink))
  (font-lock-regexp-grouping-backslash           (:foreground pink))
  (font-lock-regexp-grouping-construct           (:foreground pink))
  (font-lock-string-face                         (:foreground vibrant :italic t :weight 'normal))
  (font-lock-type-face                           (:foreground pink :weight 'semi-bold))
  (font-lock-variable-name-face                  (:foreground purple3))
  (font-lock-variable-use-face                   (:foreground teal))
  (font-lock-warning-face                        (:foreground sun))

  (swift-ts-face-annotation                      (:foreground teal))
  (swift-ts-face-annotation.builtin              (:inherit 'font-lock-builtin-face))
  (swift-ts-face-annotation.type                 (:foreground green))

  (swift-ts-face-punctuation.type                (:inherit 'font-lock-punctuation-face))
  (swift-ts-face-compiler                        (:inherit 'font-lock-builtin-face))
  (swift-ts-face-constructor.call                (:inherit 'font-lock-function-call-face))

  (swift-ts-face-face-label                      (:foreground green))
  (swift-ts-face-method.call                     (:inherit 'font-lock-function-call-face))
  (swift-ts-face-method.name                     (:inherit 'font-lock-function-name-face))
  (swift-ts-face-keyword.annotation              (:foreground pink :background green :weight 'bold))
  (swift-ts-face-keyword.type                    (:inherit 'font-lock-type-face))
  (swift-ts-face-variable.synthesized            (:foreground nord))

  (eglot-inlay-hint-face (:foreground purple3 :background black2 :height 0.8 :weight 'normal))
  (eglot-parameter-hint-face (:inherit 'eglot-inlay-hint-face))
  (eglot-type-hint-face (:inherit 'eglot-inlay-hint-face))

  ;;; Rainbow-delimiters
  (rainbow-delimiters-mismatched-face            (:foreground red))
  (rainbow-delimiters-unmatched-face             (:foreground orange))
  (rainbow-delimiters-base-error-face            (:foreground red))
  (rainbow-delimiters-base-face                  (:foreground vibrant))

  (rainbow-delimiters-depth-1-face               (:foreground red))
  (rainbow-delimiters-depth-2-face               (:foreground purple3))
  (rainbow-delimiters-depth-3-face               (:foreground blue))
  (rainbow-delimiters-depth-4-face               (:foreground teal))
  (rainbow-delimiters-depth-5-face               (:foreground light))
  (rainbow-delimiters-depth-6-face               (:foreground nord))
  (rainbow-delimiters-depth-7-face               (:foreground baby))
  (rainbow-delimiters-depth-8-face               (:foreground orange))
  (rainbow-delimiters-depth-9-face               (:foreground blue))

  (punch-line-evil-normal-face  (:foreground white :background nord :weight 'bold))
  (punch-line-evil-visual-face  (:foreground white :background light :weight 'bold))
  (punch-line-evil-replace-face (:foreground white :background red :weight 'bold))
  (punch-line-evil-insert-face  (:foreground darker :background teal :weight 'bold))
  (punch-line-project-face      (:foreground purple :weight 'bold))
  (punch-line-buffer-name-face  (:foreground white :weight 'bold))
  (punch-line-time-face         (:foreground purple))
  (punch-line-major-mode-face   (:foreground light))
  (punch-line-separator-face    (:foreground one3 :weight 'thin))

  (term                     (:background darkest :foreground purple))
  (term-color-black         (:background darkest :foreground darkest))
  (term-color-yellow        (:background yellow :foreground yellow))
  (term-color-blue          (:background nord :foreground nord))
  (term-color-green         (:background green :foreground green))
  (term-color-red           (:background red :foreground red))

  (ansi-color-bright-cyan       (:background cyan :foreground cyan))
  (ansi-color-blue              (:background blue :foreground blue))
  (ansi-color-bright-magenta    (:background red :foreground red))

  (evil-mc-region-face          (:background teal :foreground darkest))
  (evil-mc-cursor-default-face  (:background blue :foreground darkest))
  (evil-mc-cursor-bar-face      (:background darkest :foreground teal))
  (evil-mc-cursor-hbar-face     (:background teal :foreground teal))

  (evil-ex-lazy-highlight        (:background baby :foreground darkest :italic t))

  (highlight-symbol-face        (:foreground lemon :weight 'bold :underline t))

  (smerge-base		        (:background purple))
  (smerge-markers		(:background darker :foreground purple))

  (smerge-upper			(:background black2))
  (smerge-lower			(:background black2))
  (smerge-refined-change        (:background nord))
  (smerge-refined-removed	(:background orange :strike-through t))
  (smerge-refined-added 	(:background green :foreground darkest))

  (markdown-header-delimiter-face (:foreground purple))
  (markdown-header-face-1 (:height 1.15 :foreground red :weight 'bold))
  (markdown-header-face-2 (:height 1.12 :foreground pink :weight 'semi-bold))
  (markdown-header-face-3 (:height 1.1 :foreground teal :weight 'semi-bold))
  (markdown-header-face-4 (:height 1.08 :foreground orange :weight 'normal))
  (markdown-list-face (:foreground sun :bold t))
  (markdown-markup-face (:foreground baby))
  (markdown-inline-code-face (:foreground purple :background black2 :weight 'normal :italic t))
  (markdown-code-face (:foreground cyan :weight 'normal))
  (markdown-pre-face (:foreground blue))

  (elfeed-search-tag-face (:foreground nord))

  ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'mito-laser)
;;; mito-laser-theme.el ends here
