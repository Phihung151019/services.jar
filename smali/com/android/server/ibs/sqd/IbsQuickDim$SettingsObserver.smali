.class public final Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sqd/IbsQuickDim;Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 7

    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget-object p2, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "screen_off_timeout"

    const v1, 0xea60

    const/4 v2, -0x2

    invoke-static {p2, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOffTimeoutSetting:J

    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget-object p1, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo p2, "intelligent_sleep_mode"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget-boolean v3, v1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSmartStayEnabledSetting:Z

    if-eq v3, p1, :cond_1

    iget-object v3, v1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    iget-object v1, v1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mDimSetRunnable:Lcom/android/server/ibs/sqd/IbsQuickDim$$ExternalSyntheticLambda0;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iput-boolean p1, v1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSmartStayEnabledSetting:Z

    :cond_1
    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget-wide v3, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mScreenOffTimeoutSetting:J

    const-wide/32 v5, 0xea60

    cmp-long v1, v3, v5

    if-ltz v1, :cond_3

    iget-boolean v3, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mSmartStayEnabledSetting:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v4, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickdimEnable:Z

    if-nez v4, :cond_4

    if-ltz v1, :cond_4

    if-nez v3, :cond_4

    iput-boolean p2, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickdimEnable:Z

    iget-object p1, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x2

    iput v1, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    iget-object p1, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQkDimHandler:Lcom/android/server/ibs/sqd/IbsQuickDim$qkDimHandler;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iput-boolean v0, p1, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickdimEnable:Z

    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SettingsObserver;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    iget p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mQuickDimMode:I

    if-eq p1, p2, :cond_5

    iget-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo p2, "screen_brightness"

    invoke-static {p1, p2, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mBrightness:I

    :cond_5
    return-void
.end method
