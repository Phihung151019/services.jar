.class public final Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/hwrs/PreconditionObserver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    iget-object p1, p1, Lcom/samsung/android/server/hwrs/PreconditionObserver;->URI_CAMERASHARE:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    const-string/jumbo p1, "hwrs_camerashare_setting"

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->getValues(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->isSettingEnabled$1()Z

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->updateFlag(IZ)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->notifyChanged(I)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    iget-object p1, p1, Lcom/samsung/android/server/hwrs/PreconditionObserver;->URI_STORAGESHARE:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/hwrs/PreconditionObserver;

    const-string/jumbo p1, "hwrs_storageshare_setting"

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->getValues(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x6

    goto :goto_1

    :cond_3
    const/4 p1, 0x7

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->isSettingEnabled$1()Z

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->updateFlag(IZ)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/hwrs/PreconditionObserver;->notifyChanged(I)V

    :cond_4
    :goto_2
    return-void
.end method
