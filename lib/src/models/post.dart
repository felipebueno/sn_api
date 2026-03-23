import 'package:timeago/timeago.dart' as ta;

import 'user.dart';

final class Post {
  final String? typeName;
  final String? id;
  final int? parentId;
  final String? createdAt;
  final String? deletedAt;
  final String? title;
  final String? url;
  final int? fwdUserId;
  final String? otsHash;
  final int? position;
  final int? sats;
  final int? boost;
  final int? bounty;
  final List<dynamic>? bountyPaidTo;
  final int? noteId;
  final String? path;
  final int? upvotes;
  final int? meSats;
  final bool? meDontLike;
  final bool? meBookmark;
  final bool? meSubscription;
  final bool? meForward;
  final bool? outlawed;
  final bool? freebie;
  final String? bio;
  final int? ncomments;
  final int? commentSats;
  final String? lastCommentAt;
  final int? maxBid;
  final bool? isJob;
  final String? company;
  final String? location;
  final bool? remote;
  final String? subName;
  final Map<String, dynamic>? sub;
  final List<dynamic>? subs;
  final int? pollCost;
  final String? pollExpiresAt;
  final String? status;
  final int? uploadId;
  final bool? mine;
  final int? credits;
  final List<dynamic>? forwards;
  final List<dynamic>? imgproxyUrls;
  final String? rel;
  final User? user;
  final String? text;
  final List<Post>? comments;
  final String? pageTitle;
  final Post? item;
  final Post? payInItem;
  final Map<String, dynamic>? payIn;
  final Map<String, dynamic>? bulletin;
  final Post? root;
  final int? days;
  final String? minSortTime;
  final String? mention;
  final Map<String, dynamic>? invite;
  final Map<String, dynamic>? source;
  final Map<String, dynamic>? sources;
  final int? earnedSats;
  final String? sortTime;

  Post({
    this.typeName,
    this.id,
    this.parentId,
    this.createdAt,
    this.deletedAt,
    this.title,
    this.url,
    this.fwdUserId,
    this.otsHash,
    this.position,
    this.sats,
    this.boost,
    this.bounty,
    this.bountyPaidTo,
    this.noteId,
    this.path,
    this.upvotes,
    this.meSats,
    this.meDontLike,
    this.meBookmark,
    this.meSubscription,
    this.meForward,
    this.outlawed,
    this.freebie,
    this.bio,
    this.ncomments,
    this.commentSats,
    this.lastCommentAt,
    this.maxBid,
    this.isJob,
    this.company,
    this.location,
    this.remote,
    this.subName,
    this.sub,
    this.subs,
    this.pollCost,
    this.pollExpiresAt,
    this.status,
    this.uploadId,
    this.mine,
    this.credits,
    this.forwards,
    this.imgproxyUrls,
    this.rel,
    this.user,
    this.text,
    this.comments,
    this.pageTitle,
    this.item,
    this.payInItem,
    this.payIn,
    this.bulletin,
    this.root,
    this.days,
    this.minSortTime,
    this.mention,
    this.invite,
    this.source,
    this.sources,
    this.earnedSats,
    this.sortTime,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      typeName: json['__typename'],
      id: json['id'],
      parentId: json['parentId'],
      createdAt: json['createdAt'],
      deletedAt: json['deletedAt'],
      title: json['title'],
      url: json['url'],
      fwdUserId: json['fwdUserId'],
      otsHash: json['otsHash'],
      position: json['position'],
      sats: json['sats'],
      boost: json['boost'],
      bounty: json['bounty'],
      bountyPaidTo: json['bountyPaidTo'],
      noteId: json['noteId'],
      path: json['path'],
      upvotes: json['upvotes'],
      meSats: json['meSats'],
      meDontLike: json['meDontLike'],
      meBookmark: json['meBookmark'],
      meSubscription: json['meSubscription'],
      meForward: json['meForward'],
      outlawed: json['outlawed'],
      freebie: json['freebie'],
      bio: json['bio'],
      ncomments: json['ncomments'],
      commentSats: json['commentSats'],
      lastCommentAt: json['lastCommentAt'],
      maxBid: json['maxBid'],
      isJob: json['isJob'],
      company: json['company'],
      location: json['location'],
      remote: json['remote'],
      subName: json['subName'],
      sub: json['sub'] is Map ? Map<String, dynamic>.from(json['sub'] as Map) : null,
      subs: json['subs'] as List?,
      pollCost: json['pollCost'],
      pollExpiresAt: json['pollExpiresAt'],
      status: json['status'],
      uploadId: json['uploadId'],
      mine: json['mine'],
      credits: json['credits'],
      forwards: json['forwards'] as List?,
      imgproxyUrls: json['imgproxyUrls'] as List?,
      rel: json['rel'],
      user: json['user'] == null ? null : User.fromJson(json['user']),
      text: json['text'],
      comments: json['comments'] != null && json['comments']['comments'] != null
          ? (json['comments']['comments'] as List).map((i) => Post.fromJson(i)).toList()
          : null,
      pageTitle: json['pageTitle'],
      item: json['item'] == null ? null : Post.fromJson(json['item']),
      payInItem: json['payInItem'] == null ? null : Post.fromJson(json['payInItem']),
      payIn: json['payIn'] is Map
          ? Map<String, dynamic>.from(json['payIn'] as Map)
          : null,
      bulletin: json['bulletin'] is Map
          ? Map<String, dynamic>.from(json['bulletin'] as Map)
          : null,
      root: json['root'] == null ? null : Post.fromJson(json['root']),
      days: json['days'],
      minSortTime: json['minSortTime'],
      mention: json['mention'],
      invite: json['invite'] is Map ? Map<String, dynamic>.from(json['invite'] as Map) : null,
      source: json['source'] is Map ? Map<String, dynamic>.from(json['source'] as Map) : null,
      sources: json['sources'] is Map ? Map<String, dynamic>.from(json['sources'] as Map) : null,
      earnedSats: json['earnedSats'],
      sortTime: json['sortTime'],
    );
  }

  String get timeAgo => createdAt == null ? '' : ta.format(DateTime.parse(createdAt!));

  @override
  String toString() {
    return '$typeName Notification Item\n\nNot Implemented Yet';
  }

  Post copyWith({
    final String? typeName,
    final String? id,
    final int? parentId,
    final String? createdAt,
    final String? deletedAt,
    final String? title,
    final String? url,
    final int? fwdUserId,
    final String? otsHash,
    final int? position,
    final int? sats,
    final int? boost,
    final int? bounty,
    final List<dynamic>? bountyPaidTo,
    final int? noteId,
    final String? path,
    final int? upvotes,
    final int? meSats,
    final bool? meDontLike,
    final bool? meBookmark,
    final bool? meSubscription,
    final bool? meForward,
    final bool? outlawed,
    final bool? freebie,
    final String? bio,
    final int? ncomments,
    final int? commentSats,
    final String? lastCommentAt,
    final int? maxBid,
    final bool? isJob,
    final String? company,
    final String? location,
    final bool? remote,
    final String? subName,
    final Map<String, dynamic>? sub,
    final List<dynamic>? subs,
    final int? pollCost,
    final String? pollExpiresAt,
    final String? status,
    final int? uploadId,
    final bool? mine,
    final int? credits,
    final List<dynamic>? forwards,
    final List<dynamic>? imgproxyUrls,
    final String? rel,
    final User? user,
    final String? text,
    final List<Post>? comments,
    final String? pageTitle,
    final Post? item,
    final Post? payInItem,
    final Map<String, dynamic>? payIn,
    final Map<String, dynamic>? bulletin,
    final Post? root,
    final int? days,
    final String? minSortTime,
    final String? mention,
    final Map<String, dynamic>? invite,
    final Map<String, dynamic>? source,
    final Map<String, dynamic>? sources,
    final int? earnedSats,
    final String? sortTime,
  }) {
    return Post(
      typeName: typeName ?? this.typeName,
      id: id ?? this.id,
      parentId: parentId ?? this.parentId,
      createdAt: createdAt ?? this.createdAt,
      deletedAt: deletedAt ?? this.deletedAt,
      title: title ?? this.title,
      url: url ?? this.url,
      fwdUserId: fwdUserId ?? this.fwdUserId,
      otsHash: otsHash ?? this.otsHash,
      position: position ?? this.position,
      sats: sats ?? this.sats,
      boost: boost ?? this.boost,
      bounty: bounty ?? this.bounty,
      bountyPaidTo: bountyPaidTo ?? this.bountyPaidTo,
      noteId: noteId ?? this.noteId,
      path: path ?? this.path,
      upvotes: upvotes ?? this.upvotes,
      meSats: meSats ?? this.meSats,
      meDontLike: meDontLike ?? this.meDontLike,
      meBookmark: meBookmark ?? this.meBookmark,
      meSubscription: meSubscription ?? this.meSubscription,
      meForward: meForward ?? this.meForward,
      outlawed: outlawed ?? this.outlawed,
      freebie: freebie ?? this.freebie,
      bio: bio ?? this.bio,
      ncomments: ncomments ?? this.ncomments,
      commentSats: commentSats ?? this.commentSats,
      lastCommentAt: lastCommentAt ?? this.lastCommentAt,
      maxBid: maxBid ?? this.maxBid,
      isJob: isJob ?? this.isJob,
      company: company ?? this.company,
      location: location ?? this.location,
      remote: remote ?? this.remote,
      subName: subName ?? this.subName,
      sub: sub ?? this.sub,
      subs: subs ?? this.subs,
      pollCost: pollCost ?? this.pollCost,
      pollExpiresAt: pollExpiresAt ?? this.pollExpiresAt,
      status: status ?? this.status,
      uploadId: uploadId ?? this.uploadId,
      mine: mine ?? this.mine,
      credits: credits ?? this.credits,
      forwards: forwards ?? this.forwards,
      imgproxyUrls: imgproxyUrls ?? this.imgproxyUrls,
      rel: rel ?? this.rel,
      user: user ?? this.user,
      text: text ?? this.text,
      comments: comments ?? this.comments,
      pageTitle: pageTitle ?? this.pageTitle,
      item: item ?? this.item,
      payInItem: payInItem ?? this.payInItem,
      payIn: payIn ?? this.payIn,
      bulletin: bulletin ?? this.bulletin,
      root: root ?? this.root,
      days: days ?? this.days,
      minSortTime: minSortTime ?? this.minSortTime,
      mention: mention ?? this.mention,
      invite: invite ?? this.invite,
      source: source ?? this.source,
      sources: sources ?? this.sources,
      earnedSats: earnedSats ?? this.earnedSats,
      sortTime: sortTime ?? this.sortTime,
    );
  }
}
