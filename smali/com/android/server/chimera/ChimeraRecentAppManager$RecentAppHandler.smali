.class public final Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/ChimeraRecentAppManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraRecentAppManager$RecentAppHandler;->this$0:Lcom/android/server/chimera/ChimeraRecentAppManager;

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/ChimeraRecentAppManager;->checkAppUsageEnd(I)V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/chimera/ChimeraRecentAppManager;->checkAppUsageStart(I)V

    return-void
.end method
