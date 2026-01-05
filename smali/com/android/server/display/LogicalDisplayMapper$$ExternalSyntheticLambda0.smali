.class public final synthetic Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/LogicalDisplayMapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/LogicalDisplayMapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/LogicalDisplayMapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/LogicalDisplayMapper;

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0xc

    const-string/jumbo v3, "server.display:unfold"

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method
