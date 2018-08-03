// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

document.addEventListener('turbolinks:load', function () {
    var letsDoItLink = document.getElementById('lets-do-it')
    var stateElement = document.getElementById('state')
    if (stateElement && letsDoItLink) {
        letsDoItLink.addEventListener('ajax:success', function (event) {
            var noticeElement = document.createElement('div')
            noticeElement.innerHTML = '<p>' + event.detail[0].message + '</p>'
            var state = event.detail[0].task.state
            stateElement.innerHTML = state.charAt(0).toUpperCase() + state.slice(1);
            document.body.appendChild(noticeElement)
        })
    }
})

