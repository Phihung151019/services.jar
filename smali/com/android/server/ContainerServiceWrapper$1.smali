.class public final Lcom/android/server/ContainerServiceWrapper$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/ContainerServiceWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/ContainerServiceWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    iget-object p1, p1, Lcom/android/server/ContainerServiceWrapper;->info:Lcom/android/server/ContainerServiceInfo;

    invoke-virtual {p1}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    iget-object p1, p1, Lcom/android/server/ContainerServiceWrapper;->mHandler:Lcom/android/server/ContainerServiceWrapper$2;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    invoke-static {p2}, Lcom/samsung/android/knox/IContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IContainerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper;->mContainerService:Lcom/samsung/android/knox/IContainerService;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    iget-object p1, p1, Lcom/android/server/ContainerServiceWrapper;->info:Lcom/android/server/ContainerServiceInfo;

    invoke-virtual {p1}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper$1;->this$0:Lcom/android/server/ContainerServiceWrapper;

    iget-boolean p1, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper;->mHandler:Lcom/android/server/ContainerServiceWrapper$2;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
