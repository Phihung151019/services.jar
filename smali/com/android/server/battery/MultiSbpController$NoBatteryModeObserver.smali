.class public final Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCallback:Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public mMode:Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver$Mode;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/ContentResolver;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->updateNoBatteryModeValue()V

    iget-object p1, p0, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mMode:Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver$Mode;

    sget-object p2, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver$Mode;->DISABLED:Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver$Mode;

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    sget-object p1, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver$Mode;->ENABLED_TEMPORARY:Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver$Mode;

    iput-object p1, p0, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mMode:Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver$Mode;

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "NoBatteryModeObserver is created with "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mMode:Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver$Mode;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "[SS]MultiSbpController.NoBatteryModeObserver"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-virtual {p0}, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->updateNoBatteryModeValue()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onChange mIsNoBatteryModeEnabled:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mMode:Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver$Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "[SS]MultiSbpController.NoBatteryModeObserver"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mIsNoBatteryModeEnabled:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mMode:Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mCallback:Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/battery/MultiSbpController$BatteryConnectionProcessor;->run()V

    :cond_0
    return-void
.end method

.method public final updateNoBatteryModeValue()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "no_battery_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver$Mode;->values()[Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver$Mode;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, v0, :cond_0

    iput-object v4, p0, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mMode:Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver$Mode;

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid ordinal: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v1, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver$Mode;->DISABLED:Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver$Mode;

    iput-object v1, p0, Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver;->mMode:Lcom/android/server/battery/MultiSbpController$NoBatteryModeObserver$Mode;

    const-string/jumbo p0, "[SS]MultiSbpController.NoBatteryModeObserver"

    const-string/jumbo v1, "updateNoBatteryModeValue"

    invoke-static {p0, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
