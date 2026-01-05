.class public final Lcom/android/server/display/VolumeController$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/VolumeController;

.field public final synthetic val$keyEvent:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/VolumeController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/VolumeController$2;->this$0:Lcom/android/server/display/VolumeController;

    iput p2, p0, Lcom/android/server/display/VolumeController$2;->val$keyEvent:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/VolumeController$2;->this$0:Lcom/android/server/display/VolumeController;

    iget-object v0, v0, Lcom/android/server/display/VolumeController;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/display/VolumeController$2;->val$keyEvent:I

    const/4 v2, 0x0

    const/16 v3, 0x17

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/VolumeController$2;->this$0:Lcom/android/server/display/VolumeController;

    iget-object p0, p0, Lcom/android/server/display/VolumeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
