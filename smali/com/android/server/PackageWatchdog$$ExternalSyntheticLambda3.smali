.class public final synthetic Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/PackageWatchdog;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/PackageWatchdog;

    sget-object p1, Lcom/android/server/PackageWatchdog;->sPackageWatchdogLock:Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->updateConfigs()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "PackageWatchdog"

    const-string p1, "Failed to reload device config changes"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
