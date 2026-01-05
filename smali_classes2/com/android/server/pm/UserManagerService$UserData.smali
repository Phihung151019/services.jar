.class Lcom/android/server/pm/UserManagerService$UserData;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public account:Ljava/lang/String;

.field public info:Landroid/content/pm/UserInfo;

.field public mIgnorePrepareStorageErrors:Z

.field public mLastEnteredForegroundTimeMillis:J

.field public mLastRequestQuietModeEnabledMillis:J

.field public persistSeedData:Z

.field public seedAccountName:Ljava/lang/String;

.field public seedAccountOptions:Landroid/os/PersistableBundle;

.field public seedAccountType:Ljava/lang/String;

.field public startRealtime:J

.field public unlockRealtime:J

.field public userProperties:Landroid/content/pm/UserProperties;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
