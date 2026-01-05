.class public final synthetic Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/PackageWatchdog;

    return-void
.end method


# virtual methods
.method public final onNetworkStackFailure(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/server/PackageWatchdog;->sPackageWatchdogLock:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/PackageWatchdog;

    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->getVersionedPackage(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;

    move-result-object p1

    if-nez p1, :cond_0

    const-string/jumbo p0, "PackageWatchdog"

    const-string/jumbo p1, "NetworkStack failed but could not find its package"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/server/PackageWatchdog;->notifyPackageFailure(ILjava/util/List;)V

    return-void
.end method
