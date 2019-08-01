const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#11161c", /* black   */
  [1] = "#66717A", /* red     */
  [2] = "#8B8378", /* green   */
  [3] = "#5D7081", /* yellow  */
  [4] = "#727B83", /* blue    */
  [5] = "#7B838A", /* magenta */
  [6] = "#8B9194", /* cyan    */
  [7] = "#c5c7c8", /* white   */

  /* 8 bright colors */
  [8]  = "#898b8c",  /* black   */
  [9]  = "#66717A",  /* red     */
  [10] = "#8B8378", /* green   */
  [11] = "#5D7081", /* yellow  */
  [12] = "#727B83", /* blue    */
  [13] = "#7B838A", /* magenta */
  [14] = "#8B9194", /* cyan    */
  [15] = "#c5c7c8", /* white   */

  /* special colors */
  [256] = "#11161c", /* background */
  [257] = "#c5c7c8", /* foreground */
  [258] = "#c5c7c8",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
