.class public Lcom/android/server/VaultKeeperService$LifeCycle;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mVaultKeeperService:Lcom/android/server/VaultKeeperService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 5

    const/16 v0, 0x64

    if-eq p1, v0, :cond_6

    const/16 v1, 0x1e0

    if-eq p1, v1, :cond_5

    const/16 v1, 0x1f4

    if-eq p1, v1, :cond_4

    const/16 v1, 0x208

    if-eq p1, v1, :cond_3

    const/16 v1, 0x226

    if-eq p1, v1, :cond_2

    const/16 v1, 0x258

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_0

    const-string/jumbo v1, "Unknown"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "PHASE_BOOT_COMPLETED"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "PHASE_THIRD_PARTY_APPS_CAN_START"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "PHASE_ACTIVITY_MANAGER_READY"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "PHASE_DEVICE_SPECIFIC_SERVICES_READY"

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "PHASE_SYSTEM_SERVICES_READY"

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "PHASE_LOCK_SETTINGS_READY"

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "PHASE_WAIT_FOR_DEFAULT_DISPLAY"

    :goto_0
    const-string/jumbo v2, "["

    const-string/jumbo v3, "]"

    const-string/jumbo v4, "VaultKeeperService$Lifecycle"

    invoke-static {v2, v1, v3, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v0, :cond_7

    iget-object p0, p0, Lcom/android/server/VaultKeeperService$LifeCycle;->mVaultKeeperService:Lcom/android/server/VaultKeeperService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "VaultKeeperService"

    const-string/jumbo p1, "System is ready"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public final onStart()V
    .locals 2

    const-string/jumbo v0, "VaultKeeperService$Lifecycle"

    const-string/jumbo v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/VaultKeeperService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/VaultKeeperService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/VaultKeeperService$LifeCycle;->mVaultKeeperService:Lcom/android/server/VaultKeeperService;

    const-string/jumbo v1, "VaultKeeperService"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
