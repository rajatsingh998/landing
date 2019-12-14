package  Enums;
public enum Card1enum{
    AMIT("Amit Moree", "https://res.cloudinary.com/finzy/image/upload/v1538986872/amit_ihskhe.jpg",
            "Amit brings vision, business strategy and core financial sector domain knowledge to Finzy. Amit is" +
                    " an expert in the Indian Banking & Financial Services industry with over 16 years of experience across" +
                    " ICICI Bank, Credit Suisse AG and Edelweiss."),

    ABHINANDAN("Abhinandan Sangam", "https://res.cloudinary.com/finzy/image/upload/v1538986872/abhinandan_aukpdl.jpg",
            "Abhinandan is an expert in building capabilities across geographies. He oversees Tech and Product at finzy and " +
                    "has over 19 years of experience with organizations like ThoughtWorks, Sabre, MindTree, Siemens, Amadeus."),

    APPORAV("Apoorv Gawde","https://res.cloudinary.com/finzy/image/upload/v1538986872/apoorv_mt9lo0.jpg",
            "Apoorv has over 13 years of experience in envisioning and building digital products. He has worked across" +
                    " the globe to create and deliver products. With a passion for experience design, at finzy, he focuses on product" +
                    " strategy and service design"),

    VISHWAS("Vishwas Dixit", "https://res.cloudinary.com/finzy/image/upload/v1538986872/vishwas_ztkchg.jpg",
            "Vishwas is the face of Finzy. With 23 years of Sales, Marketing & Distribution experience in organizations" +
                    " like Toyota, TVS and Dunlop,he brings in expertise in market expansion projects and creating distribution networks.");



    public  String name;
    public  String image;
    public  String about;

    Card1enum( String name, String image, String about){
        this.name=name;
        this.image=image;
        this.about=about;
    }


}
