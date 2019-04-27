# This is a sample shop on Spree.

------------------

## How to fire it up:

* **Clone the repository and install dependensies:**

```bash
git clone https://github.com/ARtoriouSs/spree-sample-shop.git
cd spree-sample-shop
```
Then run ```bundle install```

* **Setup database:**

Configure your database and run ```rake db:create db:migrate```

* **Create .env file with the following content:**

```
GMAIL_USERNAME=your_email@gmail.com
GMAIL_PASSWORD=your_email_password
DATABASE_PASSWORD=your_db_password
```
Gmail credentials are needed for mailer, it's not required, but without them mailer will not send messages. To run it in production you should also disable CAPTCHA in your gmail account.

* **Create admin user:**
```bash
rake spree_auth:admin:create
```

------------------

Now it's ready to use, visit ```localhost:3000/admin``` to create products, and configure your shop.
