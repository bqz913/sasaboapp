import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

// 音を鳴らすウィジェット
class SoundWidget extends StatefulWidget {
  final int person;

  const SoundWidget({Key? key, required this.person}) : super(key: key);

  @override
  _SoundWidget createState() => _SoundWidget();
}

class _SoundWidget extends State<SoundWidget> {
  // 音を鳴らすウィジェットのリストを返すメソッド
  List<Widget> voiceList() {
    // 音を鳴らす
    void playSound(audio) {
      AudioCache _player = AudioCache();
      _player.play(audio);
    }

    var voiceDict = {};
    // 人とテキスト・wavの対応つけ
    if (widget.person == 0) {
      voiceDict = {
        'うぃーすささぼーでーす': 'sounds/sasabo/s_wiis.mp3',
        'おっしーは寝ようね〜': 'sounds/sasabo/s_neyoune.mp3',
        'おっしーをボコるんだ♪': 'sounds/sasabo/s_bokoru.mp3',
        'お芋の時間で1、2、3': 'sounds/sasabo/s_oimo.mp3',
        'こあくのしょんげん': 'sounds/sasabo/s_syongen.mp3',
        'この野郎': 'sounds/sasabo/s_konoyaro.mp3',
        'それは業者すぎる': 'sounds/sasabo/s_gyousya.mp3',
        'そんな事されたら一切勝てない': 'sounds/sasabo/s_katenai.mp3',
        'もうやめようぜこの勝負お兄ちゃん': 'sounds/sasabo/s_onityan.mp3',
        'アイスを食べよう♪': 'sounds/sasabo/s_ice.mp3',
        'バケモンだ': 'sounds/sasabo/s_bakemonda.mp3',
        'ハッピーバースデイ': 'sounds/sasabo/s_happybirthday.mp3',
        '上振れろ日本下振れろ敬大': 'sounds/sasabo/s_uwaburero.mp3',
        '乾いた笑い': 'sounds/sasabo/s_laugh.mp3',
        '全く入ってこないとりあえずモスクワ行くわ': 'sounds/sasabo/s_mosukuwa.mp3',
        '全然いい': 'sounds/sasabo/s_zenzenii.mp3',
        '出来なかったマングース': 'sounds/sasabo/s_mangusu.mp3',
        '完全に遅刻しました': 'sounds/sasabo/s_chikoku.mp3',
        '小泉総一郎でも勝てない': 'sounds/sasabo/s_koizumi.mp3',
        '弾け！山のラルビン': 'sounds/sasabo/s_hajike.mp3',
        '焼きそばを食べた佐々木': 'sounds/sasabo/s_yakisoba.mp3',
        '爆笑': 'sounds/sasabo/s_bakusyo.mp3',
        '精通機関車': 'sounds/sasabo/s_kikansya.mp3',
        '絶叫1': 'sounds/sasabo/s_zekkyou1.mp3',
        '絶叫2': 'sounds/sasabo/s_zekkyou2.mp3',
        '絶叫3': 'sounds/sasabo/s_zekkyou3.mp3',
        '絶叫4': 'sounds/sasabo/s_zekkyou4.mp3',
        '迷い込んだピエロ': 'sounds/sasabo/s_piero.mp3',
        '銀河銀河また来て銀河': 'sounds/sasabo/s_ginga.mp3',
        '頑張ってくれ、僕の分も': 'sounds/sasabo/s_ouen.mp3'
      };
    } else if (widget.person == 1) {
      voiceDict = {
        'Vサインの角度はバキュームクロウラー': 'sounds/tyannnabe/t_vsign.mp3',
        'ありえない': 'sounds/tyannnabe/t_arienai.mp3',
        'ある者はこう言った': 'sounds/tyannnabe/t_arumono.mp3',
        'おしゃかはらえ': 'sounds/tyannnabe/t_osyakaharae.mp3',
        'おはようございます': 'sounds/tyannnabe/t_ohayou.mp3',
        'おやすみ': 'sounds/tyannnabe/t_oyasumi.mp3',
        'きたバケモンだ': 'sounds/tyannnabe/t_bakemonda.mp3',
        'こんにちは': 'sounds/tyannnabe/t_konnitiha.mp3',
        'こんばんは': 'sounds/tyannnabe/t_konbanha.mp3',
        'ちゃちゃぼー': 'sounds/tyannnabe/t_chachabo.mp3',
        'どうもこんにちは、ちゃんなべです': 'sounds/tyannnabe/t_doumo.mp3',
        'ふざけてる': 'sounds/tyannnabe/t_huzaketeru.mp3',
        'もしもし': 'sounds/tyannnabe/t_moshimoshi.mp3',
        'やばいやばいやばいやばい': 'sounds/tyannnabe/t_yabai.mp3',
        'やめろやめろおおおぉぉぉぉぉ': 'sounds/tyannnabe/t_yamero.mp3',
        'イキそう': 'sounds/tyannnabe/t_ikisou.mp3',
        'カップラーメンの残った汁をご飯にかけて毎日食ってます': 'sounds/tyannnabe/t_shiru.mp3',
        'クレイジークレイジーヒクソングレーシー': 'sounds/tyannnabe/t_crazy.mp3',
        'ディープフェイクってし…知ってます？': 'sounds/tyannnabe/t_deepfake.mp3',
        'デュエプレで勝負しろ': 'sounds/tyannnabe/t_syobu.mp3',
        '人間ども': 'sounds/tyannnabe/t_ningendomo.mp3',
        '人間ども！': 'sounds/tyannnabe/t_ningendomo.mp3',
        '優太のいじわる': 'sounds/tyannnabe/t_ijiwaru.mp3',
        '奇声1': 'sounds/tyannnabe/t_kisei1.mp3',
        '奇声2': 'sounds/tyannnabe/t_kisei2.mp3',
        '奇声3': 'sounds/tyannnabe/t_kisei3.mp3',
        '奇声4': 'sounds/tyannnabe/t_kisei4.mp3',
        '奇声5': 'sounds/tyannnabe/t_kisei5.mp3',
        '奇声6': 'sounds/tyannnabe/t_kisei6.mp3',
        '奇声7': 'sounds/tyannnabe/t_kisei7.mp3',
        '奇声8': 'sounds/tyannnabe/t_kisei8.mp3',
        '奇声9': 'sounds/tyannnabe/t_kisei9.mp3',
        '奇笑': 'sounds/tyannnabe/t_laugh.mp3',
        '気持ちいいぃぃぃ': 'sounds/tyannnabe/t_kimotii.mp3',
        '無理無理無理無理': 'sounds/tyannnabe/t_muri.mp3',
        '粗末粗末粗末粗末': 'sounds/tyannnabe/t_somatu.mp3',
        '長嶋誕生日パンティ': 'sounds/tyannnabe/t_panty.mp3',
        '鳥取に砂丘ってあるんすか': 'sounds/tyannnabe/t_tottori.mp3'
      };
    } else {
      voiceDict = {
        'うわいぃぃ何だよこれぇ': 'sounds/ossy/o_nandayokore.mp3',
        'こんにちは': 'sounds/ossy/o_konnitiha.mp3',
        'ちわーすおっしーでーす': 'sounds/ossy/o_tiwaasu.mp3',
        'みなさんこんばんは': 'sounds/ossy/o_konbanha.mp3',
        'めちゃくちゃ辛えぞこれ': 'sounds/ossy/o_karai.mp3',
        'キイイ': 'sounds/ossy/o_kiii.mp3',
        'パンツ無くても全然生きていけるぞ人間': 'sounds/ossy/o_pants.mp3',
        '別にあんたのために作ったんじゃないんだからね': 'sounds/ossy/o_tundere.mp3',
        '巨乳が結構好きっていうのはあるかもしれない': 'sounds/ossy/o_kyonyu.mp3',
        '押野ってうぜえよな': 'sounds/ossy/o_uze.mp3',
        '押野直樹です': 'sounds/ossy/o_oshinonaoki.mp3',
        '持つ芋置く芋': 'sounds/ossy/o_imo.mp3',
        '没入するなあ': 'sounds/ossy/o_botunyu.mp3',
        '赤ちゃんささぼーに質問するおっしー': 'sounds/ossy/o_akatyan.mp3',
        '郵政民営化されてる': 'sounds/ossy/o_mineika.mp3'
      };
    }

    // widgetのリストを作成
    List<Widget> buttonList = [];
    voiceDict.forEach((context, audio) {
      Widget soundButton = GestureDetector(
          onTap: () {
            playSound(audio);
          },
          child: Container(
              height: 60,
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.5)),
              margin: const EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: Text(
                context,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                ),
              )));
      buttonList.add(soundButton);
    });
    return buttonList;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(width: 250, child: ListView(children: voiceList())));
  }
}
