import 'package:timeago/timeago.dart' as ta;

import 'sub.dart';
import 'user.dart';

final class Post {
  final String? typeName;
  final String? id;
  final int? parentId;
  final String? createdAt;
  final String? updatedAt;
  final String? deletedAt;
  final String? deleteScheduledAt;
  final String? reminderScheduledAt;
  final String? title;
  final String? searchTitle;
  final String? url;
  final String? searchText;
  final String? text;
  final String? lexicalState;
  final String? html;
  final Post? parent;
  final Post? root;
  final User? user;
  final int? userId;
  final int? depth;
  final bool? mine;
  final int? boost;
  final int? bounty;
  final List<int>? bountyPaidTo;
  final String? noteId;
  final int? sats;
  final int? downSats;
  final int? credits;
  final int? commentSats;
  final int? commentCredits;
  final int? commentCost;
  final int? commentBoost;
  final int? commentDownSats;
  final String? lastCommentAt;
  final int? upvotes;
  final int? meSats;
  final int? meCredits;
  final int? meDontLikeSats;
  final bool? meBookmark;
  final bool? meSubscription;
  final bool? meForward;
  final bool? freebie;
  final int? netInvestment;
  final bool? freedFreebie;
  final bool? bio;
  final int? ncomments;
  final int? nDirectComments;
  final List<Post>? comments;
  final String? path;
  final int? position;
  final int? prior;
  final bool? isJob;
  final int? pollCost;
  final Map<String, dynamic>? poll;
  final String? pollExpiresAt;
  final String? company;
  final String? location;
  final bool? remote;
  final Sub? sub;
  final String? subName;
  final List<Sub>? subs;
  final List<String>? subNames;
  final String? status;
  final int? uploadId;
  final String? otsHash;
  final String? parentOtsHash;
  final List<Map<String, dynamic>>? forwards;
  final Map<String, dynamic>? imgproxyUrls;
  final String? rel;
  final bool? apiKey;
  final int? cost;
  final Map<String, dynamic>? payIn;
  final String? meCommentsViewedAt;
  final int? fwdUserId;
  final bool? meDontLike;
  final bool? outlawed;
  final int? maxBid;
  final String? pageTitle;
  final Post? item;
  final Post? payInItem;
  final Map<String, dynamic>? bulletin;
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
    this.updatedAt,
    this.deletedAt,
    this.deleteScheduledAt,
    this.reminderScheduledAt,
    this.title,
    this.searchTitle,
    this.url,
    this.searchText,
    this.text,
    this.lexicalState,
    this.html,
    this.parent,
    this.root,
    this.user,
    this.userId,
    this.depth,
    this.mine,
    this.boost,
    this.bounty,
    this.bountyPaidTo,
    this.noteId,
    this.sats,
    this.downSats,
    this.credits,
    this.commentSats,
    this.commentCredits,
    this.commentCost,
    this.commentBoost,
    this.commentDownSats,
    this.lastCommentAt,
    this.upvotes,
    this.meSats,
    this.meCredits,
    this.meDontLikeSats,
    this.meBookmark,
    this.meSubscription,
    this.meForward,
    this.freebie,
    this.netInvestment,
    this.freedFreebie,
    this.bio,
    this.ncomments,
    this.nDirectComments,
    this.comments,
    this.path,
    this.position,
    this.prior,
    this.isJob,
    this.pollCost,
    this.poll,
    this.pollExpiresAt,
    this.company,
    this.location,
    this.remote,
    this.sub,
    this.subName,
    this.subs,
    this.subNames,
    this.status,
    this.uploadId,
    this.otsHash,
    this.parentOtsHash,
    this.forwards,
    this.imgproxyUrls,
    this.rel,
    this.apiKey,
    this.cost,
    this.payIn,
    this.meCommentsViewedAt,
    this.fwdUserId,
    this.meDontLike,
    this.outlawed,
    this.maxBid,
    this.pageTitle,
    this.item,
    this.payInItem,
    this.bulletin,
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
      typeName: json['__typename'] as String?,
      id: json['id'] as String?,
      parentId: json['parentId'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      deletedAt: json['deletedAt'] as String?,
      deleteScheduledAt: json['deleteScheduledAt'] as String?,
      reminderScheduledAt: json['reminderScheduledAt'] as String?,
      title: json['title'] as String?,
      searchTitle: json['searchTitle'] as String?,
      url: json['url'] as String?,
      searchText: json['searchText'] as String?,
      text: json['text'] as String?,
      lexicalState: json['lexicalState'] as String?,
      html: json['html'] as String?,
      parent: json['parent'] == null
          ? null
          : Post.fromJson(json['parent'] as Map<String, dynamic>),
      root: json['root'] == null
          ? null
          : Post.fromJson(json['root'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      userId: json['userId'] as int?,
      depth: json['depth'] as int?,
      mine: json['mine'] as bool?,
      boost: json['boost'] as int?,
      bounty: json['bounty'] as int?,
      bountyPaidTo: (json['bountyPaidTo'] as List?)?.cast<int>(),
      noteId: json['noteId'] as String?,
      sats: json['sats'] as int?,
      downSats: json['downSats'] as int?,
      credits: json['credits'] as int?,
      commentSats: json['commentSats'] as int?,
      commentCredits: json['commentCredits'] as int?,
      commentCost: json['commentCost'] as int?,
      commentBoost: json['commentBoost'] as int?,
      commentDownSats: json['commentDownSats'] as int?,
      lastCommentAt: json['lastCommentAt'] as String?,
      upvotes: json['upvotes'] as int?,
      meSats: json['meSats'] as int?,
      meCredits: json['meCredits'] as int?,
      meDontLikeSats: json['meDontLikeSats'] as int?,
      meBookmark: json['meBookmark'] as bool?,
      meSubscription: json['meSubscription'] as bool?,
      meForward: json['meForward'] as bool?,
      freebie: json['freebie'] as bool?,
      netInvestment: json['netInvestment'] as int?,
      freedFreebie: json['freedFreebie'] as bool?,
      bio: json['bio'] as bool?,
      ncomments: json['ncomments'] as int?,
      nDirectComments: json['nDirectComments'] as int?,
      comments: json['comments'] != null && json['comments']['comments'] != null
          ? (json['comments']['comments'] as List)
              .map((e) => Post.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
      path: json['path'] as String?,
      position: json['position'] as int?,
      prior: json['prior'] as int?,
      isJob: json['isJob'] as bool?,
      pollCost: json['pollCost'] as int?,
      poll: json['poll'] as Map<String, dynamic>?,
      pollExpiresAt: json['pollExpiresAt'] as String?,
      company: json['company'] as String?,
      location: json['location'] as String?,
      remote: json['remote'] as bool?,
      sub: json['sub'] == null
          ? null
          : Sub.fromJson(json['sub'] as Map<String, dynamic>),
      subName: json['subName'] as String?,
      subs: (json['subs'] as List?)
          ?.map((e) => Sub.fromJson(e as Map<String, dynamic>))
          .toList(),
      subNames: (json['subNames'] as List?)?.cast<String>(),
      status: json['status'] as String?,
      uploadId: json['uploadId'] as int?,
      otsHash: json['otsHash'] as String?,
      parentOtsHash: json['parentOtsHash'] as String?,
      forwards: (json['forwards'] as List?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      imgproxyUrls: json['imgproxyUrls'] as Map<String, dynamic>?,
      rel: json['rel'] as String?,
      apiKey: json['apiKey'] as bool?,
      cost: json['cost'] as int?,
      payIn: json['payIn'] as Map<String, dynamic>?,
      meCommentsViewedAt: json['meCommentsViewedAt'] as String?,
      fwdUserId: json['fwdUserId'] as int?,
      meDontLike: json['meDontLike'] as bool?,
      outlawed: json['outlawed'] as bool?,
      maxBid: json['maxBid'] as int?,
      pageTitle: json['pageTitle'] as String?,
      item: json['item'] == null
          ? null
          : Post.fromJson(json['item'] as Map<String, dynamic>),
      payInItem: json['payInItem'] == null
          ? null
          : Post.fromJson(json['payInItem'] as Map<String, dynamic>),
      bulletin: json['bulletin'] as Map<String, dynamic>?,
      days: json['days'] as int?,
      minSortTime: json['minSortTime'] as String?,
      mention: json['mention'] as String?,
      invite: json['invite'] as Map<String, dynamic>?,
      source: json['source'] as Map<String, dynamic>?,
      sources: json['sources'] as Map<String, dynamic>?,
      earnedSats: json['earnedSats'] as int?,
      sortTime: json['sortTime'] as String?,
    );
  }

  String get timeAgo => createdAt == null ? '' : ta.format(DateTime.parse(createdAt!));

  @override
  String toString() {
    return '$typeName Notification Item\n\nNot Implemented Yet';
  }

  Post copyWith({
    String? typeName,
    String? id,
    int? parentId,
    String? createdAt,
    String? updatedAt,
    String? deletedAt,
    String? deleteScheduledAt,
    String? reminderScheduledAt,
    String? title,
    String? searchTitle,
    String? url,
    String? searchText,
    String? text,
    String? lexicalState,
    String? html,
    Post? parent,
    Post? root,
    User? user,
    int? userId,
    int? depth,
    bool? mine,
    int? boost,
    int? bounty,
    List<int>? bountyPaidTo,
    String? noteId,
    int? sats,
    int? downSats,
    int? credits,
    int? commentSats,
    int? commentCredits,
    int? commentCost,
    int? commentBoost,
    int? commentDownSats,
    String? lastCommentAt,
    int? upvotes,
    int? meSats,
    int? meCredits,
    int? meDontLikeSats,
    bool? meBookmark,
    bool? meSubscription,
    bool? meForward,
    bool? freebie,
    int? netInvestment,
    bool? freedFreebie,
    bool? bio,
    int? ncomments,
    int? nDirectComments,
    List<Post>? comments,
    String? path,
    int? position,
    int? prior,
    bool? isJob,
    int? pollCost,
    Map<String, dynamic>? poll,
    String? pollExpiresAt,
    String? company,
    String? location,
    bool? remote,
    Sub? sub,
    String? subName,
    List<Sub>? subs,
    List<String>? subNames,
    String? status,
    int? uploadId,
    String? otsHash,
    String? parentOtsHash,
    List<Map<String, dynamic>>? forwards,
    Map<String, dynamic>? imgproxyUrls,
    String? rel,
    bool? apiKey,
    int? cost,
    Map<String, dynamic>? payIn,
    String? meCommentsViewedAt,
    int? fwdUserId,
    bool? meDontLike,
    bool? outlawed,
    int? maxBid,
    String? pageTitle,
    Post? item,
    Post? payInItem,
    Map<String, dynamic>? bulletin,
    int? days,
    String? minSortTime,
    String? mention,
    Map<String, dynamic>? invite,
    Map<String, dynamic>? source,
    Map<String, dynamic>? sources,
    int? earnedSats,
    String? sortTime,
  }) {
    return Post(
      typeName: typeName ?? this.typeName,
      id: id ?? this.id,
      parentId: parentId ?? this.parentId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      deleteScheduledAt: deleteScheduledAt ?? this.deleteScheduledAt,
      reminderScheduledAt: reminderScheduledAt ?? this.reminderScheduledAt,
      title: title ?? this.title,
      searchTitle: searchTitle ?? this.searchTitle,
      url: url ?? this.url,
      searchText: searchText ?? this.searchText,
      text: text ?? this.text,
      lexicalState: lexicalState ?? this.lexicalState,
      html: html ?? this.html,
      parent: parent ?? this.parent,
      root: root ?? this.root,
      user: user ?? this.user,
      userId: userId ?? this.userId,
      depth: depth ?? this.depth,
      mine: mine ?? this.mine,
      boost: boost ?? this.boost,
      bounty: bounty ?? this.bounty,
      bountyPaidTo: bountyPaidTo ?? this.bountyPaidTo,
      noteId: noteId ?? this.noteId,
      sats: sats ?? this.sats,
      downSats: downSats ?? this.downSats,
      credits: credits ?? this.credits,
      commentSats: commentSats ?? this.commentSats,
      commentCredits: commentCredits ?? this.commentCredits,
      commentCost: commentCost ?? this.commentCost,
      commentBoost: commentBoost ?? this.commentBoost,
      commentDownSats: commentDownSats ?? this.commentDownSats,
      lastCommentAt: lastCommentAt ?? this.lastCommentAt,
      upvotes: upvotes ?? this.upvotes,
      meSats: meSats ?? this.meSats,
      meCredits: meCredits ?? this.meCredits,
      meDontLikeSats: meDontLikeSats ?? this.meDontLikeSats,
      meBookmark: meBookmark ?? this.meBookmark,
      meSubscription: meSubscription ?? this.meSubscription,
      meForward: meForward ?? this.meForward,
      freebie: freebie ?? this.freebie,
      netInvestment: netInvestment ?? this.netInvestment,
      freedFreebie: freedFreebie ?? this.freedFreebie,
      bio: bio ?? this.bio,
      ncomments: ncomments ?? this.ncomments,
      nDirectComments: nDirectComments ?? this.nDirectComments,
      comments: comments ?? this.comments,
      path: path ?? this.path,
      position: position ?? this.position,
      prior: prior ?? this.prior,
      isJob: isJob ?? this.isJob,
      pollCost: pollCost ?? this.pollCost,
      poll: poll ?? this.poll,
      pollExpiresAt: pollExpiresAt ?? this.pollExpiresAt,
      company: company ?? this.company,
      location: location ?? this.location,
      remote: remote ?? this.remote,
      sub: sub ?? this.sub,
      subName: subName ?? this.subName,
      subs: subs ?? this.subs,
      subNames: subNames ?? this.subNames,
      status: status ?? this.status,
      uploadId: uploadId ?? this.uploadId,
      otsHash: otsHash ?? this.otsHash,
      parentOtsHash: parentOtsHash ?? this.parentOtsHash,
      forwards: forwards ?? this.forwards,
      imgproxyUrls: imgproxyUrls ?? this.imgproxyUrls,
      rel: rel ?? this.rel,
      apiKey: apiKey ?? this.apiKey,
      cost: cost ?? this.cost,
      payIn: payIn ?? this.payIn,
      meCommentsViewedAt: meCommentsViewedAt ?? this.meCommentsViewedAt,
      fwdUserId: fwdUserId ?? this.fwdUserId,
      meDontLike: meDontLike ?? this.meDontLike,
      outlawed: outlawed ?? this.outlawed,
      maxBid: maxBid ?? this.maxBid,
      pageTitle: pageTitle ?? this.pageTitle,
      item: item ?? this.item,
      payInItem: payInItem ?? this.payInItem,
      bulletin: bulletin ?? this.bulletin,
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
