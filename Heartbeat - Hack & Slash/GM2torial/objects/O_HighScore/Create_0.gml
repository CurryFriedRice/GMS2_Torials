ini_open("save.ini");
kills = ini_read_real("Scores", "Kills", 0);
highscore = ini_read_real("Scores", "Highscore",0);

input =  instance_create_layer(0,0,"Instances", O_Input);