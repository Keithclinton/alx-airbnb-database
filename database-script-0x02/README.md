# 📊 Sample Data – Property Rental Platform

This SQL script populates the **Property Rental Platform** database with realistic sample data to help with development, testing, and demonstration purposes.

## 📁 Contents

The script includes `INSERT` statements for the following tables:

- **Users** – Three users: guest, host, and admin
- **Properties** – Two listings created by the host
- **Bookings** – Two sample bookings by the guest
- **Payments** – Payment records linked to bookings
- **Reviews** – User feedback on properties
- **Messages** – Conversations between guest and host

## 💡 Sample Data Highlights

| Table      | Records | Description                                      |
|------------|---------|--------------------------------------------------|
| `User`     | 3       | Includes a guest (Alice), a host (Bob), and an admin (Carol) |
| `Property` | 2       | One ocean view apartment and one cozy cottage   |
| `Booking`  | 2       | Bookings made by the guest on different properties |
| `Payment`  | 2       | Payments made via Stripe and PayPal             |
| `Review`   | 2       | Guest reviews on both properties                |
| `Message`  | 2       | Sample message exchange between guest and host  |

## ⚙️ Usage

To load the sample data into your database:

1. Make sure all the `CREATE TABLE` statements have been executed.
2. Run the sample data script:
   ```bash
   mysql -u your_user -p your_database < sample_data.sql
