<?php
session_start();

if (isset($_POST['ip_submit'])) {
    // Generate a random "Trial-Nomor" name
    $trialNumber = sprintf("%02d", rand(1, 99)); // Generates a random number between 1 and 99 with leading zeros if needed
    $seasonLogin = "Trial-" . $trialNumber;

    // Hitung tanggal expired 1 bulan dari sekarang
    $expiredDate = date('Y-m-d', strtotime('3 day'));

    // Ambil data IP dari input form
    $ip = $_POST['ip'];

    // Baca data izin yang sudah ada
    $file = '/home/franata775/vip/izin';
    $izinData = file($file, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);

    // Buat array baru untuk menampung data yang akan disimpan
    $newIzinData = array();

    // Cek apakah ada data lama dengan IP yang sama
    $ipExists = false;
    foreach ($izinData as $data) {
        list($seasonLoginExisting, $expiredDateExisting, $ipExisting) = explode(" ", $data);

        if ($ip === $ipExisting) {
            // IP sudah ada, maka gantikan dengan data baru jika tanggal expired lebih tinggi
            if (strtotime($expiredDate) > strtotime($expiredDateExisting)) {
                $newIzinData[] = "### {$seasonLogin} {$expiredDate} {$ip}";
                $ipExists = true;
            } else {
                $newIzinData[] = $data;
            }
        } else {
            // IP tidak sama, tambahkan data lama ke array baru
            $newIzinData[] = $data;
        }
    }

    // Jika IP tidak ada dalam data izin, tambahkan data baru
    if (!$ipExists) {
        $newIzinData[] = "### {$seasonLogin} {$expiredDate} {$ip}";
    }

    // Menyimpan kembali data izin yang telah diproses
    file_put_contents($file, implode(PHP_EOL, $newIzinData));

    $_SESSION['statusMessage'] = "Data IP Berhasil Disimpan.";
    header("Location: {$_SERVER['REQUEST_URI']}");
    exit();
}

$statusMessage = "";
if (isset($_SESSION['statusMessage'])) {
    $statusMessage = $_SESSION['statusMessage'];
    unset($_SESSION['statusMessage']);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>AutoScript FranataSTORE</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="form-container">
        <form method="post">
            <label for="ipInput">Masukkan IP </label>
            <input type="text" name="ip" id="ipInput" placeholder="Contoh: 192.168.0.1" maxlength="15">
            <input type="submit" name="ip_submit" id="saveButton" value="Simpan ke Izin">
        </form>
            <video autoplay muted loop id="background-video">
        <source src="asupan.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>
        <?php
        if (isset($statusMessage)) {
            echo '<p id="statusMessage">' . $statusMessage . '</p>';
        }
        ?>
    </div>
</body>
</html>
<script src="script.js"></script>
</body>
</html>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .notification-popup {
            display: none;
            position: fixed;
            bottom: 20px;
            right: 20px;
            padding: 16px;
            background-color: #3C91E6;
            color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
            z-index: 9999;
        }

        .notification-popup.active {
            display: block;
            animation: fadeInAndOut 5s ease-in-out;
        }

        .notification-popup .name {
            color: #ffcd1a;
            font-weight: bold;
        }

        .notification-popup .ip {
            color: #ff9900;
            font-weight: bold;
        }

        @keyframes fadeInAndOut {
            0%, 100% {
                opacity: 0;
            }
            10%, 90% {
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <div class="notification-popup" id="popup">
        <span id="popupContent"></span>
    </div>

    <script>
        function getRandomData(dataList) {
            return dataList[Math.floor(Math.random() * dataList.length)];
        }

        function showNotificationPopup() {
            fetch('user_ip.txt')
                .then(response => response.text())
                .then(data => {
                    const lines = data.split('\n');

                    const nameList = [];
                    const ipList = [];

                    // Memisahkan data nama dan IP
                    for (const line of lines) {
                        if (/^\d+\.\d+\.\d+\.\d+$/.test(line)) {
                            ipList.push(line);
                        } else {
                            nameList.push(line);
                        }
                    }

                    const randomName = getRandomData(nameList);
                    const randomIP = getRandomData(ipList);

                    // Memotong IP untuk menampilkan sebagian dari alamat IP
                    const maskedIP = randomIP.slice(0, randomIP.lastIndexOf('.') + 1) + '***';

                    const popupElement = document.getElementById("popup");
                    const popupContentElement = document.getElementById("popupContent");

                    popupContentElement.innerHTML = `<span class="name">${randomName}</span> Success Installing AutoScript <span class="ip">${maskedIP}</span>`;
                    popupElement.classList.add("active");

                    setTimeout(() => {
                        popupElement.classList.remove("active");
                    }, 5000); // Pop-up akan hilang setelah 5 detik (5000 milidetik)
                })
                .catch(error => {
                    console.error('Error fetching data:', error);
                });
        }

        // Fungsi untuk mendapatkan interval acak antara min dan max (menggunakan Math.random())
        function getRandomInterval(min, max) {
            return Math.floor(Math.random() * (max - min + 1)) + min;
        }

        // Munculkan pop-up untuk pertama kali
        showNotificationPopup();

        // Set interval untuk memunculkan pop-up secara berkala
        setInterval(() => {
            showNotificationPopup();
        }, getRandomInterval(10000, 20500)); // Munculkan pop-up setiap interval acak antara 10 hingga 20 detik (10000 hingga 20000 milidetik)
    </script>
</body>
</html>