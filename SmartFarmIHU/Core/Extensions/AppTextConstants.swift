//
//  AppTextConstants.swift
//  SmartFarmIHU
//
//  Created by Dimitris Giouvanakis on 11/12/24.
//

import Foundation

class AppTextConstants {
    
    // MARK: - LobbyView Texts
    
    static var LobbyHeader: String  { AppViewModel.shared.appLanguage == .greek
        ? "Εφαρμογή και αξιοποίηση τεχνικών και λύσεων που προέρχονται από την Έξυπνη Γεωργία"
        : "Application and utilization of techniques and solutions derived from Smart Agriculture" }
    
    static var LobbyButton: String  { AppViewModel.shared.appLanguage == .greek
        ? "Ανίχνευση Ασθένειας Φυτών on-line"
        : "Plant Disease Detection on-line"
    }
    
    static var LobbyButtonSubTittle: String  { AppViewModel.shared.appLanguage == .greek
        ? "(61 διαφορετικές κατηγορίες)"
        : "(61 different categories)"
    }
    // MARK: - TextView Texts
    
    static var TextViewText1: String  { AppViewModel.shared.appLanguage == .greek
        ? "Συγκεκριμένα σε αυτό το έργο αναπτύσσουμε καινοτόμες εφαρμογές βαθιάς μάθησης και μοντέλα για την εκτίμηση της ανάπτυξης των φυτών χρησιμοποιώντας δεδομένα εικόνας."
        : "Specifically in this project we develop innovative deep learning applications and models to estimate plant growth using image data"
    }
    
    static var TextViewText2: String  { AppViewModel.shared.appLanguage == .greek
        ? "Τα δεδομένα λαμβάνονται με διάφορους τρόπους: Εικόνες α) από έξυπνες κινητές συσκευές (smart phones, tablet, camera) β) λήψεις εικόνων από drones γ) λήψεις σημείων των καλλιεργειών με συσκευή lidar από drone."
        : "The data is obtained in various ways: Images a) from smart mobile devices (smart phones, tablets, cameras) b) image downloads from drones c) images of crops with a lidar device from a drone."
    }
    
    static var TextViewText3: String  { AppViewModel.shared.appLanguage == .greek
        ? "Αναπτύσσεται μια διαδικτυακή εφαρμογή όπου ο αγρότης μπορεί να ανεβάσει φωτογραφία ενός φυτού ή της καλλιέργειας και θα λάβει ως απάντηση από το εκπαιδευμένο μοντέλο βαθιάς μάθησης την αντίστοιχη διάταξη για τη λήψη αποφάσεων."
        : "A web application is being developed where the farmer can upload a photo of a plant or crop and will get a response from the trained deep learning model with the corresponding layout for decision making."
    }
    
    static var TextViewListHeader: String  { AppViewModel.shared.appLanguage == .greek
        ? "Με τη χρήση drone"
        : "By using a drone"
    }
    
    static var TextViewListItem1: String  { AppViewModel.shared.appLanguage == .greek
        ? "α) θα γίνεται σάρωση της καλλιέργειες με lidar ή φωτογραμμετρία"
        : "a) crops will be scanned with lidar or photogrammetr"
    }
    
    static var TextViewListItem2: String  { AppViewModel.shared.appLanguage == .greek
        ? "β) θα εντοπίζονται τα σημεία (x,y) με ανωμαλίες στην εξέλιξη της καλλιέργειας,"
        : "b) the points (x,y) with anomalies in the development of the crop will be identified,"
    }
    
    static var TextViewListItem3: String  { AppViewModel.shared.appLanguage == .greek
        ? "γ) θα λαμβάνονται φωτογραφίες υψηλής ανάλυσης,"
        : "c) high resolution photographs will be taken"
    }
    
    static var TextViewListItem4: String  { AppViewModel.shared.appLanguage == .greek
        ? "δ) θα αποστέλλονται στο μοντέλο διάγνωσης και"
        : "d) will be sent to the diagnosis model and"
    }
    
    static var TextViewListItem5: String  { AppViewModel.shared.appLanguage == .greek
        ? "ε) θα ενημερώνεται ο γεωπόνος ή ο αγρότης με οδηγίες για την αντιμετώπισης της ανωμαλίας αυτής."
        : "e) the agronomist or the farmer will be informed with instructions for dealing with this anomaly."
    }
    
    static var TextViewFooterText1: String  { AppViewModel.shared.appLanguage == .greek
        ? "Για την προτεινόμενη εφαρμογή απαιτείται ο κατάλληλος σχεδιασμός και ανάπτυξη αλγορίθμων καθώς και η δημιουργία σχετικού λογισμικού για την αυτόματη αξιολόγηση της αγροτικής καλλιέργειας από την ψηφιακή εικόνα."
        : "The proposed application requires the appropriate design and development of algorithms as well as the creation of relevant software for the automatic evaluation of agricultural crops from the digital image."
    }
    
    static var TextViewFooterText2: String  { AppViewModel.shared.appLanguage == .greek
        ? "Διατίθεται μια πλατφόρμα ασύγχρονης εκπαίδευσης για την εξ αποστάσεως εκπαίδευση των αγροτών σε νέες τεχνολογίες για βιώσιμη γεωργία, ορθολογική χρήση φυτοφαρμάκων – λιπασμάτων και συντήρηση μηχανημάτων, ψεκαστήρες κ.λπ."
        : "An asynchronous training platform is available for remote training of farmers in new technologies for sustainable agriculture, rational use of pesticides – fertilizers and maintenance of machinery, sprayers etc."
    }
    
    // MARK: - LobbyFooterView Texts
    
    static var FooterViewText = "Designed by alkisser. All Rights Reserved © 2022."
    
    // MARK: - DropDown Menu Texts
    
    static var home: String  { AppViewModel.shared.appLanguage == .greek
        ? "Αρχική"
        : "Home"
    }
    
    static var purpose: String  { AppViewModel.shared.appLanguage == .greek
        ? "Σκοπός του Έργου"
        : "Purpose of the Project"
    }
    
    static var team: String  { AppViewModel.shared.appLanguage == .greek
        ? "Ομάδα Έργου"
        : "Project Team"
    }
    
    static var package: String  { AppViewModel.shared.appLanguage == .greek
        ? "Πακέτα Εργασίας"
        : "Work Packages"
    }
    
    static var result: String  { AppViewModel.shared.appLanguage == .greek
        ? "Αποτελέσματα"
        : "Results"
    }
    
    static var contract: String  { AppViewModel.shared.appLanguage == .greek
        ? "Επικοινωνία"
        : "Contract"
    }
    
    static var english: String  { AppViewModel.shared.appLanguage == .greek
        ? "English"
        : "Greek"
    }
    
    
    // MARK: - PurposeView Texts
    
    static var header: String  { AppViewModel.shared.appLanguage == .greek
        ? "Σκοπός του Έργου"
        : "Purpose of the Project"
    }
    
    static var headerTitle: String  { AppViewModel.shared.appLanguage == .greek
        ? "Εφαρμογή και αξιοποίηση τεχνικών και λύσεων που προέρχονται από την Έξυπνη Γεωργία."
        : "Application and utilization of techniques and solutions derived from Smart Agriculture."
    }
    
    static var headerSubTittle: String  { AppViewModel.shared.appLanguage == .greek
        ? "- Σκοπός -"
        : "- Purpose -"
    }
    
    static var buttonDiseases: String  { AppViewModel.shared.appLanguage == .greek
        ? "61 Ασθένειες Φυτών"
        : "61 Plant Diseases"
    }
    
    static var buttonSmartFarming: String  { AppViewModel.shared.appLanguage == .greek
        ? "Έξυπνη Γεωργία (ή Ευφυής γεωργία)"
        : "Smart Agriculture (or Smart Agriculture)"
    }
    
    static var buttonΤechniques: String  { AppViewModel.shared.appLanguage == .greek
        ? "Εφαρμογή και αξιοποίηση τεχνικών και λύσεων που προέρχονται από την Έξυπνη Γεωργία."
        : "Application and utilization of techniques and solutions derived from Smart Agriculture."
    }
    
    static var buttonChart: String  { AppViewModel.shared.appLanguage == .greek
        ? "Διάγραμμα ροής του έργου"
        : "Project flow chart"
    }
    
    static var buttonGrowth: String  { AppViewModel.shared.appLanguage == .greek
        ? "Αποτύπωση της ανάπτυξης μιας καλλιέργειας"
        : "Capturing the growth of a crop"
    }
    
    static var buttonFind: String  { AppViewModel.shared.appLanguage == .greek
        ? "Εύρεση προβληματικών περιοχών"
        : "Finding problem areas"
    }
    
    static var buttonMethodology: String  { AppViewModel.shared.appLanguage == .greek
        ? "Μεθοδολογία Μοντέλου Μηχανικής Μάθησης"
        : "Machine Learning Model Methodology"
    }
    
    static var buttonDeveloping: String  { AppViewModel.shared.appLanguage == .greek
        ? "Ανάπτυξη μοντέλων βαθιάς μηχανικής μάθησης"
        : "Developing deep machine learning models"
    }
    
    
    // MARK: - DiseasesView Texts
    
    static var Text1: String  { AppViewModel.shared.appLanguage == .greek
        ? "Οι 61 διαφορετικές κατηγορίες φυτικών ασθενειών που μπορεί να αναγνωρίσουν"
        : "The 61 different categories of plant diseases they can recognize"
    }
    
    static var Text2: String  { AppViewModel.shared.appLanguage == .greek
        ? "τα 7 εκπαιδευμένα μοντέλα Βαθιάς Μηχανικής Μάθησης."
        : "the 7 trained Deep Machine Learning models."
    }
    
    static var machineLearningModels = [
        "EfficientNetB0",
        "EfficientNetB1",
        "EfficientNetB7",
        "ResNet50",
        "VGG15",
        "MobileNet",
        "Custom SerresCNN",
    ]
    
    static var Text3: String  { AppViewModel.shared.appLanguage == .greek
        ? "dataset με  61 κατηγορίες (38 VillagePlant Dataset +23 SerresPlant Dataset)"
        : "dataset with 61 categories (38 VillagePlant Dataset +23 SerresPlant Dataset)"
    }
    
    static var plantDiseases: [String] {
        if AppViewModel.shared.appLanguage == .greek {
            return [
                "Αμπέλι Ερινώση",
                "Αμπέλι Ιαπωνικό σκαθάρι",
                "Αμπέλι Περονόσπορος",
                "Αμπέλι Φύλλα Υγιές",
                "Αμυγδαλιά εξοάσκος",
                "Αμυγδαλιά μονίλια",
                "Αμυγδαλιά υγιές",
                "Αμυγδαλιά φουζικόκο",
                "Αχλαδιά σκωρίασιAxladia Skoriash",
                "Βακκίνιο υγιές",
                "Βαμβάκη Αφίδες",
                "Βαμβάκη πράσινο σκουλίκι",
                "Βαμβάκη Τερτάνυξος",
                "Βαμβάκη Υγιές",
                "Βατόμουρο υγιές",
                "Βερυκοκιά σκαθάρη",
                "Γαρυφαλλιά Θύπας",
                "Ελιά Κυκλώνιο",
                "Ηλία άκαρη",
                "Ηλία υγιές",
                "Ιός μπούκλας κίτρινων φύλλων ντομάτας",
                "Καλαμπόκη Ανθράκας",
                "Καλαμπόκη Σεζαμία",
                "Καλαμπόκη υγιές",
                "Καλαμπόκι (αραβόσιτος) Βόρειος Φύλλος",
                "Καλαμπόκι (καλαμπόκι) Κηλίδα φύλλου Cercospora Γκρι κηλίδα φύλλου",
                "Καλαμπόκι (καλαμπόκι) Κοινή σκουριά",
                "Καλαμπόκι (καλαμπόκι) υγιές",
                "Καρύδια Ανθρακός",
                "Καψάλισμα φύλλων φράουλας",
                "Κεράσι (συμπεριλαμβανομένου του ξινιού) υγιές",
                "Κεράσι (συμπεριλαμβανομένου του ξινού) Ερυσίδι",
                "Κηλίδα σε φύλλα ντομάτας Septoria",
                "Κηλίδα φύλλων σταφυλιού (Isariopsis Leaf Spot)",
                "Κολοκυθάκι ωίδιο",
                "Μαύρη σήψη σταφυλιού",
                "Μήλο Cedar σκουριά μήλων",
                "Μήλο Septoriosh",
                "Μήλο Μαύρη σήψη",
                "Μήλο μήλο ψώρα",
                "Μήλο υγιές",
                "Μούχλα φύλλων όψιμης ντομάτας",
                "Μχλια Μχλολονθη",
                "Ντομάτα Ακάρεα αράχνης με δύο κηλίδες",
                "Ντομάτα Βακτηριδιακό σημείο",
                "Ντομάτα Ιός μωσαϊκού ντομάτας",
                "Ντομάτα Πρώιμη μάστιγα",
                "Ντομάτα υγιής",
                "Πατάτα όψιμο μόσχο",
                "Πατάτα Πρώιμη μάστιγα",
                "Πατάτα υγιής",
                "Πιπέρι υγιές",
                "Πιπεριά καμπάνα Βακτηριδιακό σημείο",
                "Πορτοκαλί Haunglongbing (πρασίνισμα εσπεριδοειδών)",
                "Ροδάκινο Βακτηριδιακό σημείο",
                "Ροδάκινο υγιές",
                "Σημείο στόχου ντομάτας",
                "Σόγια υγιής",
                "Σταφύλι esca (Μαύρη Ιλαρά)",
                "Σταφύλι υγιές",
                "Φράουλα υγιής"
            ]
        } else {
            return [
                "Grape Erinose",
                "Grape Japanese Beetle",
                "Grape Downy Mildew",
                "Grape Healthy Leaves",
                "Almond Exoaschos",
                "Almond Monilia",
                "Almond Healthy",
                "Almond Fusicoccus",
                "Pear Rust",
                "Blueberry Healthy",
                "Cotton Aphids",
                "Cotton Green Worm",
                "Cotton Tetranychus",
                "Cotton Healthy",
                "Blackberry Healthy",
                "Apricot Beetle",
                "Carnation Thypas",
                "Olive Cyclonio",
                "Sunflower Healthy",
                "Sunflower Rust",
                "Tomato Yellow Leaf Curl Virus",
                "Corn Anthracnose",
                "Corn Sesamia",
                "Corn Healthy",
                "Corn Northern Leaf Blight",
                "Corn Cercospora Leaf Spot",
                "Corn Common Rust",
                "Corn Healthy",
                "Walnut Anthracnose",
                "Strawberry Leaf Scorch",
                "Cherry Healthy",
                "Cherry Powdery Mildew",
                "Tomato Septoria Leaf Spot",
                "Grape Isariopsis Leaf Spot",
                "Zucchini Powdery Mildew",
                "Grape Black Rot",
                "Apple Cedar Rust",
                "Apple Septoria",
                "Apple Black Rot",
                "Apple Scab",
                "Apple Healthy",
                "Tomato Late Blight",
                "Tomato Two-Spotted Spider Mite",
                "Tomato Bacterial Spot",
                "Tomato Mosaic Virus",
                "Tomato Early Blight",
                "Tomato Healthy",
                "Potato Late Blight",
                "Potato Early Blight",
                "Potato Healthy",
                "Pepper Healthy",
                "Bell Pepper Bacterial Spot",
                "Orange Huanglongbing (Citrus Greening)",
                "Peach Bacterial Spot",
                "Peach Healthy",
                "Tomato Target Spot",
                "Soybean Healthy",
                "Grape Esca (Black Measles)",
                "Grape Healthy",
                "Strawberry Healthy"
            ]
        }
    }
    
    static var bulletPoint = "\u{2022}"
    
    // MARK: - SmartFarmingView Texts
    
    static var smartFarmingList: [String] {
        if AppViewModel.shared.appLanguage == .greek {
            return [
                "Η Έξυπνη Γεωργία (ή Ευφυής γεωργία ) αποτελεί εξέλιξη της κλασικής γεωργίας που συνδυάζει σύγχρονες τεχνολογίες, αισθητήρες και δεδομένα για να βελτιστοποιήσει υπάρχουσες αγροτικές δραστηριότητες, μειώνοντας το ρίσκο και παράλληλα αυξάνοντας την ποιότητα και την απόδοση των αγροτικών προϊόντων.",
                "Επιπλέον δίνει νέες και καινοτόμες δυνατότητες στους αγρότες όπως η παρακολούθηση δεδομένων σχετικά με τον αγρό τους σε πραγματικό χρόνο με την χρήση της επιστήμης για την άμεση και αποτελεσματική λήψη αποφάσεων."
            ]
        } else {
            return [
                "Smart Agriculture (or Intelligent agriculture) is an evolution of classic agriculture that combines modern technologies, sensors and data to optimize existing agricultural activities, reducing risk while increasing the quality and yield of agricultural products.",
                "In addition, it gives new and innovative possibilities to farmers such as monitoring data about their field in real time using science for immediate and effective decision making."
            ]
        }
    }
    
    static var smartFarmText1: String  { AppViewModel.shared.appLanguage == .greek
        ? "Ευφυής γεωργία σημαίνει ορθές γεωργικές πρακτικές, που συμβάλλουν στην εξοικονόμηση διαθέσιμων φυσικών πόρων και στη βέλτιστη χρήση των εισροών στη γεωργία."
        : "Smart agriculture means sound agricultural practices, which contribute to the conservation of available natural resources and the optimal use of agricultural inputs."
    }
    
    static var smartFarmText2: String  { AppViewModel.shared.appLanguage == .greek
        ? "Οι εχθροί και ασθένειες των φυτών θεωρούνται από τους κύριους παράγοντες που επηρεάζουν την παραγωγή τροφίμων και ευθύνονται για τη σημαντική μείωση της φυσικής ή οικονομικής παραγωγικότητας των καλλιεργειών."
        : "Plant pests and diseases are considered among the main factors that affect food production and are responsible for the significant reduction in the physical or economic productivity of crops."
    }
    
    static var smartFarmText3: String  { AppViewModel.shared.appLanguage == .greek
        ? "Κύρια πρόκληση της γεωργίας είναι ο σωστός εντοπισμός των συμπτωμάτων των εχθρών και ασθενειών που επηρεάζουν τις καλλιέργειες και η ακριβής και έγκαιρη διάγνωση τους ώστε να ακολουθηθούν οι κατάλληλες πρακτικές αντιμετώπισης."
        : "The main challenge of agriculture is the correct identification of the symptoms of enemies and diseases that affect the crops and their accurate and timely diagnosis in order to follow the appropriate treatment practices."
    }
    
    // MARK: - TechniquesView Texts
    
    static var techiquesList: [String] {
        if AppViewModel.shared.appLanguage == .greek {
            return [
                "Συγκεκριμένα σε αυτό το έργο αναπτύσσουμε καινοτόμες εφαρμογές βαθιάς μάθησης και μοντέλα για την εκτίμηση της ανάπτυξης των φυτών χρησιμοποιώντας δεδομένα εικόνας.",
                "Τα δεδομένα λαμβάνονται με διάφορους τρόπους: Εικόνες α) από έξυπνες κινητές συσκευές (smart phones, tablet, camera) β) λήψεις εικόνων από drones γ) λήψεις σημείων των καλλιεργειών με συσκευή lidar από drone",
                "Αναπτύσσεται μια διαδικτυακή εφαρμογή όπου ο αγρότης μπορεί να ανεβάσει φωτογραφία ενός φυτού ή της καλλιέργειας και θα λάβει ως απάντηση από το εκπαιδευμένο μοντέλο βαθιάς μάθησης την αντίστοιχη διάταξη για τη λήψη αποφάσεων.",
                "Με τη χρήση drone α) θα γίνεται σάρωση της καλλιέργειες με lidar ή φωτογραμμετρία β) θα εντοπίζονται τα σημεία (x,y) με ανωμαλίες στην εξέλιξη της καλλιέργειας, γ) θα λαμβάνονται φωτογραφίες υψηλής ανάλυσης, δ) θα αποστέλλονται στο μοντέλο διάγνωσης και ε) θα ενημερώνεται ο γεωπόνος ή ο αγρότης με οδηγίες για την αντιμετώπισης της ανωμαλίας αυτής",
                "Για την προτεινόμενη εφαρμογή απαιτείται ο κατάλληλος σχεδιασμός και ανάπτυξη αλγορίθμων καθώς και η δημιουργία σχετικού λογισμικού για την αυτόματη αξιολόγηση της αγροτικής καλλιέργειας από την ψηφιακή εικόνα.",
                "Αναπτύχθηκε μια πλατφόρμα ασύγχρονης εκπαίδευσης για την εξ αποστάσεως εκπαίδευση των αγροτών σε νέες τεχνολογίες για βιώσιμη γεωργία, ορθολογική χρήση φυτοφαρμάκων-λιπασμάτων και συντήρηση μηχανημάτων, ψεκαστήρες κ.λπ."
            ]
        } else {
            return [
                "Specifically in this project we are developing innovative deep learning applications and models to estimate plant growth using image data.",
                "The data is obtained in various ways: Images a) from smart mobile devices (smart phones, tablets, cameras) b) image captures from drones c) captures of crop points with a lidar device from a drone",
                "A web application is being developed where the farmer can upload a photo of a plant or crop and will get a response from the trained deep learning model with the corresponding layout for decision making.",
                "Using a drone a) the crops will be scanned with lidar or photogrammetry b) the points (x,y) with anomalies in the growth of the crop will be located, c) high resolution photos will be taken, d) they will be sent to the diagnosis model and e ) the agronomist or the farmer will be informed with instructions to deal with this anomaly",
                "The proposed application requires the appropriate design and development of algorithms as well as the creation of relevant software for the automatic evaluation of agricultural crops from the digital image.",
                "An asynchronous training platform was developed for remote training of farmers in new technologies for sustainable agriculture, rational use of pesticides-fertilizers and maintenance of machinery, sprayers, etc."
            ]
        }
    }
    
    // MARK: - GrowthView Texts
    
    static var growhthHeader: String  { AppViewModel.shared.appLanguage == .greek
        ? "Για την αποτύπωση της ανάπτυξης μιας καλλιέργειας προτείνονται στο έργο δυο τεχνικές υλοποίησης"
        : "In order to capture the growth of a crop, two implementation techniques are proposed in the project"
    }
    
    static var growhthList: [String] {
        if AppViewModel.shared.appLanguage == .greek {
            return [
                "Μέσω εικόνων με τεχνικές τηλεπισκόπησης και μηχανικής μάθησης",
                "Μέσω μετρήσεων με αισθητήρα Lidar με υπολογιστικές τεχνικές"
            ]
        } else {
            return [
                "Through images with remote sensing and machine learning techniques",
                "Through Lidar sensor measurements with computational techniques"
            ]
        }
    }
    
    // MARK: - FindView Texts
    
    static var findViewHeader: String  { AppViewModel.shared.appLanguage == .greek
        ? "Σε μια καλλιέργεια εφόσον έχει υλοποιηθεί η αποτύπωσή της, μπορούμε εύκολα να εντοπίσουμε τις προβληματικές περιοχές"
        : "In a crop once its mapping has been implemented, we can easily identify the problem areas"
    }
    
    static var findViewList: [String] {
        if AppViewModel.shared.appLanguage == .greek {
            return [
                "Περιοχές με μεγαλύτερο ύψος από το μέσο όρο του ύψους της καλλιέργειας",
                "Περιοχές με μικρότερο ύψος από το μέσο όρο του ύψους της καλλιέργεια"
            ]
        } else {
            return [
                "Areas with a higher height than the average height of the crop",
                "Areas with a lower height than the average height of the crop"
            ]
        }
    }
    
    static var findViewText: String  { AppViewModel.shared.appLanguage == .greek
        ? "Τις προβληματικές περιοχές τις προσεγγίζουμε είτε με drone είτε ο γεωργός ο ίδιος για να φωτογραφήσει το φυτό"
        : "We approach the problem areas either with a drone or the farmer himself to photograph the plant"
    }
    
    static var findViewItem: String  { AppViewModel.shared.appLanguage == .greek
        ? "Εισάγουμε τη φωτογραφία στο μοντέλο μηχανικής μάθησης το οποίο μας επιστρέφει τη διάγνωση"
        : "We feed the photo into the machine learning model which returns the diagnosis"
    }
    
    
    // MARK: - DevelopingView Texts
    
    static var developingViewHeader: String  { AppViewModel.shared.appLanguage == .greek
        ? "Σύγκριση με υπάρχοντα μοντέλα όπως το EfficientNet B0-Β7"
        : "Comparison with existing models such as EfficientNet B0-B7"
    }
    
    static var developingViewList: [String] {
        if AppViewModel.shared.appLanguage == .greek {
            return [
                "με τα μοντέλα Deep Learning μπορούμε να κάνουμε transfer learning (να μεταφέρουμε τη γνώση που έχει στα δικά μας δεδομένα) και να το ξαναεκπαιδεύσουμε",
                "καταλήξαμε ότι για τα πραγματικά δεδομένα που αφορούν τα υγιή φυτά και τα φυτά που έχουν προσβολή από ασθένειες, η εκπαίδευση είχε αποτελέσματα της τάξης του 88%, το validation ανήλθε στο 85%"
            ]
        } else {
            return [
                "with Deep Learning models we can do transfer learning (transfer the knowledge it has to our own data) and retrain it",
                "we concluded that for real data concerning healthy plants and disease-affected plants, training had results of 88%, validation was 85%"
            ]
        }
    }
    
    static var developingViewExample: String  { AppViewModel.shared.appLanguage == .greek
        ? "Παράδειγμα"
        : "Example"
    }
    
    static var developingViewImageText: String  { AppViewModel.shared.appLanguage == .greek
        ? "Βαμβάκι Αφίδα 82%"
        : "Cotton Aphid 82%"
    }
    
    static var developingViewText: String  { AppViewModel.shared.appLanguage == .greek
        ? "Η ανάπτυξη μοντέλου βαθιάς μηχανικής μάθησης είναι μια πολύ καλή τεχνική η οποία μπορεί να χρησιμοποιηθεί ευρύτερα και για την πρόγνωση περισσότερων εχθρών και ασθενειών με την υπάρχουσα εκπαίδευση, ενσωματώνοντας περισσότερες εικόνες, ώστε να υλοποιηθεί μια εφαρμογή για κινητές συσκευές, προκειμένου να διευκολυνθούν οι αγρότες στην αναγνώριση και αντιμετώπιση των προσβολών στο χωράφι"
        : "Deep machine learning model development is a very good technique that can be used more widely and to predict more enemies and diseases with the existing training by incorporating more images to implement a mobile application to facilitate farmers in identification and pest management in the field"
    }
    
    // MARK: - TeamView Texts
    
    static var teamMembers: [TeamStuct] {
        if AppViewModel.shared.appLanguage == .greek {
            return [
                TeamStuct(image: "Professor1", name: "ΑΛΚΙΒΙΆΔΗΣ ΤΣΙΜΠΊΡΗΣ", academicRole: "ΑΝΑΠΛΗΡΩΤΉΣ ΚΑΘΗΓΗΤΉΣ", projectRole: "Επιστημονικός Υπεύθυνος του έργου"),
                TeamStuct(image: "Professor2", name: "ΔΗΜΉΤΡΙΟΣ ΒΑΡΣΆΜΗΣ", academicRole: "ΠΡΟΕΔΡΟΣ ΤΜΗΜΑΤΟΣ, ΑΝΑΠΛΗΡΩΤΗΣ ΚΑΘΗΓΗΤΗΣ", projectRole:"Ομάδα Τμήματος Μηχανικων Πληροφορικής, Υπολογιστών και Τηλεπικοινωνιών του ΔΙΠΑΕ"),
                TeamStuct(image: "Professor3", name: "ΧΑΡΆΛΑΜΠΟΣ ΣΤΡΟΥΘΌΠΟΥΛΟΣ", academicRole: "ΚΑΘΗΓΗΤΉΣ", projectRole:"Ομάδα Τμήματος Μηχανικων Πληροφορικής, Υπολογιστών και Τηλεπικοινωνιών του ΔΙΠΑΕ"),
                TeamStuct(image: "Professor4", name: "ΧΕΙΛΆΣ ΚΩΣΤΑΝΤΊΝΟΣ", academicRole: "ΚΑΘΗΓΗΤΉΣ", projectRole:"Ομάδα Τμήματος Μηχανικων Πληροφορικής, Υπολογιστών και Τηλεπικοινωνιών του ΔΙΠΑΕ"),
                TeamStuct(image: "Professor5", name: "ΒΟΛΟΓΙΑΝΝΊΔΗΣ ΣΤΑΎΡΟΣ", academicRole: "ΑΝΑΠΛΗΡΩΤΉΣ ΚΑΘΗΓΗΤΉΣ", projectRole:"Ομάδα Τμήματος Μηχανικων Πληροφορικής, Υπολογιστών και Τηλεπικοινωνιών του ΔΙΠΑΕ"),
                TeamStuct(image: "Professor6", name: "ΚΟΥΓΙΟΥΜΤΖΉΣ ΔΗΜΉΤΡΙΟΣ", academicRole: "ΚΑΘΗΓΗΤΉΣ ΤΜΉΜΑ ΗΜΜΗΥ, ΑΠΘ", projectRole:"Συνεργαζόμενα μέλη του Έργου"),
                TeamStuct(image: "Professor7", name: "ΠΑΠΑΚΩΝΣΤΑΝΤΊΝΟΣ ΑΠΌΣΤΟΛΟΣ", academicRole: "ΚΑΘΗΓΗΤΉΣ, ΠΑΝΕΠΙΣΤΉΜΙΟ ΚΎΠΡΟΥ", projectRole:"Συνεργαζόμενα μέλη του Έργου"),
                TeamStuct(image: "Professor8", name: "ΚΟΥΝΆΝΗ ΑΡΙΣΤΈΑ", academicRole: "ΓΕΩΠΌΝΟΣ, ΥΠΟΨΉΦΙΙΑ ΔΙΔΆΚΤΟΡΑΣ", projectRole:"Συνεργαζόμενα μέλη του Έργου"),
                TeamStuct(image: "Professor9", name: "ΑΓΓΕΙΟΠΛΆΣΤΗΣ ΑΘΑΝΆΣΙΟΣ", academicRole: "ΥΠΟΨΗΦΙΟΣ ΔΙΔΑΚΤΟΡΑΣ", projectRole:"Συνεργαζόμενα μέλη του Έργου"),
            ]
        } else {
            return [
                TeamStuct(image: "Professor1", name: "ΑΛΚΙΒΙΆΔΗΣ ΤΣΙΜΠΊΡΗΣ", academicRole: "ASSISTANT PROFESSOR", projectRole: "Scientific Manager of the project"),
                TeamStuct(image: "Professor2", name: "ΔΗΜΉΤΡΙΟΣ ΒΑΡΣΆΜΗΣ", academicRole: "DEPARTMENT CHAIR, ASSOCIATE PROFESSOR", projectRole:"Group of the Department of Informatics, Computers and Telecommunications Engineering of DIPAE"),
                TeamStuct(image: "Professor3", name: "ΧΑΡΆΛΑΜΠΟΣ ΣΤΡΟΥΘΌΠΟΥΛΟΣ", academicRole: "PROFESSOR", projectRole:"Group of the Department of Informatics, Computers and Telecommunications Engineering of DIPAE"),
                TeamStuct(image: "Professor4", name: "ΧΕΙΛΆΣ ΚΩΣΤΑΝΤΊΝΟΣ", academicRole: "PROFESSOR", projectRole:"Team of the Department of Informatics, Computers and Telecommunications Engineers of DIPAE"),
                TeamStuct(image: "Professor5", name: "ΒΟΛΟΓΙΑΝΝΊΔΗΣ ΣΤΑΎΡΟΣ", academicRole: "ASSISTANT PROFESSOR", projectRole:"Team of the Department of Informatics, Computers and Telecommunications Engineers of DIPAE"),
                TeamStuct(image: "Professor6", name: "ΚΟΥΓΙΟΥΜΤΖΉΣ ΔΗΜΉΤΡΙΟΣ", academicRole: "ΚΑΘΗΓΗΤΉΣ ΤΜΉΜΑ ΗΜΜΗΥ, ΑΠΘ", projectRole:"Collaborating members of the Project"),
                TeamStuct(image: "Professor7", name: "ΠΑΠΑΚΩΝΣΤΑΝΤΊΝΟΣ ΑΠΌΣΤΟΛΟΣ", academicRole: "PROFESSOR, UNIVERSITY OF CYPRUS", projectRole:"Collaborating members of the Project"),
                TeamStuct(image: "Professor8", name: "ΚΟΥΝΆΝΗ ΑΡΙΣΤΈΑ", academicRole: "AGRICULTURIST, DOCTORAL CANDIDATE", projectRole:"Collaborating members of the Project"),
                TeamStuct(image: "Professor9", name: "ΑΓΓΕΙΟΠΛΆΣΤΗΣ ΑΘΑΝΆΣΙΟΣ", academicRole: "DOCTORAL CANDIDATE", projectRole:"Collaborating members of the Project"),
            ]
        }
    }
    
    // MARK: - PackageView Texts
    
    static var packageList: [PackageStruct] {
        if AppViewModel.shared.appLanguage == .greek {
            return [
                PackageStruct(header: "ΕΕ1. Προδιαγραφές και αρχιτεκτονική", item1: "ΕΕ1.1: Καταγραφή ανάλυσης απαιτήσεων,  Ορισμός των περιπτώσεων χρήσης & Λήψη περιεχομένου για ανάλυση και προσομοίωση ",item2: "ΕΕ1.2: Αρχιτεκτονική, τεχνολογικό πλαίσιο δημιουργίας και διαχείριση συστήματος",item3: "ΕΕ1.3:  Διαχείριση Ποιότητας, παραγόμενων  δεδομένων και τεχνογνωσίας",item4: "ΕΕ1.4: Εκπαίδευση  στην αρχιτεκτονική, τεχνολογικό πλαίσιο δημιουργίας και διαχείριση συστήματος"),
                PackageStruct(header: "ΕΕ2. Αλγόριθμοι Βαθιάς Μηχανικής Μάθησης", item1: "ΕΕ2.1: Επιλογή, αρχική εκπαίδευση και προσαρμογή αλγορίθμων για την εφαρμογή μοντέλων βαθιάς μάθησης",item2: "ΕΕ2.2:  Δημιουργία  πρόσθετων δεδομένων εκμάθησης και επανεκπαίδευση και βελτιστοποίηση αλγορίθμων βαθιάς μάθησης",item3: "ΕΕ2.3: Εκπαίδευση  στην χρήση της της πλατφόρμας ασύγχρονης εκπαίδευσης"),
                PackageStruct(header: "ΕΕ3. Ενσωμάτωση των μοντέλων βαθιάς μηχανικής μάθησης σε διαδικτυακή εφαρμογή και προσθήκη λειτουργιών αυτοματισμού", item1: "ΕΕ3.1: Διαδικτυακής εφαρμογή και επικοινωνία με το μοντέλο βαθιάς μηχανικής  μάθησης",item2: "ΕΕ3.2:  Επικοινωνία διαδικτυακής εφαρμογής με πλατφόρμα ασύγχρονης εκπαίδευσης και υλοποίηση επιπλέον λειτουργιών αυτοματισμού",item3: "ΕΕ3.3:  Ασφάλεια πληροφοριών, ιδιωτικότητα & Μηχανισμοί ασφάλειας  της αρχιτεκτονικής του συστήματος"),
                PackageStruct(header: "ΕΕ4. Αξιολόγηση του ενοποιημένου συστήματος", item1: "ΕΕ4.1: Αξιολόγηση του ενοποιημένου συστήματος"),
                PackageStruct(header: "ΕΕ5. Υποστήριξη έργου", item1: "ΕΕ5.1: Αγορά εξοπλισμού και αναλωσίμων, συναντήσεις ομάδας έργου και άλλες ενέργειες υποστήριξης του έργου.")
            ]
        } else {
            return [
                PackageStruct(header: "ΕΕ1. Specifications and architecture", item1: "ΕΕ1.1: Capture requirements analysis, Define use cases & Download content for analysis and simulation",item2: "ΕΕ1.2: Architecture, technology framework creation and system management",item3: "ΕΕ1.3: Management of Quality, generated data and know-how",item4: "ΕΕ1.4: Education in architecture, technology framework creation and system management"),
                PackageStruct(header: "ΕΕ2. Deep Machine Learning Algorithms", item1: "ΕΕ2.1: Selection, initial training and tuning of algorithms for implementing deep learning models",item2: "ΕΕ2.2:  Generating additional training data and retraining and optimizing deep learning algorithms",item3: "ΕΕ2.3: Training in the use of the asynchronous training platform"),
                PackageStruct(header: "ΕΕ3. Integrating deep machine learning models into a web application and adding automation features", item1: "ΕΕ3.1: Online application and communication with deep machine learning model",item2: "ΕΕ3.2:  Web application communication with asynchronous training platform and implementation of additional automation functions",item3: "ΕΕ3.3:  Information Security, Privacy & System Architecture Security Mechanisms"),
                PackageStruct(header: "ΕΕ4. Evaluation of the integrated system", item1: "ΕΕ4.1: Evaluation of the integrated system"),
                PackageStruct(header: "ΕΕ5. Project support", item1: "ΕΕ5.1: Purchase of equipment and supplies, project team meetings, and other project support activities.")
            ]
        }
    }
    
    
    static var packageViewText: String { AppViewModel.shared.appLanguage == .greek
        ? "Πιλοτική  εγκατάσταση του ενοποιημένου συστήματος  σε διακομιστή  της επιχείρησης, σε πλαίσιο ελεγχόμενο (παράλληλα με τα άλλα συστήματα που θα αναπτυχθούν και λειτουργώντας επικουρικά). Αυτό θα δώσει  την δυνατότητα  να αξιολογηθούν τα άμεσα και έμμεσα  ποιοτικά χαρακτηριστικά της εφαρμογής (στατιστικά χρήσης των νέων λειτουργιών, αλλαγές συμπεριφοράς αγροτών και υπαλλήλων, βελτιωμένες  υπηρεσίες έγκαιρης πρόβλεψης κτλ.)"
        : "Pilot installation of the integrated system on the company's server, in a controlled context (parallel with the other systems that will be developed and operating as adjuncts). This will make it possible to evaluate the direct and indirect qualitative characteristics of the application (statistics of the use of the new functions, changes in the behavior of farmers and employees, improved early forecasting services, etc.)"
    }
    
    
    
    // MARK: - ContractView Texts
    
    static var contractViewTitle: String { AppViewModel.shared.appLanguage == .greek
        ? "Υπεύθυνοι Επικοινωνίας"
        : "Communication Managers"
    }
    
    static var contracts: [Contracts] {
        if AppViewModel.shared.appLanguage == .greek {
            return [
                Contracts(name: "Αλκιβιάδης Τσιμπίρης", projectRole: "Επιστημονικός Υπεύθυνος Έργου Αναπληρωτής Καθηγητής", phoneNumber: "+30 23210 49340", email: "atsimpiris@ihu.gr", website: "http://teachers.cm.ihu.gr/tsimpiris"),
                Contracts(name: "Δημήτριος Βαρσάμης", projectRole: "Αναπληρωτής Επιστημονικός Υπεύθυνος Έργου Καθηγητής, Πρόεδρος τμήματος", phoneNumber: "+30 23210 49381", email: "dvarsam@ihu.gr", website: "http://teachers.cm.ihu.gr/dvarsam/"),
                Contracts(name: "Αθανάσιος Αγγειοπλάστης", projectRole: "Υποψήφιος Διδάκτορας", phoneNumber: "+30 23210 49340", email: "aagiop@gmail.com", website: "")
                
            ]
        } else {
            return [
                Contracts(name: "Αλκιβιάδης Τσιμπίρης", projectRole: "Scientific Project Manager Associate Professor", phoneNumber: "+30 23210 49340", email: "atsimpiris@ihu.gr", website: "http://teachers.cm.ihu.gr/tsimpiris"),
                Contracts(name: "Δημήτριος Βαρσάμης", projectRole: "Deputy Scientific Project Manager Professor, Head of department", phoneNumber: "+30 23210 49381", email: "dvarsam@ihu.gr", website: "http://teachers.cm.ihu.gr/dvarsam/"),
                Contracts(name: "Αθανάσιος Αγγειοπλάστης", projectRole: "Doctoral Candidate", phoneNumber: "+30 23210 49340", email: "aagiop@gmail.com", website: "")
                
            ]
        }

    }
    
}
