.class public final Lcom/android/server/backup/params/BackupParams;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public dirName:Ljava/lang/String;

.field public fullPackages:Ljava/util/ArrayList;

.field public kvPackages:Ljava/util/ArrayList;

.field public listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public mBackupEligibilityRules:Lcom/android/server/backup/utils/BackupEligibilityRules;

.field public mTransportConnection:Lcom/android/server/backup/transport/TransportConnection;

.field public monitor:Landroid/app/backup/IBackupManagerMonitor;

.field public nonIncrementalBackup:Z

.field public observer:Landroid/app/backup/IBackupObserver;
