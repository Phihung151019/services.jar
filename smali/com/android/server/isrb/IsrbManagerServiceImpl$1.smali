.class public final Lcom/android/server/isrb/IsrbManagerServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    iget-boolean p2, p2, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsSystemErrPopup:Z

    if-nez p2, :cond_2

    const-string/jumbo p1, "sys.isrb.networkcrash"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    iget p1, p1, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mErrAlertNum:I

    const/16 p2, 0xc

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/icu/util/Calendar;->get(I)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    iget v1, v1, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsYear:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    iget v1, v1, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsMonth:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    iget v1, v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsDate:I

    if-ne p1, v1, :cond_1

    iget p1, v0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsTime:I

    add-int/lit8 v0, p1, 0x6

    if-ge p2, v0, :cond_1

    if-ge p2, p1, :cond_3

    :cond_1
    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/isrb/IsrbManagerServiceImpl;->showSystemErrDialog()V

    return-void

    :cond_2
    const-string/jumbo p2, "com.samsung.isrb.SYSTEM_UPDATE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo p2, "com.samsung.intent.action.LAUNCH_SOFTWARE_UPDATE_NON_SYSTEM"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const p2, 0x10000020

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$1;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "com.samsung.permission.LAUNCH_SOFTWARE_UPDATE"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string p0, "IsrbManagerServiceImpl"

    const-string/jumbo p1, "Sent SW update broadcast to FOTA modul."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
