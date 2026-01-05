.class public final Lcom/android/server/telecom/InternalServiceRepository$1;
.super Lcom/android/internal/telecom/IDeviceIdleControllerAdapter$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/telecom/InternalServiceRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/telecom/InternalServiceRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/InternalServiceRepository$1;->this$0:Lcom/android/server/telecom/InternalServiceRepository;

    invoke-direct {p0}, Lcom/android/internal/telecom/IDeviceIdleControllerAdapter$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final exemptAppTemporarilyForEvent(Ljava/lang/String;JILjava/lang/String;)V
    .locals 9

    iget-object p0, p0, Lcom/android/server/telecom/InternalServiceRepository$1;->this$0:Lcom/android/server/telecom/InternalServiceRepository;

    iget-object v0, p0, Lcom/android/server/telecom/InternalServiceRepository;->mDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v8, p5

    invoke-interface/range {v0 .. v8}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    return-void
.end method
