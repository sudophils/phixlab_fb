class User {
  final bool? isOnline;
  final String? userId;
  final String name;
  final String profilePhotoUrl;
  final List<Story>? stories;
  final List<Post>? posts;
  final List<Reels>? reels;

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
  final bool viewed;

  const Story({
    this.userId,
    required this.storyPhoto,
    required this.profilePhotoUrl,
    this.viewed = true,
  });
}

class Post {
  final String authorName;
  final String authorAvatar;
  final String postPhoto;
  final String postContent;
  final int postLikeCount;
  final String time;
  final int postCommentCount;

  const Post(
      {required this.time,
      required this.authorName,
      required this.authorAvatar,
      required this.postPhoto,
      required this.postContent,
      required this.postLikeCount,
      required this.postCommentCount});
}

class Reels {
  final String commentCount;
  final String likeCount;
  final String shareCount;
  final String videoUrl;

  const Reels(
      {required this.commentCount,
      required this.likeCount,
      required this.shareCount,
      required this.videoUrl});
}

const List<Story> stories = [
  Story(
      storyPhoto:
          "https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100__340.jpg",
      profilePhotoUrl:
          "https://cdn.pixabay.com/photo/2017/02/16/23/10/smile-2072907__340.jpg"),
  Story(
      viewed: false,
      storyPhoto:
          "https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947__340.jpg",
      profilePhotoUrl:
          "https://cdn.pixabay.com/photo/2016/11/29/13/14/attractive-1869761__340.jpg"),
  Story(
      storyPhoto:
          "https://cdn.pixabay.com/photo/2016/08/01/20/15/girl-1562025__340.jpg",
      profilePhotoUrl:
          "https://cdn.pixabay.com/photo/2016/08/01/20/15/girl-1562025__340.jpg"),
  Story(
      storyPhoto:
          "https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100__340.jpg",
      profilePhotoUrl:
          "https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947__340.jpg"),
  Story(
      storyPhoto:
          "https://cdn.pixabay.com/photo/2016/11/29/13/14/attractive-1869761__340.jpg",
      profilePhotoUrl:
          "https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100__340.jpg"),
  Story(
      storyPhoto:
          "https://cdn.pixabay.com/photo/2015/11/26/00/14/woman-1063100__340.jpg",
      profilePhotoUrl:
          "https://cdn.pixabay.com/photo/2017/02/16/23/10/smile-2072907__340.jpg")
];
const real = Reels(
    commentCount: "55",
    likeCount: "15",
    shareCount: '2.6',
    videoUrl:
        "https://cdn.pixabay.com/photo/2017/01/14/13/59/dock-1979547__340.jpg");

const List<Post> posts = [
  Post(
      time: "",
      authorName: "phixlab",
      authorAvatar:
          "https://cdn.pixabay.com/photo/2016/11/21/15/38/beach-1846009__340.jpg",
      postPhoto:
          "https://cdn.pixabay.com/photo/2016/11/29/05/55/adult-1867665__340.jpg",
      postContent: "",
      postLikeCount: 3,
      postCommentCount: 40),
  Post(
      time: "",
      authorName: "deni roy",
      authorAvatar:
          "https://cdn.pixabay.com/photo/2022/04/29/14/28/woman-7163866__480.jpg",
      postPhoto:
          "https://cdn.pixabay.com/photo/2018/01/09/06/43/sea-3070982__340.jpg",
      postContent: "",
      postLikeCount: 3,
      postCommentCount: 30),
  Post(
      time: "",
      authorName: "phil olive",
      authorAvatar:
          "https://cdn.pixabay.com/photo/2017/09/06/18/22/island-2722471__340.jpg",
      postPhoto:
          "https://cdn.pixabay.com/photo/2016/09/25/18/26/a-couple-of-1694334__340.jpg",
      postContent: "",
      postLikeCount: 12,
      postCommentCount: 4),
  Post(
      time: "",
      authorName: "jim glover",
      authorAvatar:
          "https://cdn.pixabay.com/photo/2016/11/21/15/38/beach-1846009__340.jpg",
      postPhoto:
          "https://cdn.pixabay.com/photo/2016/11/19/12/21/man-1838991__340.jpg",
      postContent: "",
      postLikeCount: 13,
      postCommentCount: 90),
  Post(
      time: "",
      authorName: "phixlab",
      authorAvatar:
          "https://cdn.pixabay.com/photo/2022/04/29/14/28/woman-7163866__480.jpg",
      postPhoto:
          "https://cdn.pixabay.com/photo/2018/01/24/19/49/people-3104635__340.jpg",
      postContent: "",
      postLikeCount: 6,
      postCommentCount: 55),
  Post(
      time: "",
      authorName: "phils",
      authorAvatar:
          "https://cdn.pixabay.com/photo/2017/09/06/18/22/island-2722471__340.jpg",
      postPhoto:
          "https://cdn.pixabay.com/photo/2014/11/17/20/55/girl-535251__340.jpg",
      postContent: "",
      postLikeCount: 3,
      postCommentCount: 40),
];

User get userData => const User(
      userId: '007',
      isOnline: true,
      name: "Phil Olive",
      profilePhotoUrl:
          'https://cdn.pixabay.com/photo/2022/04/29/14/28/woman-7163866__480.jpg',
      posts: posts,
      stories: stories,
      reels: [real],
    );
