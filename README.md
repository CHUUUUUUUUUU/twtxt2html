twtxt to html

twtxt -> markdown -> html

**need** your twtxt date format is `2021-10-12T12:34:56+08:00` ,  sort date from newest to oldest

by static site generator Markdown render page

If your ssg is not hugo, you need to modify twtxt.sh(variable)

---

If your site hosted on netlify.

bash twtxt.sh && hugo 

---

this a twtxt

```tw.txt

2021-09-19T12:49:55+08:00	Not ready yet
2021-09-10T21:45:15+08:00	wait
```

if nojs=true , output

```
[@tw.txt](/tw.txt)

<span id="2021-09-19T12:49:55+08:00"  datetime="2021-09-19T12:49:55+08:00" title="2021-09-19T12:49:55+08:00"><a href="#2021-09-19T12:49:55+08:00">2021-09-19T12:49:55+08:00</a></span><br />Not ready yet

<span id="2021-09-10T21:45:15+08:00"  datetime="2021-09-10T21:45:15+08:00" title="2021-09-10T21:45:15+08:00"><a href="#2021-09-10T21:45:15+08:00">2021-09-10T21:45:15+08:00</a></span><br />wait

```

if nojs=false , output

```
[@tw.txt](/tw.txt)

<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/timeago.js@3.0.2/dist/timeago.min.js"></script>

<span class="timeago" datetime="2021-09-19T12:49:55+08:00" title="2021-09-19T12:49:55+08:00">2021-09-19T12:49:55+08:00</span><br />Not ready yet

<span class="timeago" datetime="2021-09-10T21:45:15+08:00" title="2021-09-10T21:45:15+08:00">2021-09-10T21:45:15+08:00</span><br />wait

<script>timeago().render(document.querySelectorAll('.timeago'));</script>

```

---

You can modify it yourself.

