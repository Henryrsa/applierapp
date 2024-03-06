class NavigationItem {
  String title;

  NavigationItem(this.title);
}

List<NavigationItem> getNavigationItemList() {
  return <NavigationItem>[
    NavigationItem("Jobs"),
    NavigationItem("Applications"),
  ];
}

class Application {
  String position;
  String company;
  String status;
  String price;
  String logo;

  Application(this.position, this.company, this.status, this.price, this.logo);
}

List<Application> getApplications() {
  return <Application>[
    Application("Flutter UI / UX Designer", "Nike Inc.", "Delivered", "728.09",
        "lib/images/nike.png"),
    Application("Product Designer", "Google LLC", "Opened", "1092.12",
        "lib/images/google.png"),
    Application("UI / UX Designer", "Uber Technologies Inc.", "Cancelled",
        "1001.13", "lib/images/uber.png"),
    Application("Lead UI / UX Designer", "Apple Inc.", "Delivered", "1456.19",
        "lib/images/apple.png"),
    Application("Flutter UI Designer", "Amazon Inc.", "Not selected", "1092.14",
        "lib/images/amazon.jpg"),
  ];
}

class Job {
  String position;
  String company;
  String price;
  String concept;
  String logo;
  String city;

  Job(this.position, this.company, this.price, this.concept, this.logo,
      this.city);
}

List<Job> getJobs() {
  return <Job>[
    Job("Flutter UI/UX", "Nike Inc.", "728.09", "Full-Time",
        "lib/images/nike.png", "San Francisco, California"),
    Job("Product Designer", "Google LLC", "1092.15", "Part-Time",
        "lib/images/google.png", "San Francisco, California"),
    Job("UI / UX Designer", "Uber Technologies Inc.", "910.12", "Full-Time",
        "lib/images/uber.png", "San Francisco, California"),
    Job("Lead UI/UX Designer", "Apple Inc.", "1456.19", "Part-Time",
        "lib/images/apple.png", "San Francisco, California"),
    Job("Flutter Developer", "Amazon Inc.", "1092.14", "Full-Time",
        "lib/images/amazon.jpg", "San Francisco, California"),
  ];
}

List<String> getJobsRequirements() {
  return <String>[
    "Exceptional communication skills and team-working skills",
    "Know the principles of animation and you can create high fidelity prototypes",
    "Direct experience using Adobe Premiere, Adobe After Effects & other tools used to create videos, animations, etc.",
    "Good UI/UX knowledge",
  ];
}
