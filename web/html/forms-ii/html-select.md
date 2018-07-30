---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

standards:
  web.html-forms.6: 10

aspects:
  - introduction
  - workout
  
links:
  - '[CodePen: Form Simple Dropdown](https://codepen.io/enkidevs/pen/oMBzMz){code}'  
  - '[CodePen: Dropdown w/ optgroup](https://codepen.io/enkidevs/pen/NBdRBB){code}'  

---
# Select
---
## Content

In HTML the `<select>` element is used to create drop-down lists.
The available options in the `<select>` list are created with the `<option>` tag.

Example:
```
<form>
<select>
  <option
    value="apple">Apples
  </option>
  <option
   value="banana">Bananas
  </option>
  <option
    value="orange">Oranges
  </option>
  <option
    value="plum">Plums
  </option>
  <option
    value="lemon">Lemons
  </option>
</select>
</form>
```

![drop-down-select](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20style%3D%22width%3A100%25%22%20viewBox%3D%220%200%20320%20146%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22146%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cpath%20fill%3D%22%233B99FC%22%20stroke%3D%22%233497FF%22%20d%3D%22M71%2037.11593V21h11.07254c1.5431%201.05927%202.31463%202.59597%202.31463%204.6101%200%201.0728.36942%209.10886-1.15003%2010.46117-1.52922%201.361-5.60826%201.70921-12.23714%201.04466z%22%2F%3E%3Crect%20width%3D%2264%22%20height%3D%2217%22%20x%3D%2220.5%22%20y%3D%2220.5%22%20stroke%3D%22%23D9D9D9%22%20rx%3D%224%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2228%22%20y%3D%2233%22%3EApples%20%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%23FFF%22%20stroke-linecap%3D%22square%22%20d%3D%22M75.375%2026.625l2.25-2.25m-.25%200l2.25%202.25M75.5%2030l2.25%202.25m2-2.25l-2.25%202.25%22%2F%3E%3Cg%20transform%3D%22translate%2828%2034%29%22%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%223%22%20y%3D%2210%22%3ERed%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2275%22%20height%3D%2290%22%20x%3D%22.5%22%20y%3D%221.5%22%20fill%3D%22%23F9FBFB%22%20fill-rule%3D%22nonzero%22%20stroke%3D%22%23D2D2D2%22%20rx%3D%224%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%2218%22%3EApples%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%23479AFE%22%20fill-rule%3D%22nonzero%22%20d%3D%22M1%2038h74v16H1z%22%2F%3E%3Ctext%20fill%3D%22%23FFF%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%2250%22%3EOranges%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%2266%22%3EPlums%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%2282%22%3ELemons%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%2234%22%3EBananas%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%233C3E3E%22%20fill-rule%3D%22nonzero%22%20d%3D%22M6%2015h1v1H6zm1%200h1v1H7zm0%201h1v1H7zm1%200h1v1H8zm1%200h1v1H9zm-1%201h1v1H8zm1%200h1v1H9zm1-2h1v1h-1zm1-1h1v1h-1zm0-1h1v1h-1zm1%200h1v1h-1zm0-1h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%234D3E3E%22%20fill-rule%3D%22nonzero%22%20d%3D%22M12%2011h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23C5A680%22%20fill-rule%3D%22nonzero%22%20d%3D%22M12%2010h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23E0DEE2%22%20fill-rule%3D%22nonzero%22%20d%3D%22M13%209h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%233C3E3E%22%20fill-rule%3D%22nonzero%22%20d%3D%22M13%2011h1v1h-1zm0-1h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%2386B4CF%22%20fill-rule%3D%22nonzero%22%20d%3D%22M14%2011h1v1h-1zm-2%203h1v1h-1zm-2%203h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23738AAE%22%20fill-rule%3D%22nonzero%22%20d%3D%22M9%2018h1v1H9z%22%2F%3E%3Cpath%20fill%3D%22%23B59066%22%20fill-rule%3D%22nonzero%22%20d%3D%22M6%2016h1v1H6zm3-1h1v1H9z%22%2F%3E%3Cpath%20fill%3D%22%23DAC69B%22%20fill-rule%3D%22nonzero%22%20d%3D%22M5%2015h1v1H5zm5-2h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%235C3E3D%22%20fill-rule%3D%22nonzero%22%20d%3D%22M10%2014h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23E9E3D0%22%20fill-rule%3D%22nonzero%22%20d%3D%22M5%2014h1v1H5zm6-3h1v1h-1zm-2%203h1v1H9z%22%2F%3E%3Cpath%20fill%3D%22%23938080%22%20fill-rule%3D%22nonzero%22%20d%3D%22M6%2014h1v1H6z%22%2F%3E%3Cpath%20fill%3D%22%23A7C0D4%22%20fill-rule%3D%22nonzero%22%20d%3D%22M7%2014h1v1H7z%22%2F%3E%3Cpath%20fill%3D%22%23B0CDD7%22%20fill-rule%3D%22nonzero%22%20d%3D%22M8%2015h1v1H8z%22%2F%3E%3Cpath%20fill%3D%22%239B7E6B%22%20fill-rule%3D%22nonzero%22%20d%3D%22M7%2017h1v1H7z%22%2F%3E%3Cpath%20fill%3D%22%239B7E6B%22%20fill-rule%3D%22nonzero%22%20d%3D%22M7%2017h1v1H7z%22%2F%3E%3Cpath%20fill%3D%22%23946444%22%20fill-rule%3D%22nonzero%22%20d%3D%22M11%2012h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23BDD8E8%22%20fill-rule%3D%22nonzero%22%20d%3D%22M13%2013h1v1h-1zm-2%203h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23E4EEEE%22%20fill-rule%3D%22nonzero%22%20d%3D%22M14%2012h1v1h-1zm-2%203h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%236E9BC3%22%20fill-rule%3D%22nonzero%22%20d%3D%22M14%2010h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23425B92%22%20fill-rule%3D%22nonzero%22%20d%3D%22M13%2012h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%233D3D57%22%20fill-rule%3D%22nonzero%22%20d%3D%22M10%2016h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23425B92%22%20fill-rule%3D%22nonzero%22%20d%3D%22M11%2015h1v1h-1z%22%2F%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/oMBzMz)-->

You can also add several other attributes to your drop-down list.

Some of these are:
 - autofocus
 - disabled
 - multiple
 - name
 - required
 - size

It is also possible to define groups of related options from a drop-down list within a `select` element.

This is done by adding an `<optgroup>` attribute, like so:

Example:
```
<select>
  <optgroup label="Fav Fruit">
   <option
    value="apple">Apples
    </option>
   <option
    value="banana">Bananas
   </option>
   <option
    value="orange">Oranges
   </option>
  </optgroup
  <optgroup label="Fav Veggie">
   <option
    value="carrot">Carrots
   </option>
   <option
    value="cucumber">Cucumbers
   </option>
   <option
    value="onion">Onions
   </option>
  </optgroup
</select>
```

![drop-down-optgroup](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20style%3D%22width%3A100%25%22%20viewBox%3D%220%200%20320%20178%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22178%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Cpath%20fill%3D%22%233B99FC%22%20stroke%3D%22%233497FF%22%20d%3D%22M71%2037.11593V21h11.07254c1.5431%201.05927%202.31463%202.59597%202.31463%204.6101%200%201.0728.36942%209.10886-1.15003%2010.46117-1.52922%201.361-5.60826%201.70921-12.23714%201.04466z%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2228%22%20y%3D%2233%22%3EApples%20%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2264%22%20height%3D%2217%22%20x%3D%2220.5%22%20y%3D%2220.5%22%20stroke%3D%22%23D9D9D9%22%20rx%3D%224%22%2F%3E%3Cpath%20stroke%3D%22%23FFF%22%20stroke-linecap%3D%22square%22%20d%3D%22M75.375%2026.625l2.25-2.25m-.25%200l2.25%202.25M75.5%2030l2.25%202.25m2-2.25l-2.25%202.25%22%2F%3E%3Cg%20transform%3D%22translate%2827%2034%29%22%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%223%22%20y%3D%2210%22%3ERed%3C%2Ftspan%3E%3C%2Ftext%3E%3Crect%20width%3D%2297%22%20height%3D%22122%22%20x%3D%22.5%22%20y%3D%221.5%22%20fill%3D%22%23F9FBFB%22%20stroke%3D%22%23D2D2D2%22%20rx%3D%224%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%2218%22%3EFav%20Fruit%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%23479AFE%22%20d%3D%22M1%2038h96v16H1z%22%2F%3E%3Ctext%20fill%3D%22%23FFF%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2236%22%20y%3D%2250%22%3EBananas%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%2298%22%3ECucumbers%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%22114%22%3EOnions%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%2282%22%3ECarrots%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2236%22%20y%3D%2266%22%3EOranges%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22ArialMT%2C%20Arial%22%20font-size%3D%2211.5%22%3E%3Ctspan%20x%3D%2236%22%20y%3D%2234%22%3EApples%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20fill%3D%22%233C3E3E%22%20d%3D%22M6%2031h1v1H6zm1%200h1v1H7zm0%201h1v1H7zm1%200h1v1H8zm1%200h1v1H9zm-1%201h1v1H8zm1%200h1v1H9zm1-2h1v1h-1zm1-1h1v1h-1zm0-1h1v1h-1zm1%200h1v1h-1zm0-1h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%234D3E3E%22%20d%3D%22M12%2027h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23C5A680%22%20d%3D%22M12%2026h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23E0DEE2%22%20d%3D%22M13%2025h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%233C3E3E%22%20d%3D%22M13%2027h1v1h-1zm0-1h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%2386B4CF%22%20d%3D%22M14%2027h1v1h-1zm-2%203h1v1h-1zm-2%203h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23738AAE%22%20d%3D%22M9%2034h1v1H9z%22%2F%3E%3Cpath%20fill%3D%22%23B59066%22%20d%3D%22M6%2032h1v1H6zm3-1h1v1H9z%22%2F%3E%3Cpath%20fill%3D%22%23DAC69B%22%20d%3D%22M5%2031h1v1H5zm5-2h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%235C3E3D%22%20d%3D%22M10%2030h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23E9E3D0%22%20d%3D%22M5%2030h1v1H5zm6-3h1v1h-1zm-2%203h1v1H9z%22%2F%3E%3Cpath%20fill%3D%22%23938080%22%20d%3D%22M6%2030h1v1H6z%22%2F%3E%3Cpath%20fill%3D%22%23A7C0D4%22%20d%3D%22M7%2030h1v1H7z%22%2F%3E%3Cpath%20fill%3D%22%23B0CDD7%22%20d%3D%22M8%2031h1v1H8z%22%2F%3E%3Cpath%20fill%3D%22%239B7E6B%22%20d%3D%22M7%2033h1v1H7z%22%2F%3E%3Cpath%20fill%3D%22%239B7E6B%22%20d%3D%22M7%2033h1v1H7z%22%2F%3E%3Cpath%20fill%3D%22%23946444%22%20d%3D%22M11%2028h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23BDD8E8%22%20d%3D%22M13%2029h1v1h-1zm-2%203h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23E4EEEE%22%20d%3D%22M14%2028h1v1h-1zm-2%203h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%236E9BC3%22%20d%3D%22M14%2026h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23425B92%22%20d%3D%22M13%2028h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%233D3D57%22%20d%3D%22M10%2032h1v1h-1z%22%2F%3E%3Cpath%20fill%3D%22%23425B92%22%20d%3D%22M11%2031h1v1h-1z%22%2F%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E)

<!--[View CodePen](https://codepen.io/enkidevs/pen/NBdRBB)-->

---
## Practice

Which form attribute is used to define items of a drop-down list within a `select` element?
```
<select>
  <__ value="apple">Apples</__>
  <__ value="banana">Bananas</__>
  <__ value="orange">Oranges</__>
</select>
```
???

* `option`
* `optgroup`
* `selectitem`
* `menuitem`

---
## Revision

Which form attribute is used to define groups of related option of a drop-down list within a select element?
```
<select>
 <__ label="Fav Fruit">
   <option
     value="apple">Apples
   </option>
   <option
     value="banana">Bananas
   </option>
 </__>
 <__ label="Fav Veggie">
  <option
   value=”carrot">Carrot
  </option>
  <option
   value="broccoli">Broccoli
  </option>
 </__>
</select>
```
???

* `optgroup`
* `option`
* `selectitem`
* `menuitem`
---
## Quiz

### How much do you know about the html `select` element?

Which statement is true regarding drop-down lists in HTML?

???

 * The `<select>` element is used to create drop-down lists.
 * The `<option>` element is used to create drop-down lists.
 * The `<optgroup>` element is used to create drop-down lists.
 * The `<list>` element is used to create drop-down lists.
