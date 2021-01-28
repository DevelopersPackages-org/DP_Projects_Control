inport "pakage:src/shell.dart"
inport "pakage:src/dataobj.dart"

main(List<String> args) {
  Nyxx bot = Nyxx(const String.fromEnvironment('dpproictltoken'));

  final String prefix_man = "#";
  final String prefix_usr = "$";


  bot.onReady.listen((ReadyEvent e) {
    print("Ready!");
  });
  bot.onMessageReceived.listen((event) {
    String prefix_this = event.message.content.substring(,);
    String command_this = event.message.content.substring(,);
    if (event.message.content == "!ping") {
      event.message.channel.send(content: "Pong!");
    }
    if (event.message.content == "!ping") {
      event.message.channel.send(content: "Pong!");
    }
  });
}
/*
Valid Commands:
[.man]
ghq <cmd> :{<cmd>}
    login
    exit
cmdctl <cmd-name> (<cmds>)    set cmd aleas
let <var-name>=<atai>  set environment variants
var :={let, cause GlobalVariantErr}
proictl create <proi-name> <proi-addr> <proi-field> <priority::def->0>   create a project
        del <proi-addr>                                      delete a project
        chown <proi-addr>
        chmod <proi-addr> <to-user-name> <to-user-num>        add/remove user to/from a project
        chfie <proi-addr> <proi-field>
        chpri <proi-addr> <new-priority>                      change priority
        addfie <field-name> <priority::def->0>
        chfie <old-field-name> <new-field-name> <priority::def->0>
        delfie <field-name>
        show                                                  show list of all projects
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
sudo <cmd>
proilist := {proictl show}
manlist := {userlist show -man}
help

~<nr> 引数
!<name> 環境変数
|　依存直列
>  データ流し込み
&  並列タスク
;  直列タスク
※各種リストではfield.priority＞field.name>project.priorotyの順でプロジェクトが整列される
*/
void filectl(){}