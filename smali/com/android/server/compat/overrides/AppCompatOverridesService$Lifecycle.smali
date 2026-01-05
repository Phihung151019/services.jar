.class public final Lcom/android/server/compat/overrides/AppCompatOverridesService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mService:Lcom/android/server/compat/overrides/AppCompatOverridesService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 4

    new-instance v0, Lcom/android/server/compat/overrides/AppCompatOverridesService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "platform_compat"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v2

    sget-object v3, Lcom/android/server/compat/overrides/AppCompatOverridesService;->SUPPORTED_NAMESPACES:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/compat/overrides/AppCompatOverridesService;-><init>(Landroid/content/Context;Lcom/android/internal/compat/IPlatformCompat;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$Lifecycle;->mService:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    invoke-virtual {v0}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->registerDeviceConfigListeners()V

    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$Lifecycle;->mService:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    invoke-virtual {p0}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->registerPackageReceiver()V

    return-void
.end method
