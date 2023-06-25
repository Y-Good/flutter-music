class Personalized {
  int? id;
  int? type;
  String? name;
  String? copywriter;
  String? picUrl;
  bool? canDislike;
  int? trackNumberUpdateTime;
  int? playCount;
  int? trackCount;
  bool? highQuality;
  String? alg;

  Personalized({
    this.id,
    this.type,
    this.name,
    this.copywriter,
    this.picUrl,
    this.canDislike,
    this.trackNumberUpdateTime,
    this.playCount,
    this.trackCount,
    this.highQuality,
    this.alg,
  });

  Personalized.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    name = json['name'];
    copywriter = json['copywriter'];
    picUrl = json['picUrl'];
    canDislike = json['canDislike'];
    trackNumberUpdateTime = json['trackNumberUpdateTime'];
    playCount = json['playCount'];
    trackCount = json['trackCount'];
    highQuality = json['highQuality'];
    alg = json['alg'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['type'] = type;
    data['name'] = name;
    data['copywriter'] = copywriter;
    data['picUrl'] = picUrl;
    data['canDislike'] = canDislike;
    data['trackNumberUpdateTime'] = trackNumberUpdateTime;
    data['playCount'] = playCount;
    data['trackCount'] = trackCount;
    data['highQuality'] = highQuality;
    data['alg'] = alg;
    return data;
  }
}
