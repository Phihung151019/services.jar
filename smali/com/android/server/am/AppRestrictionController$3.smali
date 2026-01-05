.class public final Lcom/android/server/am/AppRestrictionController$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppRestrictionController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$3;->this$0:Lcom/android/server/am/AppRestrictionController;

    return-void
.end method


# virtual methods
.method public final updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$3;->this$0:Lcom/android/server/am/AppRestrictionController;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
