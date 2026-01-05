.class public final synthetic Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

.field public final synthetic f$1:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    iput-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    sget-object v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->DEVICE_PROFILES_ALLOWING_MIRROR_DISPLAYS:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;

    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;->this$1:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p0

    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mPendingTrampolines:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
