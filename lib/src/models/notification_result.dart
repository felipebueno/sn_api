import 'post.dart';

/// Result of fetching notifications, including the server's `lastChecked`
/// timestamp so callers can distinguish unread from read notifications.
class NotificationResult {
  /// When the user last viewed notifications (before this fetch).
  /// Notifications with `sortTime > lastChecked` are unread.
  final DateTime? lastChecked;

  /// Opaque cursor for fetching the next page, or null if no more pages.
  final String? cursor;

  /// The notification items for this page.
  final List<Post> notifications;

  NotificationResult({
    this.lastChecked,
    this.cursor,
    required this.notifications,
  });
}
