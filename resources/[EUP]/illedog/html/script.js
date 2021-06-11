// Vue //
var app = new Vue({
    el: "#app",

    data: {
        resource_name: "",
        show_app: false,
        current_tab: "main",

        k8_name_modal: false,
        dog_name: "",

        k8_model_modal: false,
        dog_models_list: [
            
            {title: "Pitbull", model: "a_c_chop", img: "images/pitbull.png"},
            {title: "Rottweiler", model: "a_c_rottweiler", img: "images/rottweiler.png"},
            {title: "Husky", model: "a_c_husky", img: "images/husky.png"},
            {title: "Retriever", model: "a_c_retriever", img: "images/retriever.png"},
            {title: "Lapin", model: "a_c_rabbit_01", img: "images/rabbit.png"},
            {title: "Carlin", model: "a_c_pug", img: "images/pug.png"},
            {title: "Bichon", model: "a_c_poodle", img: "images/poodle.png"},
            {title: "Westie", model: "a_c_westy", img: "images/westy.png"},
            {title: "Chat", model: "a_c_cat_01", img: "images/cat.png"},


            
        ],
        dog_model: "a_c_rottweiler",

        k8_name_form_valid: false,
        k8_name_rules: [
            v => !!v || 'Name is required',
            v => v.length > 2 || 'Name must be atleast 2 characters',
            v => v.length < 10 || 'Name must be less than 10 characters',
            v => /^[A-Za-z]+$/.test(v) || "You can only use letters in the name"
        ],
    },

    methods: {

        EnableApp() {
            this.show_app = true;
        },

        DisableApp() {
            this.show_app = false;
            this.current_tab = "main";
            this.SendCloseMenuPost();
        },

        // Open Tab
        OpenTab(tab) {
            this.current_tab = tab;
        },

        // Opens Name Changer
        ToggleNameChanger() {
            this.k8_name_modal = !this.k8_name_modal;
        },

        // Opens Model Changer
        ToggleModelChanger() {
            this.k8_model_modal = !this.k8_model_modal;
        },

        // Passes Chosen Model To Data
        Choosek8Model(model) {
            this.k8_model_modal = false;
            this.dog_model = model;
        },

        // Updates Resource Name
        UpdateResource(name) {
            this.resource_name = name
        },

        // Sets k8 Name
        Setk8Name() {
            if (this.k8_name_form_valid) {
                axios.post("http://" + this.resource_name + "/updatename", {name: this.dog_name}).then(function(response) {
                    console.log(response);
                }).catch(function(error) {
                    console.log(error);
                });
            } else {
                console.log("Form Not Valid!");
            }
        },

        // Spawns k8 or Deletes k8
        Spawnk8() {
            if (!this.dog_model == "") {
                axios.post("http://" + this.resource_name + "/spawnk8", {model: this.dog_model}).then(function(response) {
                    console.log(response);
                }).catch(function(error) {
                    console.log(error);
                });
            };
        },

        VehicleToggle() {
            axios.post("http://" + this.resource_name + "/vehicletoggle", {}).then(function(response) {
                console.log(response);
            }).catch(function(error) {
                console.log(error);
            });
        },

        VehicleSearch() {
            axios.post("http://" + this.resource_name + "/vehiclesearch", {}).then(function(response) {
                console.log(response);
            }).catch(function(error) {
                console.log(error);
            })
        },

        DogSit() {
            axios.post("http://" + this.resource_name + "/sit", {}).then(function(response) {
                console.log(response);
            }).catch(function(error) {
                console.log(error);
            })
        },

        DogLaydown() {
            axios.post("http://" + this.resource_name + "/laydown", {}).then(function(response) {
                console.log(response);
            }).catch(function(error) {
                console.log(error);
            })
        },

        // Send POST Close Menu
        SendCloseMenuPost() {
            axios.post("http://" + this.resource_name + "/closemenu", {}).then(function(response) {
                console.log(response);
            }).catch(function(error) {
                console.log(error);
            });
        },
    },
});

// Event Listener
document.onreadystatechange = () => {
    if (document.readyState === "complete") {
        window.addEventListener('message', function(event) {
            if (event.data.type == "open_k8_menu") {
                app.EnableApp();
            } else if (event.data.type == "update_resource_name") {
                app.UpdateResource(event.data.name);
            }
        });
    }
}