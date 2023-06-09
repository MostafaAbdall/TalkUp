class AutoGenerate {
  AutoGenerate({
    required this.communityId,
    required this.userId,
    required this.postId,
    required this.contant,
    required this.likes,
    required this.post,
    required this.user,
  });
  late final int communityId;
  late final int userId;
  late final int postId;
  late final String contant;
  late final int likes;
  late final Post post;
  late final User user;

  AutoGenerate.fromJson(Map<String, dynamic> json){
    communityId = json['communityId'];
    userId = json['userId'];
    postId = json['postId'];
    contant = json['contant'];
    likes = json['likes'];
    post = Post.fromJson(json['post']);
    user = User.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['communityId'] = communityId;
    _data['userId'] = userId;
    _data['postId'] = postId;
    _data['contant'] = contant;
    _data['likes'] = likes;
    _data['post'] = post.toJson();
    _data['user'] = user.toJson();
    return _data;
  }
}

class Post {
  Post({
    required this.postId,
    required this.userId,
    required this.creatAt,
    required this.communities,
  });
  late final int postId;
  late final int userId;
  late final String creatAt;
  late final List<String> communities;

  Post.fromJson(Map<String, dynamic> json){
    postId = json['postId'];
    userId = json['userId'];
    creatAt = json['creatAt'];
    communities = List.castFrom<dynamic, String>(json['communities']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['postId'] = postId;
    _data['userId'] = userId;
    _data['creatAt'] = creatAt;
    _data['communities'] = communities;
    return _data;
  }
}

class User {
  User({
    required this.userId,
    required this.gender,
    required this.dob,
    required this.phone,
    required this.name,
    required this.password,
    required this.photo,
    required this.gmail,
    required this.creatAt,
    required this.paymentInfo,
    required this.role,
    required this.communities,
    required this.exps,
    required this.ratings,
    required this.sessions,
  });
  late final int userId;
  late final String gender;
  late final String dob;
  late final String phone;
  late final String name;
  late final String password;
  late final String photo;
  late final String gmail;
  late final String creatAt;
  late final int paymentInfo;
  late final String role;
  late final List<String> communities;
  late final List<Exps> exps;
  late final List<Ratings> ratings;
  late final List<Sessions> sessions;

  User.fromJson(Map<String, dynamic> json){
    userId = json['userId'];
    gender = json['gender'];
    dob = json['dob'];
    phone = json['phone'];
    name = json['name'];
    password = json['password'];
    photo = json['photo'];
    gmail = json['gmail'];
    creatAt = json['creatAt'];
    paymentInfo = json['paymentInfo'];
    role = json['role'];
    communities = List.castFrom<dynamic, String>(json['communities']);
    exps = List.from(json['exps']).map((e)=>Exps.fromJson(e)).toList();
    ratings = List.from(json['ratings']).map((e)=>Ratings.fromJson(e)).toList();
    sessions = List.from(json['sessions']).map((e)=>Sessions.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['userId'] = userId;
    _data['gender'] = gender;
    _data['dob'] = dob;
    _data['phone'] = phone;
    _data['name'] = name;
    _data['password'] = password;
    _data['photo'] = photo;
    _data['gmail'] = gmail;
    _data['creatAt'] = creatAt;
    _data['paymentInfo'] = paymentInfo;
    _data['role'] = role;
    _data['communities'] = communities;
    _data['exps'] = exps.map((e)=>e.toJson()).toList();
    _data['ratings'] = ratings.map((e)=>e.toJson()).toList();
    _data['sessions'] = sessions.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Exps {
  Exps({
    required this.expId,
    required this.userId,
    required this.speciality,
    required this.certificate,
    required this.session,
    required this.user,
  });
  late final int expId;
  late final int userId;
  late final String speciality;
  late final String certificate;
  late final Session session;
  late final String user;

  Exps.fromJson(Map<String, dynamic> json){
    expId = json['expId'];
    userId = json['userId'];
    speciality = json['speciality'];
    certificate = json['certificate'];
    session = Session.fromJson(json['session']);
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['expId'] = expId;
    _data['userId'] = userId;
    _data['speciality'] = speciality;
    _data['certificate'] = certificate;
    _data['session'] = session.toJson();
    _data['user'] = user;
    return _data;
  }
}

class Session {
  Session({
    required this.sessionId,
    required this.userId,
    required this.rateId,
    required this.expId,
    required this.status,
    required this.date,
    required this.creatAt,
    required this.startTime,
    required this.endTime,
    required this.sessionFees,
    required this.duration,
    required this.rate,
    required this.ratings,
    required this.sessionNavigation,
    required this.user,
  });
  late final int sessionId;
  late final int userId;
  late final int rateId;
  late final int expId;
  late final String status;
  late final String date;
  late final String creatAt;
  late final StartTime startTime;
  late final EndTime endTime;
  late final int sessionFees;
  late final Duration duration;
  late final String rate;
  late final List<String> ratings;
  late final String sessionNavigation;
  late final String user;

  Session.fromJson(Map<String, dynamic> json){
    sessionId = json['sessionId'];
    userId = json['userId'];
    rateId = json['rateId'];
    expId = json['expId'];
    status = json['status'];
    date = json['date'];
    creatAt = json['creatAt'];
    startTime = StartTime.fromJson(json['startTime']);
    endTime = EndTime.fromJson(json['endTime']);
    sessionFees = json['sessionFees'];
    duration = Duration.fromJson(json['duration']);
    rate = json['rate'];
    ratings = List.castFrom<dynamic, String>(json['ratings']);
    sessionNavigation = json['sessionNavigation'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['sessionId'] = sessionId;
    _data['userId'] = userId;
    _data['rateId'] = rateId;
    _data['expId'] = expId;
    _data['status'] = status;
    _data['date'] = date;
    _data['creatAt'] = creatAt;
    _data['startTime'] = startTime.toJson();
    _data['endTime'] = endTime.toJson();
    _data['sessionFees'] = sessionFees;
    _data['duration'] = duration.toJson();
    _data['rate'] = rate;
    _data['ratings'] = ratings;
    _data['sessionNavigation'] = sessionNavigation;
    _data['user'] = user;
    return _data;
  }
}

class StartTime {
  StartTime({
    required this.ticks,
    required this.days,
    required this.hours,
    required this.milliseconds,
    required this.microseconds,
    required this.nanoseconds,
    required this.minutes,
    required this.seconds,
    required this.totalDays,
    required this.totalHours,
    required this.totalMilliseconds,
    required this.totalMicroseconds,
    required this.totalNanoseconds,
    required this.totalMinutes,
    required this.totalSeconds,
  });
  late final int ticks;
  late final int days;
  late final int hours;
  late final int milliseconds;
  late final int microseconds;
  late final int nanoseconds;
  late final int minutes;
  late final int seconds;
  late final int totalDays;
  late final int totalHours;
  late final int totalMilliseconds;
  late final int totalMicroseconds;
  late final int totalNanoseconds;
  late final int totalMinutes;
  late final int totalSeconds;

  StartTime.fromJson(Map<String, dynamic> json){
    ticks = json['ticks'];
    days = json['days'];
    hours = json['hours'];
    milliseconds = json['milliseconds'];
    microseconds = json['microseconds'];
    nanoseconds = json['nanoseconds'];
    minutes = json['minutes'];
    seconds = json['seconds'];
    totalDays = json['totalDays'];
    totalHours = json['totalHours'];
    totalMilliseconds = json['totalMilliseconds'];
    totalMicroseconds = json['totalMicroseconds'];
    totalNanoseconds = json['totalNanoseconds'];
    totalMinutes = json['totalMinutes'];
    totalSeconds = json['totalSeconds'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['ticks'] = ticks;
    _data['days'] = days;
    _data['hours'] = hours;
    _data['milliseconds'] = milliseconds;
    _data['microseconds'] = microseconds;
    _data['nanoseconds'] = nanoseconds;
    _data['minutes'] = minutes;
    _data['seconds'] = seconds;
    _data['totalDays'] = totalDays;
    _data['totalHours'] = totalHours;
    _data['totalMilliseconds'] = totalMilliseconds;
    _data['totalMicroseconds'] = totalMicroseconds;
    _data['totalNanoseconds'] = totalNanoseconds;
    _data['totalMinutes'] = totalMinutes;
    _data['totalSeconds'] = totalSeconds;
    return _data;
  }
}

class EndTime {
  EndTime({
    required this.ticks,
    required this.days,
    required this.hours,
    required this.milliseconds,
    required this.microseconds,
    required this.nanoseconds,
    required this.minutes,
    required this.seconds,
    required this.totalDays,
    required this.totalHours,
    required this.totalMilliseconds,
    required this.totalMicroseconds,
    required this.totalNanoseconds,
    required this.totalMinutes,
    required this.totalSeconds,
  });
  late final int ticks;
  late final int days;
  late final int hours;
  late final int milliseconds;
  late final int microseconds;
  late final int nanoseconds;
  late final int minutes;
  late final int seconds;
  late final int totalDays;
  late final int totalHours;
  late final int totalMilliseconds;
  late final int totalMicroseconds;
  late final int totalNanoseconds;
  late final int totalMinutes;
  late final int totalSeconds;

  EndTime.fromJson(Map<String, dynamic> json){
    ticks = json['ticks'];
    days = json['days'];
    hours = json['hours'];
    milliseconds = json['milliseconds'];
    microseconds = json['microseconds'];
    nanoseconds = json['nanoseconds'];
    minutes = json['minutes'];
    seconds = json['seconds'];
    totalDays = json['totalDays'];
    totalHours = json['totalHours'];
    totalMilliseconds = json['totalMilliseconds'];
    totalMicroseconds = json['totalMicroseconds'];
    totalNanoseconds = json['totalNanoseconds'];
    totalMinutes = json['totalMinutes'];
    totalSeconds = json['totalSeconds'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['ticks'] = ticks;
    _data['days'] = days;
    _data['hours'] = hours;
    _data['milliseconds'] = milliseconds;
    _data['microseconds'] = microseconds;
    _data['nanoseconds'] = nanoseconds;
    _data['minutes'] = minutes;
    _data['seconds'] = seconds;
    _data['totalDays'] = totalDays;
    _data['totalHours'] = totalHours;
    _data['totalMilliseconds'] = totalMilliseconds;
    _data['totalMicroseconds'] = totalMicroseconds;
    _data['totalNanoseconds'] = totalNanoseconds;
    _data['totalMinutes'] = totalMinutes;
    _data['totalSeconds'] = totalSeconds;
    return _data;
  }
}

class Duration {
  Duration({
    required this.ticks,
    required this.days,
    required this.hours,
    required this.milliseconds,
    required this.microseconds,
    required this.nanoseconds,
    required this.minutes,
    required this.seconds,
    required this.totalDays,
    required this.totalHours,
    required this.totalMilliseconds,
    required this.totalMicroseconds,
    required this.totalNanoseconds,
    required this.totalMinutes,
    required this.totalSeconds,
  });
  late final int ticks;
  late final int days;
  late final int hours;
  late final int milliseconds;
  late final int microseconds;
  late final int nanoseconds;
  late final int minutes;
  late final int seconds;
  late final int totalDays;
  late final int totalHours;
  late final int totalMilliseconds;
  late final int totalMicroseconds;
  late final int totalNanoseconds;
  late final int totalMinutes;
  late final int totalSeconds;

  Duration.fromJson(Map<String, dynamic> json){
    ticks = json['ticks'];
    days = json['days'];
    hours = json['hours'];
    milliseconds = json['milliseconds'];
    microseconds = json['microseconds'];
    nanoseconds = json['nanoseconds'];
    minutes = json['minutes'];
    seconds = json['seconds'];
    totalDays = json['totalDays'];
    totalHours = json['totalHours'];
    totalMilliseconds = json['totalMilliseconds'];
    totalMicroseconds = json['totalMicroseconds'];
    totalNanoseconds = json['totalNanoseconds'];
    totalMinutes = json['totalMinutes'];
    totalSeconds = json['totalSeconds'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['ticks'] = ticks;
    _data['days'] = days;
    _data['hours'] = hours;
    _data['milliseconds'] = milliseconds;
    _data['microseconds'] = microseconds;
    _data['nanoseconds'] = nanoseconds;
    _data['minutes'] = minutes;
    _data['seconds'] = seconds;
    _data['totalDays'] = totalDays;
    _data['totalHours'] = totalHours;
    _data['totalMilliseconds'] = totalMilliseconds;
    _data['totalMicroseconds'] = totalMicroseconds;
    _data['totalNanoseconds'] = totalNanoseconds;
    _data['totalMinutes'] = totalMinutes;
    _data['totalSeconds'] = totalSeconds;
    return _data;
  }
}

class Ratings {
  Ratings({
    required this.rateingId,
    required this.userId,
    required this.sessionId,
    required this.date,
    required this.value,
    required this.massage,
    required this.session,
    required this.sessions,
    required this.user,
  });
  late final int rateingId;
  late final int userId;
  late final int sessionId;
  late final String date;
  late final int value;
  late final String massage;
  late final Session session;
  late final List<Sessions> sessions;
  late final String user;

  Ratings.fromJson(Map<String, dynamic> json){
    rateingId = json['rateingId'];
    userId = json['userId'];
    sessionId = json['sessionId'];
    date = json['date'];
    value = json['value'];
    massage = json['massage'];
    session = Session.fromJson(json['session']);
    sessions = List.from(json['sessions']).map((e)=>Sessions.fromJson(e)).toList();
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['rateingId'] = rateingId;
    _data['userId'] = userId;
    _data['sessionId'] = sessionId;
    _data['date'] = date;
    _data['value'] = value;
    _data['massage'] = massage;
    _data['session'] = session.toJson();
    _data['sessions'] = sessions.map((e)=>e.toJson()).toList();
    _data['user'] = user;
    return _data;
  }
}

class Sessions {
  Sessions({
    required this.sessionId,
    required this.userId,
    required this.rateId,
    required this.expId,
    required this.status,
    required this.date,
    required this.creatAt,
    required this.startTime,
    required this.endTime,
    required this.sessionFees,
    required this.duration,
    required this.rate,
    required this.ratings,
    required this.sessionNavigation,
    required this.user,
  });
  late final int sessionId;
  late final int userId;
  late final int rateId;
  late final int expId;
  late final String status;
  late final String date;
  late final String creatAt;
  late final StartTime startTime;
  late final EndTime endTime;
  late final int sessionFees;
  late final Duration duration;
  late final String rate;
  late final List<String> ratings;
  late final String sessionNavigation;
  late final String user;

  Sessions.fromJson(Map<String, dynamic> json){
    sessionId = json['sessionId'];
    userId = json['userId'];
    rateId = json['rateId'];
    expId = json['expId'];
    status = json['status'];
    date = json['date'];
    creatAt = json['creatAt'];
    startTime = StartTime.fromJson(json['startTime']);
    endTime = EndTime.fromJson(json['endTime']);
    sessionFees = json['sessionFees'];
    duration = Duration.fromJson(json['duration']);
    rate = json['rate'];
    ratings = List.castFrom<dynamic, String>(json['ratings']);
    sessionNavigation = json['sessionNavigation'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['sessionId'] = sessionId;
    _data['userId'] = userId;
    _data['rateId'] = rateId;
    _data['expId'] = expId;
    _data['status'] = status;
    _data['date'] = date;
    _data['creatAt'] = creatAt;
    _data['startTime'] = startTime.toJson();
    _data['endTime'] = endTime.toJson();
    _data['sessionFees'] = sessionFees;
    _data['duration'] = duration.toJson();
    _data['rate'] = rate;
    _data['ratings'] = ratings;
    _data['sessionNavigation'] = sessionNavigation;
    _data['user'] = user;
    return _data;
  }
}