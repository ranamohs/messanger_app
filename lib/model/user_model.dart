class UserModel{
  final String image;
  final String name;
  final String message;

  UserModel({required this.image ,required this.name ,required this.message});

}

List<UserModel> users =[
  UserModel(image:'assets/images/image1.jpeg', name: "Rana mohsen", message: "How are You?"),
  UserModel(image:'assets/images/image2.jpg', name: "Salma Ahmed", message: "where are You???"),
  UserModel(image:'assets/images/image6.jpeg', name: "kareem Ali", message: "what are you doing now?"),
  UserModel(image:'assets/images/image3.jpg', name: "Menna Hussien", message: "i waitting your meesage"),
  UserModel(image:'assets/images/image7.jpg', name: "Mostafa ahmed", message: "How are Youuuuuuuuuuuuuuu?"),
  UserModel(image:'assets/images/image4.jpeg', name: "Amira omar", message: "Okaayy"),
  UserModel(image:'assets/images/image5.jpeg', name: "Ahmed mohamed", message: "I`m Fine , and You"),


];
