.class public final Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;
.super Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;Landroid/os/PermissionEnforcer;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    iput-object p1, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    return-void
.end method


# virtual methods
.method public final addStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    .locals 1

    invoke-virtual {p0}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->addStateCallback_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mHandler:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final disable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    .locals 1

    invoke-virtual {p0}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->disable_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mHandler:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final enable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    .locals 1

    invoke-virtual {p0}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->enable_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mHandler:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final removeStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    .locals 1

    invoke-virtual {p0}, Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;->removeStateCallback_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$BinderService;->mService:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    iget-object p0, p0, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;->mHandler:Lcom/android/server/security/intrusiondetection/IntrusionDetectionService$EventHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
