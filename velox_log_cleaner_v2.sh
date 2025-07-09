# Banner ve menü
echo -e "\033[34m
 __      __  _             _______          _      
 \ \    / / | |           |__   __|        | |     
  \ \  / /__| | _____  __    | | ___   ___ | |___  
   \ \/ / _ \ |/ _ \ \/ /    | |/ _ \ / _ \| / __| 
    \  /  __/ | (_) >  <     | | (_) | (_) | \__ \ 
     \/ \___|_|\___/_/\_\    |_|\___/ \___/|_|___/ 
\033[0m"

echo "Welcome to VELOX Log Cleaner v2.0"

echo ""
echo "Select an option:"
echo "[0] Exit"
echo "[1] Clean logs between two times"
echo "[2] Clean logs from the last 24 hours"
echo "[3] Clear All Logs"
echo "[4] Info"

read -p "Enter your choice: " choice

# ========== Exit ==========
if [ "$choice" = "0" ]; then
    echo "Exiting..."
    exit 0

# ========== Between Two Times ==========
elif [ "$choice" = "1" ]; then
    echo "You chose: Clean logs between two times"
    read -p "Enter START time (e.g. Jul  7 13:00:00): " start_time
    read -p "Enter END time   (e.g. Jul  7 14:30:00): " end_time
    # → buraya temizlik kodları gelecek

# ========== Last 24 Hours ==========
elif [ "$choice" = "2" ]; then
    echo "You chose: Clean logs from the last 24 hours"
    # → buraya 24 saatlik temizlik kodları gelecek

# ========== Clear All Logs ==========
elif [ "$choice" = "3" ]; then
    echo -e "\033[1;31m⚠️  WARNING:\033[0m You are about to DELETE ALL log files on this system!"
    echo -e "\033[1;33mThis action is irreversible and may affect forensic recovery.\033[0m"
    read -p "Are you sure you want to continue? (yes/no): " confirm

    if [ "$confirm" != "yes" ]; then
        echo -e "\033[1;34m[INFO]\033[0m Operation cancelled by user."
        exit 0
    fi

    echo -e "\033[1;34m[INFO]\033[0m Starting full log wipe..."
    # → buraya tam silme kodları gelecek

# ========== Info ==========
elif [ "$choice" = "4" ]; then
    echo -e "\033[34m
 __      __  _             _______          _      
 \ \    / / | |           |__   __|        | |     
  \ \  / /__| | _____  __    | | ___   ___ | |___  
   \ \/ / _ \ |/ _ \ \/ /    | |/ _ \ / _ \| / __| 
    \  /  __/ | (_) >  <     | | (_) | (_) | \__ \ 
     \/ \___|_|\___/_/\_\    |_|\___/ \___/|_|___/ 
\033[0m"
    echo "VELOX Log Cleaner v2.0"
    echo ""
    echo "This tool securely cleans system logs based on user-specified time frames."
    echo "It supports:"
    echo "- Selective log cleaning between two timestamps"
    echo "- Clearing logs from the last 24 hours"
    echo "- Full system log wipe (Clear All Logs)"
    echo ""
    echo "Developed by Velox Tools Crew."
    echo "Main Developer: Buxfie"
    echo "Use responsibly. Misuse may affect system forensic integrity."
    echo ""
    read -p "Press Enter to return to the main menu..."

else
    echo -e "\033[1;31m[ERROR]\033[0m Invalid option. Please run the script again."
    exit 1
fi

