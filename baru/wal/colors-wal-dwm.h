static const char norm_fg[] = "#9ac1ca";
static const char norm_bg[] = "#131313";
static const char norm_border[] = "#6b878d";

static const char sel_fg[] = "#9ac1ca";
static const char sel_bg[] = "#9D5235";
static const char sel_border[] = "#9ac1ca";

static const char urg_fg[] = "#9ac1ca";
static const char urg_bg[] = "#616164";
static const char urg_border[] = "#616164";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
