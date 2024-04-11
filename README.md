# AWS RDS Lab Setup Guide

## Step : 1
1. Review the practice lab objectives in the Concept section below.
2. Click Start Lab to provision your environment, and then click Open AWS Console to begin.
3. Follow the lab instructions carefully, and use the arrows below to   navigate between steps.

    AWS services not used in this lab are disabled in the lab environment. In addition, the capabilities of the services used in this lab are limited to what the lab requires.


## Step : 2

1. In the top navigation bar search box, type:

    ```
    rds
    ```
2. In the search results, under Services, click RDS. 
3. Go to the next step.

## Step : 3

1. In the left navigation pane, click Databases.
2. In the Databases section, click Create database.
3. Go to the next step.

## Step : 4

1. To fine-tune your configuration, for Choose a database creation method,  choose Standard create.
2. For Engine type, choose MariaDB.
3. Go to the next step.

## Step : 5

1. For Engine Version, keep the default MariaDB version provided.

- The default version might be different from what is displayed in the screenshot example.

2. For Templates, choose Dev/Test.
3. Go to the next step.

## Step : 6

1. For DB instance identifier, type:

    ```
    my-database
    ```

- This is the name of your DB instance.

2. For Master username, keep the default username of admin.
3. For Credentials management, choose Self managed.
4. For Master password, type:

    ```
    ILoveLearning!123
    ```
5. For Confirm password, type the password again.
6. Go to the next step.

## Step : 7

1. Scroll down to Instance configuration.
2. For DB Instance class, choose Burstable classes.
3. On the dropdown menu below that, choose db.t3.xlarge.

- Only t3 db classes are supported in this lab. 

4. For Storage type, on the dropdown menu, choose General Purpose SSD (gp2).
5. For Allocated storage, type:

    ```
    20
    ```
6. Go to the next step.

## Step : 8

1. For Storage autoscaling, click the expand arrow.
2. Review the default option of Enable storage autoscaling.
3. For Maximum storage threshold, review the default threshold of 1000 GiB.
4. Under Availability & durability, for Multi-AZ deployment, choose Create a standby instance.
5. Go to the next step.

## Step : 9

1. In the Connectivity section, for Virtual private cloud (VPC), keep the default value of Default VPC.
2. For DB subnet group, keep the default setting.
3. For Public access, keep the default setting.
4. For VPC security group (firewall), keep the default setting.
5. Go to the next step.

## Step : 10

1. In the Monitoring section, for Performance Insights, clear the check box to deselect Turn on Performance Insights.
2. For Additional configuration, click the expand arrow.
3. For Enhanced Monitoring, clear the check box to deselect Enable Enhanced monitoring.

    - If either Performance Insights or Enhanced monitoring are enabled, you'll get a permissions error when trying to create the database.

4. Scroll down to the Additional configuration section.
5. Go to the next step.

## Step : 11

1. In the Additional configuration section, for Additional configuration, click the expand arrow.
2. For Initial database name, type:

    ```
    my_database
    ```
3. For DB parameter group and Option group, review the default options.
4. Under Backup, review the default options.
5. Go to the next step.

## Step : 12

1. In the Additional configuration section, for Encryption, review the default option of Enable encryption.
2. Go to the next step.

## Step : 13

1. For Maintenance, clear the check box to deselect Enable auto minor version upgrade.
2. For Maintenance window, review the default selection of No preference.
3. Scroll down and click Create database (not shown).
4. Go to the next step.

## Step : 14

- Expect about 15–20 minutes to create your RDS DB instance. It's a  great time to get a cup of coffee or a snack!
    
- You may see a pop-up window. Please close it.

1. When you return, in the Databases section, click the refresh icon.
2. Under Status, review to ensure that the DB status is Available. 
3. Click my-database.
4. Go to the next step.

## Step : 15

1. Click Actions to expand the dropdown menu.
2. Review the different options.

    - These options, such as Create read replica, can be used to manage your existing DB instance.

3. Go to the next step.

## Step : 16

Congratulations! You've completed the Practice section. Go to the DIY section to complete the solution.

