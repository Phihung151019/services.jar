.class public final Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mUserId:I


# virtual methods
.method public final performCornerAction(I)V
    .locals 1

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages$1;-><init>(Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
