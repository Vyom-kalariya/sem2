import java.sql.*;
import java.util.*;
import java.util.concurrent.ExecutionException;

public class App {
    Connection connection;

    public static void main(String[] args) throws Exception {
        HashMap<Integer, String> routesMap; // for 3rdd option

        App tablesss = new App();// ----> create tabeles and similarrrs

        Boolean psvd_IS_CORRRECTTTTT = false;

        routesMap = new HashMap<>();
        routesMap.put(1, "Chandkheda BRTS");
        routesMap.put(2, "Shiv Shaktinagar BRTS");
        routesMap.put(3, "Jantanagar");
        routesMap.put(4, "R.T.O Circle");
        routesMap.put(5, "Himmatlal Park BRTS");
        routesMap.put(6, "Jhansi Ki Rani");
        routesMap.put(7, "ISRO BRTS");
        routesMap.put(8, "Karnavati Club");
        routesMap.put(9, "Sanand Circle");

        int ur_ID = 1;
        HashMap<Integer, User> urs = new HashMap<>();
        User ur = new User();

        String text = "GATHERING DATA FROM THE WORLD...";
        String readyy = "--- GOOD MORENING SIR/MEM THIS IS MY JAVA PROJECT ---";

        String shortexplain = " THIS PROJECT HAS VARTUAL BUSES FOR LIVE EXPERIENCE , LETS GET INTO THE CODE --- ";
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/brts", "root", "");
        System.out.println((con != null) ? "Success" : "Connection failed");

        Location locationUpdater = new Location();
        locationUpdater.start();

        LinkedList<Bus> buses = new LinkedList<>();
        LinkedList<String> busID = new LinkedList<>();

        // Start and add bus threads to the list
        System.out.println("PROCESSING PLEASE WAIT");
        for (int i = 1; i <= 5; i++) {
            Bus bus = new Bus(i + "D", con, locationUpdater);
            bus.start();
            if (!buses.contains(bus)) {
                buses.add(bus);
            }
            if (!busID.contains(i + "D")) {
                busID.add(i + "D");
            }

            for (int k = 0; k < 4; k++) {
                try {
                    System.out.print("-");
                    Thread.sleep(300);
                } catch (Exception e) {
                }
            }
        }
        Boolean so_onnn = false;
        System.out.println();
        System.out.println("-- PROCESS DONE --");

        for (int a = 0; a < text.length(); a++) {
            try {
                System.out.print(text.charAt(a));
                Thread.sleep(80);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        String Denyyy = " --- ACCESS DENYED --- ";
        System.out.println();

        for (int i = 0; i < readyy.length(); i++) {
            try {
                System.out.print(readyy.charAt(i));
                Thread.sleep(120);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

        }
        System.out.println();
        for (int p = 0; p < shortexplain.length(); p++) {
            try {
                System.out.print(shortexplain.charAt(p));
                Thread.sleep(130);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

        System.out.println();

        String funn = "----------------------------------//----------------------------------";
        for (int p = 0; p < funn.length(); p++) {
            try {
                System.out.print(funn.charAt(p));
                Thread.sleep(30);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        Scanner sc = new Scanner(System.in);
        Ticket book = new Ticket();
        System.out.println();
        int t = 0;
        int flag = 2;
        while (t != 1) {
            System.out.println();
            System.out.println("::::::::::::::Enter: 1 ,for bus location current:");
            System.out.println("::::::::::::::Enter: 2 ,for SIGN IN");
            System.out.println("::::::::::::::Enter: 3 ,for bus ROOT:");
            System.out.println("::::::::::::::Enter: 4 ,for bus GUIDE / infomation (BUS ID):");
            System.out.println("::::::::::::::Enter: 5 ,for LOG IN");
            System.out.println("::::::::::::::Enter: 6 ,for bus BOOKING bus ticket:");
            System.out.println("::::::::::::::Enter: 7 ,To exit:");
            int j = 1;
            int gg = 2;
            System.out.print("-->");
            int n = sc.nextInt();
            int jons, jond;
            String new_mail = "";
            String new_psvd = "";

            switch (n) {
                case 1:
                    System.out.println();
                    System.out.println("--------------------------------------");
                    System.out.println();
                    for (Bus b : buses) {
                        if (b.getCurrentLocation() < 10) {
                            System.out.println(
                                    "Bus ID: " + b.busId + ", Current Location: "
                                            + routesMap.get(b.getCurrentLocation()));
                            Thread.sleep(120);
                        }
                    }
                    System.out.println();
                    System.out.println("--------------------------------------");
                    System.out.println();
                    break;
                case 2:
                    System.out.println("--- SIGN IN FOR YOUR NEW ACCOUNT ---");
                    System.out.println();
                    sc.nextLine();
                    flag = 1;
                    System.out.print("Enter Your Name: ");
                    String name = sc.nextLine();
                    ur.setName(name);

                    ur.setUserId(ur_ID);
                    ur_ID++;
                    boolean done = false;
                    int lo=1;
                    String h = "";
                    while (lo!=0) {
                        System.out.print("Enter Your Email: ");
                        String email = sc.nextLine();
                        String end = "@GMAIL.COM";

                        if (email.length() >= end.length()) {
                            for (int a = email.length(); a > end.length(); a--) {
                                try {
                                    h = email.charAt(a) + h;
                                    if (h.equals(end)) {
                                        done = true;
                                        lo=0;
                                    }
                                } catch (Exception e) {

                                }
                            }
                            if(lo==0){ur.setEmail(email);}
                            
                        }

                        else {
                            System.out.println("PLEASE ENTER @GMAIL ... ");
                        }

                    }

                    
                    System.out.print("Enter Your Password: ");
                    String password = sc.nextLine();
                    ur.setPassword(password);

                    // Store the user object in the HashMap using the unique user ID
                    urs.put(ur_ID, ur);
                    ur.save(con);

                    System.out.println();
                    System.out.println(" -- INFORMATION UPDATED -- ");
                    System.out.println();

                    break;

                case 3:
                    j = 1;
                    System.out.println();
                    System.out.println("Each bus will RUN in mention stops : ");

                    System.out.println();
                    System.out.println("--------------------------------------");
                    System.out.println();

                    // -------------------------------------------------------------------------------------------------------
                    for (Map.Entry<Integer, String> entry : routesMap.entrySet()) {
                        if (j < 10) {
                            System.out.println("Route id: " + j + " Route Name: " + entry.getValue());
                            j++;
                        }
                        Thread.sleep(120);

                    }
                    System.out.println();
                    System.out.println("--------------------------------------");
                    System.out.println();

                    // -------------------------------------------------------------------------------------------------------

                    break;

                case 4:
                    System.out.println();
                    System.out.println(
                            "EACH BUS GO TO BUS_STOP_ID 1 to 9(Chandkheda --> Sanand Circle) THEN RETURN TO THERE MAIN STOP(Station 1)");
                    System.out.print("THE BUS ID ARE : ");
                    System.out.println(busID);
                    System.out.println();
                    break;

                case 5:
                    System.out.println("---------LOG IN PROCESS---------");
                    System.out.println();
                    sc.nextLine();
                    System.out.println("ENTER Your Email : ");
                    new_mail = sc.nextLine();
                    System.out.println();
                    System.out.println("Enter Your Password : ");
                    new_psvd = sc.nextLine();
                    String acceptng = "PASSWORD MATCH...!  LOG IN SUCCSESSFULL, YAEE..!!! ";

                    try {
                        Authentication auth = new Authentication(con);
                        so_onnn = auth.authenticate(new_mail, new_psvd);
                    } catch (Exception e) {

                    }
                    if (so_onnn) {
                        for (int aee = 0; aee < acceptng.length(); aee++) {
                            try {
                                System.out.print(acceptng.charAt(aee));
                                Thread.sleep(60);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                        }
                        flag = 1;
                        gg = 1;
                        System.out.println();
                        System.out.println("WELCOME : " + new_mail);
                    }

                    for (Map.Entry<Integer, User> logs : urs.entrySet()) {

                        try {
                            if (so_onnn && gg != 1) {
                                gg = 1;
                                for (int aee = 0; aee < acceptng.length(); aee++) {
                                    try {
                                        System.out.print(acceptng.charAt(aee));
                                        Thread.sleep(60);
                                    } catch (InterruptedException e) {
                                    }
                                }
                                flag = 1;

                                System.out.println();
                                System.out.println("WELCOME : " + new_mail);
                            } else if (gg != 1 && logs.getValue().getPassword().equals(new_psvd)) {
                                if (logs.getValue().getEmail().equals(new_mail)) {
                                    System.out.println();
                                    for (int aee = 0; aee < acceptng.length(); aee++) {
                                        try {
                                            System.out.print(acceptng.charAt(aee));
                                            Thread.sleep(60);
                                        } catch (InterruptedException e) {
                                        }
                                    }
                                    System.out.println();
                                    flag = 1;
                                    gg = 1;
                                    System.out.println();
                                }
                            } else {
                                flag = 0;
                            }
                        } catch (Exception e) {
                        }

                    }
                    if (flag == 0 && gg != 1) {
                        System.out.println("-- SORRY , lOOKS LIKE YO ENTER WRONG EMAIL / PASSWORD --");
                        System.out.println();
                        for (int a = 0; a < Denyyy.length(); a++) {
                            try {
                                System.out.print(Denyyy.charAt(a));
                                Thread.sleep(80);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                        }
                    } else if (flag == 2) {
                        System.out.println();
                        System.out.println("--------------------------------------");
                        System.out.println();
                        System.out.println("DATA BSE DO NOT CONTAIN YOUR FILE");
                        System.out.println("PLEASE SIGN IN , BEFORE LOG IN ,,, THANK YOU...");
                        System.out.println();
                        System.out.println("--------------------------------------");
                        System.out.println();
                    }
                    break;
                case 6:
                    j = 1;
                    if (flag == 1 || so_onnn) {
                        System.out.println();
                        System.out.println("--------------------------------------");
                        System.out.println();

                        System.out.println();
                        for (Map.Entry<Integer, String> entry : routesMap.entrySet()) {
                            if (j < 10) {
                                System.out.println("Route id: " + j + " Route Name: " + entry.getValue());
                                j++;
                            }
                            Thread.sleep(120);

                        }
                        try {
                            System.out.print("ENTER NUMBER(INT) FROM WHERE YOU WANT TO START YOUR JOURNEY : ");
                            jons = sc.nextInt();
                            book.setFromLocation(jons);

                        } catch (Exception e) {
                            System.out.println("--- YOU ENTER WRONG RESPONSE PLEASE ENTER INTEGER ---");
                        }

                        System.out.println();

                        System.out.println();
                        for (Map.Entry<Integer, String> entry : routesMap.entrySet()) {
                            if (j < 10) {
                                System.out.println("Route id: " + j + " Route Name: " + entry.getValue());
                                j++;
                            }
                            Thread.sleep(120);

                        }
                        try {
                            System.out.print("ENTER NUMBER(INT) FROM WHERE YOU WANT TO FINISH YOUR JOURNEY : ");
                            jond = sc.nextInt();
                            book.setToLocation(jond);
                        } catch (Exception e) {
                            System.out.println("--- YOU ENTER WRONG RESPONSE PLEASE ENTER INTEGER ---");
                        }
                        book.setUserEmail(new_mail);
                        book.setUserPassword(new_psvd);

                        System.out.println();
                        System.out.println("--------------------------------------");
                        System.out.println();

                        String booked = " -- Your TICKET BOOKING HAS BEEN PROCCESSED , THANK YOU FOR WAITING  -- ";
                        for (int i = 0; i < booked.length(); i++) {
                            try {
                                System.out.print(booked.charAt(i));
                                Thread.sleep(80);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }

                        }
                        System.out.println();
                        booked = " ---- HAVE A NICE JOURNEY ...!";

                        for (int i = 0; i < booked.length(); i++) {
                            try {
                                System.out.print(booked.charAt(i));
                                Thread.sleep(80);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }

                        }
                        System.out.println();
                    } else {
                        System.out.println("PLEACE LOG IN OR SIGN UP FOR MORE FEATURES !!");
                    }

                    break;
                case 7:
                    t = 1; // sir this one is for loop to break....
                    for (int k = 0; k < 15; k++) {
                        try {
                            System.out.print(":");
                            Thread.sleep(80);
                        } catch (Exception e) {

                        }
                    }

                    String thanks = " -- THANK YOU FOR USING BRTS PORTAL -- ";
                    for (int i = 0; i < thanks.length(); i++) {
                        try {
                            System.out.print(thanks.charAt(i));
                            Thread.sleep(120);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }

                    }
                    for (int k = 0; k < 15; k++) {
                        try {
                            System.out.print(":");
                            Thread.sleep(80);
                        } catch (Exception e) {

                        }
                    }
                    System.out.println();
                    thanks = " -- HAVE A NICE DAY SIR/MEM !! -- ";
                    for (int i = 0; i < thanks.length(); i++) {
                        try {
                            System.out.print(thanks.charAt(i));
                            Thread.sleep(120);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }

                    }
                    break;

                default:
                    System.out.println("::::::::::::::PLEASE ENTER CORRECT NUMBER::::::::::::::");
                    break;
            }
        }

    }

    public App() {
        try {

            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/brts", "root", "");
            System.out.println((connection != null) ? "Database connected" : "Failed to connect to database");

            // Creating tables
            createTables();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void createTables() {
        try {
            Statement statement = connection.createStatement();

            String insertRoutes = "INSERT INTO routes (Route_name, distance, start_location, end_location) VALUES "
                    + "('Chandkheda BRTS', 6.5, 'Chandkheda BRTS', 'Sanand Circle'),"
                    + "('Shiv Shaktinagar BRTS', 7.0, 'Chandkheda BRTS', 'Sanand Circle'),"
                    + "('Jantanagar', 8.3, 'Chandkheda BRTS', 'Sanand Circle'),"
                    + "('R.T.O Circle', 9.1, 'Chandkheda BRTS', 'Sanand Circle'),"
                    + "('Himmatlal Park BRTS', 10.2, 'Chandkheda BRTS', 'Sanand Circle'),"
                    + "('Jhansi Ki Rani', 11.7, 'Chandkheda BRTS', 'Sanand Circle'),"
                    + "('ISRO BRTS', 12.4, 'Chandkheda BRTS', 'Sanand Circle'),"
                    + "('Karnavati Club', 13.8, 'Chandkheda BRTS', 'Sanand Circle'),"
                    + "('Sanand Circle', 15.0, 'Chandkheda BRTS', 'Sanand Circle')";
            statement.executeUpdate(insertRoutes);

        } catch (SQLException e) {
            System.out.println("yooo");
        }
    }

}

class Bus extends Thread {
    String busId;
    String currentLocation;
    Connection con;
    Location locationUpdater;

    int stop_indicator = 0;
    int where_it_is;

    Bus(String busId, Connection con, Location locationUpdater) {
        super(busId);
        this.busId = busId;
        this.con = con;
        this.locationUpdater = locationUpdater;
        this.where_it_is = 0;
    }

    public void run() {

        int i = 0;
        try {

            while (i < 10) {
                Thread.sleep(1000);

                currentLocation = "Stop " + locationUpdater.getCurrentStop();

                where_it_is++;
                // System.out.println(busId + " is at " + currentLocation);
                i++;
                if (i > 9) {
                    i = 1;
                }
                if (where_it_is > 9) {
                    where_it_is = 1;
                }

            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public int getCurrentLocation() {

        return where_it_is;
    }
}

class User {
    int userId;
    String name;
    String email;
    String password;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void save(Connection con) throws SQLException {
        String query = "INSERT INTO user (username,password,email) VALUES (?, ?, ?)";
        try (PreparedStatement stmt = con.prepareStatement(query)) {
            stmt.setString(1, name);
            stmt.setString(2, password);
            stmt.setString(3, email);
            stmt.executeUpdate();
        }
    }
}

class Authentication {
    private Connection con;

    public Authentication(Connection con) {
        this.con = con;
    }

    public boolean authenticate(String email, String password) {
        String query = "SELECT * FROM user WHERE email = ? AND password = ?";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1, email);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();
            return rs.next();
            // it return when quaryy changeee
        } catch (SQLException e) {

            return false;
        }
    }
}

class Route {
    String routeId;
    String routeName;
    List<Stop> stops;

    public String getRouteId() {
        return routeId;
    }

    public void setRouteId(String routeId) {
        this.routeId = routeId;
    }

    public String getRouteName() {
        return routeName;
    }

    public void setRouteName(String routeName) {
        this.routeName = routeName;
    }

    public List<Stop> getStops() {
        return stops;
    }

    public void setStops(List<Stop> stops) {
        this.stops = stops;
    }

}

class Stop {
    private String stopId;
    private String stopName;
    private String routeId;

    public String getStopId() {
        return stopId;
    }

    public void setStopId(String stopId) {
        this.stopId = stopId;
    }

    public String getStopName() {
        return stopName;
    }

    public void setStopName(String stopName) {
        this.stopName = stopName;
    }

    public String getRouteId() {
        return routeId;
    }

    public void setRouteId(String routeId) {
        this.routeId = routeId;
    }

}

class Ticket {
    private String ticketId;
    private String userPassword;
    private String userEmail;
    private int fromLocation;
    private int toLocation;

    public String getTicketId() {
        return ticketId;
    }

    public void setTicketId(String ticketId) {
        this.ticketId = ticketId;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public int getFromLocation() {
        return fromLocation;
    }

    public void setFromLocation(int jons) {
        this.fromLocation = jons;
    }

    public int getToLocation() {
        return toLocation;
    }

    public void setToLocation(int toLocation) {
        this.toLocation = toLocation;
    }

    public void save(Connection con) throws SQLException {
        String query = "INSERT INTO Ticket ( User_Password, User_Email, _From, _to) VALUES (?, ?, ?, ?)";
        try (PreparedStatement stmt = con.prepareStatement(query)) {

            stmt.setString(1, userPassword);
            stmt.setString(2, userEmail);
            stmt.setInt(3, fromLocation);
            stmt.setInt(4, toLocation);
            stmt.executeUpdate();
        }
    }
}

class Location extends Thread {
    private int currentStop = 0;

    public void run() {
        int i = 0;
        try {
            while (true) {
                Thread.sleep(1000);
                // System.out.println("Bus is at stop: " + currentStop);
                currentStop++;
                if (currentStop > 9) {
                    currentStop = 1;
                }
            }
        } catch (InterruptedException e) {
            System.out.println("The bus is unexpectedly stopped. Please wait for the next bus...");
        }
    }

    public int getCurrentStop() {
        return currentStop;
    }
}
