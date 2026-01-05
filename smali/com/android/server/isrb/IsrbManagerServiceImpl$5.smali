.class public final Lcom/android/server/isrb/IsrbManagerServiceImpl$5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/isrb/IsrbManagerServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$5;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const-string p1, "IsrbManagerServiceImpl"

    const-string/jumbo v0, "showSystemErrDialog() dismissed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl$5;->this$0:Lcom/android/server/isrb/IsrbManagerServiceImpl;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mIsSystemErrPopup:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsYear:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsMonth:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsDate:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_0

    iput v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsTime:I

    return-void

    :cond_0
    const/16 v0, 0xc

    if-lt v1, v0, :cond_1

    iput v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsTime:I

    return-void

    :cond_1
    const/4 v0, 0x6

    if-lt v1, v0, :cond_2

    iput v0, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsTime:I

    return-void

    :cond_2
    iput p1, p0, Lcom/android/server/isrb/IsrbManagerServiceImpl;->mPreviousTipsTime:I

    return-void
.end method
