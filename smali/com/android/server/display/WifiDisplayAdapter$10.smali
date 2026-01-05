.class public final Lcom/android/server/display/WifiDisplayAdapter$10;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field public final synthetic val$displayId:I

.field public final synthetic val$isStart:Z

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput p2, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$displayId:I

    iput-boolean p3, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$isStart:Z

    iput-object p4, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$displayId:I

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$isStart:Z

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->val$packageName:Ljava/lang/String;

    const/16 v4, 0x15

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$10;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
