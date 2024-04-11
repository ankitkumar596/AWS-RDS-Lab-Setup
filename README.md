# AWS RDS Lab Setup Guide

## Step 1: Review Objectives and Start Lab

1. Review the practice lab objectives in the Concept section below.
2. Click Start Lab to provision your environment, and then click Open AWS Console to begin.
3. Follow the lab instructions carefully, and use the arrows below to navigate between steps.
       - you can skip the Step 1



---

## Step 2: Search for RDS in AWS Console

1. In the top navigation bar search box, type `rds`.
2. In the search results, under Services, click RDS.
3. Go to the next step.

    ![alt text](<Screenshot from 2024-04-11 21-14-23.png>)

---

## Step 3: Navigate to Databases

1. In the left navigation pane, click Databases.
2. In the Databases section, click Create database.
3. Go to the next step.

    ![alt text](<Screenshot from 2024-04-11 21-14-46.png>)

---

## Step 4: Choose Database Creation Method

1. Choose Standard create for database creation method.
2. For Engine type, choose MariaDB.
3. Go to the next step.

    ![alt text](<Screenshot from 2024-04-11 21-15-36.png>)

---

## Step 5: Select Configuration Options

1. Keep the default MariaDB version.
2. Choose Dev/Test for Templates.
3. Go to the next step.

    ![alt text](<Screenshot from 2024-04-11 21-16-09.png>)

---

## Step 6: Configure DB Instance

1. Set DB instance identifier to `my-database`.
2. Keep the default username of admin for Master username.
3. Choose Self managed for Credentials management.
4. Set Master password to `ILoveLearning!123`.
5. Go to the next step.

    ![alt text](<Screenshot from 2024-04-11 21-18-47.png>)

---

## Step 7: Configure Instance Settings

1. Choose Burstable classes for DB Instance class.
2. Choose db.t3.xlarge from the dropdown menu.
3. Choose General Purpose SSD (gp2) for Storage type.
4. Set Allocated storage to `20`.
5. Go to the next step.

    ![alt text](<Screenshot from 2024-04-11 21-19-54-1.png>)

---

## Step 8: Storage Autoscaling and Multi-AZ Deployment

1. Expand Storage autoscaling and review default settings.
2. Choose Create a standby instance for Multi-AZ deployment.
3. Go to the next step.

    ![alt text](<Screenshot from 2024-04-11 21-21-01-1.png>)

---

## Step 9: Configure Connectivity

1. Keep default values for VPC and DB subnet group.
2. Keep default settings for Public access and VPC security group.
3. Go to the next step.

    ![alt text](<Screenshot from 2024-04-11 21-23-12.png>)

---

## Step 10: Monitoring and Additional Configuration

1. Clear the check box for Performance Insights.
2. Clear the check box for Enhanced Monitoring.
3. Go to the next step.

    ![alt text](<Screenshot from 2024-04-11 21-24-07-1.png>)

---

## Step 11: Additional Configuration

1. Set Initial database name to `my_database`.
2. Review default options for DB parameter group, Option group, and Backup.
3. Go to the next step.

    ![alt text](<Screenshot from 2024-04-11 21-25-07.png>)

---

## Step 12: Encryption

1. Review default option of Enable encryption.
2. Go to the next step.

    ![alt text](<Screenshot from 2024-04-11 21-25-45.png>)

---

## Step 13: Maintenance Settings

1. Clear the check box for Enable auto minor version upgrade.
2. Review default selection for Maintenance window.
3. Scroll down and click Create database.
4. Go to the next step.

    ![alt text](<Screenshot from 2024-04-11 21-26-18.png>)

---

## Step 14: Database Creation in Progress

- Expect about 15–20 minutes for creation.
- Close any pop-up windows.

1. After waiting, refresh the Databases section.
2. Check that DB status is Available.
3. Click my-database.
4. Go to the next step.

    ![alt text](<Screenshot from 2024-04-11 21-34-18.png>)

---

## Step 15: Database Management Options

1. Click Actions to expand the dropdown menu.
2. Review the different options.
3. Go to the next step.

    ![alt text](<Screenshot from 2024-04-11 21-46-07-1.png>)

---

## Step 16: Practice Completed!

Congratulations on completing the Practice section! Proceed to the DIY section to reinforce your knowledge.


