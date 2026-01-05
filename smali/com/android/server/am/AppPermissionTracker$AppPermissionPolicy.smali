.class public final Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;
.super Lcom/android/server/am/BaseAppStatePolicy;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEFAULT_BG_PERMISSIONS_IN_MONITOR:[Ljava/lang/String;


# instance fields
.field public volatile mBgPermissionsInMonitor:[Landroid/util/Pair;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string/jumbo v4, "android.permission.RECORD_AUDIO"

    const-string/jumbo v5, "android:record_audio"

    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string/jumbo v1, "android:fine_location"

    const-string/jumbo v2, "android.permission.CAMERA"

    const-string/jumbo v3, "android:camera"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->DEFAULT_BG_PERMISSIONS_IN_MONITOR:[Ljava/lang/String;

    return-void
.end method

.method public static parsePermissionConfig([Ljava/lang/String;)[Landroid/util/Pair;
    .locals 6

    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/util/Pair;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    :try_start_0
    aget-object v3, p0, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    aget-object v3, p0, v1

    :goto_1
    add-int/lit8 v4, v1, 0x1

    aget-object v5, p0, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, -0x1

    goto :goto_2

    :cond_1
    aget-object v4, p0, v4

    invoke-static {v4}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v4

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "APP PERMISSION TRACKER POLICY SETTINGS:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStatePolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "bg_permission_in_monitor"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 p2, 0x3d

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    const/16 p2, 0x5b

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    array-length v0, v0

    if-ge p2, v0, :cond_3

    const/16 v0, 0x2c

    if-lez p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    aget-object v1, v1, p2

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const/16 p0, 0x5d

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(C)V

    return-void
.end method

.method public final onPropertiesChanged(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "bg_permission_in_monitor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mKeyTrackerEnabled:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStatePolicy;->updateTrackerEnabled()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->updateBgPermissionsInMonitor()V

    return-void
.end method

.method public final onSystemReady()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStatePolicy;->updateTrackerEnabled()V

    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->updateBgPermissionsInMonitor()V

    return-void
.end method

.method public final onTrackerEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast p0, Lcom/android/server/am/AppPermissionTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppPermissionTracker;->onPermissionTrackerEnabled(Z)V

    return-void
.end method

.method public final updateBgPermissionsInMonitor()V
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "activity_manager"

    const-string/jumbo v2, "bg_permission_in_monitor"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->DEFAULT_BG_PERMISSIONS_IN_MONITOR:[Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->parsePermissionConfig([Ljava/lang/String;)[Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    iget-boolean v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->onTrackerEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->onTrackerEnabled(Z)V

    :cond_1
    return-void
.end method
