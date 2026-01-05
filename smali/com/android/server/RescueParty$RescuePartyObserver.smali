.class public final Lcom/android/server/RescueParty$RescuePartyObserver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/PackageWatchdog$PackageHealthObserver;


# static fields
.field public static sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;


# instance fields
.field public final mCallingPackageNamespaceSetMap:Ljava/util/Map;

.field public final mContext:Landroid/content/Context;

.field public final mNamespaceCallingPackageSetMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mCallingPackageNamespaceSetMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mNamespaceCallingPackageSetMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/RescueParty$RescuePartyObserver;
    .locals 2

    const-class v0, Lcom/android/server/RescueParty$RescuePartyObserver;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/RescueParty$RescuePartyObserver;

    invoke-direct {v1, p0}, Lcom/android/server/RescueParty$RescuePartyObserver;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static reset()V
    .locals 2

    const-class v0, Lcom/android/server/RescueParty$RescuePartyObserver;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/server/RescueParty$RescuePartyObserver;->sRescuePartyObserver:Lcom/android/server/RescueParty$RescuePartyObserver;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final getUniqueIdentifier()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "rescue-party-observer"

    return-object p0
.end method

.method public final mayObservePackage(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return v1

    :catch_0
    :cond_0
    iget-object p0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_1
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 p1, 0x9

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :catch_1
    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public final onBootLoop(I)I
    .locals 2

    invoke-static {}, Lcom/android/server/RescueParty;->-$$Nest$smisDisabled()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p0, v1}, Lcom/android/server/RescueParty;->-$$Nest$smgetSecRescueLevel(IZLandroid/content/pm/VersionedPackage;)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p0, 0x64

    return p0

    :pswitch_1
    const/16 p0, 0x32

    return p0

    :pswitch_2
    const/16 p0, 0xa

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onExecuteBootLoopMitigation(I)I
    .locals 2

    invoke-static {}, Lcom/android/server/RescueParty;->-$$Nest$smisDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/server/RescueParty;->-$$Nest$smgetSecRescueLevel(IZLandroid/content/pm/VersionedPackage;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, p1}, Lcom/android/server/RescueParty;->-$$Nest$smexecuteRescueLevel(Landroid/content/Context;Ljava/lang/String;I)V

    return v0
.end method

.method public final onExecuteHealthCheckMitigation(Landroid/content/pm/VersionedPackage;II)I
    .locals 5

    invoke-static {}, Lcom/android/server/RescueParty;->-$$Nest$smisDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Executing remediation. failedPackage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, " failureReason: "

    const-string v4, " mitigationCount: "

    invoke-static {p2, v2, v3, v4, v0}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string/jumbo v2, "RescueParty"

    invoke-static {v0, p3, v2}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x2

    return p0

    :cond_3
    :goto_2
    if-nez p1, :cond_4

    const/4 p2, 0x0

    goto :goto_3

    :cond_4
    const-string/jumbo p2, "com.android.systemui"

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    :goto_3
    invoke-static {p3, p2, p1}, Lcom/android/server/RescueParty;->-$$Nest$smgetSecRescueLevel(IZLandroid/content/pm/VersionedPackage;)I

    move-result p2

    iget-object p0, p0, Lcom/android/server/RescueParty$RescuePartyObserver;->mContext:Landroid/content/Context;

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-static {p0, v1, p2}, Lcom/android/server/RescueParty;->-$$Nest$smexecuteRescueLevel(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onHealthCheckFailed(Landroid/content/pm/VersionedPackage;II)I
    .locals 2

    invoke-static {}, Lcom/android/server/RescueParty;->-$$Nest$smisDisabled()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_2

    const/4 p0, 0x3

    if-eq p2, p0, :cond_0

    const/4 p0, 0x4

    if-ne p2, p0, :cond_2

    :cond_0
    if-nez p1, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "com.android.systemui"

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    invoke-static {p3, p0, p1}, Lcom/android/server/RescueParty;->-$$Nest$smgetSecRescueLevel(IZLandroid/content/pm/VersionedPackage;)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x64

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x32

    goto :goto_1

    :pswitch_2
    const/16 v0, 0xa

    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "Checking available remediations for health check failure. failedPackage: "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :goto_2
    const-string p3, " failureReason: "

    const-string v1, " available impact: "

    invoke-static {p2, p1, p3, v1, p0}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string/jumbo p1, "RescueParty"

    invoke-static {p0, v0, p1}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
