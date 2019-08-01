static const char norm_fg[] = "#c5c7c8";
static const char norm_bg[] = "#11161c";
static const char norm_border[] = "#898b8c";

static const char sel_fg[] = "#c5c7c8";
static const char sel_bg[] = "#8B8378";
static const char sel_border[] = "#c5c7c8";

static const char urg_fg[] = "#c5c7c8";
static const char urg_bg[] = "#66717A";
static const char urg_border[] = "#66717A";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
