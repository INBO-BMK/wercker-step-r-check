#!/bin/bash

check () {
  Rscript -e 'devtools::check(document = FALSE, check_dir = ".", force_suggests = TRUE)'
  if grep "Status: .* ERROR" ./*.Rcheck/00check.log; then
    warn "Check Failed, dumping logs"
    find ./*.Rcheck -type f \( -name "*out" -o -name "*log" -o -name "*fail" \) \
      -exec cat {} \;
    fail "Check Failed"
  else
    if [ "$WERCKER_R_CHECK_WARNINGS_ARE_ERRORS" == "true" ]; then
      if grep "Status: .* WARNINGS" ./*.Rcheck/00check.log; then
        warn "Check Failed, dumping logs"
        find ./*.Rcheck -type f \( -name "*out" -o -name "*log" -o -name "*fail" \) \
          -exec cat {} \;
        fail "Check Failed"
      else
        success "Checks Passed"
      fi
    else
      success "Checks Passed"
    fi
  fi
}

check
