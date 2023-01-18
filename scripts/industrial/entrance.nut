//   This is the entrance cutscene
//   Author DavideP "SuperDave"



function start_intro() 
{
    //   jump scene

    start_cutscene();
    Effect.sixteen_to_nine(0);
    Camera.set_mode("manual");
    Tux.deactivate();
    Tux.walk(100);
    Effect.fade_in(3);
    wait(3.2);
    Text.set_text(_("I'm not leaving just yet!"));
    Text.fade_in(1);
    wait(2);
    Text.fade_out(1);
    Tux.do_jump(-500);
    wait(3);
    Effect.fade_out(0.7);
    wait(0.7);

    //   sewer scene
    
    Level.spawn("main","sewer");
    Effect.fade_in(0.7);
    wait(0.01);
    Tux.walk(40);
    wait(1);
    Tux.set_dir(false); // Tux looks around him
    Tux.walk(0);
    wait(0.5);
    Tux.set_dir(true);
    wait(0.5);
    Tux.set_dir(false);
    wait(0.5);
    Tux.set_dir(true);
    wait(0.5);
    Tux.walk(150);
    Text.set_text(_("Here goes nothing!"));
    Text.fade_in(1.7);
    wait(2);
    Text.fade_out(1.9);
    wait(2);
    Effect.fade_out(1.7);
    wait(1.7);
    Camera.set_mode("normal");
    Effect.four_to_three(0);
    Level.spawn("playable""main");
    Tux.activate();
    end_cutscene();
}


