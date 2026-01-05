.class public final Lcom/android/server/hdmi/HdmiControlService$25;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$listener:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$25;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$25;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$25;->val$listener:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService$25;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$25;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$25;->val$listener:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$25;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$25;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$25;->val$listener:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$25;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$25;->val$listener:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void

    :pswitch_1
    const-string v0, "Failed to report HdmiControlVolumeControlStatusChange: "

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$25;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$25;->val$listener:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$25;->this$0:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/hdmi/HdmiControlService;

    iget v3, v3, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControl:I

    invoke-interface {v2, v3}, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;->onHdmiCecVolumeControlFeature(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "HdmiControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$25;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/hdmi/HdmiControlService;

    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecVolumeControl:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
