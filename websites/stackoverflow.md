

Clear `Network tab` and run the following code in Chrome Console.

Before run, check page contains `more comment`. After run, if `Number of loaded comments are` is more than `0`, then check network tab for loading comment ( URL contains something like `comments` ) loaded successfully with `Status code = 200` and also check that page does not contains `more comment`

```

var clickEvent = new MouseEvent("click", {
    "view": window,
    "bubbles": true,
    "cancelable": false
});

document.querySelectorAll('pre code').forEach(function (el, index) {
    el.setAttribute('style', 'white-space: break-spaces !important;')
});

openComment();

function openComment() {
    var i = 0;
    document.querySelectorAll('[class="js-show-link comments-link "]').forEach(function name(el) {
        i++;
        setTimeout(() => {
            //console.log(el.innerText);
            //el.click();
            el.dispatchEvent(clickEvent);
        }, 1000);
    });
    console.log("Number of loaded comments are : " + i);
}

```