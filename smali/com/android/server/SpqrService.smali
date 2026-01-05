.class public Lcom/android/server/SpqrService;
.super Lcom/android/server/ProfileService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public volatile mService:Landroid/os/ISpqrService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "SpqrService"

    const-string/jumbo v1, "sqpr_service"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/ProfileService;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "/system/etc/spqr-package-blocklist.conf"

    invoke-virtual {p0, p1}, Lcom/android/server/ProfileService;->initPackageBlockList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ProfileService;->packageBlockList:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final checkAppId(I)Z
    .locals 1

    if-gez p1, :cond_0

    const-string v0, "Invalid app id: "

    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getBinderOfService()Landroid/os/IBinder;
    .locals 0

    const-string/jumbo p0, "spqr_service"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final initializeInterfaceOfService()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SpqrService;->mService:Landroid/os/ISpqrService;

    return-void
.end method

.method public final isServiceRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/SpqrService;->mService:Landroid/os/ISpqrService;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "spqr_service is not running"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final setInterfaceOfService(Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p1}, Landroid/os/ISpqrService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISpqrService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/SpqrService;->mService:Landroid/os/ISpqrService;

    return-void
.end method
