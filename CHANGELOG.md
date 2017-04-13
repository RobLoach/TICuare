- v0.5.0
	- Made revision of full code - made it more readable
	- Added new attribute **shadow** for *element* and *element.text*
	- Added functionality of wrapping element's content (available at next TIC-80 release v0.22.0)
	- Changed the way how are a **bounds** are defined: from {{x,y},{x,y}} to **{x={min,max},y={min,max}}**
	- Added attribute **relative** to *element.bounds* which defines whether bounds should be positioned relative to anchored element or not
- v0.4.0
  - added function *ticuare.***mlPrint***("line1\nline2",x,y,color,[line_spacing],fixed,font_func?,colorkey,space_width)* - multiline print/font function 
  - set *mlPrint* function as default for printing text in elements text
  - added example with sliders and multiline print to /examples/sliders.md
  - changed attribute name **element.text.transparent** to **element.text.key**
  - added attribute **element.text.spacing** defining line height (usable with multiline text)
- v0.3.0
  - bug fix - text isn't centered when element is centered too
- v0.2.0
  - bug fix - default sprites scale
- v0.1.0
  - first version