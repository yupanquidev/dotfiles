function hex-encode()
{
  echo "$@" | xxd -p
}

function hex-decode()
{
  echo "$@" | xxd -p -r
}

function rot13()
{
  echo "$@" | tr 'A-Za-z' 'N-ZA-Mn-za-m'
}

# fzf improvement
function fzf-lovely() {
  if [ "$1" = "h" ]; then
    fzf -m --reverse --preview-window down:20 --preview '[[ $(file --mime {}) =~ binary ]] &&
      echo {} is a binary file ||
      (bat --style=numbers --color=always {} ||
       highlight -O ansi -l {} ||
       coderay {} ||
       rougify {} ||
       cat {}) 2> /dev/null | head -500'
  else
    fzf -m --preview '[[ $(file --mime {}) =~ binary ]] &&
      echo {} is a binary file ||
      (bat --style=numbers --color=always {} ||
       highlight -O ansi -l {} ||
       coderay {} ||
       rougify {} ||
       cat {}) 2> /dev/null | head -500'
  fi
}

# Set 'man' colors
function man() {
  env \
    LESS_TERMCAP_mb=$'\e[01;31m' \
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    man "$@"
}

# Extract nmap information
function extractPorts() {
  ports="$(cat $1 | grep -oP '\d{1,5}/open' | awk '{print $1}' FS='/' | xargs | tr ' ' ',')"
  ip_address="$(cat $1 | grep -oP '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}' | sort -u | head -n 1)"
  
  echo -e "\n[*] Extracting information...\n" > extractPorts.tmp
  echo -e "\t[*] IP Address: $ip_address" >> extractPorts.tmp
  echo -e "\t[*] Open ports: $ports\n" >> extractPorts.tmp
  
  echo $ports | tr -d '\n' | xclip -sel clip
  echo -e "[*] Ports copied to clipboard\n" >> extractPorts.tmp
  
  cat extractPorts.tmp
  rm extractPorts.tmp
}
