.class public Lcom/android/server/CachedDeviceStateService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBroadcastReceiver:Lcom/android/server/CachedDeviceStateService$1;

.field public final mDeviceState:Lcom/android/internal/os/CachedDeviceState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/internal/os/CachedDeviceState;

    invoke-direct {p1}, Lcom/android/internal/os/CachedDeviceState;-><init>()V

    iput-object p1, p0, Lcom/android/server/CachedDeviceStateService;->mDeviceState:Lcom/android/internal/os/CachedDeviceState;

    new-instance p1, Lcom/android/server/CachedDeviceStateService$1;

    invoke-direct {p1, p0}, Lcom/android/server/CachedDeviceStateService$1;-><init>(Lcom/android/server/CachedDeviceStateService;)V

    iput-object p1, p0, Lcom/android/server/CachedDeviceStateService;->mBroadcastReceiver:Lcom/android/server/CachedDeviceStateService$1;

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 4

    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_3

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/CachedDeviceStateService;->mBroadcastReceiver:Lcom/android/server/CachedDeviceStateService$1;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/CachedDeviceStateService;->mDeviceState:Lcom/android/internal/os/CachedDeviceState;

    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    const/4 v1, 0x0

    const-string v2, "CachedDeviceStateService"

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const-string v0, "BatteryManager null while starting CachedDeviceStateService"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {p1, v3}, Lcom/android/internal/os/CachedDeviceState;->setCharging(Z)V

    iget-object p1, p0, Lcom/android/server/CachedDeviceStateService;->mDeviceState:Lcom/android/internal/os/CachedDeviceState;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-nez p0, :cond_2

    const-string/jumbo p0, "PowerManager null while starting CachedDeviceStateService"

    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/internal/os/CachedDeviceState;->setScreenInteractive(Z)V

    :cond_3
    return-void
.end method

.method public final onStart()V
    .locals 2

    const-class v0, Lcom/android/internal/os/CachedDeviceState$Readonly;

    iget-object v1, p0, Lcom/android/server/CachedDeviceStateService;->mDeviceState:Lcom/android/internal/os/CachedDeviceState;

    invoke-virtual {v1}, Lcom/android/internal/os/CachedDeviceState;->getReadonlyClient()Lcom/android/internal/os/CachedDeviceState$Readonly;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
