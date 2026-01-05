.class public final Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_8

    const-string p2, "IntelligentBatterySaverSettingsObserver"

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v1, "ibs_end_hour"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "ibs_start_hour"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "ibs_switch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "ibs_start_minute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "ibs_end_minute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string/jumbo p0, "unknown settings change: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->updateSwitchSetting()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$SettingsObserver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;

    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    if-nez p1, :cond_6

    const-string p0, "Handler is null, cannot post delayed runnable."

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mRunnable:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "Had existed callback."

    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver;->mRunnable:Lcom/android/server/ibs/IntelligentBatterySaverSettingsObserver$$ExternalSyntheticLambda0;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4c71b323 -> :sswitch_4
        -0x25bcc9ca -> :sswitch_3
        0xae4c099 -> :sswitch_2
        0x4a022686 -> :sswitch_1
        0x50a0baed -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
