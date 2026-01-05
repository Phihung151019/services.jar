.class public Lcom/android/server/knox/zt/devicetrust/data/Utils;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field public mPm:Landroid/content/pm/IPackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/Utils;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/Utils;->mPm:Landroid/content/pm/IPackageManager;

    return-void
.end method

.method public static getInstance()Lcom/android/server/knox/zt/devicetrust/data/Utils;
    .locals 1

    sget-object v0, Lcom/android/server/knox/zt/devicetrust/data/Utils$InstanceHolder;->INSTANCE:Lcom/android/server/knox/zt/devicetrust/data/Utils;

    return-object v0
.end method

.method public static millisToNanos(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static nullSafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 0

    const-string/jumbo p0, "package"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageNameForUid(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/Utils;->mPm:Landroid/content/pm/IPackageManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public final getProcessNameForPid(I)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/server/pm/PmServerUtils;->getProcessNameForPid(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public final getSecurityContextForPid(I)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p1}, Landroid/os/SELinux;->getPidContext(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method
