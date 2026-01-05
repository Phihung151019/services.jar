.class public final Lcom/android/server/Watchdog$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mUri:Landroid/net/Uri;

.field public final mWatchdog:Lcom/android/server/Watchdog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/Watchdog;)V
    .locals 1

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "system_server_watchdog_timeout_ms"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog$SettingsObserver;->mUri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/server/Watchdog$SettingsObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/Watchdog$SettingsObserver;->mWatchdog:Lcom/android/server/Watchdog;

    invoke-virtual {p0}, Lcom/android/server/Watchdog$SettingsObserver;->onChange()V

    return-void
.end method


# virtual methods
.method public final onChange()V
    .locals 6

    const-string/jumbo v0, "Watchdog"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/Watchdog$SettingsObserver;->mWatchdog:Lcom/android/server/Watchdog;

    iget-object p0, p0, Lcom/android/server/Watchdog$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v2, "system_server_watchdog_timeout_ms"

    const-wide/32 v3, 0xea60

    invoke-static {p0, v2, v3, v4}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v4, 0x4e20

    cmp-long p0, v2, v4

    if-gtz p0, :cond_0

    const-wide/16 v2, 0x4e21

    :cond_0
    iput-wide v2, v1, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Watchdog timeout updated to "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, v1, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " millis"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while reading settings "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/Watchdog$SettingsObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/Watchdog$SettingsObserver;->onChange()V

    :cond_0
    return-void
.end method
