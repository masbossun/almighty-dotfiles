const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#131313", /* black   */
  [1] = "#616164", /* red     */
  [2] = "#9D5235", /* green   */
  [3] = "#D1633C", /* yellow  */
  [4] = "#976554", /* blue    */
  [5] = "#C49753", /* magenta */
  [6] = "#58748A", /* cyan    */
  [7] = "#9ac1ca", /* white   */

  /* 8 bright colors */
  [8]  = "#6b878d",  /* black   */
  [9]  = "#616164",  /* red     */
  [10] = "#9D5235", /* green   */
  [11] = "#D1633C", /* yellow  */
  [12] = "#976554", /* blue    */
  [13] = "#C49753", /* magenta */
  [14] = "#58748A", /* cyan    */
  [15] = "#9ac1ca", /* white   */

  /* special colors */
  [256] = "#131313", /* background */
  [257] = "#9ac1ca", /* foreground */
  [258] = "#9ac1ca",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
