# ===============================================
# Joystick → Airbrakes pour bourrasque
# ===============================================
print("brake4ever loaded");
# Fonction appelée à chaque mouvement du joystick
var joystick_airbrake = func() {
    var sp = getprop("/controls/flight/spoilers");  # propriété exacte sans "s"
    if (sp > 0.05) {                                # seuil pour éviter les petits mouvements
        my_aircraft_functions.event_airbrake(1);   # déployer airbrakes
    } else {
        my_aircraft_functions.event_airbrake(0);   # rétracter airbrakes
    }
};

# Déclenche la fonction à chaque changement de la propriété joystick
setlistener("/controls/flight/spoilers", joystick_airbrake);