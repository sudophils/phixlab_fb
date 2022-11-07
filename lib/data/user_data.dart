class User {
  final bool? isOnline;
  final String? userId;
  final String name;
  final String profilePhotoUrl;
  final List<Story>? stories;
  final List<Post>? posts;
  final Reels? reels;

  const User({
    this.userId,
    this.isOnline,
    required this.name,
    required this.profilePhotoUrl,
    this.stories,
    this.posts,
    this.reels,
  });
}

class Story {
  final String? userId;
  final String storyPhoto;
  final String profilePhotoUrl;

  const Story(
      {this.userId, required this.storyPhoto, required this.profilePhotoUrl});
}

class Post {
  final String postPhoto;
  final String postContent;
  final int postLikeCount;
  final int postCommentCount;
  final int shareCount;

  const Post(this.postPhoto, this.postContent, this.postLikeCount,
      this.postCommentCount, this.shareCount);
}

class Reels {
  final int commentCount;
  final int likeCount;
  final int shareCount;
  final String videoUrl;

  const Reels(
      this.commentCount, this.likeCount, this.shareCount, this.videoUrl);
}
