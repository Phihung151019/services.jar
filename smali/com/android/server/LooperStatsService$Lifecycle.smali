.class public Lcom/android/server/LooperStatsService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mService:Lcom/android/server/LooperStatsService;

.field public final mSettingsObserver:Lcom/android/server/LooperStatsService$SettingsObserver;

.field public final mStats:Lcom/android/internal/os/LooperStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/internal/os/LooperStats;

    const/16 v0, 0x3e8

    const/16 v1, 0x5dc

    invoke-direct {p1, v0, v1}, Lcom/android/internal/os/LooperStats;-><init>(II)V

    iput-object p1, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mStats:Lcom/android/internal/os/LooperStats;

    new-instance v0, Lcom/android/server/LooperStatsService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/server/LooperStatsService;-><init>(Landroid/content/Context;Lcom/android/internal/os/LooperStats;)V

    iput-object v0, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mService:Lcom/android/server/LooperStatsService;

    new-instance p1, Lcom/android/server/LooperStatsService$SettingsObserver;

    invoke-direct {p1, v0}, Lcom/android/server/LooperStatsService$SettingsObserver;-><init>(Lcom/android/server/LooperStatsService;)V

    iput-object p1, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mSettingsObserver:Lcom/android/server/LooperStatsService$SettingsObserver;

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 3

    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mService:Lcom/android/server/LooperStatsService;

    invoke-static {p1}, Lcom/android/server/LooperStatsService;->-$$Nest$minitFromSettings(Lcom/android/server/LooperStatsService;)V

    const-string/jumbo p1, "looper_stats"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mSettingsObserver:Lcom/android/server/LooperStatsService$SettingsObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mStats:Lcom/android/internal/os/LooperStats;

    const-class v0, Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/os/CachedDeviceState$Readonly;

    invoke-virtual {p1, p0}, Lcom/android/internal/os/LooperStats;->setDeviceState(Lcom/android/internal/os/CachedDeviceState$Readonly;)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    const-class v0, Lcom/android/internal/os/LooperStats;

    iget-object v1, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mStats:Lcom/android/internal/os/LooperStats;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string/jumbo v0, "looper_stats"

    iget-object v1, p0, Lcom/android/server/LooperStatsService$Lifecycle;->mService:Lcom/android/server/LooperStatsService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
