.class public final Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field public final mId:I

.field public final mService:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;I)V
    .locals 0

    iput p4, p0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iput p2, p0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->mId:I

    iput-object p3, p0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    return-void
.end method


# virtual methods
.method public final isLocalDeviceReady()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "Local tv device not available"

    const-string/jumbo v1, "SelectRequestBuffer"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Invoking callback failed:"

    invoke-static {v0, p0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
