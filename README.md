[![Flattr this git repo](http://api.flattr.com/button/flattr-badge-large.png)](https://flattr.com/submit/auto?user_id=wernancheta&url=https://github.com/anchetaWern/jekyll-contact&title=jekyll-contact&language=ruby&tags=github&category=software)

##Contact Plugin for Jekyll

This plugin allows you to add a contact form to any page in your Octopress or Jekyll blog.
You can use either [pooleapp.com](http://pooleapp.com/) or [formkeep](https://formkeep.com) for processing form submissions.

###How to Use

You can use this plugin by adding the `contact.rb` file into the `octopress/plugins` directory. 
For the JavaScript file that shows a success confirmation that the form was submitted, add the `contact.js` file inside the `source/javascripts` directory.
For the styling, add the `_contact.scss` file inside the `sass/partials` directory. Then in your `sass/_partials.scss` file, import the css for the contact form by adding the following on the last line:

```
@import "partials/contact";
```

Lastly, under the `source/_includes/custom` directory, add a script tag that points out to the `contact.js` file on the last line:

```
<script src="{{ root_url }}/javascripts/contact.js"></script>
```

To use the plugin in any of your pages, simply use the `contact` liquid tag then supply the form endpoint which you got from either pooleapp or formkeep as the first argument and the URL to redirect to when the form is submitted:

```
{% contact FORM_ENDPOINT http://YOURSITE.COM/PAGE?form=ok#alert-box %}
```

For pooleapp, the endpoint URL would look something like:

```
http://pooleapp.com/stash/xxxx-xxx-xx-xxxxxxx-xx
```

For formkeep:

```
https://formkeep.com/f/xxxxxxxx
```

###Demo

You can try out the demo on my [blog](http://wern-ancheta.com/aboutme).


##License

The MIT License (MIT) Copyright (c)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.