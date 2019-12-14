package Enums;

public enum IconCardEnum {
    DIGITAL_ICON("https://res.cloudinary.com/finzy/image/upload/v1496830327/Group_4_kendsi.png",
            "Digitally Connect borrowers and investors"),

    DOCUMENTATION_ICON("https://res.cloudinary.com/finzy/image/upload/v1496830346/Group_3_tib7i9.png",
            "Documentation & Disbursement of Loans"),

    AUTOMATION_ICON("https://res.cloudinary.com/finzy/image/upload/v1496830393/Group_2_v5rg2k.png",
            "Automated monthly EMI collection & transfer");



    public String image;
    public String text;
    IconCardEnum(String image, String text ){
        this.image=image;
        this.text=text;
    }

}
