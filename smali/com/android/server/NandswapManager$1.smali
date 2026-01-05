.class public final Lcom/android/server/NandswapManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string p0, " for 170000"

    const-string/jumbo v0, "support ramExpandSwitch: "

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "received action: "

    const-string/jumbo v2, "NandswapManager"

    invoke-static {v1, p2, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lcom/android/server/NandswapManager;->mNandBigData:Lcom/android/server/NandswapManager$NandSwapBigdataManager;

    if-eqz p0, :cond_b

    invoke-static {}, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->-$$Nest$smuploadBigdataToHQM()V

    goto/16 :goto_4

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v5, "ram_expand_size"

    const/4 v6, -0x1

    if-nez v1, :cond_6

    :try_start_1
    const-string/jumbo v1, "android.intent.action.REBOOT"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string/jumbo v1, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/NandswapManager;->SUPPORT_RAM_EXPAND_SWITCH:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "ram_expand_size_list"

    invoke-static {p2, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-ne p0, v6, :cond_2

    const-string/jumbo p0, "ram_expand_size was not set"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v4

    goto :goto_0

    :cond_2
    move p0, v3

    :goto_0
    if-nez p2, :cond_3

    const-string/jumbo p0, "ram_expand_size_list was not set"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v4

    :cond_3
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smisBackingDevSet()Z

    move-result p2

    if-nez p2, :cond_4

    const-string/jumbo p0, "zram backing_dev is not set"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v3

    :cond_4
    if-ne p0, v4, :cond_5

    new-instance p0, Ljava/io/File;

    const-string p2, "/data/per_boot/zram_swap"

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x400

    div-long/2addr v0, v4

    div-long/2addr v0, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-wide/16 v4, 0x2

    mul-long/2addr v0, v4

    long-to-int p0, v0

    goto :goto_1

    :catch_1
    :try_start_3
    const-string/jumbo p0, "error on file length"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v3

    :goto_1
    invoke-static {p1, p0}, Lcom/android/server/NandswapManager;->-$$Nest$smsetExpandSizeAndList(Landroid/content/Context;I)V

    :cond_5
    const-string/jumbo p0, "ro.sys.kernelmemory.gmr.enabled"

    invoke-static {p0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string/jumbo p0, "kgsl"

    const-string/jumbo p1, "ro.sys.kernelmemory.gmr.vendor_plugin"

    const-string p2, ""

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smgetRamExpandSizePersistProp()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    new-instance p0, Ljava/io/File;

    const-string p1, "/sys/class/kgsl/kgsl/max_reclaim_limit"

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const p1, 0x1f400

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V

    const-string p0, "GMR: Success write max reclaim limit: 128000"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_2
    :try_start_5
    const-string p0, "GMR: Failed to write max recaim limit to /sys/class/kgsl/kgsl/max_reclaim_limit"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    :goto_2
    sget-object p0, Lcom/android/server/NandswapManager;->sNandswapManager:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v6, :cond_7

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smisBackingDevSet()Z

    move-result p0

    if-ne p0, v4, :cond_7

    invoke-static {}, Lcom/android/server/NandswapManager;->getDefaultRamExpandSize()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/server/NandswapManager;->putRamExpandSize(Landroid/content/Context;I)V

    :cond_7
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smgetRamExpandSizePersistProp()I

    move-result p0

    if-eq p0, v6, :cond_a

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eq p0, p1, :cond_a

    sget-object p0, Lcom/android/server/NandswapManager;->mClient:Lcom/android/server/NandswapManager$NandswapClient;

    iget p1, p0, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    if-ne p1, v4, :cond_8

    move v3, v4

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->initBigdataInfoProp()V

    :cond_9
    const-string/jumbo p0, "Ramplus Option is changed. clear bigdata\'s info."

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smsaveClientsBigdataInfoInReboot()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "intent exception msg : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_b
    :goto_4
    return-void
.end method
