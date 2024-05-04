#compdef hyfetch

# AUTOMATICALLY GENERATED by `shtab`


_shtab_hyfetch_commands() {
  local _commands=(
    
  )
  _describe 'hyfetch commands' _commands
}

_shtab_hyfetch_options=(
  "(- : *)"{-h,--help}"[show this help message and exit]"
  {-c,--config}"[Configure hyfetch]"
  {-C,--config-file}"[Use another config file]:config_file:"
  {-p,--preset}"[Use preset]:preset:(rainbow transgender nonbinary agender queer genderfluid bisexual pansexual polysexual omnisexual omniromantic gay-men lesbian abrosexual asexual aromantic aroace1 aroace2 aroace3 autosexual intergender greygender akiosexual bigender demigender demiboy demigirl transmasculine transfeminine genderfaun demifaun genderfae demifae neutrois biromantic1 biromantic2 autoromantic boyflux2 finsexual unlabeled1 unlabeled2 pangender gendernonconforming1 gendernonconforming2 femboy tomboy gendervoid voidgirl voidboy plural polyam sapphic androgyne genderflux interprogress progress intersex old-polyam equal-rights drag pronounfluid pronounflux exipronoun neopronoun neoflux beiyang burger)"
  {-m,--mode}"[Color mode]:mode:(8bit rgb)"
  {-b,--backend}"[Choose a \*fetch backend]:backend:(neofetch fastfetch fastfetch-old)"
  "--c-scale[Lighten colors by a multiplier]:scale:"
  "--c-set-l[Set lightness value of the colors]:light:"
  {-V,--version}"[Check version]"
  "--debug[Debug mode]"
  {--distro,--test-distro}"[Test for a specific distro]:distro:"
  "--ascii-file[Use a specific file for the ascii art]:ascii_file:"
)


_shtab_hyfetch() {
  local context state line curcontext="$curcontext" one_or_more='(-)*' remainder='(*)'

  if ((${_shtab_hyfetch_options[(I)${(q)one_or_more}*]} + ${_shtab_hyfetch_options[(I)${(q)remainder}*]} == 0)); then  # noqa: E501
    _shtab_hyfetch_options+=(': :_shtab_hyfetch_commands' '*::: :->hyfetch')
  fi
  _arguments -C $_shtab_hyfetch_options

  case $state in
    hyfetch)
      words=($line[1] "${words[@]}")
      (( CURRENT += 1 ))
      curcontext="${curcontext%:*:*}:_shtab_hyfetch-$line[1]:"
      case $line[1] in
        
      esac
  esac
}



typeset -A opt_args
_shtab_hyfetch "$@"
