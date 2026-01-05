.class public final Lcom/android/server/wm/BlurController$1;
.super Landroid/view/TunnelModeEnabledListener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/BlurController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/BlurController;Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/BlurController$1;->this$0:Lcom/android/server/wm/BlurController;

    invoke-direct {p0, p2}, Landroid/view/TunnelModeEnabledListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final onTunnelModeEnabledChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/BlurController$1;->this$0:Lcom/android/server/wm/BlurController;

    iput-boolean p1, p0, Lcom/android/server/wm/BlurController;->mTunnelModeEnabled:Z

    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->updateBlurEnabled()V

    return-void
.end method
