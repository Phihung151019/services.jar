.class public Lcom/android/server/WatchdogSoftdog;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static sInstance:Lcom/android/server/WatchdogSoftdog;


# instance fields
.field public mSoftdogDisabled:Z

.field public mSoftdogTimeout:I


# virtual methods
.method public native native_sdogClose()V
.end method

.method public native native_sdogKick()V
.end method

.method public native native_sdogOpen()I
.end method

.method public native native_sdogSetTimeout(I)V
.end method

.method public final softdogKick(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/WatchdogSoftdog;->mSoftdogDisabled:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "Watchdog:WatchdogSoftdog"

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_1

    const-string v1, "!@ softdog timeout is changed to "

    invoke-static {p1, v1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/WatchdogSoftdog;->mSoftdogTimeout:I

    invoke-virtual {p0, p1}, Lcom/android/server/WatchdogSoftdog;->native_sdogSetTimeout(I)V

    return-void

    :cond_1
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_LOW:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/WatchdogSoftdog;->native_sdogKick()V

    return-void

    :cond_2
    :try_start_0
    new-instance p1, Ljava/io/File;

    const-string v2, "/sys/class/power_supply/battery/temp"

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x400

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "FileUtils"

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    const/4 p1, 0x0

    :goto_0
    const/16 v2, 0x258

    const/16 v3, 0x64

    if-le p1, v2, :cond_4

    iget v2, p0, Lcom/android/server/WatchdogSoftdog;->mSoftdogTimeout:I

    if-ne v2, v3, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/server/WatchdogSoftdog;->native_sdogSetTimeout(I)V

    iput v1, p0, Lcom/android/server/WatchdogSoftdog;->mSoftdogTimeout:I

    const-string p0, "!@ set softdog timeout to 1000 by high temperature"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const/16 v2, 0x226

    if-ge p1, v2, :cond_5

    iget p1, p0, Lcom/android/server/WatchdogSoftdog;->mSoftdogTimeout:I

    if-ne p1, v1, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/server/WatchdogSoftdog;->native_sdogSetTimeout(I)V

    iput v3, p0, Lcom/android/server/WatchdogSoftdog;->mSoftdogTimeout:I

    const-string p0, "!@ set softdog timeout to 100"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/WatchdogSoftdog;->native_sdogKick()V

    :goto_1
    return-void
.end method
