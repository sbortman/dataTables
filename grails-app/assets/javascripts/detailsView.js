//= require jquery-3.5.1.min.js
//= require bootstrap.bundle.min.js
//= require jquery.dataTables.min.js
//= require dataTables.bootstrap4.min.js
//= require goldenlayout.min.js
//= require_self

let DetailsView = (function () {
    function init(params) {
        const config = {
            content: [{
                type: 'row',
                content: [
                    {
                        type: 'component',
                        componentName: 'formComponent',
                        title: 'Form'
                    },
                    {
                        type: 'component',
                        componentName: 'imageComponent',
                        title: 'Image'
                    }
                ]
            }]
        };

        const layout = new GoldenLayout(config);

        // Create the form component
        layout.registerComponent('formComponent', function (container, state) {
            container.getElement().html($('#myForm'));
        });

        // Create the image component
        layout.registerComponent('imageComponent', function (container, state) {
            container.getElement().html($('#myImage'));
        });

        // Initialize GoldenLayout
        layout.init();
    }

    return {
        init: init
    }
})();