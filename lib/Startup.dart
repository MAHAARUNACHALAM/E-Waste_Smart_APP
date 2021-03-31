class Ewaste {
  final int id;
  final String title;
  final String image;
  final String gendres;
  final String desc;

  Ewaste({this.id, this.title, this.image, this.gendres, this.desc});

  List<Ewaste> get ewasteData => [
        new Ewaste(
            id: 1,
            title: "REDUCE",
            image: "assets/images/reduce.jpg",
            gendres: "",
            desc:
                "50 million tonnes e-waste created per year, but only around 20% of e-waste is recycled"),
        new Ewaste(
            id: 2,
            title: "REUSE",
            image: "assets/images/reuse.jpg",
            gendres: "",
            desc:
                "Reuse – by taking, but not reprocessing, previously used items helps save time, money, energy and resources."),
        new Ewaste(
            id: 3,
            title: "Recycle",
            image: "assets/images/recycle.jpg",
            gendres: "",
            desc:
                "The average person has the opportunity to recycle more than 25,000 cans in a lifetime."),
      ];
}
