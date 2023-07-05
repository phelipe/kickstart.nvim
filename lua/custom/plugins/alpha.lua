return {
    'goolord/alpha-nvim',
    event = "VimEnter",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local dashboard = require("alpha.themes.dashboard")

        Art = {
            {
                "                                                                                ",
                "                                                                                ",
                "                                ///   ////   ///                                ",
                "                          //// ////////////////// /////                         ",
                "                    //// ////////////////////////////// ////                    ",
                "                    ////////////////////////////////////////                    ",
                "               //////////////////////////////////////////////////               ",
                "               //////////////////////////////////////////////////               ",
                "          ////////////////////////////////////////////////////////////          ",
                "           //////////////////////////////////////////////////////////           ",
                "        ////////////////////////////////////////////////////////////////        ",
                "        ///////////////////////@@@   /////////@@@   ////////////////////        ",
                "        .////////////////////  @@@    //////  @@@    ///////////////////        ",
                "      ///////////////////////         //////         //////////////////////     ",
                "     /////////////////////////       ////////       ///////////////////////     ",
                "     ////////    //////////////////////////////////////////////     ///////     ",
                "      ////////    ////                                    ////     ///////      ",
                "        ///////     /////   ////////         ////////  /////       //////       ",
                "          /////       /////////////////    ////////////////        ////         ",
                "            ////         ///////////////  ///////////////         ////          ",
                "              //         ///////                  //////          //            ",
                "                           ///////              ///////                         ",
                "                                                                                ",
                "                                                                                ",
            },
            {
                "            :h-                                  Nhy`               ",
                "           -mh.                           h.    `Ndho               ",
                "           hmh+                          oNm.   oNdhh               ",
                "          `Nmhd`                        /NNmd  /NNhhd               ",
                "          -NNhhy                      `hMNmmm`+NNdhhh               ",
                "          .NNmhhs              ```....`..-:/./mNdhhh+               ",
                "           mNNdhhh-     `.-::///+++////++//:--.`-/sd`               ",
                "           oNNNdhhdo..://++//++++++/+++//++///++/-.`                ",
                "      y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:       ",
                " .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+        ",
                " h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`         ",
                " hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`        ",
                " /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.       ",
                "  oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.      ",
                "   /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.     ",
                "     /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`    ",
                "       .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:    ",
                "       -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`   ",
                "       /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:   ",
                "       //+++//++++++////+++///::--                 .::::-------::   ",
                "       :/++++///////////++++//////.                -:/:----::../-   ",
                "       -/++++//++///+//////////////               .::::---:::-.+`   ",
                "       `////////////////////////////:.            --::-----...-/    ",
                "        -///://////////////////////::::-..      :-:-:-..-::.`.+`    ",
                "         :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -   ",
                "           ::::://::://::::::::::::::----------..-:....`.../- -+oo/ ",
                "            -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``",
                "           s-`::--:::------:////----:---.-:::...-.....`./:          ",
                "          yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`           ",
                "         oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-              ",
                "        :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                ",
                "                        .-:mNdhh:.......--::::-`                    ",
                "                           yNh/..------..`                          ",
                "                                                                    ",
            } }

        -- Set header
        dashboard.section.header.val = Art[math.random(#Art)]
        require 'alpha'.setup(dashboard.opts)
    end
}
