---
author: stefan.stojanovic

levels:
  - beginner
  - basic

type: normal

category: must-know

tags:
  - workout
  - deep

standards:
  web.syntax-html.1: 1000
  web.layout-html.1: 1000

links:
  - '[CodePen: Table Default style of th element](https://codepen.io/enkidevs/pen/ejZgbN){code}'
  - '[CodePen: Table tabular header](https://codepen.io/enkidevs/pen/ajNpdb){code}'
  - '[CodePen: Table multiple spans](https://codepen.io/enkidevs/pen/XBdpgW){code}'
  - '[CodePen: Table multiple spans](https://codepen.io/enkidevs/pen/NBNdwO){code}'
  - '[CodePen: Table abbr attribute](https://codepen.io/enkidevs/pen/ajNJdW){code}'
  - '[MDN docs for th](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/th){website}'
  - '[MDN docs for global attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes){website}'

---
# Table Header
---
## Content

The HTML `<th>` element  stands to "tabular headers" and is used to specify a header cell for a group of table cells within a table. The `<th>` element has to nested within a `<tr>` element. By default, the text within a `<th>` element will appear centered and bold.

Example:
```
<table>
  <tr>
    <th>Username</th>
    <th>ID</th>
  </tr>
  <tr>
    <td>i_am_who_knocks</td>
    <td>2437845</td>
  </tr>
    <td>chain_breaker</td>
    <td>3493712</td>
  </tr>
</table>
```
Result:

![intro-th](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%2298%22%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%2298%22%20fill%3D%22%23FFF%22%20rx%3D%229%22%2F%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22TimesNewRomanPS-BoldMT%2C%20Times%20New%20Roman%22%20font-size%3D%2216%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%2247%22%20y%3D%2232%22%3EUsername%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22TimesNewRomanPSMT%2C%20Times%20New%20Roman%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%2253%22%3Ei_am_who_knocks%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22TimesNewRomanPSMT%2C%20Times%20New%20Roman%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%2221%22%20y%3D%2275%22%3Echain_breaker%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22TimesNewRomanPSMT%2C%20Times%20New%20Roman%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%22146%22%20y%3D%2275%22%3E3493712%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22TimesNewRomanPSMT%2C%20Times%20New%20Roman%22%20font-size%3D%2216%22%3E%3Ctspan%20x%3D%22146%22%20y%3D%2253%22%3E2437845%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23000%22%20font-family%3D%22TimesNewRomanPS-BoldMT%2C%20Times%20New%20Roman%22%20font-size%3D%2216%22%20font-weight%3D%22bold%22%3E%3Ctspan%20x%3D%22166%22%20y%3D%2232%22%3EID%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)


With CSS styles, the same table can really stand out visually:

![intro-th-style](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22144%22%3E%3Cdefs%3E%3ClinearGradient%20id%3D%22a%22%20x1%3D%22-13.59598%25%22%20x2%3D%22122.3853%25%22%20y1%3D%2250%25%22%20y2%3D%2250%25%22%3E%3Cstop%20offset%3D%220%25%22%20stop-color%3D%22%234158D0%22%2F%3E%3Cstop%20offset%3D%22100%25%22%20stop-color%3D%22%23C850C0%22%2F%3E%3C%2FlinearGradient%3E%3C%2Fdefs%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22144%22%20fill%3D%22url%28%23a%29%22%20rx%3D%229%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M20%2020h280v102H20z%22%2F%3E%3Cpath%20fill%3D%22%2336304A%22%20d%3D%22M20%2020h280v37H20z%22%2F%3E%3Ctext%20fill%3D%22%23E1E3DD%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2210%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%2280%22%20y%3D%2241%22%3EUsername%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%2231%22%20y%3D%2278%22%3Ei_am_who_knocks%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%2231%22%20y%3D%22110%22%3Echain_breaker%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%22198%22%20y%3D%22110%22%3E3493712%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%22198%22%20y%3D%2278%22%3E2437845%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23E1E3DD%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2210%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%22237%22%20y%3D%2241%22%3EID%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%23C8CAD7%22%20stroke-linecap%3D%22square%22%20d%3D%22M187%2020.5v100M299%2090H20%22%2F%3E%3Cpath%20stroke%3D%22%239EA7AF%22%20stroke-linecap%3D%22square%22%20stroke-width%3D%222%22%20d%3D%22M299%2057H21%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)


**Spanning Columns/Rows***

The colspan and rowspan attributes can be useful in setting the table headers to span over multiple columns or rows.

```
<th colspan="2">
  Monthly Savings
</th>
<td rowspan="2">
  Gunner
</td>
<td rowspan="2">
  Isabelle
</td>
```

![intro-th-multiple-span](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22144%22%3E%3Cdefs%3E%3ClinearGradient%20id%3D%22a%22%20x1%3D%22-13.59598%25%22%20x2%3D%22122.3853%25%22%20y1%3D%2250%25%22%20y2%3D%2250%25%22%3E%3Cstop%20offset%3D%220%25%22%20stop-color%3D%22%234158D0%22%2F%3E%3Cstop%20offset%3D%22100%25%22%20stop-color%3D%22%23C850C0%22%2F%3E%3C%2FlinearGradient%3E%3C%2Fdefs%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22144%22%20fill%3D%22url%28%23a%29%22%20rx%3D%229%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M20%2020h280v102H20z%22%2F%3E%3Cpath%20fill%3D%22%2336304A%22%20d%3D%22M20%2020h280v37H20z%22%2F%3E%3Ctext%20fill%3D%22%23E1E3DD%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2210%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%2246%22%20y%3D%2241%22%3EName%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%2231%22%20y%3D%2278%22%3EGunner%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%2231%22%20y%3D%22110%22%3EIsabelle%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%22218%22%20y%3D%22110%22%3E%2480%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%22110%22%20y%3D%22110%22%3EFebruary%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%22110%22%20y%3D%2278%22%3EJanuary%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2210%22%3E%3Ctspan%20x%3D%22218%22%20y%3D%2278%22%3E%24100%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23E1E3DD%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2210%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%22163%22%20y%3D%2241%22%3EMonthly%20Savings%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%23C8CAD7%22%20stroke-linecap%3D%22square%22%20d%3D%22M97%2020.5v100m110-64V121m92-31H20%22%2F%3E%3Cpath%20stroke%3D%22%239EA7AF%22%20stroke-linecap%3D%22square%22%20stroke-width%3D%222%22%20d%3D%22M299%2057H21%22%2F%3E%3C%2Fg%3E%3C%2Fsvg%3E)



**Duel Axis Tabular Headers***

Sometimes it can make sense using tabular headers on both the first row and first column with such as example as a multiplication table like this:  

![intro-th-2-axis](%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22320%22%20height%3D%22220%22%3E%3Cdefs%3E%3ClinearGradient%20id%3D%22a%22%20x1%3D%22-13.59598%25%22%20x2%3D%22122.3853%25%22%20y1%3D%2250%25%22%20y2%3D%2250%25%22%3E%3Cstop%20offset%3D%220%25%22%20stop-color%3D%22%234158D0%22%2F%3E%3Cstop%20offset%3D%22100%25%22%20stop-color%3D%22%23C850C0%22%2F%3E%3C%2FlinearGradient%3E%3C%2Fdefs%3E%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%3Crect%20width%3D%22320%22%20height%3D%22220%22%20fill%3D%22url%28%23a%29%22%20rx%3D%229%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M52%2020h215v180H52z%22%2F%3E%3Cpath%20fill%3D%22%2336304A%22%20d%3D%22M52%2020h215v37H52z%22%2F%3E%3Cpath%20fill%3D%22%2336304A%22%20d%3D%22M51.75102%20200.24899v-172H96.7483v172z%22%2F%3E%3Ctext%20fill%3D%22%23E1E3DD%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2214%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%2271%22%20y%3D%2243%22%3E1%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23E1E3DD%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2214%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%2271%22%20y%3D%2279%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23E1E3DD%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2214%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%2271%22%20y%3D%22150%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23E1E3DD%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2214%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%2271%22%20y%3D%22186%22%3E5%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23E1E3DD%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2214%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%22157%22%20y%3D%2243%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23E1E3DD%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2214%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%22200%22%20y%3D%2243%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23E1E3DD%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2214%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%22243%22%20y%3D%2243%22%3E5%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23E1E3DD%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2214%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%22114%22%20y%3D%2243%22%3E2%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%22114%22%20y%3D%2279%22%3E4%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%22157%22%20y%3D%2279%22%3E6%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%22201%22%20y%3D%2279%22%3E8%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%22238%22%20y%3D%2279%22%3E10%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%22238%22%20y%3D%22114%22%3E15%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%22238%22%20y%3D%22150%22%3E20%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%22238%22%20y%3D%22186%22%3E25%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%22196%22%20y%3D%22114%22%3E12%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%22196%22%20y%3D%22150%22%3E16%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%22196%22%20y%3D%22186%22%3E20%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%22157%22%20y%3D%22114%22%3E9%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%22154%22%20y%3D%22150%22%3E12%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%22154%22%20y%3D%22186%22%3E15%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%22114%22%20y%3D%22114%22%3E6%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%22114%22%20y%3D%22150%22%3E8%3C%2Ftspan%3E%3C%2Ftext%3E%3Ctext%20fill%3D%22%23727B8B%22%20font-family%3D%22Roboto-Regular%2C%20Roboto%22%20font-size%3D%2214%22%3E%3Ctspan%20x%3D%22114%22%20y%3D%22186%22%3E10%3C%2Ftspan%3E%3C%2Ftext%3E%3Cpath%20stroke%3D%22%23DFE0E7%22%20stroke-linecap%3D%22square%22%20d%3D%22M97%2021v179m42-179v179m43-179v179m43-179v179m41.5029-110.5H52m214.5029%2040H52m214.5029%2033H52M266.46429%2057H53%22%2F%3E%3Ctext%20fill%3D%22%23E1E3DD%22%20font-family%3D%22Roboto-Medium%2C%20Roboto%22%20font-size%3D%2214%22%20font-weight%3D%22400%22%3E%3Ctspan%20x%3D%2271%22%20y%3D%22114%22%3E3%3C%2Ftspan%3E%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fsvg%3E)



**Tabular Header Attributes***

The `abbr` attribute is used to add an abbreviated description for the content of a cell and speech readers may present this description rather than the content of the cell.

```
<table>
  <tr>
    <th abbr="Make">
      Vehicle manufacturer
    </th>
    <th abbr="Model">
      Vehicle model
    </th>
  </tr>
  <tr>
    <td>Toyota</td>
    <td>CRV</td>
  </tr>
  <tr>
    <td>Ford</td>
    <td>F150</td>
  </tr>
</table>
```



---
## Practice

Arrange the HTML tags to properly create this table:

```
<tag1>
  <tag2>
    <tag3>
      First name
    </tag3>
    <tag3>
      Last name
    </tag3>
  </tag2>
  <tag2>
    <tag4>Nikolai</tag4>
    <tag4>Tesla</tag4>
  </tag2>
  <tag2>
    <tag4>Charles</tag4>
    <tag4>Edison</tag4>
  </tag2>
</tag1>
```

tag1 = ???
tag2 = ???
tag3 = ???
tag4 = ???

* table
* tr
* th
* td
* tc
* row
* col
* colspan
* rowspan

---
## Revision

Which HTML element creates the header of a group of table cells within a table?

???

* th
* table
* tr
* td
* colhead
* rowhead

---
## Quiz

### How much do you know about HTML tables?

Which CSS property(s) style a `<th>` element of a table by default?

???

* `font-weight: bold; && text-align: center;`
* `text-align: left; && font-weight: normal;`
* `font-style: oblique; && font-style: italic;`
* `font-style: italic; && text-align: center;`
