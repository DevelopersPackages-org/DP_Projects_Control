
main(List<String> args) {
  Nyxx bot = Nyxx(const String.fromEnvironment('dpproictltoken'));

  final String prefix_man = "#";
  final String prefix_usr = "$";

  bot.onMessageReceived.listen((event) {
    if (event.message.content == "!ping") {
      event.message.channel.send(content: "Pong!");
    }
  });
}
/*
[.man]
ghq <cmd-name> :{cmdctl <cmd-name>}
    login
    exit
cmdctl <cmd-name>
proictl create <priority::def->0>
        del
        chown
        chmod
        chpri <new-priority>
        show
rolectl make <role-name> <permissions>
        del <role-name>
        add <role-name> <to-user-name> <to-user-num>
        rem <role-name> <from-user-name> <from-user-num>
filectl open
        close
        read <kind>
        add <data>
        do
userctl appoint <manager|moderator|security> <to-user-name> <to-user-num>
        dissmissal <manager|moderator|security> <from-user-name> <from-user-num>
        addlist := {userlist add}
        remlist := {userlist rem}
        showlist := {userlist show}
        isman? <user-name> <user-num>
userlist add
         rem
         show [-man]
[.sudo]
mkproi <proi-name> <proi-addr> := {proictl make <proi-name> <proi-addr> <proi-own>}
usermod retire <manager|moderator|security>

[.gen]
sudo <cmd-name>
proilist := {proictl show}
manlist := {userlist show -man}
help

*/
void filectl