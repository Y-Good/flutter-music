class User {
  String? backgroundUrl;
  String? detailDescription;
  bool? followed;
  String? avatarUrl;
  int? userId;
  int? userType;
  int? accountStatus;
  int? vipType;
  String? nickname;
  int? birthday;
  int? gender;
  int? province;
  int? city;
  bool? defaultAvatar;
  bool? mutual;
  dynamic remarkName;
  int? authStatus;
  int? djStatus;
  String? description;
  String? signature;
  int? authority;
  int? followeds;
  int? follows;
  int? eventCount;
  dynamic avatarDetail;
  int? playlistCount;
  int? playlistBeSubscribedCount;

  User({
    this.backgroundUrl,
    this.detailDescription,
    this.followed,
    this.avatarUrl,
    this.userId,
    this.userType,
    this.accountStatus,
    this.vipType,
    this.nickname,
    this.birthday,
    this.gender,
    this.province,
    this.city,
    this.defaultAvatar,
    this.mutual,
    this.remarkName,
    this.authStatus,
    this.djStatus,
    this.description,
    this.signature,
    this.authority,
    this.followeds,
    this.follows,
    this.eventCount,
    this.avatarDetail,
    this.playlistCount,
    this.playlistBeSubscribedCount,
  });

  User.fromJson(Map<String, dynamic> json) {
    backgroundUrl = json['backgroundUrl'];
    detailDescription = json['detailDescription'];
    followed = json['followed'];
    avatarUrl = json['avatarUrl'];
    userId = json['userId'];
    userType = json['userType'];
    accountStatus = json['accountStatus'];
    vipType = json['vipType'];
    nickname = json['nickname'];
    birthday = json['birthday'];
    gender = json['gender'];
    province = json['province'];
    city = json['city'];
    defaultAvatar = json['defaultAvatar'];
    mutual = json['mutual'];
    remarkName = json['remarkName'];
    authStatus = json['authStatus'];
    djStatus = json['djStatus'];
    description = json['description'];
    signature = json['signature'];
    authority = json['authority'];
    followeds = json['followeds'];
    follows = json['follows'];
    eventCount = json['eventCount'];
    avatarDetail = json['avatarDetail'];
    playlistCount = json['playlistCount'];
    playlistBeSubscribedCount = json['playlistBeSubscribedCount'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['backgroundUrl'] = backgroundUrl;
    data['detailDescription'] = detailDescription;
    data['followed'] = followed;
    data['avatarUrl'] = avatarUrl;
    data['userId'] = userId;
    data['userType'] = userType;
    data['accountStatus'] = accountStatus;
    data['vipType'] = vipType;
    data['nickname'] = nickname;
    data['birthday'] = birthday;
    data['gender'] = gender;
    data['province'] = province;
    data['city'] = city;
    data['defaultAvatar'] = defaultAvatar;
    data['mutual'] = mutual;
    data['remarkName'] = remarkName;
    data['authStatus'] = authStatus;
    data['djStatus'] = djStatus;
    data['description'] = description;
    data['signature'] = signature;
    data['authority'] = authority;
    data['followeds'] = followeds;
    data['follows'] = follows;
    data['eventCount'] = eventCount;
    data['avatarDetail'] = avatarDetail;
    data['playlistCount'] = playlistCount;
    data['playlistBeSubscribedCount'] = playlistBeSubscribedCount;
    return data;
  }
}
