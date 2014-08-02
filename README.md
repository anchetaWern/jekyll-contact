##Contact Plugin for Jekyll

This plugin allows you to add a contact form to any page in your Octopress or Jekyll blog.
This uses [pooleapp.com](http://pooleapp.com/) for the back-end. 

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

To use the plugin in any of your pages, simply use the `contact` liquid tag then supply your poole app API key as the first argument, and the URL to redirect to when the form is submitted:

```
{% contact YOUR_POOLE_APP_API_KEY http://YOURSITE.COM/PAGE?form=ok#alert-box %}
```

###Demo

You can try out the demo on my [blog](http://wern-ancheta.com/aboutme).
