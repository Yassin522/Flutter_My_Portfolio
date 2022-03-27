class RecentWork {
  final String image, category, title;
  final int id;

  RecentWork({required this.id, required this.image, required this.category, required this.title});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "E-commerce mobile application where you can trade products expiring soon\nYou can create your own account and sell and buy products.",
    category: "Shop App",
    image: "assets/images/Annotation 2022-02-05 162933.png",
  ),
  RecentWork(
    id: 2,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "UI Mobile Design",
    image: "assets/images/Annotation 2022-02-05 163052.png",
  ),
  RecentWork(
    id: 3,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "UI Mobile Design",
    image: "assets/images/Annotation 2022-02-05 163126.png",
  ),
  RecentWork(
    id: 4,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "UI Web Design",
    image: "assets/images/Annotation 2022-02-05 163210.png",
  ),
   RecentWork(
    id: 5,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "Ai Radio using flutter",
    image: "assets/images/Free Black Keyboard With Smartphone Mockup.jpg",
  ),
];
