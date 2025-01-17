//
//  AppTextConstants.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 11/12/24.
//

import Foundation

class AppTextConstants {
    
    // MARK: - General Texts
    
    static var AppTitle: String  = "SmartFarm"
    
    static var AppSubTittle: String = "Powered by IHU"
    
    // MARK: - Image Texts
    
    static var AppIcon : String = "MainPhoto"
    
    static var MainPhotoHomePage : String = "MainHomePagePhoto"
    
    static var PlantImage : String = "Plant"
    
    
    // MARK: - HomeView Texts
    
    static var HomeViewTitle: String  = "Εφαρμογή και αξιοποίηση τεχνικών και λύσεων που προέρχονται από την Έξυπνη Γεωργία"
    
    static var HomeViewButton: String  = "Ανίχνευση Ασθένειας Φυτών"
    
    static var HomeViewSubTittle: String  =  "Αυτό το έργο επικεντρώνεται στην ανάπτυξη καινοτόμων εφαρμογών βαθιάς μάθησης και μοντέλων για την εκτίμηση της ανάπτυξης των φυτών μέσω δεδομένων εικόνας. Δημιουργούμε μια διαδικτυακή εφαρμογή που επιτρέπει στους αγρότες να ανεβάζουν φωτογραφίες των φυτών ή των καλλιεργειών τους και να λαμβάνουν ως απάντηση, μέσω του εκπαιδευμένου μοντέλου, την αντίστοιχη διάταξη που θα τους βοηθήσει να λάβουν αποφάσεις για την ανάπτυξη τους."
    
    // MARK: - InformationView Texts
    
    static var SmartAgricultureTitle: String  = "Εξυπνη Γεωργία"
    
    static var SmartAgricultureSubTitle: String  = "Η Έξυπνη Γεωργία, ή αλλιώς Ευφυής Γεωργία, αποτελεί μια σύγχρονη προσέγγιση της κλασικής γεωργίας. Συνδυάζει τεχνολογίες αιχμής, αισθητήρες και ανάλυση δεδομένων για τη βελτιστοποίηση των αγροτικών δραστηριοτήτων"
    
    static var WinningsTitle: String  = "Τι κερδίζουμε? "
    
    static var WinningsBulletList1: String  = "• Μειώνεται το ρίσκο των καλλιεργειών"
    static var WinningsBulletList2: String  = "• Αυξάνεται η ποιότητα και η απόδοση των προϊόντων"
    static var WinningsBulletList3: String  = "• Ενημέρωση πορείας ή προβλήματος σε πραγματικό χρόνο"
    
    static var DiseasesTitle : String = "Ασθένειες"
    
    static var DiseasesBulletList1: String  = "• Προκαλούν σημαντική μείωση στη φυσική και οικονομική παραγωγικότητα"
    static var DiseasesBulletList2: String  = "• Μπορούν να οδηγήσουν σε απώλεια καλλιεργειών, αν δεν εντοπιστούν και αντιμετωπιστούν έγκαιρα"
    
    static var PackageTitle: String = "Πακέτα Εργασίας"
    
    static var PackageSubTitle: String = "Το έργο περιλαμβάνει τη σχεδίαση αρχιτεκτονικής, την ανάπτυξη αλγορίθμων βαθιάς μάθησης και την ενσωμάτωσή τους σε διαδικτυακή εφαρμογή με λειτουργίες αυτοματισμού. Διασφαλίζεται η ποιότητα και ασφάλεια δεδομένων, ενώ το σύστημα αξιολογείται πιλοτικά. Παρέχεται υποστήριξη με προμήθεια εξοπλισμού και διάχυση των αποτελεσμάτων."
    
    static var GlobalConferencesTitle: String = "Διεθνή Συνέδρια"
    
    static var GlobalConferencesSubTitle: String  = "• Sustainable Smart Agriculture: Plant disease detection with deep learning techniques in cotton cultivation"
    
    static var LocalConferencesTitle: String  = "Εθνικά Συνέδρια"
    
    static var LocalConferencesBulletList1: String  = "• Καταγραφή υψών καλλιεργειών και χαρακτηρισμός καλλιέργειας"
    static var LocalConferencesBulletList2: String  = "• Εντοπισμός φυτικών ασθενειών με τεχνικές βαθιάς μηχανικής μάθησης, 34ο Πανελλήνιο Συνέδριο Στατιστικής"
    
    static var MagazinesTitle = "Διεθνή Περιοδικά"
    
    static var MagazinesBulletList1: String  = "•  Comparative analysis of convolutional neural networks for early diagnosis of plant diseases and pest in a multiclass dataset"
    static var MagazinesBulletList2: String  = "• Smart agriculture: Predictive height analysis for universal crop health classification"
    static var MagazinesBulletList3: String  = "• Transitioning to a Sustainable Smart Agriculture Using Deep Machine Learning Techniques: The Case of a Greek Project"
    
    
    // MARK: - TeamView Texts
    
    static var TeamViewTitle: String  = "Ομάδα Έργου"
    
    static var TeamMembers: [TeamStuct] =
    [
        TeamStuct(image: "Professor1", name: "ΑΛΚΙΒΙΆΔΗΣ ΤΣΙΜΠΊΡΗΣ", academicRole: "ΑΝΑΠΛΗΡΩΤΉΣ ΚΑΘΗΓΗΤΉΣ", projectRole: "Επιστημονικός Υπεύθυνος του έργου", side: true),
        TeamStuct(image: "Professor2", name: "ΔΗΜΉΤΡΙΟΣ ΒΑΡΣΆΜΗΣ", academicRole: "ΠΡΟΕΔΡΟΣ ΤΜΗΜΑΤΟΣ, ΑΝΑΠΛΗΡΩΤΗΣ ΚΑΘΗΓΗΤΗΣ", projectRole:"Ομάδα Τμήματος Μηχανικων Πληροφορικής, Υπολογιστών και Τηλεπικοινωνιών του ΔΙΠΑΕ", side: false),
        TeamStuct(image: "Professor3", name: "ΧΑΡΆΛΑΜΠΟΣ ΣΤΡΟΥΘΌΠΟΥΛΟΣ", academicRole: "ΚΑΘΗΓΗΤΉΣ", projectRole:"Ομάδα Τμήματος Μηχανικων Πληροφορικής, Υπολογιστών και Τηλεπικοινωνιών του ΔΙΠΑΕ", side: true),
        TeamStuct(image: "Professor4", name: "ΧΕΙΛΆΣ ΚΩΣΤΑΝΤΊΝΟΣ", academicRole: "ΚΑΘΗΓΗΤΉΣ", projectRole:"Ομάδα Τμήματος Μηχανικων Πληροφορικής, Υπολογιστών και Τηλεπικοινωνιών του ΔΙΠΑΕ", side: false),
        TeamStuct(image: "Professor5", name: "ΒΟΛΟΓΙΑΝΝΊΔΗΣ ΣΤΑΎΡΟΣ", academicRole: "ΑΝΑΠΛΗΡΩΤΉΣ ΚΑΘΗΓΗΤΉΣ", projectRole:"Ομάδα Τμήματος Μηχανικων Πληροφορικής, Υπολογιστών και Τηλεπικοινωνιών του ΔΙΠΑΕ", side: true),
        TeamStuct(image: "Professor6", name: "ΚΟΥΓΙΟΥΜΤΖΉΣ ΔΗΜΉΤΡΙΟΣ", academicRole: "ΚΑΘΗΓΗΤΉΣ ΤΜΉΜΑ ΗΜΜΗΥ, ΑΠΘ", projectRole:"Συνεργαζόμενα μέλη του Έργου", side: false),
        TeamStuct(image: "Professor7", name: "ΠΑΠΑΚΩΝΣΤΑΝΤΊΝΟΣ ΑΠΌΣΤΟΛΟΣ", academicRole: "ΚΑΘΗΓΗΤΉΣ, ΠΑΝΕΠΙΣΤΉΜΙΟ ΚΎΠΡΟΥ", projectRole:"Συνεργαζόμενα μέλη του Έργου", side: true),
        TeamStuct(image: "Professor8", name: "ΚΟΥΝΆΝΗ ΑΡΙΣΤΈΑ", academicRole: "ΓΕΩΠΌΝΟΣ, ΥΠΟΨΉΦΙΙΑ ΔΙΔΆΚΤΟΡΑΣ", projectRole:"Συνεργαζόμενα μέλη του Έργου", side: false),
        TeamStuct(image: "Professor9", name: "ΑΓΓΕΙΟΠΛΆΣΤΗΣ ΑΘΑΝΆΣΙΟΣ", academicRole: "ΥΠΟΨΗΦΙΟΣ ΔΙΔΑΚΤΟΡΑΣ", projectRole:"Συνεργαζόμενα μέλη του Έργου", side: true),
    ]
    
}
