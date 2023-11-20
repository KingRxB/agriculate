<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Meta tags, title, and stylesheets -->

    <script>
        function openModal() {
            document.getElementById('myModal').style.display = 'block';
        }

        function closeModal() {
            document.getElementById('myModal').style.display = 'none';
        }

        window.onclick = function(event) {
            if (event.target == document.getElementById('myModal')) {
                closeModal();
            }
        }
    </script>
</head>
<body>

    <button onclick="openModal()">Tambah Data</button>

    <!-- The Modal -->
    <div id="myModal" class="modal">
        <!-- Modal content -->
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>

            <!-- Form -->
            <form action="process.php" method="post">
                <label for="judul">Judul:</label>
                <input type="text" name="judul" required pattern="[A-Za-z]+" title="Judul harus berupa huruf"><br><br>

                <label for="luas_lahan">Luas Lahan (m²):</label>
                <input type="number" name="luas_lahan" required><br><br>

                <label for="nama">Nama:</label>
                <input type="text" name="nama" required><br><br>

                <label for="nomor_telepon">Nomor Telepon:</label>
                <input type="tel" name="nomor_telepon" required pattern="[0-9]+"><br><br>

                <button type="submit">Simpan</button>
            </form>
        </div>
    </div>

    <!-- PHP to display data -->

</body>
</html>
