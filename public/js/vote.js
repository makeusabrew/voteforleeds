$(function() {
    $("#vote").submit(function(e) {
        var self = this;
        e.preventDefault();

        $.post($(self).attr("action"), $(self).serialize(), function(response) {
            if (response._errors != null) {
                // uh oh
                var ul = $("<ul class='errors'></ul>");
                for (var i in response._errors) {
                    $(ul).append("<li>"+response._errors[i]+"</li>");
                }
                $("ul.errors").replaceWith(ul);
                return;
            }
            // all good!
            $("fieldset", self).replaceWith(
                $("div.thanks", self).show()
            );
        }, "json");
    });
});
