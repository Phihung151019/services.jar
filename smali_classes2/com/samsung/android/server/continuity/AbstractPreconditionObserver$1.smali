.class public final Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/continuity/PreconditionObserver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    iget-object p1, p1, Lcom/samsung/android/server/continuity/PreconditionObserver;->URI_CONTINUITY:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->onChangeSettings(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    iget-object p1, p1, Lcom/samsung/android/server/continuity/PreconditionObserver;->URI_MULTI_CONTROL:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->onChangeSettings(I)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    iget-object p1, p1, Lcom/samsung/android/server/continuity/PreconditionObserver;->URI_VIDEO_CALL_CONTINUITY:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->onChangeSettings(I)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    iget-object p1, p1, Lcom/samsung/android/server/continuity/PreconditionObserver;->URI_HW_SHARING:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/continuity/PreconditionObserver;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/PreconditionObserver;->onChangeSettings(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method
